// Deterministic conservative two-layer Manhattan router for this sparse lab PCB.
// Pads and routes retain their actual KiCad net IDs; KiCad DRC is authoritative.
#include <algorithm>
#include <cmath>
#include <fstream>
#include <iostream>
#include <queue>
#include <tuple>
#include <vector>
using namespace std;
struct Pad {int net; double x,y,w,h; int cell;};
struct Item {int f,g,id; bool operator<(const Item&o)const{return f>o.f;}};
int main(int argc,char**argv){
 ifstream in(argv[1]); ofstream out(argv[2]);
 int W,H,P; double grid; in>>W>>H>>grid>>P; int N=W*H;
 vector<Pad> pads(P); vector<int> occ(2*N,0), padcell(N,0);
 for(auto &p:pads){
  in>>p.net>>p.x>>p.y>>p.w>>p.h;
  int cx=lround(p.x/grid),cy=lround(p.y/grid); p.cell=cy*W+cx;
  padcell[p.cell]=p.net;
  // Conservative rectangular expansion covers round/oval pads as well.
  double rx=p.w/2+.41,ry=p.h/2+.41;
  for(int y=max(0,int(floor((p.y-ry)/grid)));y<=min(H-1,int(ceil((p.y+ry)/grid)));y++)
   for(int x=max(0,int(floor((p.x-rx)/grid)));x<=min(W-1,int(ceil((p.x+rx)/grid)));x++){
    if(abs(x*grid-p.x)<=rx && abs(y*grid-p.y)<=ry){
     for(int l=0;l<2;l++){int &v=occ[l*N+y*W+x]; if(v && v!=p.net)v=-999999;else v=p.net;}
    }
   }
 }
 // Edges: keep copper more than 0.5 mm from the routed outline.
 for(int l=0;l<2;l++)for(int y=0;y<H;y++)for(int x=0;x<W;x++)
  if(x*grid<3 || x*grid>230 || y*grid<3 || y*grid>232)occ[l*N+y*W+x]=-999999;
 vector<int> netids;
 for(auto p:pads)if(p.net>0 && find(netids.begin(),netids.end(),p.net)==netids.end())netids.push_back(p.net);
 auto countpads=[&](int net){return count_if(pads.begin(),pads.end(),[&](Pad p){return p.net==net;});};
 stable_sort(netids.begin(),netids.end(),[&](int a,int b){int aa=(a==15||a==36)?0:countpads(a); int bb=(b==15||b==36)?0:countpads(b);return aa<bb;});
 vector<int> dist(2*N),prev(2*N),stamp(2*N,0);int epoch=0, failures=0, routes=0;
 vector<char> goal(2*N,0);
 for(int net:netids){
  vector<int> ids;for(int i=0;i<P;i++)if(pads[i].net==net)ids.push_back(i);
  if(ids.size()<2)continue;
  fill(goal.begin(),goal.end(),0); vector<int> connected; vector<char> done(ids.size(),0);
  int initial=ids[0]; done[0]=1;
  for(int l=0;l<2;l++){int g=l*N+pads[initial].cell;goal[g]=1;connected.push_back(g);}
  for(size_t k=1;k<ids.size();k++){
   int which=-1,target=-1,best=100000000;
   for(size_t j=0;j<ids.size();j++)if(!done[j]){
    int a=pads[ids[j]].cell,ax=a%W,ay=a/W;
    for(int c:connected){int cc=c%N;int dd=abs(ax-cc%W)+abs(ay-cc/W);if(dd<best){best=dd;which=j;target=c;}}
   }
   if(which<0)break;
   done[which]=1;int start=pads[ids[which]].cell;
   int tx=target%N%W,ty=target%N/W;
   auto heuristic=[&](int id){int c=id%N;return 10*(abs(c%W-tx)+abs(c/W-ty));};
   auto freecell=[&](int id){return occ[id]==0 || occ[id]==net;};
   priority_queue<Item> heap;++epoch;
   for(int l=0;l<2;l++){int s=l*N+start;if(freecell(s)){stamp[s]=epoch;dist[s]=0;prev[s]=-1;heap.push({heuristic(s),0,s});}}
   int finish=-1;
   while(!heap.empty()){
    auto it=heap.top();heap.pop();int id=it.id;if(stamp[id]!=epoch || it.g!=dist[id])continue;
    if(goal[id]){finish=id;break;}
    int l=id/N,c=id%N,x=c%W,y=c/W;
    for(int d=0;d<5;d++){
     int nx=x,ny=y,nl=l,cost;
     if(d==0){nx--;cost=l==0?10:13;}else if(d==1){nx++;cost=l==0?10:13;}
     else if(d==2){ny--;cost=l==1?10:13;}else if(d==3){ny++;cost=l==1?10:13;}
     else{nl=1-l;cost=90;}
     if(nx<1 || nx>=W-1 || ny<1 || ny>=H-1)continue;
     int v=nl*N+ny*W+nx;if(!freecell(v))continue;
     if(d==4 && padcell[c]!=net){
      bool ok=true;
      for(int ll=0;ll<2;ll++)for(int yy=y-1;yy<=y+1;yy++)for(int xx=x-1;xx<=x+1;xx++)
       if(occ[ll*N+yy*W+xx]!=0 && occ[ll*N+yy*W+xx]!=net)ok=false;
      if(!ok)continue;
     }
     int ng=it.g+cost;
     if(stamp[v]!=epoch || ng<dist[v]){stamp[v]=epoch;dist[v]=ng;prev[v]=id;heap.push({ng+heuristic(v),ng,v});}
    }
   }
   if(finish<0){failures++;cerr<<"UNROUTED net "<<net<<" pad "<<ids[which]<<"\n";continue;}
   vector<int> path;for(int id=finish;id>=0;id=prev[id])path.push_back(id);
   reverse(path.begin(),path.end());out<<net<<" "<<path.size();for(int c:path)out<<" "<<c;out<<"\n";
   for(int id:path){
    int l=id/N,c=id%N,x=c%W,y=c/W;
    for(int dy=-1;dy<=1;dy++)for(int dx=-1;dx<=1;dx++)if(dx*dx+dy*dy<=1){
     if(x+dx<0||x+dx>=W||y+dy<0||y+dy>=H)continue;
     int &v=occ[l*N+(y+dy)*W+x+dx];if(v==0)v=net;
    }
    if(!goal[id]){goal[id]=1;connected.push_back(id);}
   }
   // Through-hole pads connect both copper layers without an additional via.
   for(int l=0;l<2;l++){int c=l*N+start;if(!goal[c]){goal[c]=1;connected.push_back(c);}}
   routes++;
  }
  cerr<<"net "<<net<<": "<<ids.size()<<" pads completed\n";
 }
 cerr<<"routes="<<routes<<" failures="<<failures<<"\n";
 return failures?2:0;
}
