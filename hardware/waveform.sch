<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
  <drawing>
    <settings>
      <setting alwaysvectorfont="yes" />
      <setting verticaltext="up" />
    </settings>
    <grid distance="0.1" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="mm" altunit="mm" />
    <layers>
      <layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes" />
      <layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes" />
      <layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes" />
      <layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes" />
      <layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes" />
      <layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="yes" />
      <layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes" />
      <layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="yes" />
      <layer number="25" name="tNames" color="7" fill="1" visible="yes" active="yes" />
      <layer number="26" name="bNames" color="7" fill="1" visible="yes" active="yes" />
      <layer number="27" name="tValues" color="7" fill="1" visible="yes" active="yes" />
      <layer number="28" name="bValues" color="7" fill="1" visible="yes" active="yes" />
      <layer number="29" name="tStop" color="7" fill="3" visible="yes" active="yes" />
      <layer number="30" name="bStop" color="7" fill="6" visible="yes" active="yes" />
      <layer number="31" name="tCream" color="7" fill="4" visible="yes" active="yes" />
      <layer number="32" name="bCream" color="7" fill="5" visible="yes" active="yes" />
      <layer number="39" name="tKeepout" color="4" fill="11" visible="yes" active="yes" />
      <layer number="40" name="bKeepout" color="1" fill="11" visible="yes" active="yes" />
      <layer number="41" name="tRestrict" color="4" fill="10" visible="yes" active="yes" />
      <layer number="42" name="bRestrict" color="1" fill="10" visible="yes" active="yes" />
      <layer number="44" name="Drills" color="7" fill="1" visible="yes" active="yes" />
      <layer number="45" name="Holes" color="7" fill="1" visible="yes" active="yes" />
      <layer number="46" name="Milling" color="3" fill="1" visible="yes" active="yes" />
      <layer number="47" name="Measures" color="7" fill="1" visible="yes" active="yes" />
      <layer number="48" name="Document" color="7" fill="1" visible="yes" active="yes" />
      <layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes" />
      <layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes" />
      <layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="yes" />
      <layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes" />
      <layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes" />
      <layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes" />
      <layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes" />
      <layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes" />
      <layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes" />
      <layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes" />
      <layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes" />
      <layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes" />
    </layers>
    <schematic xreflabel="%F%N/%S.%C%R" xrefpart="/ %S.%C%R">
      <libraries>
        <library name="Waveform">
          <packages>
            <package name="C_Disc_D5.0mm_W2.5mm_P5.00mm">
              <pad name="1" x="0.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <pad name="2" x="5.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <wire x1="-0.12" y1="1.37" x2="-0.12" y2="1.033" layer="21" width="0.12" />
              <wire x1="-0.12" y1="1.37" x2="5.12" y2="1.37" layer="21" width="0.12" />
              <wire x1="-0.12" y1="-1.033" x2="-0.12" y2="-1.37" layer="21" width="0.12" />
              <wire x1="-0.12" y1="-1.37" x2="5.12" y2="-1.37" layer="21" width="0.12" />
              <wire x1="5.12" y1="1.37" x2="5.12" y2="1.033" layer="21" width="0.12" />
              <wire x1="5.12" y1="-1.033" x2="5.12" y2="-1.37" layer="21" width="0.12" />
              <text x="2.5" y="2.5" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="2.5" y="-2.5" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal">
              <pad name="1" x="0.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <pad name="2" x="7.62" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <wire x1="0.54" y1="1.37" x2="7.08" y2="1.37" layer="21" width="0.12" />
              <wire x1="0.54" y1="1.04" x2="0.54" y2="1.37" layer="21" width="0.12" />
              <wire x1="0.54" y1="-1.04" x2="0.54" y2="-1.37" layer="21" width="0.12" />
              <wire x1="0.54" y1="-1.37" x2="7.08" y2="-1.37" layer="21" width="0.12" />
              <wire x1="7.08" y1="1.37" x2="7.08" y2="1.04" layer="21" width="0.12" />
              <wire x1="7.08" y1="-1.37" x2="7.08" y2="-1.04" layer="21" width="0.12" />
              <text x="3.81" y="2.37" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="3.81" y="-2.37" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="DIP-8_W7.62mm">
              <pad name="1" x="0.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <pad name="2" x="0.0" y="-2.54" drill="0.8" diameter="1.6" shape="round" />
              <pad name="3" x="0.0" y="-5.08" drill="0.8" diameter="1.6" shape="round" />
              <pad name="4" x="0.0" y="-7.62" drill="0.8" diameter="1.6" shape="round" />
              <pad name="5" x="7.62" y="-7.62" drill="0.8" diameter="1.6" shape="round" />
              <pad name="6" x="7.62" y="-5.08" drill="0.8" diameter="1.6" shape="round" />
              <pad name="7" x="7.62" y="-2.54" drill="0.8" diameter="1.6" shape="round" />
              <pad name="8" x="7.62" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <wire x1="1.16" y1="1.33" x2="1.16" y2="-8.95" layer="21" width="0.12" />
              <wire x1="1.16" y1="-8.95" x2="6.46" y2="-8.95" layer="21" width="0.12" />
              <wire x1="2.81" y1="1.33" x2="1.16" y2="1.33" layer="21" width="0.12" />
              <wire x1="6.46" y1="1.33" x2="4.81" y2="1.33" layer="21" width="0.12" />
              <wire x1="6.46" y1="-8.95" x2="6.46" y2="1.33" layer="21" width="0.12" />
              <text x="3.81" y="2.33" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="3.81" y="-9.95" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="CP_Radial_D5.0mm_P2.00mm">
              <pad name="1" x="0.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <pad name="2" x="2.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <wire x1="-1.804775" y1="1.475" x2="-1.304775" y2="1.475" layer="21" width="0.12" />
              <wire x1="-1.554775" y1="1.725" x2="-1.554775" y2="1.225" layer="21" width="0.12" />
              <wire x1="1.0" y1="2.58" x2="1.0" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.0" y1="-1.04" x2="1.0" y2="-2.58" layer="21" width="0.12" />
              <wire x1="1.04" y1="2.58" x2="1.04" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.04" y1="-1.04" x2="1.04" y2="-2.58" layer="21" width="0.12" />
              <wire x1="1.08" y1="2.579" x2="1.08" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.08" y1="-1.04" x2="1.08" y2="-2.579" layer="21" width="0.12" />
              <wire x1="1.12" y1="2.577" x2="1.12" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.12" y1="-1.04" x2="1.12" y2="-2.577" layer="21" width="0.12" />
              <wire x1="1.16" y1="2.575" x2="1.16" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.16" y1="-1.04" x2="1.16" y2="-2.575" layer="21" width="0.12" />
              <wire x1="1.2" y1="2.572" x2="1.2" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.2" y1="-1.04" x2="1.2" y2="-2.572" layer="21" width="0.12" />
              <wire x1="1.24" y1="2.569" x2="1.24" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.24" y1="-1.04" x2="1.24" y2="-2.569" layer="21" width="0.12" />
              <wire x1="1.28" y1="2.565" x2="1.28" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.28" y1="-1.04" x2="1.28" y2="-2.565" layer="21" width="0.12" />
              <wire x1="1.32" y1="2.56" x2="1.32" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.32" y1="-1.04" x2="1.32" y2="-2.56" layer="21" width="0.12" />
              <wire x1="1.36" y1="2.555" x2="1.36" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.36" y1="-1.04" x2="1.36" y2="-2.555" layer="21" width="0.12" />
              <wire x1="1.4" y1="2.549" x2="1.4" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.4" y1="-1.04" x2="1.4" y2="-2.549" layer="21" width="0.12" />
              <wire x1="1.44" y1="2.543" x2="1.44" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.44" y1="-1.04" x2="1.44" y2="-2.543" layer="21" width="0.12" />
              <wire x1="1.48" y1="2.536" x2="1.48" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.48" y1="-1.04" x2="1.48" y2="-2.536" layer="21" width="0.12" />
              <wire x1="1.52" y1="2.528" x2="1.52" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.52" y1="-1.04" x2="1.52" y2="-2.528" layer="21" width="0.12" />
              <wire x1="1.56" y1="2.519" x2="1.56" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.56" y1="-1.04" x2="1.56" y2="-2.519" layer="21" width="0.12" />
              <wire x1="1.6" y1="2.51" x2="1.6" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.6" y1="-1.04" x2="1.6" y2="-2.51" layer="21" width="0.12" />
              <wire x1="1.64" y1="2.501" x2="1.64" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.64" y1="-1.04" x2="1.64" y2="-2.501" layer="21" width="0.12" />
              <wire x1="1.68" y1="2.49" x2="1.68" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.68" y1="-1.04" x2="1.68" y2="-2.49" layer="21" width="0.12" />
              <wire x1="1.72" y1="2.479" x2="1.72" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.72" y1="-1.04" x2="1.72" y2="-2.479" layer="21" width="0.12" />
              <wire x1="1.76" y1="2.467" x2="1.76" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.76" y1="-1.04" x2="1.76" y2="-2.467" layer="21" width="0.12" />
              <wire x1="1.8" y1="2.455" x2="1.8" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.8" y1="-1.04" x2="1.8" y2="-2.455" layer="21" width="0.12" />
              <wire x1="1.84" y1="2.442" x2="1.84" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.84" y1="-1.04" x2="1.84" y2="-2.442" layer="21" width="0.12" />
              <wire x1="1.88" y1="2.428" x2="1.88" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.88" y1="-1.04" x2="1.88" y2="-2.428" layer="21" width="0.12" />
              <wire x1="1.92" y1="2.413" x2="1.92" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.92" y1="-1.04" x2="1.92" y2="-2.413" layer="21" width="0.12" />
              <wire x1="1.96" y1="2.398" x2="1.96" y2="1.04" layer="21" width="0.12" />
              <wire x1="1.96" y1="-1.04" x2="1.96" y2="-2.398" layer="21" width="0.12" />
              <wire x1="2.0" y1="2.382" x2="2.0" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.0" y1="-1.04" x2="2.0" y2="-2.382" layer="21" width="0.12" />
              <wire x1="2.04" y1="2.365" x2="2.04" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.04" y1="-1.04" x2="2.04" y2="-2.365" layer="21" width="0.12" />
              <wire x1="2.08" y1="2.347" x2="2.08" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.08" y1="-1.04" x2="2.08" y2="-2.347" layer="21" width="0.12" />
              <wire x1="2.12" y1="2.329" x2="2.12" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.12" y1="-1.04" x2="2.12" y2="-2.329" layer="21" width="0.12" />
              <wire x1="2.16" y1="2.309" x2="2.16" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.16" y1="-1.04" x2="2.16" y2="-2.309" layer="21" width="0.12" />
              <wire x1="2.2" y1="2.289" x2="2.2" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.2" y1="-1.04" x2="2.2" y2="-2.289" layer="21" width="0.12" />
              <wire x1="2.24" y1="2.268" x2="2.24" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.24" y1="-1.04" x2="2.24" y2="-2.268" layer="21" width="0.12" />
              <wire x1="2.28" y1="2.246" x2="2.28" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.28" y1="-1.04" x2="2.28" y2="-2.246" layer="21" width="0.12" />
              <wire x1="2.32" y1="2.223" x2="2.32" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.32" y1="-1.04" x2="2.32" y2="-2.223" layer="21" width="0.12" />
              <wire x1="2.36" y1="2.199" x2="2.36" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.36" y1="-1.04" x2="2.36" y2="-2.199" layer="21" width="0.12" />
              <wire x1="2.4" y1="2.175" x2="2.4" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.4" y1="-1.04" x2="2.4" y2="-2.175" layer="21" width="0.12" />
              <wire x1="2.44" y1="2.149" x2="2.44" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.44" y1="-1.04" x2="2.44" y2="-2.149" layer="21" width="0.12" />
              <wire x1="2.48" y1="2.122" x2="2.48" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.48" y1="-1.04" x2="2.48" y2="-2.122" layer="21" width="0.12" />
              <wire x1="2.52" y1="2.094" x2="2.52" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.52" y1="-1.04" x2="2.52" y2="-2.094" layer="21" width="0.12" />
              <wire x1="2.56" y1="2.065" x2="2.56" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.56" y1="-1.04" x2="2.56" y2="-2.065" layer="21" width="0.12" />
              <wire x1="2.6" y1="2.035" x2="2.6" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.6" y1="-1.04" x2="2.6" y2="-2.035" layer="21" width="0.12" />
              <wire x1="2.64" y1="2.003" x2="2.64" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.64" y1="-1.04" x2="2.64" y2="-2.003" layer="21" width="0.12" />
              <wire x1="2.68" y1="1.97" x2="2.68" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.68" y1="-1.04" x2="2.68" y2="-1.97" layer="21" width="0.12" />
              <wire x1="2.72" y1="1.936" x2="2.72" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.72" y1="-1.04" x2="2.72" y2="-1.936" layer="21" width="0.12" />
              <wire x1="2.76" y1="1.901" x2="2.76" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.76" y1="-1.04" x2="2.76" y2="-1.901" layer="21" width="0.12" />
              <wire x1="2.8" y1="1.864" x2="2.8" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.8" y1="-1.04" x2="2.8" y2="-1.864" layer="21" width="0.12" />
              <wire x1="2.84" y1="1.825" x2="2.84" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.84" y1="-1.04" x2="2.84" y2="-1.825" layer="21" width="0.12" />
              <wire x1="2.88" y1="1.785" x2="2.88" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.88" y1="-1.04" x2="2.88" y2="-1.785" layer="21" width="0.12" />
              <wire x1="2.92" y1="1.743" x2="2.92" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.92" y1="-1.04" x2="2.92" y2="-1.743" layer="21" width="0.12" />
              <wire x1="2.96" y1="1.699" x2="2.96" y2="1.04" layer="21" width="0.12" />
              <wire x1="2.96" y1="-1.04" x2="2.96" y2="-1.699" layer="21" width="0.12" />
              <wire x1="3.0" y1="1.652" x2="3.0" y2="1.04" layer="21" width="0.12" />
              <wire x1="3.0" y1="-1.04" x2="3.0" y2="-1.652" layer="21" width="0.12" />
              <wire x1="3.04" y1="1.604" x2="3.04" y2="-1.604" layer="21" width="0.12" />
              <wire x1="3.08" y1="1.553" x2="3.08" y2="-1.553" layer="21" width="0.12" />
              <wire x1="3.12" y1="1.499" x2="3.12" y2="-1.499" layer="21" width="0.12" />
              <wire x1="3.16" y1="1.443" x2="3.16" y2="-1.443" layer="21" width="0.12" />
              <wire x1="3.2" y1="1.383" x2="3.2" y2="-1.383" layer="21" width="0.12" />
              <wire x1="3.24" y1="1.319" x2="3.24" y2="-1.319" layer="21" width="0.12" />
              <wire x1="3.28" y1="1.251" x2="3.28" y2="-1.251" layer="21" width="0.12" />
              <wire x1="3.32" y1="1.177" x2="3.32" y2="-1.177" layer="21" width="0.12" />
              <wire x1="3.36" y1="1.098" x2="3.36" y2="-1.098" layer="21" width="0.12" />
              <wire x1="3.4" y1="1.011" x2="3.4" y2="-1.011" layer="21" width="0.12" />
              <wire x1="3.44" y1="0.914" x2="3.44" y2="-0.914" layer="21" width="0.12" />
              <wire x1="3.48" y1="0.805" x2="3.48" y2="-0.805" layer="21" width="0.12" />
              <wire x1="3.52" y1="0.677" x2="3.52" y2="-0.677" layer="21" width="0.12" />
              <wire x1="3.56" y1="0.517" x2="3.56" y2="-0.517" layer="21" width="0.12" />
              <wire x1="3.6" y1="0.283" x2="3.6" y2="-0.283" layer="21" width="0.12" />
              <circle x="1.0" y="-0.0" radius="2.62" width="0.12" layer="21" />
              <text x="1.0" y="3.75" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="1.0" y="-3.75" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="Potentiometer_Bourns_3296W_Vertical">
              <pad name="1" x="0.0" y="-0.0" drill="0.8" diameter="1.44" shape="round" />
              <pad name="2" x="-2.54" y="-0.0" drill="0.8" diameter="1.44" shape="round" />
              <pad name="3" x="-5.08" y="-0.0" drill="0.8" diameter="1.44" shape="round" />
              <wire x1="-7.415" y1="2.52" x2="-7.415" y2="-2.53" layer="21" width="0.12" />
              <wire x1="-7.415" y1="2.52" x2="2.335" y2="2.52" layer="21" width="0.12" />
              <wire x1="-7.415" y1="-2.53" x2="2.335" y2="-2.53" layer="21" width="0.12" />
              <wire x1="2.335" y1="2.52" x2="2.335" y2="-2.53" layer="21" width="0.12" />
              <text x="-2.54" y="3.66" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="-2.54" y="-3.67" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="TestPoint_THTPad_D1.5mm_Drill0.7mm">
              <pad name="1" x="0.0" y="-0.0" drill="0.7" diameter="1.5" shape="round" />
              <circle x="0.0" y="-0.0" radius="0.95" width="0.12" layer="21" />
              <text x="0.0" y="1.648" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="0.0" y="-1.75" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="PinHeader_1x02_P2.54mm_Vertical">
              <pad name="1" x="0.0" y="-0.0" drill="1.0" diameter="1.7" shape="square" />
              <pad name="2" x="0.0" y="-2.54" drill="1.0" diameter="1.7" shape="round" />
              <wire x1="-1.38" y1="1.38" x2="0.0" y2="1.38" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-0.0" x2="-1.38" y2="1.38" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-1.27" x2="-1.38" y2="-3.92" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-1.27" x2="1.38" y2="-1.27" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-3.92" x2="1.38" y2="-3.92" layer="21" width="0.12" />
              <wire x1="1.38" y1="-1.27" x2="1.38" y2="-3.92" layer="21" width="0.12" />
              <text x="0.0" y="2.38" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="0.0" y="-4.92" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="PinHeader_1x03_P2.54mm_Vertical">
              <pad name="1" x="0.0" y="-0.0" drill="1.0" diameter="1.7" shape="square" />
              <pad name="2" x="0.0" y="-2.54" drill="1.0" diameter="1.7" shape="round" />
              <pad name="3" x="0.0" y="-5.08" drill="1.0" diameter="1.7" shape="round" />
              <wire x1="-1.38" y1="1.38" x2="0.0" y2="1.38" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-0.0" x2="-1.38" y2="1.38" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-1.27" x2="-1.38" y2="-6.46" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-1.27" x2="1.38" y2="-1.27" layer="21" width="0.12" />
              <wire x1="-1.38" y1="-6.46" x2="1.38" y2="-6.46" layer="21" width="0.12" />
              <wire x1="1.38" y1="-1.27" x2="1.38" y2="-6.46" layer="21" width="0.12" />
              <text x="0.0" y="2.38" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="0.0" y="-7.46" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
            <package name="DIP-14_W7.62mm">
              <pad name="1" x="0.0" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <pad name="2" x="0.0" y="-2.54" drill="0.8" diameter="1.6" shape="round" />
              <pad name="3" x="0.0" y="-5.08" drill="0.8" diameter="1.6" shape="round" />
              <pad name="4" x="0.0" y="-7.62" drill="0.8" diameter="1.6" shape="round" />
              <pad name="5" x="0.0" y="-10.16" drill="0.8" diameter="1.6" shape="round" />
              <pad name="6" x="0.0" y="-12.7" drill="0.8" diameter="1.6" shape="round" />
              <pad name="7" x="0.0" y="-15.24" drill="0.8" diameter="1.6" shape="round" />
              <pad name="8" x="7.62" y="-15.24" drill="0.8" diameter="1.6" shape="round" />
              <pad name="9" x="7.62" y="-12.7" drill="0.8" diameter="1.6" shape="round" />
              <pad name="10" x="7.62" y="-10.16" drill="0.8" diameter="1.6" shape="round" />
              <pad name="11" x="7.62" y="-7.62" drill="0.8" diameter="1.6" shape="round" />
              <pad name="12" x="7.62" y="-5.08" drill="0.8" diameter="1.6" shape="round" />
              <pad name="13" x="7.62" y="-2.54" drill="0.8" diameter="1.6" shape="round" />
              <pad name="14" x="7.62" y="-0.0" drill="0.8" diameter="1.6" shape="round" />
              <wire x1="1.16" y1="1.33" x2="1.16" y2="-16.57" layer="21" width="0.12" />
              <wire x1="1.16" y1="-16.57" x2="6.46" y2="-16.57" layer="21" width="0.12" />
              <wire x1="2.81" y1="1.33" x2="1.16" y2="1.33" layer="21" width="0.12" />
              <wire x1="6.46" y1="1.33" x2="4.81" y2="1.33" layer="21" width="0.12" />
              <wire x1="6.46" y1="-16.57" x2="6.46" y2="1.33" layer="21" width="0.12" />
              <text x="3.81" y="2.33" size="1.046512" layer="25" align="center" ratio="14">&gt;NAME</text>
              <text x="3.81" y="-17.57" size="1.162791" layer="27" align="center" ratio="14">&gt;VALUE</text>
            </package>
          </packages>
          <symbols>
            <symbol name="4013">
              <pin name="14" x="0" y="20.32" visible="both" length="short" direction="pwr" rot="R270" />
              <pin name="7" x="0" y="-20.32" visible="both" length="short" direction="pwr" rot="R90" />
              <pin name="5" x="-15.24" y="12.7" visible="both" length="short" direction="in" rot="R0" />
              <pin name="3" x="-15.24" y="7.62" visible="both" length="short" direction="in" rot="R0" />
              <pin name="6" x="-15.24" y="2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="4" x="-15.24" y="-2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="9" x="-15.24" y="-7.62" visible="both" length="short" direction="in" rot="R0" />
              <pin name="11" x="-15.24" y="-12.7" visible="both" length="short" direction="in" rot="R0" />
              <pin name="8" x="15.24" y="-7.62" visible="both" length="short" direction="in" rot="R180" />
              <pin name="10" x="15.24" y="-12.7" visible="both" length="short" direction="in" rot="R180" />
              <pin name="1" x="15.24" y="12.7" visible="both" length="short" direction="out" rot="R180" />
              <pin name="2" x="15.24" y="7.62" visible="both" length="short" direction="out" rot="R180" />
              <pin name="13" x="15.24" y="2.54" visible="both" length="short" direction="out" rot="R180" />
              <pin name="12" x="15.24" y="-2.54" visible="both" length="short" direction="out" rot="R180" />
              <wire x1="-12.7" y1="-17.78" x2="12.7" y2="-17.78" layer="94" width="0.1524" />
              <wire x1="12.7" y1="-17.78" x2="12.7" y2="17.78" layer="94" width="0.1524" />
              <wire x1="12.7" y1="17.78" x2="-12.7" y2="17.78" layer="94" width="0.1524" />
              <wire x1="-12.7" y1="17.78" x2="-12.7" y2="-17.78" layer="94" width="0.1524" />
              <text x="0" y="23" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-23" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="C">
              <pin name="1" x="-5.08" y="0" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="5.08" y="0" visible="both" length="short" direction="pas" rot="R180" />
              <wire x1="-0.635" y1="-2.54" x2="-0.635" y2="2.54" layer="94" width="0.1524" />
              <wire x1="0.635" y1="-2.54" x2="0.635" y2="2.54" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="0" x2="-0.635" y2="0" layer="94" width="0.1524" />
              <wire x1="0.635" y1="0" x2="2.54" y2="0" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="CONN2">
              <pin name="1" x="-5.08" y="1.27" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="-5.08" y="-1.27" visible="both" length="short" direction="pas" rot="R0" />
              <wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" layer="94" width="0.1524" />
              <wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" layer="94" width="0.1524" />
              <wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="CONN3">
              <pin name="1" x="-5.08" y="2.54" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="-5.08" y="0" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="3" x="-5.08" y="-2.54" visible="both" length="short" direction="pas" rot="R0" />
              <wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" layer="94" width="0.1524" />
              <wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" layer="94" width="0.1524" />
              <wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="CP">
              <pin name="1" x="-5.08" y="0" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="5.08" y="0" visible="both" length="short" direction="pas" rot="R180" />
              <wire x1="-0.635" y1="-2.54" x2="-0.635" y2="2.54" layer="94" width="0.1524" />
              <wire x1="0.635" y1="-2.54" x2="0.635" y2="2.54" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="0" x2="-0.635" y2="0" layer="94" width="0.1524" />
              <wire x1="0.635" y1="0" x2="2.54" y2="0" layer="94" width="0.1524" />
              <text x="-2" y="3" size="1" layer="94">+</text>
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="NE555">
              <pin name="8" x="0" y="15.24" visible="both" length="short" direction="pwr" rot="R270" />
              <pin name="1" x="0" y="-15.24" visible="both" length="short" direction="pwr" rot="R90" />
              <pin name="2" x="-12.7" y="7.62" visible="both" length="short" direction="in" rot="R0" />
              <pin name="6" x="-12.7" y="2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="4" x="-12.7" y="-2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="5" x="-12.7" y="-7.62" visible="both" length="short" direction="in" rot="R0" />
              <pin name="3" x="12.7" y="5.08" visible="both" length="short" direction="out" rot="R180" />
              <pin name="7" x="12.7" y="-5.08" visible="both" length="short" direction="oc" rot="R180" />
              <wire x1="-10.16" y1="-12.7" x2="10.16" y2="-12.7" layer="94" width="0.1524" />
              <wire x1="10.16" y1="-12.7" x2="10.16" y2="12.7" layer="94" width="0.1524" />
              <wire x1="10.16" y1="12.7" x2="-10.16" y2="12.7" layer="94" width="0.1524" />
              <wire x1="-10.16" y1="12.7" x2="-10.16" y2="-12.7" layer="94" width="0.1524" />
              <text x="0" y="18" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-19" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="POT">
              <pin name="1" x="-5.08" y="0" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="0" y="5.08" visible="both" length="short" direction="pas" rot="R270" />
              <pin name="3" x="5.08" y="0" visible="both" length="short" direction="pas" rot="R180" />
              <wire x1="-2.54" y1="-1" x2="2.54" y2="-1" layer="94" width="0.1524" />
              <wire x1="2.54" y1="-1" x2="2.54" y2="1" layer="94" width="0.1524" />
              <wire x1="2.54" y1="1" x2="-2.54" y2="1" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="1" x2="-2.54" y2="-1" layer="94" width="0.1524" />
              <wire x1="0" y1="2.54" x2="0" y2="1" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="R">
              <pin name="1" x="-5.08" y="0" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="5.08" y="0" visible="both" length="short" direction="pas" rot="R180" />
              <wire x1="-2.54" y1="-1" x2="2.54" y2="-1" layer="94" width="0.1524" />
              <wire x1="2.54" y1="-1" x2="2.54" y2="1" layer="94" width="0.1524" />
              <wire x1="2.54" y1="1" x2="-2.54" y2="1" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="1" x2="-2.54" y2="-1" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="TL082_A">
              <pin name="3" x="-7.62" y="2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="2" x="-7.62" y="-2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="1" x="7.62" y="0" visible="both" length="short" direction="out" rot="R180" />
              <wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" layer="94" width="0.1524" />
              <wire x1="-5.08" y1="5.08" x2="5.08" y2="0" layer="94" width="0.1524" />
              <wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="TL082_B">
              <pin name="5" x="-7.62" y="2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="6" x="-7.62" y="-2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="7" x="7.62" y="0" visible="both" length="short" direction="out" rot="R180" />
              <wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" layer="94" width="0.1524" />
              <wire x1="-5.08" y1="5.08" x2="5.08" y2="0" layer="94" width="0.1524" />
              <wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="TL082_P">
              <pin name="8" x="0" y="5.08" visible="both" length="short" direction="pwr" rot="R270" />
              <pin name="4" x="0" y="-5.08" visible="both" length="short" direction="pwr" rot="R90" />
              <wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" layer="94" width="0.1524" />
              <wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" layer="94" width="0.1524" />
              <wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" layer="94" width="0.1524" />
              <wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="TP">
              <pin name="1" x="0" y="-2.54" visible="both" length="short" direction="pas" rot="R90" />
              <circle x="0" y="0" radius="0.8" width="0.15" layer="94" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-9" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
          </symbols>
          <devicesets>
            <deviceset name="4013" prefix="U" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="4013" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="DIP-14_W7.62mm">
                  <connects>
                    <connect gate="G$1" pin="14" pad="14" />
                    <connect gate="G$1" pin="7" pad="7" />
                    <connect gate="G$1" pin="5" pad="5" />
                    <connect gate="G$1" pin="3" pad="3" />
                    <connect gate="G$1" pin="6" pad="6" />
                    <connect gate="G$1" pin="4" pad="4" />
                    <connect gate="G$1" pin="9" pad="9" />
                    <connect gate="G$1" pin="11" pad="11" />
                    <connect gate="G$1" pin="8" pad="8" />
                    <connect gate="G$1" pin="10" pad="10" />
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                    <connect gate="G$1" pin="13" pad="13" />
                    <connect gate="G$1" pin="12" pad="12" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C_Disc_D5.0mm_W2.5mm_P5.00mm">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="CONN2" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="CONN2" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="PinHeader_1x02_P2.54mm_Vertical">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="CONN3" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="CONN3" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="PinHeader_1x03_P2.54mm_Vertical">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                    <connect gate="G$1" pin="3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="CP" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="CP" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="CP_Radial_D5.0mm_P2.00mm">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="NE555" prefix="U" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="NE555" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="DIP-8_W7.62mm">
                  <connects>
                    <connect gate="G$1" pin="8" pad="8" />
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                    <connect gate="G$1" pin="6" pad="6" />
                    <connect gate="G$1" pin="4" pad="4" />
                    <connect gate="G$1" pin="5" pad="5" />
                    <connect gate="G$1" pin="3" pad="3" />
                    <connect gate="G$1" pin="7" pad="7" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="POT" prefix="RV" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="POT" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="Potentiometer_Bourns_3296W_Vertical">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                    <connect gate="G$1" pin="3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TL082" prefix="U" uservalue="yes">
              <gates>
                <gate name="A" symbol="TL082_A" x="0" y="0" />
                <gate name="B" symbol="TL082_B" x="0" y="0" />
                <gate name="P" symbol="TL082_P" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="DIP-8_W7.62mm">
                  <connects>
                    <connect gate="A" pin="3" pad="3" />
                    <connect gate="A" pin="2" pad="2" />
                    <connect gate="A" pin="1" pad="1" />
                    <connect gate="B" pin="5" pad="5" />
                    <connect gate="B" pin="6" pad="6" />
                    <connect gate="B" pin="7" pad="7" />
                    <connect gate="P" pin="8" pad="8" />
                    <connect gate="P" pin="4" pad="4" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP" prefix="TP" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="TP" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="TestPoint_THTPad_D1.5mm_Drill0.7mm">
                  <connects>
                    <connect gate="G$1" pin="1" pad="1" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
          </devicesets>
        </library>
      </libraries>
      <attributes />
      <variantdefs />
      <classes>
        <class number="0" name="default" width="0.25" drill="0.3">
          <clearance class="0" value="0.2" />
        </class>
      </classes>
      <parts>
        <part name="U1" library="Waveform" deviceset="NE555" device="" value="NE555P" />
        <part name="U2" library="Waveform" deviceset="4013" device="" value="CD4013BE" />
        <part name="R1" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R2" library="Waveform" deviceset="R" device="" value="27k" />
        <part name="RV1" library="Waveform" deviceset="POT" device="" value="20k" />
        <part name="C1" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="C2" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="C3" library="Waveform" deviceset="CP" device="" value="10u/25V" />
        <part name="R3" library="Waveform" deviceset="R" device="" value="1M" />
        <part name="RV2" library="Waveform" deviceset="POT" device="" value="100k" />
        <part name="U3" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R4" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R5" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="TP1" library="Waveform" deviceset="TP" device="" value="CLOCK_2K" />
        <part name="TP2" library="Waveform" deviceset="TP" device="" value="SQ" />
        <part name="TP3" library="Waveform" deviceset="TP" device="" value="SQ_INV" />
        <part name="R6" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R7" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV3" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R8" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C4" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="C5" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="R9" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R10" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV4" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R11" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C6" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="C7" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="U4" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R12" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R13" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R14" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV5" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C8" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="R15" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R16" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R17" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV6" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C9" library="Waveform" deviceset="C" device="" value="10n" />
        <part name="U5" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R18" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R19" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="J1" library="Waveform" deviceset="CONN3" device="" value="PHASE_POLARITY" />
        <part name="RV7" library="Waveform" deviceset="POT" device="" value="10k" />
        <part name="U6" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="TP4" library="Waveform" deviceset="TP" device="" value="H1_BPF2" />
        <part name="TP5" library="Waveform" deviceset="TP" device="" value="H1_AP2" />
        <part name="TP6" library="Waveform" deviceset="TP" device="" value="H1_OUT" />
        <part name="R20" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R21" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV8" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R22" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C10" library="Waveform" deviceset="C" device="" value="3.3n" />
        <part name="C11" library="Waveform" deviceset="C" device="" value="3.3n" />
        <part name="R23" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R24" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV9" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R25" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C12" library="Waveform" deviceset="C" device="" value="3.3n" />
        <part name="C13" library="Waveform" deviceset="C" device="" value="3.3n" />
        <part name="U7" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R26" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R27" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R28" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV10" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C14" library="Waveform" deviceset="C" device="" value="3.3n" />
        <part name="R29" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R30" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R31" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV11" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C15" library="Waveform" deviceset="C" device="" value="3.3n" />
        <part name="U8" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R32" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R33" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="J2" library="Waveform" deviceset="CONN3" device="" value="PHASE_POLARITY" />
        <part name="RV12" library="Waveform" deviceset="POT" device="" value="10k" />
        <part name="U9" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="TP7" library="Waveform" deviceset="TP" device="" value="H3_BPF2" />
        <part name="TP8" library="Waveform" deviceset="TP" device="" value="H3_AP2" />
        <part name="TP9" library="Waveform" deviceset="TP" device="" value="H3_OUT" />
        <part name="R34" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R35" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV13" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R36" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C16" library="Waveform" deviceset="C" device="" value="2n" />
        <part name="C17" library="Waveform" deviceset="C" device="" value="2n" />
        <part name="R37" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R38" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV14" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R39" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C18" library="Waveform" deviceset="C" device="" value="2n" />
        <part name="C19" library="Waveform" deviceset="C" device="" value="2n" />
        <part name="U10" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R40" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R41" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R42" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV15" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C20" library="Waveform" deviceset="C" device="" value="2n" />
        <part name="R43" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R44" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R45" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV16" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C21" library="Waveform" deviceset="C" device="" value="2n" />
        <part name="U11" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R46" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R47" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="J3" library="Waveform" deviceset="CONN3" device="" value="PHASE_POLARITY" />
        <part name="RV17" library="Waveform" deviceset="POT" device="" value="10k" />
        <part name="U12" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="TP10" library="Waveform" deviceset="TP" device="" value="H5_BPF2" />
        <part name="TP11" library="Waveform" deviceset="TP" device="" value="H5_AP2" />
        <part name="TP12" library="Waveform" deviceset="TP" device="" value="H5_OUT" />
        <part name="R48" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R49" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV18" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R50" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C22" library="Waveform" deviceset="C" device="" value="1.5n" />
        <part name="C23" library="Waveform" deviceset="C" device="" value="1.5n" />
        <part name="R51" library="Waveform" deviceset="R" device="" value="220k" />
        <part name="R52" library="Waveform" deviceset="R" device="" value="430" />
        <part name="RV19" library="Waveform" deviceset="POT" device="" value="200" />
        <part name="R53" library="Waveform" deviceset="R" device="" value="470k" />
        <part name="C24" library="Waveform" deviceset="C" device="" value="1.5n" />
        <part name="C25" library="Waveform" deviceset="C" device="" value="1.5n" />
        <part name="U13" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R54" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R55" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R56" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV20" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C26" library="Waveform" deviceset="C" device="" value="1.5n" />
        <part name="R57" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R58" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R59" library="Waveform" deviceset="R" device="" value="100" />
        <part name="RV21" library="Waveform" deviceset="POT" device="" value="200k" />
        <part name="C27" library="Waveform" deviceset="C" device="" value="1.5n" />
        <part name="U14" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R60" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="R61" library="Waveform" deviceset="R" device="" value="10k" />
        <part name="J4" library="Waveform" deviceset="CONN3" device="" value="PHASE_POLARITY" />
        <part name="RV22" library="Waveform" deviceset="POT" device="" value="10k" />
        <part name="U15" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="TP13" library="Waveform" deviceset="TP" device="" value="H7_BPF2" />
        <part name="TP14" library="Waveform" deviceset="TP" device="" value="H7_AP2" />
        <part name="TP15" library="Waveform" deviceset="TP" device="" value="H7_OUT" />
        <part name="R62" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R63" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R64" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R65" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R66" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R67" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="R68" library="Waveform" deviceset="R" device="" value="100k" />
        <part name="U16" library="Waveform" deviceset="TL082" device="" value="TL082CP" />
        <part name="R69" library="Waveform" deviceset="R" device="" value="100" />
        <part name="TP16" library="Waveform" deviceset="TP" device="" value="SUM_RAW" />
        <part name="TP17" library="Waveform" deviceset="TP" device="" value="OUT" />
        <part name="TP18" library="Waveform" deviceset="TP" device="" value="GND" />
        <part name="J5" library="Waveform" deviceset="CONN3" device="" value="POWER_12V" />
        <part name="J6" library="Waveform" deviceset="CONN2" device="" value="WAVE_OUT" />
        <part name="C28" library="Waveform" deviceset="CP" device="" value="47u/25V" />
        <part name="C29" library="Waveform" deviceset="CP" device="" value="47u/25V" />
        <part name="C30" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C31" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C32" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C33" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C34" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C35" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C36" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C37" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C38" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C39" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C40" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C41" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C42" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C43" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C44" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C45" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C46" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C47" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C48" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C49" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C50" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C51" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C52" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C53" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C54" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C55" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C56" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C57" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C58" library="Waveform" deviceset="C" device="" value="100n" />
        <part name="C59" library="Waveform" deviceset="C" device="" value="100n" />
      </parts>
      <sheets>
        <sheet>
          <plain>
            <text x="30.48" y="825.76" size="3" layer="97">NE555 + TL082 FOURIER WAVEFORM SYNTHESIS — Rev B wired schematic</text>
            <text x="30.48" y="818.14" size="1.5" layer="97">Regulated +12 V / GND / -12 V. Signal wires are drawn explicitly. All labels are single-sheet local nets.</text>
            <text x="64.77" y="806.71" size="2" layer="97">SOURCE: 2 kHz clock / divide by two / DC blocking / 10 Vpp calibration</text>
            <text x="69.85" y="683.52" size="2" layer="97">1 kHz: TWO MFB BANDPASS SECTIONS -&gt; TWO ALL-PASS SECTIONS -&gt; POLARITY -&gt; AMPLITUDE</text>
            <text x="825.5" y="565.4100000000001" size="1.27" layer="97">ONE shunt: default 2-3</text>
            <text x="69.85" y="533.6600000000001" size="2" layer="97">3 kHz: TWO MFB BANDPASS SECTIONS -&gt; TWO ALL-PASS SECTIONS -&gt; POLARITY -&gt; AMPLITUDE</text>
            <text x="825.5" y="415.55" size="1.27" layer="97">ONE shunt: default 2-3</text>
            <text x="69.85" y="383.8" size="2" layer="97">5 kHz: TWO MFB BANDPASS SECTIONS -&gt; TWO ALL-PASS SECTIONS -&gt; POLARITY -&gt; AMPLITUDE</text>
            <text x="825.5" y="265.69000000000005" size="1.27" layer="97">ONE shunt: default 2-3</text>
            <text x="69.85" y="233.94000000000005" size="2" layer="97">7 kHz: TWO MFB BANDPASS SECTIONS -&gt; TWO ALL-PASS SECTIONS -&gt; POLARITY -&gt; AMPLITUDE</text>
            <text x="825.5" y="115.83000000000004" size="1.27" layer="97">ONE shunt: default 2-3</text>
            <text x="1029.97" y="141.23000000000002" size="2" layer="97">SUM AND OUTPUT</text>
            <text x="825.5" y="805.44" size="2" layer="97">REGULATED +/-12 V INPUT</text>
            <text x="875.03" y="739.4" size="1.27" layer="97">C29 positive terminal = GND</text>
            <text x="49.53" y="90.42999999999995" size="1.5" layer="97">ANALOG POWER AND LOCAL BYPASS: 100 nF at each supply pin</text>
            <wire x1="135.89" y1="706.38" x2="143.51" y2="706.38" layer="94" width="0.254" />
            <wire x1="137.16" y1="705.11" x2="142.24" y2="705.11" layer="94" width="0.254" />
            <wire x1="138.43" y1="703.84" x2="140.97" y2="703.84" layer="94" width="0.254" />
            <wire x1="176.53" y1="745.75" x2="184.15" y2="745.75" layer="94" width="0.254" />
            <wire x1="177.8" y1="744.48" x2="182.88" y2="744.48" layer="94" width="0.254" />
            <wire x1="179.07" y1="743.21" x2="181.61" y2="743.21" layer="94" width="0.254" />
            <wire x1="151.13" y1="720.35" x2="158.75" y2="720.35" layer="94" width="0.254" />
            <wire x1="152.4" y1="719.08" x2="157.48" y2="719.08" layer="94" width="0.254" />
            <wire x1="153.67" y1="717.81" x2="156.21" y2="717.81" layer="94" width="0.254" />
            <wire x1="316.23" y1="740.67" x2="323.85" y2="740.67" layer="94" width="0.254" />
            <wire x1="317.5" y1="739.4" x2="322.58" y2="739.4" layer="94" width="0.254" />
            <wire x1="318.77" y1="738.13" x2="321.31" y2="738.13" layer="94" width="0.254" />
            <wire x1="406.4" y1="730.51" x2="414.02" y2="730.51" layer="94" width="0.254" />
            <wire x1="407.67" y1="729.24" x2="412.75" y2="729.24" layer="94" width="0.254" />
            <wire x1="408.94" y1="727.97" x2="411.48" y2="727.97" layer="94" width="0.254" />
            <wire x1="435.61" y1="730.51" x2="443.23" y2="730.51" layer="94" width="0.254" />
            <wire x1="436.88" y1="729.24" x2="441.96" y2="729.24" layer="94" width="0.254" />
            <wire x1="438.15" y1="727.97" x2="440.69" y2="727.97" layer="94" width="0.254" />
            <wire x1="127.0" y1="560.3299999999999" x2="134.62" y2="560.3299999999999" layer="94" width="0.254" />
            <wire x1="128.27" y1="559.06" x2="133.35" y2="559.06" layer="94" width="0.254" />
            <wire x1="129.54" y1="557.79" x2="132.08" y2="557.79" layer="94" width="0.254" />
            <wire x1="281.94" y1="560.3299999999999" x2="289.56" y2="560.3299999999999" layer="94" width="0.254" />
            <wire x1="283.21" y1="559.06" x2="288.29" y2="559.06" layer="94" width="0.254" />
            <wire x1="284.48" y1="557.79" x2="287.02" y2="557.79" layer="94" width="0.254" />
            <wire x1="461.01" y1="616.21" x2="468.63" y2="616.21" layer="94" width="0.254" />
            <wire x1="462.28" y1="614.94" x2="467.36" y2="614.94" layer="94" width="0.254" />
            <wire x1="463.55" y1="613.67" x2="466.09" y2="613.67" layer="94" width="0.254" />
            <wire x1="615.95" y1="616.21" x2="623.57" y2="616.21" layer="94" width="0.254" />
            <wire x1="617.22" y1="614.94" x2="622.3" y2="614.94" layer="94" width="0.254" />
            <wire x1="618.49" y1="613.67" x2="621.03" y2="613.67" layer="94" width="0.254" />
            <wire x1="876.3" y1="580.65" x2="883.92" y2="580.65" layer="94" width="0.254" />
            <wire x1="877.57" y1="579.38" x2="882.65" y2="579.38" layer="94" width="0.254" />
            <wire x1="878.84" y1="578.11" x2="881.38" y2="578.11" layer="94" width="0.254" />
            <wire x1="127.0" y1="410.47" x2="134.62" y2="410.47" layer="94" width="0.254" />
            <wire x1="128.27" y1="409.2" x2="133.35" y2="409.2" layer="94" width="0.254" />
            <wire x1="129.54" y1="407.93" x2="132.08" y2="407.93" layer="94" width="0.254" />
            <wire x1="281.94" y1="410.47" x2="289.56" y2="410.47" layer="94" width="0.254" />
            <wire x1="283.21" y1="409.2" x2="288.29" y2="409.2" layer="94" width="0.254" />
            <wire x1="284.48" y1="407.93" x2="287.02" y2="407.93" layer="94" width="0.254" />
            <wire x1="461.01" y1="466.35" x2="468.63" y2="466.35" layer="94" width="0.254" />
            <wire x1="462.28" y1="465.08" x2="467.36" y2="465.08" layer="94" width="0.254" />
            <wire x1="463.55" y1="463.81" x2="466.09" y2="463.81" layer="94" width="0.254" />
            <wire x1="615.95" y1="466.35" x2="623.57" y2="466.35" layer="94" width="0.254" />
            <wire x1="617.22" y1="465.08" x2="622.3" y2="465.08" layer="94" width="0.254" />
            <wire x1="618.49" y1="463.81" x2="621.03" y2="463.81" layer="94" width="0.254" />
            <wire x1="876.3" y1="430.79" x2="883.92" y2="430.79" layer="94" width="0.254" />
            <wire x1="877.57" y1="429.52" x2="882.65" y2="429.52" layer="94" width="0.254" />
            <wire x1="878.84" y1="428.25" x2="881.38" y2="428.25" layer="94" width="0.254" />
            <wire x1="127.0" y1="260.61" x2="134.62" y2="260.61" layer="94" width="0.254" />
            <wire x1="128.27" y1="259.34000000000003" x2="133.35" y2="259.34000000000003" layer="94" width="0.254" />
            <wire x1="129.54" y1="258.07000000000005" x2="132.08" y2="258.07000000000005" layer="94" width="0.254" />
            <wire x1="281.94" y1="260.61" x2="289.56" y2="260.61" layer="94" width="0.254" />
            <wire x1="283.21" y1="259.34000000000003" x2="288.29" y2="259.34000000000003" layer="94" width="0.254" />
            <wire x1="284.48" y1="258.07000000000005" x2="287.02" y2="258.07000000000005" layer="94" width="0.254" />
            <wire x1="461.01" y1="316.49" x2="468.63" y2="316.49" layer="94" width="0.254" />
            <wire x1="462.28" y1="315.22" x2="467.36" y2="315.22" layer="94" width="0.254" />
            <wire x1="463.55" y1="313.95000000000005" x2="466.09" y2="313.95000000000005" layer="94" width="0.254" />
            <wire x1="615.95" y1="316.49" x2="623.57" y2="316.49" layer="94" width="0.254" />
            <wire x1="617.22" y1="315.22" x2="622.3" y2="315.22" layer="94" width="0.254" />
            <wire x1="618.49" y1="313.95000000000005" x2="621.03" y2="313.95000000000005" layer="94" width="0.254" />
            <wire x1="876.3" y1="280.92999999999995" x2="883.92" y2="280.92999999999995" layer="94" width="0.254" />
            <wire x1="877.57" y1="279.65999999999997" x2="882.65" y2="279.65999999999997" layer="94" width="0.254" />
            <wire x1="878.84" y1="278.39" x2="881.38" y2="278.39" layer="94" width="0.254" />
            <wire x1="127.0" y1="110.75" x2="134.62" y2="110.75" layer="94" width="0.254" />
            <wire x1="128.27" y1="109.48000000000002" x2="133.35" y2="109.48000000000002" layer="94" width="0.254" />
            <wire x1="129.54" y1="108.21000000000004" x2="132.08" y2="108.21000000000004" layer="94" width="0.254" />
            <wire x1="281.94" y1="110.75" x2="289.56" y2="110.75" layer="94" width="0.254" />
            <wire x1="283.21" y1="109.48000000000002" x2="288.29" y2="109.48000000000002" layer="94" width="0.254" />
            <wire x1="284.48" y1="108.21000000000004" x2="287.02" y2="108.21000000000004" layer="94" width="0.254" />
            <wire x1="461.01" y1="166.63" x2="468.63" y2="166.63" layer="94" width="0.254" />
            <wire x1="462.28" y1="165.36" x2="467.36" y2="165.36" layer="94" width="0.254" />
            <wire x1="463.55" y1="164.09000000000003" x2="466.09" y2="164.09000000000003" layer="94" width="0.254" />
            <wire x1="615.95" y1="166.63" x2="623.57" y2="166.63" layer="94" width="0.254" />
            <wire x1="617.22" y1="165.36" x2="622.3" y2="165.36" layer="94" width="0.254" />
            <wire x1="618.49" y1="164.09000000000003" x2="621.03" y2="164.09000000000003" layer="94" width="0.254" />
            <wire x1="876.3" y1="131.07000000000005" x2="883.92" y2="131.07000000000005" layer="94" width="0.254" />
            <wire x1="877.57" y1="129.79999999999995" x2="882.65" y2="129.79999999999995" layer="94" width="0.254" />
            <wire x1="878.84" y1="128.52999999999997" x2="881.38" y2="128.52999999999997" layer="94" width="0.254" />
            <wire x1="1021.08" y1="33.27999999999997" x2="1028.7" y2="33.27999999999997" layer="94" width="0.254" />
            <wire x1="1022.35" y1="32.00999999999999" x2="1027.43" y2="32.00999999999999" layer="94" width="0.254" />
            <wire x1="1023.62" y1="30.74000000000001" x2="1026.16" y2="30.74000000000001" layer="94" width="0.254" />
            <wire x1="896.62" y1="766.0699999999999" x2="904.24" y2="766.0699999999999" layer="94" width="0.254" />
            <wire x1="897.89" y1="764.8" x2="902.97" y2="764.8" layer="94" width="0.254" />
            <wire x1="899.16" y1="763.53" x2="901.7" y2="763.53" layer="94" width="0.254" />
            <wire x1="951.23" y1="786.39" x2="958.85" y2="786.39" layer="94" width="0.254" />
            <wire x1="952.5" y1="785.12" x2="957.58" y2="785.12" layer="94" width="0.254" />
            <wire x1="953.77" y1="783.85" x2="956.31" y2="783.85" layer="94" width="0.254" />
            <wire x1="896.62" y1="706.38" x2="904.24" y2="706.38" layer="94" width="0.254" />
            <wire x1="897.89" y1="705.11" x2="902.97" y2="705.11" layer="94" width="0.254" />
            <wire x1="899.16" y1="703.84" x2="901.7" y2="703.84" layer="94" width="0.254" />
            <wire x1="951.23" y1="706.38" x2="958.85" y2="706.38" layer="94" width="0.254" />
            <wire x1="952.5" y1="705.11" x2="957.58" y2="705.11" layer="94" width="0.254" />
            <wire x1="953.77" y1="703.84" x2="956.31" y2="703.84" layer="94" width="0.254" />
            <wire x1="45.72" y1="40.89999999999998" x2="53.34" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="46.99" y1="39.629999999999995" x2="52.07" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="48.26" y1="38.360000000000014" x2="50.8" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="86.36" y1="61.22000000000003" x2="93.98" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="87.63" y1="59.950000000000045" x2="92.71" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="88.9" y1="58.67999999999995" x2="91.44" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="111.76" y1="40.89999999999998" x2="119.38" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="113.03" y1="39.629999999999995" x2="118.11" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="114.3" y1="38.360000000000014" x2="116.84" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="152.4" y1="61.22000000000003" x2="160.02" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="153.67" y1="59.950000000000045" x2="158.75" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="154.94" y1="58.67999999999995" x2="157.48" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="177.8" y1="40.89999999999998" x2="185.42" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="179.07" y1="39.629999999999995" x2="184.15" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="180.34" y1="38.360000000000014" x2="182.88" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="218.44" y1="61.22000000000003" x2="226.06" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="219.71" y1="59.950000000000045" x2="224.79" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="220.98" y1="58.67999999999995" x2="223.52" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="243.84" y1="40.89999999999998" x2="251.46" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="245.11" y1="39.629999999999995" x2="250.19" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="246.38" y1="38.360000000000014" x2="248.92" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="284.48" y1="61.22000000000003" x2="292.1" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="285.75" y1="59.950000000000045" x2="290.83" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="287.02" y1="58.67999999999995" x2="289.56" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="309.88" y1="40.89999999999998" x2="317.5" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="311.15" y1="39.629999999999995" x2="316.23" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="312.42" y1="38.360000000000014" x2="314.96" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="350.52" y1="61.22000000000003" x2="358.14" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="351.79" y1="59.950000000000045" x2="356.87" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="353.06" y1="58.67999999999995" x2="355.6" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="375.92" y1="40.89999999999998" x2="383.54" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="377.19" y1="39.629999999999995" x2="382.27" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="378.46" y1="38.360000000000014" x2="381.0" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="416.56" y1="61.22000000000003" x2="424.18" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="417.83" y1="59.950000000000045" x2="422.91" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="419.1" y1="58.67999999999995" x2="421.64" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="441.96" y1="40.89999999999998" x2="449.58" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="443.23" y1="39.629999999999995" x2="448.31" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="444.5" y1="38.360000000000014" x2="447.04" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="482.6" y1="61.22000000000003" x2="490.22" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="483.87" y1="59.950000000000045" x2="488.95" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="485.14" y1="58.67999999999995" x2="487.68" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="508.0" y1="40.89999999999998" x2="515.62" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="509.27" y1="39.629999999999995" x2="514.35" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="510.54" y1="38.360000000000014" x2="513.08" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="548.64" y1="61.22000000000003" x2="556.26" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="549.91" y1="59.950000000000045" x2="554.99" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="551.18" y1="58.67999999999995" x2="553.72" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="574.04" y1="40.89999999999998" x2="581.66" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="575.31" y1="39.629999999999995" x2="580.39" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="576.58" y1="38.360000000000014" x2="579.12" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="614.68" y1="61.22000000000003" x2="622.3" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="615.95" y1="59.950000000000045" x2="621.03" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="617.22" y1="58.67999999999995" x2="619.76" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="640.08" y1="40.89999999999998" x2="647.7" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="641.35" y1="39.629999999999995" x2="646.43" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="642.62" y1="38.360000000000014" x2="645.16" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="680.72" y1="61.22000000000003" x2="688.34" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="681.99" y1="59.950000000000045" x2="687.07" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="683.26" y1="58.67999999999995" x2="685.8" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="706.12" y1="40.89999999999998" x2="713.74" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="707.39" y1="39.629999999999995" x2="712.47" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="708.66" y1="38.360000000000014" x2="711.2" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="746.76" y1="61.22000000000003" x2="754.38" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="748.03" y1="59.950000000000045" x2="753.11" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="749.3" y1="58.67999999999995" x2="751.84" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="772.16" y1="40.89999999999998" x2="779.78" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="773.43" y1="39.629999999999995" x2="778.51" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="774.7" y1="38.360000000000014" x2="777.24" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="812.8" y1="61.22000000000003" x2="820.42" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="814.07" y1="59.950000000000045" x2="819.15" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="815.34" y1="58.67999999999995" x2="817.88" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="838.2" y1="40.89999999999998" x2="845.82" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="839.47" y1="39.629999999999995" x2="844.55" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="840.74" y1="38.360000000000014" x2="843.28" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="878.84" y1="61.22000000000003" x2="886.46" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="880.11" y1="59.950000000000045" x2="885.19" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="881.38" y1="58.67999999999995" x2="883.92" y2="58.67999999999995" layer="94" width="0.254" />
            <wire x1="904.24" y1="40.89999999999998" x2="911.86" y2="40.89999999999998" layer="94" width="0.254" />
            <wire x1="905.51" y1="39.629999999999995" x2="910.59" y2="39.629999999999995" layer="94" width="0.254" />
            <wire x1="906.78" y1="38.360000000000014" x2="909.32" y2="38.360000000000014" layer="94" width="0.254" />
            <wire x1="944.88" y1="61.22000000000003" x2="952.5" y2="61.22000000000003" layer="94" width="0.254" />
            <wire x1="946.15" y1="59.950000000000045" x2="951.23" y2="59.950000000000045" layer="94" width="0.254" />
            <wire x1="947.42" y1="58.67999999999995" x2="949.96" y2="58.67999999999995" layer="94" width="0.254" />
          </plain>
          <instances>
            <instance part="U1" gate="G$1" x="180.34" y="766.0699999999999" smashed="no" rot="R0" />
            <instance part="U2" gate="G$1" x="320.04" y="766.0699999999999" smashed="no" rot="R0" />
            <instance part="R1" gate="G$1" x="219.71" y="796.55" smashed="no" rot="R270" />
            <instance part="R2" gate="G$1" x="219.71" y="745.75" smashed="no" rot="R270" />
            <instance part="RV1" gate="G$1" x="219.71" y="721.62" smashed="no" rot="R270" />
            <instance part="C1" gate="G$1" x="139.7" y="716.54" smashed="no" rot="R270" />
            <instance part="C2" gate="G$1" x="154.94" y="730.51" smashed="no" rot="R270" />
            <instance part="TP1" gate="G$1" x="250.19" y="796.55" smashed="no" rot="R0" />
            <instance part="C3" gate="G$1" x="389.89" y="778.77" smashed="no" rot="R0" />
            <instance part="R3" gate="G$1" x="410.21" y="740.67" smashed="no" rot="R270" />
            <instance part="RV2" gate="G$1" x="439.42" y="740.67" smashed="no" rot="R270" />
            <instance part="U3" gate="A" x="529.59" y="740.67" smashed="no" rot="R0" />
            <instance part="TP2" gate="G$1" x="554.99" y="760.99" smashed="no" rot="R0" />
            <instance part="U3" gate="B" x="699.77" y="740.67" smashed="no" rot="R0" />
            <instance part="R4" gate="G$1" x="659.13" y="738.13" smashed="no" rot="R0" />
            <instance part="R5" gate="G$1" x="709.93" y="715.27" smashed="no" rot="R180" />
            <instance part="TP3" gate="G$1" x="750.57" y="740.67" smashed="no" rot="R0" />
            <instance part="U4" gate="A" x="180.34" y="611.13" smashed="no" rot="R0" />
            <instance part="R6" gate="G$1" x="100.33" y="608.59" smashed="no" rot="R0" />
            <instance part="C5" gate="G$1" x="154.94" y="608.59" smashed="no" rot="R0" />
            <instance part="C4" gate="G$1" x="154.94" y="641.61" smashed="no" rot="R0" />
            <instance part="R8" gate="G$1" x="190.5" y="590.81" smashed="no" rot="R180" />
            <instance part="R7" gate="G$1" x="130.81" y="590.81" smashed="no" rot="R270" />
            <instance part="RV3" gate="G$1" x="130.81" y="570.49" smashed="no" rot="R270" />
            <instance part="U4" gate="B" x="335.28" y="611.13" smashed="no" rot="R0" />
            <instance part="R9" gate="G$1" x="255.27" y="608.59" smashed="no" rot="R0" />
            <instance part="C7" gate="G$1" x="309.88" y="608.59" smashed="no" rot="R0" />
            <instance part="C6" gate="G$1" x="309.88" y="641.61" smashed="no" rot="R0" />
            <instance part="R11" gate="G$1" x="345.44" y="590.81" smashed="no" rot="R180" />
            <instance part="R10" gate="G$1" x="285.75" y="590.81" smashed="no" rot="R270" />
            <instance part="RV4" gate="G$1" x="285.75" y="570.49" smashed="no" rot="R270" />
            <instance part="U5" gate="A" x="490.22" y="611.13" smashed="no" rot="R0" />
            <instance part="R12" gate="G$1" x="449.58" y="608.59" smashed="no" rot="R0" />
            <instance part="R13" gate="G$1" x="500.38" y="585.73" smashed="no" rot="R180" />
            <instance part="R14" gate="G$1" x="425.45" y="641.61" smashed="no" rot="R0" />
            <instance part="RV5" gate="G$1" x="454.66" y="641.61" smashed="no" rot="R0" />
            <instance part="C8" gate="G$1" x="464.82" y="626.37" smashed="no" rot="R270" />
            <instance part="U5" gate="B" x="645.16" y="611.13" smashed="no" rot="R0" />
            <instance part="R15" gate="G$1" x="604.52" y="608.59" smashed="no" rot="R0" />
            <instance part="R16" gate="G$1" x="655.32" y="585.73" smashed="no" rot="R180" />
            <instance part="R17" gate="G$1" x="580.39" y="641.61" smashed="no" rot="R0" />
            <instance part="RV6" gate="G$1" x="609.6" y="641.61" smashed="no" rot="R0" />
            <instance part="C9" gate="G$1" x="619.76" y="626.37" smashed="no" rot="R270" />
            <instance part="U6" gate="A" x="800.1" y="611.13" smashed="no" rot="R0" />
            <instance part="R18" gate="G$1" x="759.46" y="608.59" smashed="no" rot="R0" />
            <instance part="R19" gate="G$1" x="810.26" y="585.73" smashed="no" rot="R180" />
            <instance part="J1" gate="G$1" x="849.63" y="611.13" smashed="no" rot="R180" />
            <instance part="RV7" gate="G$1" x="880.11" y="590.81" smashed="no" rot="R270" />
            <instance part="U6" gate="B" x="955.04" y="611.13" smashed="no" rot="R0" />
            <instance part="TP4" gate="G$1" x="360.68" y="661.9300000000001" smashed="no" rot="R0" />
            <instance part="TP5" gate="G$1" x="670.56" y="661.9300000000001" smashed="no" rot="R0" />
            <instance part="TP6" gate="G$1" x="980.44" y="631.45" smashed="no" rot="R0" />
            <instance part="U7" gate="A" x="180.34" y="461.27" smashed="no" rot="R0" />
            <instance part="R20" gate="G$1" x="100.33" y="458.73" smashed="no" rot="R0" />
            <instance part="C11" gate="G$1" x="154.94" y="458.73" smashed="no" rot="R0" />
            <instance part="C10" gate="G$1" x="154.94" y="491.75" smashed="no" rot="R0" />
            <instance part="R22" gate="G$1" x="190.5" y="440.95" smashed="no" rot="R180" />
            <instance part="R21" gate="G$1" x="130.81" y="440.95" smashed="no" rot="R270" />
            <instance part="RV8" gate="G$1" x="130.81" y="420.63" smashed="no" rot="R270" />
            <instance part="U7" gate="B" x="335.28" y="461.27" smashed="no" rot="R0" />
            <instance part="R23" gate="G$1" x="255.27" y="458.73" smashed="no" rot="R0" />
            <instance part="C13" gate="G$1" x="309.88" y="458.73" smashed="no" rot="R0" />
            <instance part="C12" gate="G$1" x="309.88" y="491.75" smashed="no" rot="R0" />
            <instance part="R25" gate="G$1" x="345.44" y="440.95" smashed="no" rot="R180" />
            <instance part="R24" gate="G$1" x="285.75" y="440.95" smashed="no" rot="R270" />
            <instance part="RV9" gate="G$1" x="285.75" y="420.63" smashed="no" rot="R270" />
            <instance part="U8" gate="A" x="490.22" y="461.27" smashed="no" rot="R0" />
            <instance part="R26" gate="G$1" x="449.58" y="458.73" smashed="no" rot="R0" />
            <instance part="R27" gate="G$1" x="500.38" y="435.87" smashed="no" rot="R180" />
            <instance part="R28" gate="G$1" x="425.45" y="491.75" smashed="no" rot="R0" />
            <instance part="RV10" gate="G$1" x="454.66" y="491.75" smashed="no" rot="R0" />
            <instance part="C14" gate="G$1" x="464.82" y="476.51" smashed="no" rot="R270" />
            <instance part="U8" gate="B" x="645.16" y="461.27" smashed="no" rot="R0" />
            <instance part="R29" gate="G$1" x="604.52" y="458.73" smashed="no" rot="R0" />
            <instance part="R30" gate="G$1" x="655.32" y="435.87" smashed="no" rot="R180" />
            <instance part="R31" gate="G$1" x="580.39" y="491.75" smashed="no" rot="R0" />
            <instance part="RV11" gate="G$1" x="609.6" y="491.75" smashed="no" rot="R0" />
            <instance part="C15" gate="G$1" x="619.76" y="476.51" smashed="no" rot="R270" />
            <instance part="U9" gate="A" x="800.1" y="461.27" smashed="no" rot="R0" />
            <instance part="R32" gate="G$1" x="759.46" y="458.73" smashed="no" rot="R0" />
            <instance part="R33" gate="G$1" x="810.26" y="435.87" smashed="no" rot="R180" />
            <instance part="J2" gate="G$1" x="849.63" y="461.27" smashed="no" rot="R180" />
            <instance part="RV12" gate="G$1" x="880.11" y="440.95" smashed="no" rot="R270" />
            <instance part="U9" gate="B" x="955.04" y="461.27" smashed="no" rot="R0" />
            <instance part="TP7" gate="G$1" x="360.68" y="512.0699999999999" smashed="no" rot="R0" />
            <instance part="TP8" gate="G$1" x="670.56" y="512.0699999999999" smashed="no" rot="R0" />
            <instance part="TP9" gate="G$1" x="980.44" y="481.59" smashed="no" rot="R0" />
            <instance part="U10" gate="A" x="180.34" y="311.40999999999997" smashed="no" rot="R0" />
            <instance part="R34" gate="G$1" x="100.33" y="308.87" smashed="no" rot="R0" />
            <instance part="C17" gate="G$1" x="154.94" y="308.87" smashed="no" rot="R0" />
            <instance part="C16" gate="G$1" x="154.94" y="341.89" smashed="no" rot="R0" />
            <instance part="R36" gate="G$1" x="190.5" y="291.09000000000003" smashed="no" rot="R180" />
            <instance part="R35" gate="G$1" x="130.81" y="291.09000000000003" smashed="no" rot="R270" />
            <instance part="RV13" gate="G$1" x="130.81" y="270.77" smashed="no" rot="R270" />
            <instance part="U10" gate="B" x="335.28" y="311.40999999999997" smashed="no" rot="R0" />
            <instance part="R37" gate="G$1" x="255.27" y="308.87" smashed="no" rot="R0" />
            <instance part="C19" gate="G$1" x="309.88" y="308.87" smashed="no" rot="R0" />
            <instance part="C18" gate="G$1" x="309.88" y="341.89" smashed="no" rot="R0" />
            <instance part="R39" gate="G$1" x="345.44" y="291.09000000000003" smashed="no" rot="R180" />
            <instance part="R38" gate="G$1" x="285.75" y="291.09000000000003" smashed="no" rot="R270" />
            <instance part="RV14" gate="G$1" x="285.75" y="270.77" smashed="no" rot="R270" />
            <instance part="U11" gate="A" x="490.22" y="311.40999999999997" smashed="no" rot="R0" />
            <instance part="R40" gate="G$1" x="449.58" y="308.87" smashed="no" rot="R0" />
            <instance part="R41" gate="G$1" x="500.38" y="286.01" smashed="no" rot="R180" />
            <instance part="R42" gate="G$1" x="425.45" y="341.89" smashed="no" rot="R0" />
            <instance part="RV15" gate="G$1" x="454.66" y="341.89" smashed="no" rot="R0" />
            <instance part="C20" gate="G$1" x="464.82" y="326.65" smashed="no" rot="R270" />
            <instance part="U11" gate="B" x="645.16" y="311.40999999999997" smashed="no" rot="R0" />
            <instance part="R43" gate="G$1" x="604.52" y="308.87" smashed="no" rot="R0" />
            <instance part="R44" gate="G$1" x="655.32" y="286.01" smashed="no" rot="R180" />
            <instance part="R45" gate="G$1" x="580.39" y="341.89" smashed="no" rot="R0" />
            <instance part="RV16" gate="G$1" x="609.6" y="341.89" smashed="no" rot="R0" />
            <instance part="C21" gate="G$1" x="619.76" y="326.65" smashed="no" rot="R270" />
            <instance part="U12" gate="A" x="800.1" y="311.40999999999997" smashed="no" rot="R0" />
            <instance part="R46" gate="G$1" x="759.46" y="308.87" smashed="no" rot="R0" />
            <instance part="R47" gate="G$1" x="810.26" y="286.01" smashed="no" rot="R180" />
            <instance part="J3" gate="G$1" x="849.63" y="311.40999999999997" smashed="no" rot="R180" />
            <instance part="RV17" gate="G$1" x="880.11" y="291.09000000000003" smashed="no" rot="R270" />
            <instance part="U12" gate="B" x="955.04" y="311.40999999999997" smashed="no" rot="R0" />
            <instance part="TP10" gate="G$1" x="360.68" y="362.21" smashed="no" rot="R0" />
            <instance part="TP11" gate="G$1" x="670.56" y="362.21" smashed="no" rot="R0" />
            <instance part="TP12" gate="G$1" x="980.44" y="331.73" smashed="no" rot="R0" />
            <instance part="U13" gate="A" x="180.34" y="161.54999999999995" smashed="no" rot="R0" />
            <instance part="R48" gate="G$1" x="100.33" y="159.01" smashed="no" rot="R0" />
            <instance part="C23" gate="G$1" x="154.94" y="159.01" smashed="no" rot="R0" />
            <instance part="C22" gate="G$1" x="154.94" y="192.02999999999997" smashed="no" rot="R0" />
            <instance part="R50" gate="G$1" x="190.5" y="141.23000000000002" smashed="no" rot="R180" />
            <instance part="R49" gate="G$1" x="130.81" y="141.23000000000002" smashed="no" rot="R270" />
            <instance part="RV18" gate="G$1" x="130.81" y="120.90999999999997" smashed="no" rot="R270" />
            <instance part="U13" gate="B" x="335.28" y="161.54999999999995" smashed="no" rot="R0" />
            <instance part="R51" gate="G$1" x="255.27" y="159.01" smashed="no" rot="R0" />
            <instance part="C25" gate="G$1" x="309.88" y="159.01" smashed="no" rot="R0" />
            <instance part="C24" gate="G$1" x="309.88" y="192.02999999999997" smashed="no" rot="R0" />
            <instance part="R53" gate="G$1" x="345.44" y="141.23000000000002" smashed="no" rot="R180" />
            <instance part="R52" gate="G$1" x="285.75" y="141.23000000000002" smashed="no" rot="R270" />
            <instance part="RV19" gate="G$1" x="285.75" y="120.90999999999997" smashed="no" rot="R270" />
            <instance part="U14" gate="A" x="490.22" y="161.54999999999995" smashed="no" rot="R0" />
            <instance part="R54" gate="G$1" x="449.58" y="159.01" smashed="no" rot="R0" />
            <instance part="R55" gate="G$1" x="500.38" y="136.14999999999998" smashed="no" rot="R180" />
            <instance part="R56" gate="G$1" x="425.45" y="192.02999999999997" smashed="no" rot="R0" />
            <instance part="RV20" gate="G$1" x="454.66" y="192.02999999999997" smashed="no" rot="R0" />
            <instance part="C26" gate="G$1" x="464.82" y="176.78999999999996" smashed="no" rot="R270" />
            <instance part="U14" gate="B" x="645.16" y="161.54999999999995" smashed="no" rot="R0" />
            <instance part="R57" gate="G$1" x="604.52" y="159.01" smashed="no" rot="R0" />
            <instance part="R58" gate="G$1" x="655.32" y="136.14999999999998" smashed="no" rot="R180" />
            <instance part="R59" gate="G$1" x="580.39" y="192.02999999999997" smashed="no" rot="R0" />
            <instance part="RV21" gate="G$1" x="609.6" y="192.02999999999997" smashed="no" rot="R0" />
            <instance part="C27" gate="G$1" x="619.76" y="176.78999999999996" smashed="no" rot="R270" />
            <instance part="U15" gate="A" x="800.1" y="161.54999999999995" smashed="no" rot="R0" />
            <instance part="R60" gate="G$1" x="759.46" y="159.01" smashed="no" rot="R0" />
            <instance part="R61" gate="G$1" x="810.26" y="136.14999999999998" smashed="no" rot="R180" />
            <instance part="J4" gate="G$1" x="849.63" y="161.54999999999995" smashed="no" rot="R180" />
            <instance part="RV22" gate="G$1" x="880.11" y="141.23000000000002" smashed="no" rot="R270" />
            <instance part="U15" gate="B" x="955.04" y="161.54999999999995" smashed="no" rot="R0" />
            <instance part="TP13" gate="G$1" x="360.68" y="212.35000000000002" smashed="no" rot="R0" />
            <instance part="TP14" gate="G$1" x="670.56" y="212.35000000000002" smashed="no" rot="R0" />
            <instance part="TP15" gate="G$1" x="980.44" y="181.87" smashed="no" rot="R0" />
            <instance part="U16" gate="A" x="1120.14" y="90.42999999999995" smashed="no" rot="R0" />
            <instance part="R62" gate="G$1" x="1016.0" y="120.90999999999997" smashed="no" rot="R270" />
            <instance part="R63" gate="G$1" x="1041.4" y="120.90999999999997" smashed="no" rot="R270" />
            <instance part="R64" gate="G$1" x="1066.8" y="120.90999999999997" smashed="no" rot="R270" />
            <instance part="R65" gate="G$1" x="1092.2" y="120.90999999999997" smashed="no" rot="R270" />
            <instance part="R66" gate="G$1" x="1145.54" y="110.75" smashed="no" rot="R180" />
            <instance part="U16" gate="B" x="1120.14" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="R67" gate="G$1" x="1079.5" y="48.51999999999998" smashed="no" rot="R0" />
            <instance part="R68" gate="G$1" x="1130.3" y="25.659999999999968" smashed="no" rot="R180" />
            <instance part="R69" gate="G$1" x="1165.86" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="J6" gate="G$1" x="1176.02" y="35.82000000000005" smashed="no" rot="R180" />
            <instance part="TP16" gate="G$1" x="1145.54" y="66.29999999999995" smashed="no" rot="R0" />
            <instance part="TP17" gate="G$1" x="1169.67" y="66.29999999999995" smashed="no" rot="R0" />
            <instance part="TP18" gate="G$1" x="1024.89" y="40.89999999999998" smashed="no" rot="R0" />
            <instance part="J5" gate="G$1" x="849.63" y="781.31" smashed="no" rot="R0" />
            <instance part="C28" gate="G$1" x="900.43" y="776.23" smashed="no" rot="R270" />
            <instance part="C29" gate="G$1" x="955.04" y="776.23" smashed="no" rot="R270" />
            <instance part="C30" gate="G$1" x="900.43" y="716.54" smashed="no" rot="R270" />
            <instance part="C31" gate="G$1" x="955.04" y="716.54" smashed="no" rot="R270" />
            <instance part="U3" gate="P" x="69.85" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C32" gate="G$1" x="49.53" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C33" gate="G$1" x="90.17" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U4" gate="P" x="135.89" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C34" gate="G$1" x="115.57" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C35" gate="G$1" x="156.21" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U5" gate="P" x="201.93" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C36" gate="G$1" x="181.61" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C37" gate="G$1" x="222.25" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U6" gate="P" x="267.97" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C38" gate="G$1" x="247.65" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C39" gate="G$1" x="288.29" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U7" gate="P" x="334.01" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C40" gate="G$1" x="313.69" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C41" gate="G$1" x="354.33" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U8" gate="P" x="400.05" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C42" gate="G$1" x="379.73" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C43" gate="G$1" x="420.37" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U9" gate="P" x="466.09" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C44" gate="G$1" x="445.77" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C45" gate="G$1" x="486.41" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U10" gate="P" x="532.13" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C46" gate="G$1" x="511.81" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C47" gate="G$1" x="552.45" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U11" gate="P" x="598.17" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C48" gate="G$1" x="577.85" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C49" gate="G$1" x="618.49" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U12" gate="P" x="664.21" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C50" gate="G$1" x="643.89" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C51" gate="G$1" x="684.53" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U13" gate="P" x="730.25" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C52" gate="G$1" x="709.93" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C53" gate="G$1" x="750.57" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U14" gate="P" x="796.29" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C54" gate="G$1" x="775.97" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C55" gate="G$1" x="816.61" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U15" gate="P" x="862.33" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C56" gate="G$1" x="842.01" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C57" gate="G$1" x="882.65" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="U16" gate="P" x="928.37" y="51.059999999999945" smashed="no" rot="R0" />
            <instance part="C58" gate="G$1" x="908.05" y="51.059999999999945" smashed="no" rot="R270" />
            <instance part="C59" gate="G$1" x="948.69" y="51.059999999999945" smashed="no" rot="R270" />
          </instances>
          <nets>
            <net name="AC_SQUARE" class="0">
              <segment>
                <pinref part="C3" gate="G$1" pin="2" />
                <pinref part="R3" gate="G$1" pin="1" />
                <pinref part="RV2" gate="G$1" pin="1" />
                <wire x1="394.97" y1="778.77" x2="410.21" y2="778.77" layer="91" width="0.1524" />
                <wire x1="410.21" y1="778.77" x2="439.42" y2="778.77" layer="91" width="0.1524" />
                <wire x1="439.42" y1="778.77" x2="439.42" y2="745.75" layer="91" width="0.1524" />
                <wire x1="410.21" y1="778.77" x2="410.21" y2="745.75" layer="91" width="0.1524" />
                <label x="394.97" y="778.77" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="410.21" y="778.77" />
              </segment>
            </net>
            <net name="CLOCK_2K" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="3" />
                <pinref part="U2" gate="G$1" pin="3" />
                <pinref part="TP1" gate="G$1" pin="1" />
                <wire x1="193.04" y1="771.15" x2="250.19" y2="771.15" layer="91" width="0.1524" />
                <wire x1="250.19" y1="773.69" x2="250.19" y2="771.15" layer="91" width="0.1524" />
                <wire x1="250.19" y1="773.69" x2="304.8" y2="773.69" layer="91" width="0.1524" />
                <wire x1="250.19" y1="794.01" x2="250.19" y2="773.69" layer="91" width="0.1524" />
                <label x="193.04" y="771.15" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="250.19" y="773.69" />
              </segment>
            </net>
            <net name="CTRL" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="5" />
                <pinref part="C2" gate="G$1" pin="1" />
                <wire x1="154.94" y1="758.45" x2="167.64" y2="758.45" layer="91" width="0.1524" />
                <wire x1="154.94" y1="758.45" x2="154.94" y2="735.59" layer="91" width="0.1524" />
                <label x="167.64" y="758.45" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="DIGITAL_1K" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="1" />
                <pinref part="C3" gate="G$1" pin="1" />
                <wire x1="335.28" y1="778.77" x2="384.81" y2="778.77" layer="91" width="0.1524" />
                <label x="335.28" y="778.77" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="DISCHARGE" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="7" />
                <pinref part="R1" gate="G$1" pin="2" />
                <pinref part="R2" gate="G$1" pin="1" />
                <wire x1="219.71" y1="791.47" x2="219.71" y2="760.99" layer="91" width="0.1524" />
                <wire x1="193.04" y1="760.99" x2="219.71" y2="760.99" layer="91" width="0.1524" />
                <wire x1="219.71" y1="760.99" x2="219.71" y2="750.83" layer="91" width="0.1524" />
                <label x="219.71" y="791.47" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="219.71" y="760.99" />
              </segment>
            </net>
            <net name="D_FEEDBACK" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="5" />
                <pinref part="U2" gate="G$1" pin="2" />
                <wire x1="335.28" y1="773.69" x2="353.06" y2="773.69" layer="91" width="0.1524" />
                <wire x1="353.06" y1="801.63" x2="353.06" y2="773.69" layer="91" width="0.1524" />
                <wire x1="290.83" y1="801.63" x2="353.06" y2="801.63" layer="91" width="0.1524" />
                <wire x1="290.83" y1="801.63" x2="290.83" y2="778.77" layer="91" width="0.1524" />
                <wire x1="290.83" y1="778.77" x2="304.8" y2="778.77" layer="91" width="0.1524" />
                <label x="335.28" y="773.69" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="FREQ_R" class="0">
              <segment>
                <pinref part="R2" gate="G$1" pin="2" />
                <pinref part="RV1" gate="G$1" pin="1" />
                <wire x1="219.71" y1="740.67" x2="219.71" y2="726.7" layer="91" width="0.1524" />
                <label x="219.71" y="740.67" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="1" />
                <pinref part="U2" gate="G$1" pin="7" />
                <pinref part="U2" gate="G$1" pin="6" />
                <pinref part="U2" gate="G$1" pin="4" />
                <pinref part="U2" gate="G$1" pin="9" />
                <pinref part="U2" gate="G$1" pin="11" />
                <pinref part="U2" gate="G$1" pin="8" />
                <pinref part="C1" gate="G$1" pin="2" />
                <pinref part="C2" gate="G$1" pin="2" />
                <pinref part="R3" gate="G$1" pin="2" />
                <pinref part="RV2" gate="G$1" pin="3" />
                <pinref part="U3" gate="B" pin="5" />
                <pinref part="U4" gate="A" pin="3" />
                <pinref part="RV3" gate="G$1" pin="2" />
                <pinref part="RV3" gate="G$1" pin="3" />
                <pinref part="U4" gate="B" pin="5" />
                <pinref part="RV4" gate="G$1" pin="2" />
                <pinref part="RV4" gate="G$1" pin="3" />
                <pinref part="C8" gate="G$1" pin="2" />
                <pinref part="C9" gate="G$1" pin="2" />
                <pinref part="U6" gate="A" pin="3" />
                <pinref part="RV7" gate="G$1" pin="3" />
                <pinref part="U7" gate="A" pin="3" />
                <pinref part="RV8" gate="G$1" pin="2" />
                <pinref part="RV8" gate="G$1" pin="3" />
                <pinref part="U7" gate="B" pin="5" />
                <pinref part="RV9" gate="G$1" pin="2" />
                <pinref part="RV9" gate="G$1" pin="3" />
                <pinref part="C14" gate="G$1" pin="2" />
                <pinref part="C15" gate="G$1" pin="2" />
                <pinref part="U9" gate="A" pin="3" />
                <pinref part="RV12" gate="G$1" pin="3" />
                <pinref part="U10" gate="A" pin="3" />
                <pinref part="RV13" gate="G$1" pin="2" />
                <pinref part="RV13" gate="G$1" pin="3" />
                <pinref part="U10" gate="B" pin="5" />
                <pinref part="RV14" gate="G$1" pin="2" />
                <pinref part="RV14" gate="G$1" pin="3" />
                <pinref part="C20" gate="G$1" pin="2" />
                <pinref part="C21" gate="G$1" pin="2" />
                <pinref part="U12" gate="A" pin="3" />
                <pinref part="RV17" gate="G$1" pin="3" />
                <pinref part="U13" gate="A" pin="3" />
                <pinref part="RV18" gate="G$1" pin="2" />
                <pinref part="RV18" gate="G$1" pin="3" />
                <pinref part="U13" gate="B" pin="5" />
                <pinref part="RV19" gate="G$1" pin="2" />
                <pinref part="RV19" gate="G$1" pin="3" />
                <pinref part="C26" gate="G$1" pin="2" />
                <pinref part="C27" gate="G$1" pin="2" />
                <pinref part="U15" gate="A" pin="3" />
                <pinref part="RV22" gate="G$1" pin="3" />
                <pinref part="U16" gate="A" pin="3" />
                <pinref part="U16" gate="B" pin="5" />
                <pinref part="J6" gate="G$1" pin="2" />
                <pinref part="TP18" gate="G$1" pin="1" />
                <pinref part="J5" gate="G$1" pin="2" />
                <pinref part="C28" gate="G$1" pin="2" />
                <pinref part="C29" gate="G$1" pin="1" />
                <pinref part="C30" gate="G$1" pin="2" />
                <pinref part="C31" gate="G$1" pin="2" />
                <pinref part="C32" gate="G$1" pin="2" />
                <pinref part="C33" gate="G$1" pin="1" />
                <pinref part="C34" gate="G$1" pin="2" />
                <pinref part="C35" gate="G$1" pin="1" />
                <pinref part="C36" gate="G$1" pin="2" />
                <pinref part="C37" gate="G$1" pin="1" />
                <pinref part="C38" gate="G$1" pin="2" />
                <pinref part="C39" gate="G$1" pin="1" />
                <pinref part="C40" gate="G$1" pin="2" />
                <pinref part="C41" gate="G$1" pin="1" />
                <pinref part="C42" gate="G$1" pin="2" />
                <pinref part="C43" gate="G$1" pin="1" />
                <pinref part="C44" gate="G$1" pin="2" />
                <pinref part="C45" gate="G$1" pin="1" />
                <pinref part="C46" gate="G$1" pin="2" />
                <pinref part="C47" gate="G$1" pin="1" />
                <pinref part="C48" gate="G$1" pin="2" />
                <pinref part="C49" gate="G$1" pin="1" />
                <pinref part="C50" gate="G$1" pin="2" />
                <pinref part="C51" gate="G$1" pin="1" />
                <pinref part="C52" gate="G$1" pin="2" />
                <pinref part="C53" gate="G$1" pin="1" />
                <pinref part="C54" gate="G$1" pin="2" />
                <pinref part="C55" gate="G$1" pin="1" />
                <pinref part="C56" gate="G$1" pin="2" />
                <pinref part="C57" gate="G$1" pin="1" />
                <pinref part="C58" gate="G$1" pin="2" />
                <pinref part="C59" gate="G$1" pin="1" />
                <wire x1="139.7" y1="711.46" x2="139.7" y2="706.38" layer="91" width="0.1524" />
                <wire x1="180.34" y1="750.83" x2="180.34" y2="745.75" layer="91" width="0.1524" />
                <wire x1="154.94" y1="725.4300000000001" x2="154.94" y2="720.35" layer="91" width="0.1524" />
                <wire x1="320.04" y1="745.75" x2="320.04" y2="740.67" layer="91" width="0.1524" />
                <wire x1="297.18" y1="763.53" x2="304.8" y2="763.53" layer="91" width="0.1524" />
                <wire x1="297.18" y1="768.61" x2="304.8" y2="768.61" layer="91" width="0.1524" />
                <wire x1="335.28" y1="758.45" x2="342.9" y2="758.45" layer="91" width="0.1524" />
                <wire x1="297.18" y1="758.45" x2="304.8" y2="758.45" layer="91" width="0.1524" />
                <wire x1="297.18" y1="753.37" x2="304.8" y2="753.37" layer="91" width="0.1524" />
                <wire x1="410.21" y1="735.59" x2="410.21" y2="730.51" layer="91" width="0.1524" />
                <wire x1="439.42" y1="735.59" x2="439.42" y2="730.51" layer="91" width="0.1524" />
                <wire x1="684.53" y1="743.21" x2="692.15" y2="743.21" layer="91" width="0.1524" />
                <wire x1="135.89" y1="570.49" x2="140.97" y2="570.49" layer="91" width="0.1524" />
                <wire x1="140.97" y1="570.49" x2="140.97" y2="565.4100000000001" layer="91" width="0.1524" />
                <wire x1="130.81" y1="565.4100000000001" x2="140.97" y2="565.4100000000001" layer="91" width="0.1524" />
                <wire x1="130.81" y1="565.4100000000001" x2="130.81" y2="560.3299999999999" layer="91" width="0.1524" />
                <wire x1="165.1" y1="613.67" x2="172.72" y2="613.67" layer="91" width="0.1524" />
                <wire x1="290.83" y1="570.49" x2="295.91" y2="570.49" layer="91" width="0.1524" />
                <wire x1="295.91" y1="570.49" x2="295.91" y2="565.4100000000001" layer="91" width="0.1524" />
                <wire x1="285.75" y1="565.4100000000001" x2="295.91" y2="565.4100000000001" layer="91" width="0.1524" />
                <wire x1="285.75" y1="565.4100000000001" x2="285.75" y2="560.3299999999999" layer="91" width="0.1524" />
                <wire x1="320.04" y1="613.67" x2="327.66" y2="613.67" layer="91" width="0.1524" />
                <wire x1="464.82" y1="621.29" x2="464.82" y2="616.21" layer="91" width="0.1524" />
                <wire x1="619.76" y1="621.29" x2="619.76" y2="616.21" layer="91" width="0.1524" />
                <wire x1="784.86" y1="613.67" x2="792.48" y2="613.67" layer="91" width="0.1524" />
                <wire x1="880.11" y1="585.73" x2="880.11" y2="580.65" layer="91" width="0.1524" />
                <wire x1="135.89" y1="420.63" x2="140.97" y2="420.63" layer="91" width="0.1524" />
                <wire x1="140.97" y1="420.63" x2="140.97" y2="415.55" layer="91" width="0.1524" />
                <wire x1="130.81" y1="415.55" x2="140.97" y2="415.55" layer="91" width="0.1524" />
                <wire x1="130.81" y1="415.55" x2="130.81" y2="410.47" layer="91" width="0.1524" />
                <wire x1="165.1" y1="463.81" x2="172.72" y2="463.81" layer="91" width="0.1524" />
                <wire x1="290.83" y1="420.63" x2="295.91" y2="420.63" layer="91" width="0.1524" />
                <wire x1="295.91" y1="420.63" x2="295.91" y2="415.55" layer="91" width="0.1524" />
                <wire x1="285.75" y1="415.55" x2="295.91" y2="415.55" layer="91" width="0.1524" />
                <wire x1="285.75" y1="415.55" x2="285.75" y2="410.47" layer="91" width="0.1524" />
                <wire x1="320.04" y1="463.81" x2="327.66" y2="463.81" layer="91" width="0.1524" />
                <wire x1="464.82" y1="471.43" x2="464.82" y2="466.35" layer="91" width="0.1524" />
                <wire x1="619.76" y1="471.43" x2="619.76" y2="466.35" layer="91" width="0.1524" />
                <wire x1="784.86" y1="463.81" x2="792.48" y2="463.81" layer="91" width="0.1524" />
                <wire x1="880.11" y1="435.87" x2="880.11" y2="430.79" layer="91" width="0.1524" />
                <wire x1="135.89" y1="270.77" x2="140.97" y2="270.77" layer="91" width="0.1524" />
                <wire x1="140.97" y1="270.77" x2="140.97" y2="265.69000000000005" layer="91" width="0.1524" />
                <wire x1="130.81" y1="265.69000000000005" x2="140.97" y2="265.69000000000005" layer="91" width="0.1524" />
                <wire x1="130.81" y1="265.69000000000005" x2="130.81" y2="260.61" layer="91" width="0.1524" />
                <wire x1="165.1" y1="313.95000000000005" x2="172.72" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="290.83" y1="270.77" x2="295.91" y2="270.77" layer="91" width="0.1524" />
                <wire x1="295.91" y1="270.77" x2="295.91" y2="265.69000000000005" layer="91" width="0.1524" />
                <wire x1="285.75" y1="265.69000000000005" x2="295.91" y2="265.69000000000005" layer="91" width="0.1524" />
                <wire x1="285.75" y1="265.69000000000005" x2="285.75" y2="260.61" layer="91" width="0.1524" />
                <wire x1="320.04" y1="313.95000000000005" x2="327.66" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="464.82" y1="321.57000000000005" x2="464.82" y2="316.49" layer="91" width="0.1524" />
                <wire x1="619.76" y1="321.57000000000005" x2="619.76" y2="316.49" layer="91" width="0.1524" />
                <wire x1="784.86" y1="313.95000000000005" x2="792.48" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="880.11" y1="286.01" x2="880.11" y2="280.92999999999995" layer="91" width="0.1524" />
                <wire x1="135.89" y1="120.90999999999997" x2="140.97" y2="120.90999999999997" layer="91" width="0.1524" />
                <wire x1="140.97" y1="120.90999999999997" x2="140.97" y2="115.83000000000004" layer="91" width="0.1524" />
                <wire x1="130.81" y1="115.83000000000004" x2="140.97" y2="115.83000000000004" layer="91" width="0.1524" />
                <wire x1="130.81" y1="115.83000000000004" x2="130.81" y2="110.75" layer="91" width="0.1524" />
                <wire x1="165.1" y1="164.09000000000003" x2="172.72" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="290.83" y1="120.90999999999997" x2="295.91" y2="120.90999999999997" layer="91" width="0.1524" />
                <wire x1="295.91" y1="120.90999999999997" x2="295.91" y2="115.83000000000004" layer="91" width="0.1524" />
                <wire x1="285.75" y1="115.83000000000004" x2="295.91" y2="115.83000000000004" layer="91" width="0.1524" />
                <wire x1="285.75" y1="115.83000000000004" x2="285.75" y2="110.75" layer="91" width="0.1524" />
                <wire x1="320.04" y1="164.09000000000003" x2="327.66" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="464.82" y1="171.71000000000004" x2="464.82" y2="166.63" layer="91" width="0.1524" />
                <wire x1="619.76" y1="171.71000000000004" x2="619.76" y2="166.63" layer="91" width="0.1524" />
                <wire x1="784.86" y1="164.09000000000003" x2="792.48" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="880.11" y1="136.14999999999998" x2="880.11" y2="131.07000000000005" layer="91" width="0.1524" />
                <wire x1="1104.9" y1="92.97000000000003" x2="1112.52" y2="92.97000000000003" layer="91" width="0.1524" />
                <wire x1="1104.9" y1="53.60000000000002" x2="1112.52" y2="53.60000000000002" layer="91" width="0.1524" />
                <wire x1="1173.48" y1="37.09000000000003" x2="1181.1" y2="37.09000000000003" layer="91" width="0.1524" />
                <wire x1="1024.89" y1="38.360000000000014" x2="1024.89" y2="33.27999999999997" layer="91" width="0.1524" />
                <wire x1="820.42" y1="781.31" x2="844.55" y2="781.31" layer="91" width="0.1524" />
                <wire x1="772.16" y1="763.53" x2="779.78" y2="763.53" layer="91" width="0.1524" />
                <wire x1="900.43" y1="771.15" x2="900.43" y2="766.0699999999999" layer="91" width="0.1524" />
                <wire x1="955.04" y1="786.39" x2="955.04" y2="781.31" layer="91" width="0.1524" />
                <wire x1="900.43" y1="711.46" x2="900.43" y2="706.38" layer="91" width="0.1524" />
                <wire x1="955.04" y1="711.46" x2="955.04" y2="706.38" layer="91" width="0.1524" />
                <wire x1="49.53" y1="45.98000000000002" x2="49.53" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="90.17" y1="61.22000000000003" x2="90.17" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="115.57" y1="45.98000000000002" x2="115.57" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="156.21" y1="61.22000000000003" x2="156.21" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="181.61" y1="45.98000000000002" x2="181.61" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="222.25" y1="61.22000000000003" x2="222.25" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="247.65" y1="45.98000000000002" x2="247.65" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="288.29" y1="61.22000000000003" x2="288.29" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="313.69" y1="45.98000000000002" x2="313.69" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="354.33" y1="61.22000000000003" x2="354.33" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="379.73" y1="45.98000000000002" x2="379.73" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="420.37" y1="61.22000000000003" x2="420.37" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="445.77" y1="45.98000000000002" x2="445.77" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="486.41" y1="61.22000000000003" x2="486.41" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="511.81" y1="45.98000000000002" x2="511.81" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="552.45" y1="61.22000000000003" x2="552.45" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="577.85" y1="45.98000000000002" x2="577.85" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="618.49" y1="61.22000000000003" x2="618.49" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="643.89" y1="45.98000000000002" x2="643.89" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="684.53" y1="61.22000000000003" x2="684.53" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="709.93" y1="45.98000000000002" x2="709.93" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="750.57" y1="61.22000000000003" x2="750.57" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="775.97" y1="45.98000000000002" x2="775.97" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="816.61" y1="61.22000000000003" x2="816.61" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="842.01" y1="45.98000000000002" x2="842.01" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="882.65" y1="61.22000000000003" x2="882.65" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="908.05" y1="45.98000000000002" x2="908.05" y2="40.89999999999998" layer="91" width="0.1524" />
                <wire x1="948.69" y1="61.22000000000003" x2="948.69" y2="56.139999999999986" layer="91" width="0.1524" />
                <label x="139.7" y="706.38" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="180.34" y="745.75" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="154.94" y="720.35" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="320.04" y="740.67" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="297.18" y="763.53" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="297.18" y="768.61" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="342.9" y="758.45" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="297.18" y="758.45" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="297.18" y="753.37" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="410.21" y="730.51" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="439.42" y="730.51" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="684.53" y="743.21" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="130.81" y="560.3299999999999" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="165.1" y="613.67" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="285.75" y="560.3299999999999" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="320.04" y="613.67" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="464.82" y="616.21" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="619.76" y="616.21" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="784.86" y="613.67" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="880.11" y="580.65" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="130.81" y="410.47" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="165.1" y="463.81" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="285.75" y="410.47" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="320.04" y="463.81" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="464.82" y="466.35" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="619.76" y="466.35" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="784.86" y="463.81" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="880.11" y="430.79" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="130.81" y="260.61" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="165.1" y="313.95000000000005" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="285.75" y="260.61" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="320.04" y="313.95000000000005" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="464.82" y="316.49" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="619.76" y="316.49" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="784.86" y="313.95000000000005" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="880.11" y="280.92999999999995" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="130.81" y="110.75" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="165.1" y="164.09000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="285.75" y="110.75" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="320.04" y="164.09000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="464.82" y="166.63" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="619.76" y="166.63" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="784.86" y="164.09000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="880.11" y="131.07000000000005" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="1104.9" y="92.97000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="1104.9" y="53.60000000000002" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="1173.48" y="37.09000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="1024.89" y="33.27999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="820.42" y="781.31" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="772.16" y="763.53" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="900.43" y="766.0699999999999" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="955.04" y="786.39" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="900.43" y="706.38" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="955.04" y="706.38" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="49.53" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="90.17" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="115.57" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="156.21" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="181.61" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="222.25" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="247.65" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="288.29" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="313.69" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="354.33" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="379.73" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="420.37" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="445.77" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="486.41" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="511.81" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="552.45" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="577.85" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="618.49" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="643.89" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="684.53" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="709.93" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="750.57" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="775.97" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="816.61" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="842.01" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="882.65" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="908.05" y="40.89999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="948.69" y="61.22000000000003" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="130.81" y="565.4100000000001" />
                <junction x="285.75" y="565.4100000000001" />
                <junction x="130.81" y="415.55" />
                <junction x="285.75" y="415.55" />
                <junction x="130.81" y="265.69000000000005" />
                <junction x="285.75" y="265.69000000000005" />
                <junction x="130.81" y="115.83000000000004" />
                <junction x="285.75" y="115.83000000000004" />
              </segment>
            </net>
            <net name="H1_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV7" gate="G$1" pin="2" />
                <pinref part="U6" gate="B" pin="5" />
                <wire x1="885.19" y1="590.81" x2="947.42" y2="590.81" layer="91" width="0.1524" />
                <wire x1="947.42" y1="613.67" x2="947.42" y2="590.81" layer="91" width="0.1524" />
                <label x="885.19" y="590.81" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_AP1" class="0">
              <segment>
                <pinref part="U5" gate="A" pin="1" />
                <pinref part="R13" gate="G$1" pin="1" />
                <pinref part="R15" gate="G$1" pin="1" />
                <pinref part="R17" gate="G$1" pin="1" />
                <wire x1="497.84" y1="611.13" x2="515.62" y2="611.13" layer="91" width="0.1524" />
                <wire x1="515.62" y1="611.13" x2="515.62" y2="585.73" layer="91" width="0.1524" />
                <wire x1="505.46" y1="585.73" x2="515.62" y2="585.73" layer="91" width="0.1524" />
                <wire x1="565.15" y1="608.59" x2="599.44" y2="608.59" layer="91" width="0.1524" />
                <wire x1="565.15" y1="641.61" x2="565.15" y2="611.13" layer="91" width="0.1524" />
                <wire x1="565.15" y1="611.13" x2="565.15" y2="608.59" layer="91" width="0.1524" />
                <wire x1="565.15" y1="641.61" x2="575.31" y2="641.61" layer="91" width="0.1524" />
                <wire x1="515.62" y1="611.13" x2="565.15" y2="611.13" layer="91" width="0.1524" />
                <label x="497.84" y="611.13" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="515.62" y="611.13" />
                <junction x="565.15" y="608.59" />
                <junction x="565.15" y="611.13" />
              </segment>
            </net>
            <net name="H1_AP2" class="0">
              <segment>
                <pinref part="U5" gate="B" pin="7" />
                <pinref part="R16" gate="G$1" pin="1" />
                <pinref part="R18" gate="G$1" pin="1" />
                <pinref part="J1" gate="G$1" pin="1" />
                <pinref part="TP5" gate="G$1" pin="1" />
                <wire x1="652.78" y1="611.13" x2="670.56" y2="611.13" layer="91" width="0.1524" />
                <wire x1="670.56" y1="611.13" x2="670.56" y2="585.73" layer="91" width="0.1524" />
                <wire x1="660.4" y1="585.73" x2="670.56" y2="585.73" layer="91" width="0.1524" />
                <wire x1="670.56" y1="611.13" x2="689.61" y2="611.13" layer="91" width="0.1524" />
                <wire x1="689.61" y1="611.13" x2="754.38" y2="611.13" layer="91" width="0.1524" />
                <wire x1="754.38" y1="611.13" x2="754.38" y2="608.59" layer="91" width="0.1524" />
                <wire x1="689.61" y1="651.77" x2="689.61" y2="611.13" layer="91" width="0.1524" />
                <wire x1="689.61" y1="651.77" x2="845.82" y2="651.77" layer="91" width="0.1524" />
                <wire x1="845.82" y1="651.77" x2="845.82" y2="608.59" layer="91" width="0.1524" />
                <wire x1="845.82" y1="608.59" x2="854.71" y2="608.59" layer="91" width="0.1524" />
                <wire x1="670.56" y1="659.39" x2="670.56" y2="611.13" layer="91" width="0.1524" />
                <label x="652.78" y="611.13" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="670.56" y="611.13" />
                <junction x="689.61" y="611.13" />
              </segment>
            </net>
            <net name="H1_APINV1" class="0">
              <segment>
                <pinref part="U5" gate="A" pin="2" />
                <pinref part="R12" gate="G$1" pin="2" />
                <pinref part="R13" gate="G$1" pin="2" />
                <wire x1="454.66" y1="608.59" x2="474.98" y2="608.59" layer="91" width="0.1524" />
                <wire x1="474.98" y1="608.59" x2="482.6" y2="608.59" layer="91" width="0.1524" />
                <wire x1="474.98" y1="608.59" x2="474.98" y2="585.73" layer="91" width="0.1524" />
                <wire x1="474.98" y1="585.73" x2="495.3" y2="585.73" layer="91" width="0.1524" />
                <label x="454.66" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="474.98" y="608.59" />
              </segment>
            </net>
            <net name="H1_APINV2" class="0">
              <segment>
                <pinref part="U5" gate="B" pin="6" />
                <pinref part="R15" gate="G$1" pin="2" />
                <pinref part="R16" gate="G$1" pin="2" />
                <wire x1="609.6" y1="608.59" x2="629.92" y2="608.59" layer="91" width="0.1524" />
                <wire x1="629.92" y1="608.59" x2="637.54" y2="608.59" layer="91" width="0.1524" />
                <wire x1="629.92" y1="608.59" x2="629.92" y2="585.73" layer="91" width="0.1524" />
                <wire x1="629.92" y1="585.73" x2="650.24" y2="585.73" layer="91" width="0.1524" />
                <label x="609.6" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="629.92" y="608.59" />
              </segment>
            </net>
            <net name="H1_BPF1" class="0">
              <segment>
                <pinref part="U4" gate="A" pin="1" />
                <pinref part="C4" gate="G$1" pin="2" />
                <pinref part="R8" gate="G$1" pin="1" />
                <pinref part="R9" gate="G$1" pin="1" />
                <wire x1="160.02" y1="641.61" x2="205.74" y2="641.61" layer="91" width="0.1524" />
                <wire x1="205.74" y1="641.61" x2="205.74" y2="611.13" layer="91" width="0.1524" />
                <wire x1="187.96" y1="611.13" x2="205.74" y2="611.13" layer="91" width="0.1524" />
                <wire x1="195.58" y1="590.81" x2="205.74" y2="590.81" layer="91" width="0.1524" />
                <wire x1="205.74" y1="611.13" x2="205.74" y2="590.81" layer="91" width="0.1524" />
                <wire x1="205.74" y1="611.13" x2="250.19" y2="611.13" layer="91" width="0.1524" />
                <wire x1="250.19" y1="611.13" x2="250.19" y2="608.59" layer="91" width="0.1524" />
                <label x="160.02" y="641.61" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="205.74" y="611.13" />
              </segment>
            </net>
            <net name="H1_BPF2" class="0">
              <segment>
                <pinref part="U4" gate="B" pin="7" />
                <pinref part="C6" gate="G$1" pin="2" />
                <pinref part="R11" gate="G$1" pin="1" />
                <pinref part="R12" gate="G$1" pin="1" />
                <pinref part="R14" gate="G$1" pin="1" />
                <pinref part="TP4" gate="G$1" pin="1" />
                <wire x1="314.96" y1="641.61" x2="360.68" y2="641.61" layer="91" width="0.1524" />
                <wire x1="360.68" y1="641.61" x2="360.68" y2="611.13" layer="91" width="0.1524" />
                <wire x1="342.9" y1="611.13" x2="360.68" y2="611.13" layer="91" width="0.1524" />
                <wire x1="350.52" y1="590.81" x2="360.68" y2="590.81" layer="91" width="0.1524" />
                <wire x1="360.68" y1="611.13" x2="360.68" y2="590.81" layer="91" width="0.1524" />
                <wire x1="410.21" y1="608.59" x2="444.5" y2="608.59" layer="91" width="0.1524" />
                <wire x1="410.21" y1="641.61" x2="410.21" y2="611.13" layer="91" width="0.1524" />
                <wire x1="410.21" y1="611.13" x2="410.21" y2="608.59" layer="91" width="0.1524" />
                <wire x1="410.21" y1="641.61" x2="420.37" y2="641.61" layer="91" width="0.1524" />
                <wire x1="360.68" y1="611.13" x2="410.21" y2="611.13" layer="91" width="0.1524" />
                <wire x1="360.68" y1="659.39" x2="360.68" y2="641.61" layer="91" width="0.1524" />
                <label x="314.96" y="641.61" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="360.68" y="611.13" />
                <junction x="410.21" y="608.59" />
                <junction x="360.68" y="641.61" />
                <junction x="410.21" y="611.13" />
              </segment>
            </net>
            <net name="H1_INV1" class="0">
              <segment>
                <pinref part="U4" gate="A" pin="2" />
                <pinref part="C5" gate="G$1" pin="2" />
                <pinref part="R8" gate="G$1" pin="2" />
                <wire x1="160.02" y1="608.59" x2="172.72" y2="608.59" layer="91" width="0.1524" />
                <wire x1="172.72" y1="608.59" x2="172.72" y2="590.81" layer="91" width="0.1524" />
                <wire x1="172.72" y1="590.81" x2="185.42" y2="590.81" layer="91" width="0.1524" />
                <label x="160.02" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="172.72" y="608.59" />
              </segment>
            </net>
            <net name="H1_INV2" class="0">
              <segment>
                <pinref part="U4" gate="B" pin="6" />
                <pinref part="C7" gate="G$1" pin="2" />
                <pinref part="R11" gate="G$1" pin="2" />
                <wire x1="314.96" y1="608.59" x2="327.66" y2="608.59" layer="91" width="0.1524" />
                <wire x1="327.66" y1="608.59" x2="327.66" y2="590.81" layer="91" width="0.1524" />
                <wire x1="327.66" y1="590.81" x2="340.36" y2="590.81" layer="91" width="0.1524" />
                <label x="314.96" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="327.66" y="608.59" />
              </segment>
            </net>
            <net name="H1_LP1" class="0">
              <segment>
                <pinref part="U5" gate="A" pin="3" />
                <pinref part="RV5" gate="G$1" pin="2" />
                <pinref part="RV5" gate="G$1" pin="3" />
                <pinref part="C8" gate="G$1" pin="1" />
                <wire x1="454.66" y1="654.31" x2="454.66" y2="646.69" layer="91" width="0.1524" />
                <wire x1="454.66" y1="654.31" x2="467.36" y2="654.31" layer="91" width="0.1524" />
                <wire x1="467.36" y1="654.31" x2="467.36" y2="641.61" layer="91" width="0.1524" />
                <wire x1="459.74" y1="641.61" x2="464.82" y2="641.61" layer="91" width="0.1524" />
                <wire x1="464.82" y1="641.61" x2="467.36" y2="641.61" layer="91" width="0.1524" />
                <wire x1="467.36" y1="641.61" x2="477.52" y2="641.61" layer="91" width="0.1524" />
                <wire x1="477.52" y1="641.61" x2="477.52" y2="613.67" layer="91" width="0.1524" />
                <wire x1="477.52" y1="613.67" x2="482.6" y2="613.67" layer="91" width="0.1524" />
                <wire x1="464.82" y1="641.61" x2="464.82" y2="631.45" layer="91" width="0.1524" />
                <label x="454.66" y="646.69" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="459.74" y="641.61" />
                <junction x="464.82" y="641.61" />
                <junction x="467.36" y="641.61" />
              </segment>
            </net>
            <net name="H1_LP2" class="0">
              <segment>
                <pinref part="U5" gate="B" pin="5" />
                <pinref part="RV6" gate="G$1" pin="2" />
                <pinref part="RV6" gate="G$1" pin="3" />
                <pinref part="C9" gate="G$1" pin="1" />
                <wire x1="609.6" y1="654.31" x2="609.6" y2="646.69" layer="91" width="0.1524" />
                <wire x1="609.6" y1="654.31" x2="622.3" y2="654.31" layer="91" width="0.1524" />
                <wire x1="622.3" y1="654.31" x2="622.3" y2="641.61" layer="91" width="0.1524" />
                <wire x1="614.68" y1="641.61" x2="619.76" y2="641.61" layer="91" width="0.1524" />
                <wire x1="619.76" y1="641.61" x2="622.3" y2="641.61" layer="91" width="0.1524" />
                <wire x1="622.3" y1="641.61" x2="632.46" y2="641.61" layer="91" width="0.1524" />
                <wire x1="632.46" y1="641.61" x2="632.46" y2="613.67" layer="91" width="0.1524" />
                <wire x1="632.46" y1="613.67" x2="637.54" y2="613.67" layer="91" width="0.1524" />
                <wire x1="619.76" y1="641.61" x2="619.76" y2="631.45" layer="91" width="0.1524" />
                <label x="609.6" y="646.69" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="614.68" y="641.61" />
                <junction x="619.76" y="641.61" />
                <junction x="622.3" y="641.61" />
              </segment>
            </net>
            <net name="H1_NEG" class="0">
              <segment>
                <pinref part="U6" gate="A" pin="1" />
                <pinref part="R19" gate="G$1" pin="1" />
                <pinref part="J1" gate="G$1" pin="3" />
                <wire x1="807.72" y1="611.13" x2="825.5" y2="611.13" layer="91" width="0.1524" />
                <wire x1="825.5" y1="611.13" x2="825.5" y2="585.73" layer="91" width="0.1524" />
                <wire x1="815.34" y1="585.73" x2="825.5" y2="585.73" layer="91" width="0.1524" />
                <wire x1="825.5" y1="611.13" x2="833.12" y2="611.13" layer="91" width="0.1524" />
                <wire x1="833.12" y1="613.67" x2="833.12" y2="611.13" layer="91" width="0.1524" />
                <wire x1="833.12" y1="613.67" x2="854.71" y2="613.67" layer="91" width="0.1524" />
                <label x="807.72" y="611.13" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="825.5" y="611.13" />
              </segment>
            </net>
            <net name="H1_NODE1" class="0">
              <segment>
                <pinref part="R6" gate="G$1" pin="2" />
                <pinref part="C5" gate="G$1" pin="1" />
                <pinref part="C4" gate="G$1" pin="1" />
                <pinref part="R7" gate="G$1" pin="1" />
                <wire x1="105.41" y1="608.59" x2="130.81" y2="608.59" layer="91" width="0.1524" />
                <wire x1="130.81" y1="608.59" x2="149.86" y2="608.59" layer="91" width="0.1524" />
                <wire x1="130.81" y1="641.61" x2="130.81" y2="608.59" layer="91" width="0.1524" />
                <wire x1="130.81" y1="641.61" x2="149.86" y2="641.61" layer="91" width="0.1524" />
                <wire x1="130.81" y1="608.59" x2="130.81" y2="595.89" layer="91" width="0.1524" />
                <label x="105.41" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="130.81" y="608.59" />
              </segment>
            </net>
            <net name="H1_NODE2" class="0">
              <segment>
                <pinref part="R9" gate="G$1" pin="2" />
                <pinref part="C7" gate="G$1" pin="1" />
                <pinref part="C6" gate="G$1" pin="1" />
                <pinref part="R10" gate="G$1" pin="1" />
                <wire x1="260.35" y1="608.59" x2="285.75" y2="608.59" layer="91" width="0.1524" />
                <wire x1="285.75" y1="608.59" x2="304.8" y2="608.59" layer="91" width="0.1524" />
                <wire x1="285.75" y1="641.61" x2="285.75" y2="608.59" layer="91" width="0.1524" />
                <wire x1="285.75" y1="641.61" x2="304.8" y2="641.61" layer="91" width="0.1524" />
                <wire x1="285.75" y1="608.59" x2="285.75" y2="595.89" layer="91" width="0.1524" />
                <label x="260.35" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="285.75" y="608.59" />
              </segment>
            </net>
            <net name="H1_OUT" class="0">
              <segment>
                <pinref part="U6" gate="B" pin="6" />
                <pinref part="U6" gate="B" pin="7" />
                <pinref part="TP6" gate="G$1" pin="1" />
                <pinref part="R62" gate="G$1" pin="1" />
                <wire x1="962.66" y1="611.13" x2="980.44" y2="611.13" layer="91" width="0.1524" />
                <wire x1="980.44" y1="611.13" x2="980.44" y2="590.81" layer="91" width="0.1524" />
                <wire x1="934.72" y1="590.81" x2="980.44" y2="590.81" layer="91" width="0.1524" />
                <wire x1="934.72" y1="608.59" x2="934.72" y2="590.81" layer="91" width="0.1524" />
                <wire x1="934.72" y1="608.59" x2="947.42" y2="608.59" layer="91" width="0.1524" />
                <wire x1="980.44" y1="628.91" x2="980.44" y2="611.13" layer="91" width="0.1524" />
                <wire x1="980.44" y1="611.13" x2="1016.0" y2="611.13" layer="91" width="0.1524" />
                <wire x1="1016.0" y1="611.13" x2="1016.0" y2="125.99000000000001" layer="91" width="0.1524" />
                <label x="962.66" y="611.13" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="980.44" y="611.13" />
              </segment>
            </net>
            <net name="H1_PHR1" class="0">
              <segment>
                <pinref part="R14" gate="G$1" pin="2" />
                <pinref part="RV5" gate="G$1" pin="1" />
                <wire x1="430.53" y1="641.61" x2="449.58" y2="641.61" layer="91" width="0.1524" />
                <label x="430.53" y="641.61" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_PHR2" class="0">
              <segment>
                <pinref part="R17" gate="G$1" pin="2" />
                <pinref part="RV6" gate="G$1" pin="1" />
                <wire x1="585.47" y1="641.61" x2="604.52" y2="641.61" layer="91" width="0.1524" />
                <label x="585.47" y="641.61" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_POLINV" class="0">
              <segment>
                <pinref part="U6" gate="A" pin="2" />
                <pinref part="R18" gate="G$1" pin="2" />
                <pinref part="R19" gate="G$1" pin="2" />
                <wire x1="764.54" y1="608.59" x2="784.86" y2="608.59" layer="91" width="0.1524" />
                <wire x1="784.86" y1="608.59" x2="792.48" y2="608.59" layer="91" width="0.1524" />
                <wire x1="784.86" y1="608.59" x2="784.86" y2="585.73" layer="91" width="0.1524" />
                <wire x1="784.86" y1="585.73" x2="805.18" y2="585.73" layer="91" width="0.1524" />
                <label x="764.54" y="608.59" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="784.86" y="608.59" />
              </segment>
            </net>
            <net name="H1_SELECT" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="2" />
                <pinref part="RV7" gate="G$1" pin="1" />
                <wire x1="854.71" y1="611.13" x2="880.11" y2="611.13" layer="91" width="0.1524" />
                <wire x1="880.11" y1="611.13" x2="880.11" y2="595.89" layer="91" width="0.1524" />
                <label x="854.71" y="611.13" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_TUNE1" class="0">
              <segment>
                <pinref part="R7" gate="G$1" pin="2" />
                <pinref part="RV3" gate="G$1" pin="1" />
                <wire x1="130.81" y1="585.73" x2="130.81" y2="575.5699999999999" layer="91" width="0.1524" />
                <label x="130.81" y="585.73" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_TUNE2" class="0">
              <segment>
                <pinref part="R10" gate="G$1" pin="2" />
                <pinref part="RV4" gate="G$1" pin="1" />
                <wire x1="285.75" y1="585.73" x2="285.75" y2="575.5699999999999" layer="91" width="0.1524" />
                <label x="285.75" y="585.73" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV12" gate="G$1" pin="2" />
                <pinref part="U9" gate="B" pin="5" />
                <wire x1="885.19" y1="440.95" x2="947.42" y2="440.95" layer="91" width="0.1524" />
                <wire x1="947.42" y1="463.81" x2="947.42" y2="440.95" layer="91" width="0.1524" />
                <label x="885.19" y="440.95" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_AP1" class="0">
              <segment>
                <pinref part="U8" gate="A" pin="1" />
                <pinref part="R27" gate="G$1" pin="1" />
                <pinref part="R29" gate="G$1" pin="1" />
                <pinref part="R31" gate="G$1" pin="1" />
                <wire x1="497.84" y1="461.27" x2="515.62" y2="461.27" layer="91" width="0.1524" />
                <wire x1="515.62" y1="461.27" x2="515.62" y2="435.87" layer="91" width="0.1524" />
                <wire x1="505.46" y1="435.87" x2="515.62" y2="435.87" layer="91" width="0.1524" />
                <wire x1="565.15" y1="458.73" x2="599.44" y2="458.73" layer="91" width="0.1524" />
                <wire x1="565.15" y1="491.75" x2="565.15" y2="461.27" layer="91" width="0.1524" />
                <wire x1="565.15" y1="461.27" x2="565.15" y2="458.73" layer="91" width="0.1524" />
                <wire x1="565.15" y1="491.75" x2="575.31" y2="491.75" layer="91" width="0.1524" />
                <wire x1="515.62" y1="461.27" x2="565.15" y2="461.27" layer="91" width="0.1524" />
                <label x="497.84" y="461.27" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="515.62" y="461.27" />
                <junction x="565.15" y="458.73" />
                <junction x="565.15" y="461.27" />
              </segment>
            </net>
            <net name="H3_AP2" class="0">
              <segment>
                <pinref part="U8" gate="B" pin="7" />
                <pinref part="R30" gate="G$1" pin="1" />
                <pinref part="R32" gate="G$1" pin="1" />
                <pinref part="J2" gate="G$1" pin="1" />
                <pinref part="TP8" gate="G$1" pin="1" />
                <wire x1="652.78" y1="461.27" x2="670.56" y2="461.27" layer="91" width="0.1524" />
                <wire x1="670.56" y1="461.27" x2="670.56" y2="435.87" layer="91" width="0.1524" />
                <wire x1="660.4" y1="435.87" x2="670.56" y2="435.87" layer="91" width="0.1524" />
                <wire x1="670.56" y1="461.27" x2="689.61" y2="461.27" layer="91" width="0.1524" />
                <wire x1="689.61" y1="461.27" x2="754.38" y2="461.27" layer="91" width="0.1524" />
                <wire x1="754.38" y1="461.27" x2="754.38" y2="458.73" layer="91" width="0.1524" />
                <wire x1="689.61" y1="501.91" x2="689.61" y2="461.27" layer="91" width="0.1524" />
                <wire x1="689.61" y1="501.91" x2="845.82" y2="501.91" layer="91" width="0.1524" />
                <wire x1="845.82" y1="501.91" x2="845.82" y2="458.73" layer="91" width="0.1524" />
                <wire x1="845.82" y1="458.73" x2="854.71" y2="458.73" layer="91" width="0.1524" />
                <wire x1="670.56" y1="509.53" x2="670.56" y2="461.27" layer="91" width="0.1524" />
                <label x="652.78" y="461.27" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="670.56" y="461.27" />
                <junction x="689.61" y="461.27" />
              </segment>
            </net>
            <net name="H3_APINV1" class="0">
              <segment>
                <pinref part="U8" gate="A" pin="2" />
                <pinref part="R26" gate="G$1" pin="2" />
                <pinref part="R27" gate="G$1" pin="2" />
                <wire x1="454.66" y1="458.73" x2="474.98" y2="458.73" layer="91" width="0.1524" />
                <wire x1="474.98" y1="458.73" x2="482.6" y2="458.73" layer="91" width="0.1524" />
                <wire x1="474.98" y1="458.73" x2="474.98" y2="435.87" layer="91" width="0.1524" />
                <wire x1="474.98" y1="435.87" x2="495.3" y2="435.87" layer="91" width="0.1524" />
                <label x="454.66" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="474.98" y="458.73" />
              </segment>
            </net>
            <net name="H3_APINV2" class="0">
              <segment>
                <pinref part="U8" gate="B" pin="6" />
                <pinref part="R29" gate="G$1" pin="2" />
                <pinref part="R30" gate="G$1" pin="2" />
                <wire x1="609.6" y1="458.73" x2="629.92" y2="458.73" layer="91" width="0.1524" />
                <wire x1="629.92" y1="458.73" x2="637.54" y2="458.73" layer="91" width="0.1524" />
                <wire x1="629.92" y1="458.73" x2="629.92" y2="435.87" layer="91" width="0.1524" />
                <wire x1="629.92" y1="435.87" x2="650.24" y2="435.87" layer="91" width="0.1524" />
                <label x="609.6" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="629.92" y="458.73" />
              </segment>
            </net>
            <net name="H3_BPF1" class="0">
              <segment>
                <pinref part="U7" gate="A" pin="1" />
                <pinref part="C10" gate="G$1" pin="2" />
                <pinref part="R22" gate="G$1" pin="1" />
                <pinref part="R23" gate="G$1" pin="1" />
                <wire x1="160.02" y1="491.75" x2="205.74" y2="491.75" layer="91" width="0.1524" />
                <wire x1="205.74" y1="491.75" x2="205.74" y2="461.27" layer="91" width="0.1524" />
                <wire x1="187.96" y1="461.27" x2="205.74" y2="461.27" layer="91" width="0.1524" />
                <wire x1="195.58" y1="440.95" x2="205.74" y2="440.95" layer="91" width="0.1524" />
                <wire x1="205.74" y1="461.27" x2="205.74" y2="440.95" layer="91" width="0.1524" />
                <wire x1="205.74" y1="461.27" x2="250.19" y2="461.27" layer="91" width="0.1524" />
                <wire x1="250.19" y1="461.27" x2="250.19" y2="458.73" layer="91" width="0.1524" />
                <label x="160.02" y="491.75" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="205.74" y="461.27" />
              </segment>
            </net>
            <net name="H3_BPF2" class="0">
              <segment>
                <pinref part="U7" gate="B" pin="7" />
                <pinref part="C12" gate="G$1" pin="2" />
                <pinref part="R25" gate="G$1" pin="1" />
                <pinref part="R26" gate="G$1" pin="1" />
                <pinref part="R28" gate="G$1" pin="1" />
                <pinref part="TP7" gate="G$1" pin="1" />
                <wire x1="314.96" y1="491.75" x2="360.68" y2="491.75" layer="91" width="0.1524" />
                <wire x1="360.68" y1="491.75" x2="360.68" y2="461.27" layer="91" width="0.1524" />
                <wire x1="342.9" y1="461.27" x2="360.68" y2="461.27" layer="91" width="0.1524" />
                <wire x1="350.52" y1="440.95" x2="360.68" y2="440.95" layer="91" width="0.1524" />
                <wire x1="360.68" y1="461.27" x2="360.68" y2="440.95" layer="91" width="0.1524" />
                <wire x1="410.21" y1="458.73" x2="444.5" y2="458.73" layer="91" width="0.1524" />
                <wire x1="410.21" y1="491.75" x2="410.21" y2="461.27" layer="91" width="0.1524" />
                <wire x1="410.21" y1="461.27" x2="410.21" y2="458.73" layer="91" width="0.1524" />
                <wire x1="410.21" y1="491.75" x2="420.37" y2="491.75" layer="91" width="0.1524" />
                <wire x1="360.68" y1="461.27" x2="410.21" y2="461.27" layer="91" width="0.1524" />
                <wire x1="360.68" y1="509.53" x2="360.68" y2="491.75" layer="91" width="0.1524" />
                <label x="314.96" y="491.75" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="360.68" y="461.27" />
                <junction x="410.21" y="458.73" />
                <junction x="360.68" y="491.75" />
                <junction x="410.21" y="461.27" />
              </segment>
            </net>
            <net name="H3_INV1" class="0">
              <segment>
                <pinref part="U7" gate="A" pin="2" />
                <pinref part="C11" gate="G$1" pin="2" />
                <pinref part="R22" gate="G$1" pin="2" />
                <wire x1="160.02" y1="458.73" x2="172.72" y2="458.73" layer="91" width="0.1524" />
                <wire x1="172.72" y1="458.73" x2="172.72" y2="440.95" layer="91" width="0.1524" />
                <wire x1="172.72" y1="440.95" x2="185.42" y2="440.95" layer="91" width="0.1524" />
                <label x="160.02" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="172.72" y="458.73" />
              </segment>
            </net>
            <net name="H3_INV2" class="0">
              <segment>
                <pinref part="U7" gate="B" pin="6" />
                <pinref part="C13" gate="G$1" pin="2" />
                <pinref part="R25" gate="G$1" pin="2" />
                <wire x1="314.96" y1="458.73" x2="327.66" y2="458.73" layer="91" width="0.1524" />
                <wire x1="327.66" y1="458.73" x2="327.66" y2="440.95" layer="91" width="0.1524" />
                <wire x1="327.66" y1="440.95" x2="340.36" y2="440.95" layer="91" width="0.1524" />
                <label x="314.96" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="327.66" y="458.73" />
              </segment>
            </net>
            <net name="H3_LP1" class="0">
              <segment>
                <pinref part="U8" gate="A" pin="3" />
                <pinref part="RV10" gate="G$1" pin="2" />
                <pinref part="RV10" gate="G$1" pin="3" />
                <pinref part="C14" gate="G$1" pin="1" />
                <wire x1="454.66" y1="504.45" x2="454.66" y2="496.83" layer="91" width="0.1524" />
                <wire x1="454.66" y1="504.45" x2="467.36" y2="504.45" layer="91" width="0.1524" />
                <wire x1="467.36" y1="504.45" x2="467.36" y2="491.75" layer="91" width="0.1524" />
                <wire x1="459.74" y1="491.75" x2="464.82" y2="491.75" layer="91" width="0.1524" />
                <wire x1="464.82" y1="491.75" x2="467.36" y2="491.75" layer="91" width="0.1524" />
                <wire x1="467.36" y1="491.75" x2="477.52" y2="491.75" layer="91" width="0.1524" />
                <wire x1="477.52" y1="491.75" x2="477.52" y2="463.81" layer="91" width="0.1524" />
                <wire x1="477.52" y1="463.81" x2="482.6" y2="463.81" layer="91" width="0.1524" />
                <wire x1="464.82" y1="491.75" x2="464.82" y2="481.59" layer="91" width="0.1524" />
                <label x="454.66" y="496.83" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="459.74" y="491.75" />
                <junction x="464.82" y="491.75" />
                <junction x="467.36" y="491.75" />
              </segment>
            </net>
            <net name="H3_LP2" class="0">
              <segment>
                <pinref part="U8" gate="B" pin="5" />
                <pinref part="RV11" gate="G$1" pin="2" />
                <pinref part="RV11" gate="G$1" pin="3" />
                <pinref part="C15" gate="G$1" pin="1" />
                <wire x1="609.6" y1="504.45" x2="609.6" y2="496.83" layer="91" width="0.1524" />
                <wire x1="609.6" y1="504.45" x2="622.3" y2="504.45" layer="91" width="0.1524" />
                <wire x1="622.3" y1="504.45" x2="622.3" y2="491.75" layer="91" width="0.1524" />
                <wire x1="614.68" y1="491.75" x2="619.76" y2="491.75" layer="91" width="0.1524" />
                <wire x1="619.76" y1="491.75" x2="622.3" y2="491.75" layer="91" width="0.1524" />
                <wire x1="622.3" y1="491.75" x2="632.46" y2="491.75" layer="91" width="0.1524" />
                <wire x1="632.46" y1="491.75" x2="632.46" y2="463.81" layer="91" width="0.1524" />
                <wire x1="632.46" y1="463.81" x2="637.54" y2="463.81" layer="91" width="0.1524" />
                <wire x1="619.76" y1="491.75" x2="619.76" y2="481.59" layer="91" width="0.1524" />
                <label x="609.6" y="496.83" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="614.68" y="491.75" />
                <junction x="619.76" y="491.75" />
                <junction x="622.3" y="491.75" />
              </segment>
            </net>
            <net name="H3_NEG" class="0">
              <segment>
                <pinref part="U9" gate="A" pin="1" />
                <pinref part="R33" gate="G$1" pin="1" />
                <pinref part="J2" gate="G$1" pin="3" />
                <wire x1="807.72" y1="461.27" x2="825.5" y2="461.27" layer="91" width="0.1524" />
                <wire x1="825.5" y1="461.27" x2="825.5" y2="435.87" layer="91" width="0.1524" />
                <wire x1="815.34" y1="435.87" x2="825.5" y2="435.87" layer="91" width="0.1524" />
                <wire x1="825.5" y1="461.27" x2="833.12" y2="461.27" layer="91" width="0.1524" />
                <wire x1="833.12" y1="463.81" x2="833.12" y2="461.27" layer="91" width="0.1524" />
                <wire x1="833.12" y1="463.81" x2="854.71" y2="463.81" layer="91" width="0.1524" />
                <label x="807.72" y="461.27" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="825.5" y="461.27" />
              </segment>
            </net>
            <net name="H3_NODE1" class="0">
              <segment>
                <pinref part="R20" gate="G$1" pin="2" />
                <pinref part="C11" gate="G$1" pin="1" />
                <pinref part="C10" gate="G$1" pin="1" />
                <pinref part="R21" gate="G$1" pin="1" />
                <wire x1="105.41" y1="458.73" x2="130.81" y2="458.73" layer="91" width="0.1524" />
                <wire x1="130.81" y1="458.73" x2="149.86" y2="458.73" layer="91" width="0.1524" />
                <wire x1="130.81" y1="491.75" x2="130.81" y2="458.73" layer="91" width="0.1524" />
                <wire x1="130.81" y1="491.75" x2="149.86" y2="491.75" layer="91" width="0.1524" />
                <wire x1="130.81" y1="458.73" x2="130.81" y2="446.03" layer="91" width="0.1524" />
                <label x="105.41" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="130.81" y="458.73" />
              </segment>
            </net>
            <net name="H3_NODE2" class="0">
              <segment>
                <pinref part="R23" gate="G$1" pin="2" />
                <pinref part="C13" gate="G$1" pin="1" />
                <pinref part="C12" gate="G$1" pin="1" />
                <pinref part="R24" gate="G$1" pin="1" />
                <wire x1="260.35" y1="458.73" x2="285.75" y2="458.73" layer="91" width="0.1524" />
                <wire x1="285.75" y1="458.73" x2="304.8" y2="458.73" layer="91" width="0.1524" />
                <wire x1="285.75" y1="491.75" x2="285.75" y2="458.73" layer="91" width="0.1524" />
                <wire x1="285.75" y1="491.75" x2="304.8" y2="491.75" layer="91" width="0.1524" />
                <wire x1="285.75" y1="458.73" x2="285.75" y2="446.03" layer="91" width="0.1524" />
                <label x="260.35" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="285.75" y="458.73" />
              </segment>
            </net>
            <net name="H3_OUT" class="0">
              <segment>
                <pinref part="U9" gate="B" pin="6" />
                <pinref part="U9" gate="B" pin="7" />
                <pinref part="TP9" gate="G$1" pin="1" />
                <pinref part="R63" gate="G$1" pin="1" />
                <wire x1="962.66" y1="461.27" x2="980.44" y2="461.27" layer="91" width="0.1524" />
                <wire x1="980.44" y1="461.27" x2="980.44" y2="440.95" layer="91" width="0.1524" />
                <wire x1="934.72" y1="440.95" x2="980.44" y2="440.95" layer="91" width="0.1524" />
                <wire x1="934.72" y1="458.73" x2="934.72" y2="440.95" layer="91" width="0.1524" />
                <wire x1="934.72" y1="458.73" x2="947.42" y2="458.73" layer="91" width="0.1524" />
                <wire x1="980.44" y1="479.05" x2="980.44" y2="461.27" layer="91" width="0.1524" />
                <wire x1="980.44" y1="461.27" x2="1041.4" y2="461.27" layer="91" width="0.1524" />
                <wire x1="1041.4" y1="461.27" x2="1041.4" y2="125.99000000000001" layer="91" width="0.1524" />
                <label x="962.66" y="461.27" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="980.44" y="461.27" />
              </segment>
            </net>
            <net name="H3_PHR1" class="0">
              <segment>
                <pinref part="R28" gate="G$1" pin="2" />
                <pinref part="RV10" gate="G$1" pin="1" />
                <wire x1="430.53" y1="491.75" x2="449.58" y2="491.75" layer="91" width="0.1524" />
                <label x="430.53" y="491.75" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_PHR2" class="0">
              <segment>
                <pinref part="R31" gate="G$1" pin="2" />
                <pinref part="RV11" gate="G$1" pin="1" />
                <wire x1="585.47" y1="491.75" x2="604.52" y2="491.75" layer="91" width="0.1524" />
                <label x="585.47" y="491.75" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_POLINV" class="0">
              <segment>
                <pinref part="U9" gate="A" pin="2" />
                <pinref part="R32" gate="G$1" pin="2" />
                <pinref part="R33" gate="G$1" pin="2" />
                <wire x1="764.54" y1="458.73" x2="784.86" y2="458.73" layer="91" width="0.1524" />
                <wire x1="784.86" y1="458.73" x2="792.48" y2="458.73" layer="91" width="0.1524" />
                <wire x1="784.86" y1="458.73" x2="784.86" y2="435.87" layer="91" width="0.1524" />
                <wire x1="784.86" y1="435.87" x2="805.18" y2="435.87" layer="91" width="0.1524" />
                <label x="764.54" y="458.73" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="784.86" y="458.73" />
              </segment>
            </net>
            <net name="H3_SELECT" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="2" />
                <pinref part="RV12" gate="G$1" pin="1" />
                <wire x1="854.71" y1="461.27" x2="880.11" y2="461.27" layer="91" width="0.1524" />
                <wire x1="880.11" y1="461.27" x2="880.11" y2="446.03" layer="91" width="0.1524" />
                <label x="854.71" y="461.27" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_TUNE1" class="0">
              <segment>
                <pinref part="R21" gate="G$1" pin="2" />
                <pinref part="RV8" gate="G$1" pin="1" />
                <wire x1="130.81" y1="435.87" x2="130.81" y2="425.71" layer="91" width="0.1524" />
                <label x="130.81" y="435.87" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_TUNE2" class="0">
              <segment>
                <pinref part="R24" gate="G$1" pin="2" />
                <pinref part="RV9" gate="G$1" pin="1" />
                <wire x1="285.75" y1="435.87" x2="285.75" y2="425.71" layer="91" width="0.1524" />
                <label x="285.75" y="435.87" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV17" gate="G$1" pin="2" />
                <pinref part="U12" gate="B" pin="5" />
                <wire x1="885.19" y1="291.09000000000003" x2="947.42" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="947.42" y1="313.95000000000005" x2="947.42" y2="291.09000000000003" layer="91" width="0.1524" />
                <label x="885.19" y="291.09000000000003" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_AP1" class="0">
              <segment>
                <pinref part="U11" gate="A" pin="1" />
                <pinref part="R41" gate="G$1" pin="1" />
                <pinref part="R43" gate="G$1" pin="1" />
                <pinref part="R45" gate="G$1" pin="1" />
                <wire x1="497.84" y1="311.40999999999997" x2="515.62" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="515.62" y1="311.40999999999997" x2="515.62" y2="286.01" layer="91" width="0.1524" />
                <wire x1="505.46" y1="286.01" x2="515.62" y2="286.01" layer="91" width="0.1524" />
                <wire x1="565.15" y1="308.87" x2="599.44" y2="308.87" layer="91" width="0.1524" />
                <wire x1="565.15" y1="341.89" x2="565.15" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="565.15" y1="311.40999999999997" x2="565.15" y2="308.87" layer="91" width="0.1524" />
                <wire x1="565.15" y1="341.89" x2="575.31" y2="341.89" layer="91" width="0.1524" />
                <wire x1="515.62" y1="311.40999999999997" x2="565.15" y2="311.40999999999997" layer="91" width="0.1524" />
                <label x="497.84" y="311.40999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="515.62" y="311.40999999999997" />
                <junction x="565.15" y="308.87" />
                <junction x="565.15" y="311.40999999999997" />
              </segment>
            </net>
            <net name="H5_AP2" class="0">
              <segment>
                <pinref part="U11" gate="B" pin="7" />
                <pinref part="R44" gate="G$1" pin="1" />
                <pinref part="R46" gate="G$1" pin="1" />
                <pinref part="J3" gate="G$1" pin="1" />
                <pinref part="TP11" gate="G$1" pin="1" />
                <wire x1="652.78" y1="311.40999999999997" x2="670.56" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="670.56" y1="311.40999999999997" x2="670.56" y2="286.01" layer="91" width="0.1524" />
                <wire x1="660.4" y1="286.01" x2="670.56" y2="286.01" layer="91" width="0.1524" />
                <wire x1="670.56" y1="311.40999999999997" x2="689.61" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="689.61" y1="311.40999999999997" x2="754.38" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="754.38" y1="311.40999999999997" x2="754.38" y2="308.87" layer="91" width="0.1524" />
                <wire x1="689.61" y1="352.05" x2="689.61" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="689.61" y1="352.05" x2="845.82" y2="352.05" layer="91" width="0.1524" />
                <wire x1="845.82" y1="352.05" x2="845.82" y2="308.87" layer="91" width="0.1524" />
                <wire x1="845.82" y1="308.87" x2="854.71" y2="308.87" layer="91" width="0.1524" />
                <wire x1="670.56" y1="359.67" x2="670.56" y2="311.40999999999997" layer="91" width="0.1524" />
                <label x="652.78" y="311.40999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="670.56" y="311.40999999999997" />
                <junction x="689.61" y="311.40999999999997" />
              </segment>
            </net>
            <net name="H5_APINV1" class="0">
              <segment>
                <pinref part="U11" gate="A" pin="2" />
                <pinref part="R40" gate="G$1" pin="2" />
                <pinref part="R41" gate="G$1" pin="2" />
                <wire x1="454.66" y1="308.87" x2="474.98" y2="308.87" layer="91" width="0.1524" />
                <wire x1="474.98" y1="308.87" x2="482.6" y2="308.87" layer="91" width="0.1524" />
                <wire x1="474.98" y1="308.87" x2="474.98" y2="286.01" layer="91" width="0.1524" />
                <wire x1="474.98" y1="286.01" x2="495.3" y2="286.01" layer="91" width="0.1524" />
                <label x="454.66" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="474.98" y="308.87" />
              </segment>
            </net>
            <net name="H5_APINV2" class="0">
              <segment>
                <pinref part="U11" gate="B" pin="6" />
                <pinref part="R43" gate="G$1" pin="2" />
                <pinref part="R44" gate="G$1" pin="2" />
                <wire x1="609.6" y1="308.87" x2="629.92" y2="308.87" layer="91" width="0.1524" />
                <wire x1="629.92" y1="308.87" x2="637.54" y2="308.87" layer="91" width="0.1524" />
                <wire x1="629.92" y1="308.87" x2="629.92" y2="286.01" layer="91" width="0.1524" />
                <wire x1="629.92" y1="286.01" x2="650.24" y2="286.01" layer="91" width="0.1524" />
                <label x="609.6" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="629.92" y="308.87" />
              </segment>
            </net>
            <net name="H5_BPF1" class="0">
              <segment>
                <pinref part="U10" gate="A" pin="1" />
                <pinref part="C16" gate="G$1" pin="2" />
                <pinref part="R36" gate="G$1" pin="1" />
                <pinref part="R37" gate="G$1" pin="1" />
                <wire x1="160.02" y1="341.89" x2="205.74" y2="341.89" layer="91" width="0.1524" />
                <wire x1="205.74" y1="341.89" x2="205.74" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="187.96" y1="311.40999999999997" x2="205.74" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="195.58" y1="291.09000000000003" x2="205.74" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="205.74" y1="311.40999999999997" x2="205.74" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="205.74" y1="311.40999999999997" x2="250.19" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="250.19" y1="311.40999999999997" x2="250.19" y2="308.87" layer="91" width="0.1524" />
                <label x="160.02" y="341.89" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="205.74" y="311.40999999999997" />
              </segment>
            </net>
            <net name="H5_BPF2" class="0">
              <segment>
                <pinref part="U10" gate="B" pin="7" />
                <pinref part="C18" gate="G$1" pin="2" />
                <pinref part="R39" gate="G$1" pin="1" />
                <pinref part="R40" gate="G$1" pin="1" />
                <pinref part="R42" gate="G$1" pin="1" />
                <pinref part="TP10" gate="G$1" pin="1" />
                <wire x1="314.96" y1="341.89" x2="360.68" y2="341.89" layer="91" width="0.1524" />
                <wire x1="360.68" y1="341.89" x2="360.68" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="342.9" y1="311.40999999999997" x2="360.68" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="350.52" y1="291.09000000000003" x2="360.68" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="360.68" y1="311.40999999999997" x2="360.68" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="410.21" y1="308.87" x2="444.5" y2="308.87" layer="91" width="0.1524" />
                <wire x1="410.21" y1="341.89" x2="410.21" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="410.21" y1="311.40999999999997" x2="410.21" y2="308.87" layer="91" width="0.1524" />
                <wire x1="410.21" y1="341.89" x2="420.37" y2="341.89" layer="91" width="0.1524" />
                <wire x1="360.68" y1="311.40999999999997" x2="410.21" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="360.68" y1="359.67" x2="360.68" y2="341.89" layer="91" width="0.1524" />
                <label x="314.96" y="341.89" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="360.68" y="311.40999999999997" />
                <junction x="410.21" y="308.87" />
                <junction x="360.68" y="341.89" />
                <junction x="410.21" y="311.40999999999997" />
              </segment>
            </net>
            <net name="H5_INV1" class="0">
              <segment>
                <pinref part="U10" gate="A" pin="2" />
                <pinref part="C17" gate="G$1" pin="2" />
                <pinref part="R36" gate="G$1" pin="2" />
                <wire x1="160.02" y1="308.87" x2="172.72" y2="308.87" layer="91" width="0.1524" />
                <wire x1="172.72" y1="308.87" x2="172.72" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="172.72" y1="291.09000000000003" x2="185.42" y2="291.09000000000003" layer="91" width="0.1524" />
                <label x="160.02" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="172.72" y="308.87" />
              </segment>
            </net>
            <net name="H5_INV2" class="0">
              <segment>
                <pinref part="U10" gate="B" pin="6" />
                <pinref part="C19" gate="G$1" pin="2" />
                <pinref part="R39" gate="G$1" pin="2" />
                <wire x1="314.96" y1="308.87" x2="327.66" y2="308.87" layer="91" width="0.1524" />
                <wire x1="327.66" y1="308.87" x2="327.66" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="327.66" y1="291.09000000000003" x2="340.36" y2="291.09000000000003" layer="91" width="0.1524" />
                <label x="314.96" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="327.66" y="308.87" />
              </segment>
            </net>
            <net name="H5_LP1" class="0">
              <segment>
                <pinref part="U11" gate="A" pin="3" />
                <pinref part="RV15" gate="G$1" pin="2" />
                <pinref part="RV15" gate="G$1" pin="3" />
                <pinref part="C20" gate="G$1" pin="1" />
                <wire x1="454.66" y1="354.59" x2="454.66" y2="346.97" layer="91" width="0.1524" />
                <wire x1="454.66" y1="354.59" x2="467.36" y2="354.59" layer="91" width="0.1524" />
                <wire x1="467.36" y1="354.59" x2="467.36" y2="341.89" layer="91" width="0.1524" />
                <wire x1="459.74" y1="341.89" x2="464.82" y2="341.89" layer="91" width="0.1524" />
                <wire x1="464.82" y1="341.89" x2="467.36" y2="341.89" layer="91" width="0.1524" />
                <wire x1="467.36" y1="341.89" x2="477.52" y2="341.89" layer="91" width="0.1524" />
                <wire x1="477.52" y1="341.89" x2="477.52" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="477.52" y1="313.95000000000005" x2="482.6" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="464.82" y1="341.89" x2="464.82" y2="331.73" layer="91" width="0.1524" />
                <label x="454.66" y="346.97" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="459.74" y="341.89" />
                <junction x="464.82" y="341.89" />
                <junction x="467.36" y="341.89" />
              </segment>
            </net>
            <net name="H5_LP2" class="0">
              <segment>
                <pinref part="U11" gate="B" pin="5" />
                <pinref part="RV16" gate="G$1" pin="2" />
                <pinref part="RV16" gate="G$1" pin="3" />
                <pinref part="C21" gate="G$1" pin="1" />
                <wire x1="609.6" y1="354.59" x2="609.6" y2="346.97" layer="91" width="0.1524" />
                <wire x1="609.6" y1="354.59" x2="622.3" y2="354.59" layer="91" width="0.1524" />
                <wire x1="622.3" y1="354.59" x2="622.3" y2="341.89" layer="91" width="0.1524" />
                <wire x1="614.68" y1="341.89" x2="619.76" y2="341.89" layer="91" width="0.1524" />
                <wire x1="619.76" y1="341.89" x2="622.3" y2="341.89" layer="91" width="0.1524" />
                <wire x1="622.3" y1="341.89" x2="632.46" y2="341.89" layer="91" width="0.1524" />
                <wire x1="632.46" y1="341.89" x2="632.46" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="632.46" y1="313.95000000000005" x2="637.54" y2="313.95000000000005" layer="91" width="0.1524" />
                <wire x1="619.76" y1="341.89" x2="619.76" y2="331.73" layer="91" width="0.1524" />
                <label x="609.6" y="346.97" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="614.68" y="341.89" />
                <junction x="619.76" y="341.89" />
                <junction x="622.3" y="341.89" />
              </segment>
            </net>
            <net name="H5_NEG" class="0">
              <segment>
                <pinref part="U12" gate="A" pin="1" />
                <pinref part="R47" gate="G$1" pin="1" />
                <pinref part="J3" gate="G$1" pin="3" />
                <wire x1="807.72" y1="311.40999999999997" x2="825.5" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="825.5" y1="311.40999999999997" x2="825.5" y2="286.01" layer="91" width="0.1524" />
                <wire x1="815.34" y1="286.01" x2="825.5" y2="286.01" layer="91" width="0.1524" />
                <wire x1="825.5" y1="311.40999999999997" x2="833.12" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="833.12" y1="313.95000000000005" x2="833.12" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="833.12" y1="313.95000000000005" x2="854.71" y2="313.95000000000005" layer="91" width="0.1524" />
                <label x="807.72" y="311.40999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="825.5" y="311.40999999999997" />
              </segment>
            </net>
            <net name="H5_NODE1" class="0">
              <segment>
                <pinref part="R34" gate="G$1" pin="2" />
                <pinref part="C17" gate="G$1" pin="1" />
                <pinref part="C16" gate="G$1" pin="1" />
                <pinref part="R35" gate="G$1" pin="1" />
                <wire x1="105.41" y1="308.87" x2="130.81" y2="308.87" layer="91" width="0.1524" />
                <wire x1="130.81" y1="308.87" x2="149.86" y2="308.87" layer="91" width="0.1524" />
                <wire x1="130.81" y1="341.89" x2="130.81" y2="308.87" layer="91" width="0.1524" />
                <wire x1="130.81" y1="341.89" x2="149.86" y2="341.89" layer="91" width="0.1524" />
                <wire x1="130.81" y1="308.87" x2="130.81" y2="296.16999999999996" layer="91" width="0.1524" />
                <label x="105.41" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="130.81" y="308.87" />
              </segment>
            </net>
            <net name="H5_NODE2" class="0">
              <segment>
                <pinref part="R37" gate="G$1" pin="2" />
                <pinref part="C19" gate="G$1" pin="1" />
                <pinref part="C18" gate="G$1" pin="1" />
                <pinref part="R38" gate="G$1" pin="1" />
                <wire x1="260.35" y1="308.87" x2="285.75" y2="308.87" layer="91" width="0.1524" />
                <wire x1="285.75" y1="308.87" x2="304.8" y2="308.87" layer="91" width="0.1524" />
                <wire x1="285.75" y1="341.89" x2="285.75" y2="308.87" layer="91" width="0.1524" />
                <wire x1="285.75" y1="341.89" x2="304.8" y2="341.89" layer="91" width="0.1524" />
                <wire x1="285.75" y1="308.87" x2="285.75" y2="296.16999999999996" layer="91" width="0.1524" />
                <label x="260.35" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="285.75" y="308.87" />
              </segment>
            </net>
            <net name="H5_OUT" class="0">
              <segment>
                <pinref part="U12" gate="B" pin="6" />
                <pinref part="U12" gate="B" pin="7" />
                <pinref part="TP12" gate="G$1" pin="1" />
                <pinref part="R64" gate="G$1" pin="1" />
                <wire x1="962.66" y1="311.40999999999997" x2="980.44" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="980.44" y1="311.40999999999997" x2="980.44" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="934.72" y1="291.09000000000003" x2="980.44" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="934.72" y1="308.87" x2="934.72" y2="291.09000000000003" layer="91" width="0.1524" />
                <wire x1="934.72" y1="308.87" x2="947.42" y2="308.87" layer="91" width="0.1524" />
                <wire x1="980.44" y1="329.19" x2="980.44" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="980.44" y1="311.40999999999997" x2="1066.8" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="1066.8" y1="311.40999999999997" x2="1066.8" y2="125.99000000000001" layer="91" width="0.1524" />
                <label x="962.66" y="311.40999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="980.44" y="311.40999999999997" />
              </segment>
            </net>
            <net name="H5_PHR1" class="0">
              <segment>
                <pinref part="R42" gate="G$1" pin="2" />
                <pinref part="RV15" gate="G$1" pin="1" />
                <wire x1="430.53" y1="341.89" x2="449.58" y2="341.89" layer="91" width="0.1524" />
                <label x="430.53" y="341.89" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_PHR2" class="0">
              <segment>
                <pinref part="R45" gate="G$1" pin="2" />
                <pinref part="RV16" gate="G$1" pin="1" />
                <wire x1="585.47" y1="341.89" x2="604.52" y2="341.89" layer="91" width="0.1524" />
                <label x="585.47" y="341.89" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_POLINV" class="0">
              <segment>
                <pinref part="U12" gate="A" pin="2" />
                <pinref part="R46" gate="G$1" pin="2" />
                <pinref part="R47" gate="G$1" pin="2" />
                <wire x1="764.54" y1="308.87" x2="784.86" y2="308.87" layer="91" width="0.1524" />
                <wire x1="784.86" y1="308.87" x2="792.48" y2="308.87" layer="91" width="0.1524" />
                <wire x1="784.86" y1="308.87" x2="784.86" y2="286.01" layer="91" width="0.1524" />
                <wire x1="784.86" y1="286.01" x2="805.18" y2="286.01" layer="91" width="0.1524" />
                <label x="764.54" y="308.87" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="784.86" y="308.87" />
              </segment>
            </net>
            <net name="H5_SELECT" class="0">
              <segment>
                <pinref part="J3" gate="G$1" pin="2" />
                <pinref part="RV17" gate="G$1" pin="1" />
                <wire x1="854.71" y1="311.40999999999997" x2="880.11" y2="311.40999999999997" layer="91" width="0.1524" />
                <wire x1="880.11" y1="311.40999999999997" x2="880.11" y2="296.16999999999996" layer="91" width="0.1524" />
                <label x="854.71" y="311.40999999999997" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_TUNE1" class="0">
              <segment>
                <pinref part="R35" gate="G$1" pin="2" />
                <pinref part="RV13" gate="G$1" pin="1" />
                <wire x1="130.81" y1="286.01" x2="130.81" y2="275.85" layer="91" width="0.1524" />
                <label x="130.81" y="286.01" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_TUNE2" class="0">
              <segment>
                <pinref part="R38" gate="G$1" pin="2" />
                <pinref part="RV14" gate="G$1" pin="1" />
                <wire x1="285.75" y1="286.01" x2="285.75" y2="275.85" layer="91" width="0.1524" />
                <label x="285.75" y="286.01" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV22" gate="G$1" pin="2" />
                <pinref part="U15" gate="B" pin="5" />
                <wire x1="885.19" y1="141.23000000000002" x2="947.42" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="947.42" y1="164.09000000000003" x2="947.42" y2="141.23000000000002" layer="91" width="0.1524" />
                <label x="885.19" y="141.23000000000002" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_AP1" class="0">
              <segment>
                <pinref part="U14" gate="A" pin="1" />
                <pinref part="R55" gate="G$1" pin="1" />
                <pinref part="R57" gate="G$1" pin="1" />
                <pinref part="R59" gate="G$1" pin="1" />
                <wire x1="497.84" y1="161.54999999999995" x2="515.62" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="515.62" y1="161.54999999999995" x2="515.62" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="505.46" y1="136.14999999999998" x2="515.62" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="565.15" y1="159.01" x2="599.44" y2="159.01" layer="91" width="0.1524" />
                <wire x1="565.15" y1="192.02999999999997" x2="565.15" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="565.15" y1="161.54999999999995" x2="565.15" y2="159.01" layer="91" width="0.1524" />
                <wire x1="565.15" y1="192.02999999999997" x2="575.31" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="515.62" y1="161.54999999999995" x2="565.15" y2="161.54999999999995" layer="91" width="0.1524" />
                <label x="497.84" y="161.54999999999995" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="515.62" y="161.54999999999995" />
                <junction x="565.15" y="159.01" />
                <junction x="565.15" y="161.54999999999995" />
              </segment>
            </net>
            <net name="H7_AP2" class="0">
              <segment>
                <pinref part="U14" gate="B" pin="7" />
                <pinref part="R58" gate="G$1" pin="1" />
                <pinref part="R60" gate="G$1" pin="1" />
                <pinref part="J4" gate="G$1" pin="1" />
                <pinref part="TP14" gate="G$1" pin="1" />
                <wire x1="652.78" y1="161.54999999999995" x2="670.56" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="670.56" y1="161.54999999999995" x2="670.56" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="660.4" y1="136.14999999999998" x2="670.56" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="670.56" y1="161.54999999999995" x2="689.61" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="689.61" y1="161.54999999999995" x2="754.38" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="754.38" y1="161.54999999999995" x2="754.38" y2="159.01" layer="91" width="0.1524" />
                <wire x1="689.61" y1="202.19000000000005" x2="689.61" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="689.61" y1="202.19000000000005" x2="845.82" y2="202.19000000000005" layer="91" width="0.1524" />
                <wire x1="845.82" y1="202.19000000000005" x2="845.82" y2="159.01" layer="91" width="0.1524" />
                <wire x1="845.82" y1="159.01" x2="854.71" y2="159.01" layer="91" width="0.1524" />
                <wire x1="670.56" y1="209.80999999999995" x2="670.56" y2="161.54999999999995" layer="91" width="0.1524" />
                <label x="652.78" y="161.54999999999995" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="670.56" y="161.54999999999995" />
                <junction x="689.61" y="161.54999999999995" />
              </segment>
            </net>
            <net name="H7_APINV1" class="0">
              <segment>
                <pinref part="U14" gate="A" pin="2" />
                <pinref part="R54" gate="G$1" pin="2" />
                <pinref part="R55" gate="G$1" pin="2" />
                <wire x1="454.66" y1="159.01" x2="474.98" y2="159.01" layer="91" width="0.1524" />
                <wire x1="474.98" y1="159.01" x2="482.6" y2="159.01" layer="91" width="0.1524" />
                <wire x1="474.98" y1="159.01" x2="474.98" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="474.98" y1="136.14999999999998" x2="495.3" y2="136.14999999999998" layer="91" width="0.1524" />
                <label x="454.66" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="474.98" y="159.01" />
              </segment>
            </net>
            <net name="H7_APINV2" class="0">
              <segment>
                <pinref part="U14" gate="B" pin="6" />
                <pinref part="R57" gate="G$1" pin="2" />
                <pinref part="R58" gate="G$1" pin="2" />
                <wire x1="609.6" y1="159.01" x2="629.92" y2="159.01" layer="91" width="0.1524" />
                <wire x1="629.92" y1="159.01" x2="637.54" y2="159.01" layer="91" width="0.1524" />
                <wire x1="629.92" y1="159.01" x2="629.92" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="629.92" y1="136.14999999999998" x2="650.24" y2="136.14999999999998" layer="91" width="0.1524" />
                <label x="609.6" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="629.92" y="159.01" />
              </segment>
            </net>
            <net name="H7_BPF1" class="0">
              <segment>
                <pinref part="U13" gate="A" pin="1" />
                <pinref part="C22" gate="G$1" pin="2" />
                <pinref part="R50" gate="G$1" pin="1" />
                <pinref part="R51" gate="G$1" pin="1" />
                <wire x1="160.02" y1="192.02999999999997" x2="205.74" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="205.74" y1="192.02999999999997" x2="205.74" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="187.96" y1="161.54999999999995" x2="205.74" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="195.58" y1="141.23000000000002" x2="205.74" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="205.74" y1="161.54999999999995" x2="205.74" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="205.74" y1="161.54999999999995" x2="250.19" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="250.19" y1="161.54999999999995" x2="250.19" y2="159.01" layer="91" width="0.1524" />
                <label x="160.02" y="192.02999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="205.74" y="161.54999999999995" />
              </segment>
            </net>
            <net name="H7_BPF2" class="0">
              <segment>
                <pinref part="U13" gate="B" pin="7" />
                <pinref part="C24" gate="G$1" pin="2" />
                <pinref part="R53" gate="G$1" pin="1" />
                <pinref part="R54" gate="G$1" pin="1" />
                <pinref part="R56" gate="G$1" pin="1" />
                <pinref part="TP13" gate="G$1" pin="1" />
                <wire x1="314.96" y1="192.02999999999997" x2="360.68" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="360.68" y1="192.02999999999997" x2="360.68" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="342.9" y1="161.54999999999995" x2="360.68" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="350.52" y1="141.23000000000002" x2="360.68" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="360.68" y1="161.54999999999995" x2="360.68" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="410.21" y1="159.01" x2="444.5" y2="159.01" layer="91" width="0.1524" />
                <wire x1="410.21" y1="192.02999999999997" x2="410.21" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="410.21" y1="161.54999999999995" x2="410.21" y2="159.01" layer="91" width="0.1524" />
                <wire x1="410.21" y1="192.02999999999997" x2="420.37" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="360.68" y1="161.54999999999995" x2="410.21" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="360.68" y1="209.80999999999995" x2="360.68" y2="192.02999999999997" layer="91" width="0.1524" />
                <label x="314.96" y="192.02999999999997" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="360.68" y="161.54999999999995" />
                <junction x="410.21" y="159.01" />
                <junction x="360.68" y="192.02999999999997" />
                <junction x="410.21" y="161.54999999999995" />
              </segment>
            </net>
            <net name="H7_INV1" class="0">
              <segment>
                <pinref part="U13" gate="A" pin="2" />
                <pinref part="C23" gate="G$1" pin="2" />
                <pinref part="R50" gate="G$1" pin="2" />
                <wire x1="160.02" y1="159.01" x2="172.72" y2="159.01" layer="91" width="0.1524" />
                <wire x1="172.72" y1="159.01" x2="172.72" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="172.72" y1="141.23000000000002" x2="185.42" y2="141.23000000000002" layer="91" width="0.1524" />
                <label x="160.02" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="172.72" y="159.01" />
              </segment>
            </net>
            <net name="H7_INV2" class="0">
              <segment>
                <pinref part="U13" gate="B" pin="6" />
                <pinref part="C25" gate="G$1" pin="2" />
                <pinref part="R53" gate="G$1" pin="2" />
                <wire x1="314.96" y1="159.01" x2="327.66" y2="159.01" layer="91" width="0.1524" />
                <wire x1="327.66" y1="159.01" x2="327.66" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="327.66" y1="141.23000000000002" x2="340.36" y2="141.23000000000002" layer="91" width="0.1524" />
                <label x="314.96" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="327.66" y="159.01" />
              </segment>
            </net>
            <net name="H7_LP1" class="0">
              <segment>
                <pinref part="U14" gate="A" pin="3" />
                <pinref part="RV20" gate="G$1" pin="2" />
                <pinref part="RV20" gate="G$1" pin="3" />
                <pinref part="C26" gate="G$1" pin="1" />
                <wire x1="454.66" y1="204.73000000000002" x2="454.66" y2="197.11" layer="91" width="0.1524" />
                <wire x1="454.66" y1="204.73000000000002" x2="467.36" y2="204.73000000000002" layer="91" width="0.1524" />
                <wire x1="467.36" y1="204.73000000000002" x2="467.36" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="459.74" y1="192.02999999999997" x2="464.82" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="464.82" y1="192.02999999999997" x2="467.36" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="467.36" y1="192.02999999999997" x2="477.52" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="477.52" y1="192.02999999999997" x2="477.52" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="477.52" y1="164.09000000000003" x2="482.6" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="464.82" y1="192.02999999999997" x2="464.82" y2="181.87" layer="91" width="0.1524" />
                <label x="454.66" y="197.11" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="459.74" y="192.02999999999997" />
                <junction x="464.82" y="192.02999999999997" />
                <junction x="467.36" y="192.02999999999997" />
              </segment>
            </net>
            <net name="H7_LP2" class="0">
              <segment>
                <pinref part="U14" gate="B" pin="5" />
                <pinref part="RV21" gate="G$1" pin="2" />
                <pinref part="RV21" gate="G$1" pin="3" />
                <pinref part="C27" gate="G$1" pin="1" />
                <wire x1="609.6" y1="204.73000000000002" x2="609.6" y2="197.11" layer="91" width="0.1524" />
                <wire x1="609.6" y1="204.73000000000002" x2="622.3" y2="204.73000000000002" layer="91" width="0.1524" />
                <wire x1="622.3" y1="204.73000000000002" x2="622.3" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="614.68" y1="192.02999999999997" x2="619.76" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="619.76" y1="192.02999999999997" x2="622.3" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="622.3" y1="192.02999999999997" x2="632.46" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="632.46" y1="192.02999999999997" x2="632.46" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="632.46" y1="164.09000000000003" x2="637.54" y2="164.09000000000003" layer="91" width="0.1524" />
                <wire x1="619.76" y1="192.02999999999997" x2="619.76" y2="181.87" layer="91" width="0.1524" />
                <label x="609.6" y="197.11" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="614.68" y="192.02999999999997" />
                <junction x="619.76" y="192.02999999999997" />
                <junction x="622.3" y="192.02999999999997" />
              </segment>
            </net>
            <net name="H7_NEG" class="0">
              <segment>
                <pinref part="U15" gate="A" pin="1" />
                <pinref part="R61" gate="G$1" pin="1" />
                <pinref part="J4" gate="G$1" pin="3" />
                <wire x1="807.72" y1="161.54999999999995" x2="825.5" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="825.5" y1="161.54999999999995" x2="825.5" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="815.34" y1="136.14999999999998" x2="825.5" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="825.5" y1="161.54999999999995" x2="833.12" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="833.12" y1="164.09000000000003" x2="833.12" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="833.12" y1="164.09000000000003" x2="854.71" y2="164.09000000000003" layer="91" width="0.1524" />
                <label x="807.72" y="161.54999999999995" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="825.5" y="161.54999999999995" />
              </segment>
            </net>
            <net name="H7_NODE1" class="0">
              <segment>
                <pinref part="R48" gate="G$1" pin="2" />
                <pinref part="C23" gate="G$1" pin="1" />
                <pinref part="C22" gate="G$1" pin="1" />
                <pinref part="R49" gate="G$1" pin="1" />
                <wire x1="105.41" y1="159.01" x2="130.81" y2="159.01" layer="91" width="0.1524" />
                <wire x1="130.81" y1="159.01" x2="149.86" y2="159.01" layer="91" width="0.1524" />
                <wire x1="130.81" y1="192.02999999999997" x2="130.81" y2="159.01" layer="91" width="0.1524" />
                <wire x1="130.81" y1="192.02999999999997" x2="149.86" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="130.81" y1="159.01" x2="130.81" y2="146.30999999999995" layer="91" width="0.1524" />
                <label x="105.41" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="130.81" y="159.01" />
              </segment>
            </net>
            <net name="H7_NODE2" class="0">
              <segment>
                <pinref part="R51" gate="G$1" pin="2" />
                <pinref part="C25" gate="G$1" pin="1" />
                <pinref part="C24" gate="G$1" pin="1" />
                <pinref part="R52" gate="G$1" pin="1" />
                <wire x1="260.35" y1="159.01" x2="285.75" y2="159.01" layer="91" width="0.1524" />
                <wire x1="285.75" y1="159.01" x2="304.8" y2="159.01" layer="91" width="0.1524" />
                <wire x1="285.75" y1="192.02999999999997" x2="285.75" y2="159.01" layer="91" width="0.1524" />
                <wire x1="285.75" y1="192.02999999999997" x2="304.8" y2="192.02999999999997" layer="91" width="0.1524" />
                <wire x1="285.75" y1="159.01" x2="285.75" y2="146.30999999999995" layer="91" width="0.1524" />
                <label x="260.35" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="285.75" y="159.01" />
              </segment>
            </net>
            <net name="H7_OUT" class="0">
              <segment>
                <pinref part="U15" gate="B" pin="6" />
                <pinref part="U15" gate="B" pin="7" />
                <pinref part="TP15" gate="G$1" pin="1" />
                <pinref part="R65" gate="G$1" pin="1" />
                <wire x1="962.66" y1="161.54999999999995" x2="980.44" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="980.44" y1="161.54999999999995" x2="980.44" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="934.72" y1="141.23000000000002" x2="980.44" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="934.72" y1="159.01" x2="934.72" y2="141.23000000000002" layer="91" width="0.1524" />
                <wire x1="934.72" y1="159.01" x2="947.42" y2="159.01" layer="91" width="0.1524" />
                <wire x1="980.44" y1="179.33000000000004" x2="980.44" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="980.44" y1="161.54999999999995" x2="1092.2" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="1092.2" y1="161.54999999999995" x2="1092.2" y2="125.99000000000001" layer="91" width="0.1524" />
                <label x="962.66" y="161.54999999999995" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="980.44" y="161.54999999999995" />
              </segment>
            </net>
            <net name="H7_PHR1" class="0">
              <segment>
                <pinref part="R56" gate="G$1" pin="2" />
                <pinref part="RV20" gate="G$1" pin="1" />
                <wire x1="430.53" y1="192.02999999999997" x2="449.58" y2="192.02999999999997" layer="91" width="0.1524" />
                <label x="430.53" y="192.02999999999997" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_PHR2" class="0">
              <segment>
                <pinref part="R59" gate="G$1" pin="2" />
                <pinref part="RV21" gate="G$1" pin="1" />
                <wire x1="585.47" y1="192.02999999999997" x2="604.52" y2="192.02999999999997" layer="91" width="0.1524" />
                <label x="585.47" y="192.02999999999997" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_POLINV" class="0">
              <segment>
                <pinref part="U15" gate="A" pin="2" />
                <pinref part="R60" gate="G$1" pin="2" />
                <pinref part="R61" gate="G$1" pin="2" />
                <wire x1="764.54" y1="159.01" x2="784.86" y2="159.01" layer="91" width="0.1524" />
                <wire x1="784.86" y1="159.01" x2="792.48" y2="159.01" layer="91" width="0.1524" />
                <wire x1="784.86" y1="159.01" x2="784.86" y2="136.14999999999998" layer="91" width="0.1524" />
                <wire x1="784.86" y1="136.14999999999998" x2="805.18" y2="136.14999999999998" layer="91" width="0.1524" />
                <label x="764.54" y="159.01" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="784.86" y="159.01" />
              </segment>
            </net>
            <net name="H7_SELECT" class="0">
              <segment>
                <pinref part="J4" gate="G$1" pin="2" />
                <pinref part="RV22" gate="G$1" pin="1" />
                <wire x1="854.71" y1="161.54999999999995" x2="880.11" y2="161.54999999999995" layer="91" width="0.1524" />
                <wire x1="880.11" y1="161.54999999999995" x2="880.11" y2="146.30999999999995" layer="91" width="0.1524" />
                <label x="854.71" y="161.54999999999995" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_TUNE1" class="0">
              <segment>
                <pinref part="R49" gate="G$1" pin="2" />
                <pinref part="RV18" gate="G$1" pin="1" />
                <wire x1="130.81" y1="136.14999999999998" x2="130.81" y2="125.99000000000001" layer="91" width="0.1524" />
                <label x="130.81" y="136.14999999999998" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_TUNE2" class="0">
              <segment>
                <pinref part="R52" gate="G$1" pin="2" />
                <pinref part="RV19" gate="G$1" pin="1" />
                <wire x1="285.75" y1="136.14999999999998" x2="285.75" y2="125.99000000000001" layer="91" width="0.1524" />
                <label x="285.75" y="136.14999999999998" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="OUT" class="0">
              <segment>
                <pinref part="R69" gate="G$1" pin="2" />
                <pinref part="J6" gate="G$1" pin="1" />
                <pinref part="TP17" gate="G$1" pin="1" />
                <wire x1="1170.94" y1="51.059999999999945" x2="1182.37" y2="51.059999999999945" layer="91" width="0.1524" />
                <wire x1="1182.37" y1="51.059999999999945" x2="1182.37" y2="34.549999999999955" layer="91" width="0.1524" />
                <wire x1="1181.1" y1="34.549999999999955" x2="1182.37" y2="34.549999999999955" layer="91" width="0.1524" />
                <wire x1="1169.67" y1="63.75999999999999" x2="1170.94" y2="63.75999999999999" layer="91" width="0.1524" />
                <wire x1="1170.94" y1="63.75999999999999" x2="1170.94" y2="51.059999999999945" layer="91" width="0.1524" />
                <label x="1170.94" y="51.059999999999945" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="1170.94" y="51.059999999999945" />
              </segment>
            </net>
            <net name="RESTORE_INV" class="0">
              <segment>
                <pinref part="U16" gate="B" pin="6" />
                <pinref part="R67" gate="G$1" pin="2" />
                <pinref part="R68" gate="G$1" pin="2" />
                <wire x1="1084.58" y1="48.51999999999998" x2="1104.9" y2="48.51999999999998" layer="91" width="0.1524" />
                <wire x1="1104.9" y1="48.51999999999998" x2="1112.52" y2="48.51999999999998" layer="91" width="0.1524" />
                <wire x1="1104.9" y1="48.51999999999998" x2="1104.9" y2="25.659999999999968" layer="91" width="0.1524" />
                <wire x1="1104.9" y1="25.659999999999968" x2="1125.22" y2="25.659999999999968" layer="91" width="0.1524" />
                <label x="1084.58" y="48.51999999999998" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="1104.9" y="48.51999999999998" />
              </segment>
            </net>
            <net name="SOURCE_WIPER" class="0">
              <segment>
                <pinref part="RV2" gate="G$1" pin="2" />
                <pinref part="U3" gate="A" pin="3" />
                <wire x1="444.5" y1="740.67" x2="521.97" y2="740.67" layer="91" width="0.1524" />
                <wire x1="521.97" y1="743.21" x2="521.97" y2="740.67" layer="91" width="0.1524" />
                <label x="444.5" y="740.67" size="1.016" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ" class="0">
              <segment>
                <pinref part="U3" gate="A" pin="2" />
                <pinref part="U3" gate="A" pin="1" />
                <pinref part="TP2" gate="G$1" pin="1" />
                <pinref part="R4" gate="G$1" pin="1" />
                <pinref part="R6" gate="G$1" pin="1" />
                <pinref part="R20" gate="G$1" pin="1" />
                <pinref part="R34" gate="G$1" pin="1" />
                <pinref part="R48" gate="G$1" pin="1" />
                <wire x1="537.21" y1="740.67" x2="554.99" y2="740.67" layer="91" width="0.1524" />
                <wire x1="554.99" y1="740.67" x2="554.99" y2="720.35" layer="91" width="0.1524" />
                <wire x1="509.27" y1="720.35" x2="554.99" y2="720.35" layer="91" width="0.1524" />
                <wire x1="509.27" y1="738.13" x2="509.27" y2="720.35" layer="91" width="0.1524" />
                <wire x1="509.27" y1="738.13" x2="521.97" y2="738.13" layer="91" width="0.1524" />
                <wire x1="554.99" y1="758.45" x2="554.99" y2="740.67" layer="91" width="0.1524" />
                <wire x1="554.99" y1="740.67" x2="654.05" y2="740.67" layer="91" width="0.1524" />
                <wire x1="654.05" y1="740.67" x2="654.05" y2="738.13" layer="91" width="0.1524" />
                <wire x1="554.99" y1="720.35" x2="554.99" y2="691.14" layer="91" width="0.1524" />
                <wire x1="45.72" y1="691.14" x2="554.99" y2="691.14" layer="91" width="0.1524" />
                <wire x1="45.72" y1="691.14" x2="45.72" y2="608.59" layer="91" width="0.1524" />
                <wire x1="45.72" y1="608.59" x2="45.72" y2="458.73" layer="91" width="0.1524" />
                <wire x1="45.72" y1="458.73" x2="45.72" y2="308.87" layer="91" width="0.1524" />
                <wire x1="45.72" y1="308.87" x2="45.72" y2="159.01" layer="91" width="0.1524" />
                <wire x1="45.72" y1="608.59" x2="95.25" y2="608.59" layer="91" width="0.1524" />
                <wire x1="45.72" y1="458.73" x2="95.25" y2="458.73" layer="91" width="0.1524" />
                <wire x1="45.72" y1="308.87" x2="95.25" y2="308.87" layer="91" width="0.1524" />
                <wire x1="45.72" y1="159.01" x2="95.25" y2="159.01" layer="91" width="0.1524" />
                <label x="537.21" y="740.67" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="554.99" y="740.67" />
                <junction x="45.72" y="608.59" />
                <junction x="45.72" y="458.73" />
                <junction x="45.72" y="308.87" />
                <junction x="45.72" y="159.01" />
                <junction x="554.99" y="720.35" />
              </segment>
            </net>
            <net name="SQ_INV" class="0">
              <segment>
                <pinref part="U3" gate="B" pin="7" />
                <pinref part="R5" gate="G$1" pin="1" />
                <pinref part="TP3" gate="G$1" pin="1" />
                <wire x1="707.39" y1="740.67" x2="725.17" y2="740.67" layer="91" width="0.1524" />
                <wire x1="725.17" y1="740.67" x2="725.17" y2="715.27" layer="91" width="0.1524" />
                <wire x1="715.01" y1="715.27" x2="725.17" y2="715.27" layer="91" width="0.1524" />
                <wire x1="725.17" y1="740.67" x2="750.57" y2="740.67" layer="91" width="0.1524" />
                <wire x1="750.57" y1="740.67" x2="750.57" y2="738.13" layer="91" width="0.1524" />
                <label x="707.39" y="740.67" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="725.17" y="740.67" />
              </segment>
            </net>
            <net name="SQ_INV_IN" class="0">
              <segment>
                <pinref part="U3" gate="B" pin="6" />
                <pinref part="R4" gate="G$1" pin="2" />
                <pinref part="R5" gate="G$1" pin="2" />
                <wire x1="664.21" y1="738.13" x2="684.53" y2="738.13" layer="91" width="0.1524" />
                <wire x1="684.53" y1="738.13" x2="692.15" y2="738.13" layer="91" width="0.1524" />
                <wire x1="684.53" y1="738.13" x2="684.53" y2="715.27" layer="91" width="0.1524" />
                <wire x1="684.53" y1="715.27" x2="704.85" y2="715.27" layer="91" width="0.1524" />
                <label x="664.21" y="738.13" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="684.53" y="738.13" />
              </segment>
            </net>
            <net name="SUM_INV" class="0">
              <segment>
                <pinref part="U16" gate="A" pin="2" />
                <pinref part="R62" gate="G$1" pin="2" />
                <pinref part="R63" gate="G$1" pin="2" />
                <pinref part="R64" gate="G$1" pin="2" />
                <pinref part="R65" gate="G$1" pin="2" />
                <pinref part="R66" gate="G$1" pin="2" />
                <wire x1="1016.0" y1="115.83000000000004" x2="1016.0" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1016.0" y1="87.88999999999999" x2="1041.4" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1041.4" y1="87.88999999999999" x2="1066.8" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1066.8" y1="87.88999999999999" x2="1092.2" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1092.2" y1="87.88999999999999" x2="1112.52" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1041.4" y1="115.83000000000004" x2="1041.4" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1066.8" y1="115.83000000000004" x2="1066.8" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1092.2" y1="115.83000000000004" x2="1092.2" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1112.52" y1="110.75" x2="1112.52" y2="87.88999999999999" layer="91" width="0.1524" />
                <wire x1="1112.52" y1="110.75" x2="1140.46" y2="110.75" layer="91" width="0.1524" />
                <label x="1016.0" y="115.83000000000004" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="1016.0" y="87.88999999999999" />
                <junction x="1041.4" y="87.88999999999999" />
                <junction x="1066.8" y="87.88999999999999" />
                <junction x="1092.2" y="87.88999999999999" />
                <junction x="1112.52" y="87.88999999999999" />
              </segment>
            </net>
            <net name="SUM_NEG" class="0">
              <segment>
                <pinref part="U16" gate="A" pin="1" />
                <pinref part="R66" gate="G$1" pin="1" />
                <pinref part="R67" gate="G$1" pin="1" />
                <wire x1="1127.76" y1="90.42999999999995" x2="1153.16" y2="90.42999999999995" layer="91" width="0.1524" />
                <wire x1="1153.16" y1="110.75" x2="1153.16" y2="90.42999999999995" layer="91" width="0.1524" />
                <wire x1="1150.62" y1="110.75" x2="1153.16" y2="110.75" layer="91" width="0.1524" />
                <wire x1="1153.16" y1="90.42999999999995" x2="1153.16" y2="71.38" layer="91" width="0.1524" />
                <wire x1="1050.29" y1="71.38" x2="1153.16" y2="71.38" layer="91" width="0.1524" />
                <wire x1="1050.29" y1="71.38" x2="1050.29" y2="48.51999999999998" layer="91" width="0.1524" />
                <wire x1="1050.29" y1="48.51999999999998" x2="1074.42" y2="48.51999999999998" layer="91" width="0.1524" />
                <label x="1127.76" y="90.42999999999995" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="1153.16" y="90.42999999999995" />
              </segment>
            </net>
            <net name="SUM_RAW" class="0">
              <segment>
                <pinref part="U16" gate="B" pin="7" />
                <pinref part="R68" gate="G$1" pin="1" />
                <pinref part="R69" gate="G$1" pin="1" />
                <pinref part="TP16" gate="G$1" pin="1" />
                <wire x1="1127.76" y1="51.059999999999945" x2="1145.54" y2="51.059999999999945" layer="91" width="0.1524" />
                <wire x1="1145.54" y1="51.059999999999945" x2="1145.54" y2="25.659999999999968" layer="91" width="0.1524" />
                <wire x1="1135.38" y1="25.659999999999968" x2="1145.54" y2="25.659999999999968" layer="91" width="0.1524" />
                <wire x1="1145.54" y1="51.059999999999945" x2="1160.78" y2="51.059999999999945" layer="91" width="0.1524" />
                <wire x1="1145.54" y1="63.75999999999999" x2="1145.54" y2="51.059999999999945" layer="91" width="0.1524" />
                <label x="1127.76" y="51.059999999999945" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="1145.54" y="51.059999999999945" />
              </segment>
            </net>
            <net name="TIMING" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="2" />
                <pinref part="U1" gate="G$1" pin="6" />
                <pinref part="RV1" gate="G$1" pin="2" />
                <pinref part="RV1" gate="G$1" pin="3" />
                <pinref part="C1" gate="G$1" pin="1" />
                <wire x1="224.79" y1="721.62" x2="229.87" y2="721.62" layer="91" width="0.1524" />
                <wire x1="229.87" y1="721.62" x2="229.87" y2="716.54" layer="91" width="0.1524" />
                <wire x1="219.71" y1="716.54" x2="229.87" y2="716.54" layer="91" width="0.1524" />
                <wire x1="219.71" y1="735.59" x2="219.71" y2="716.54" layer="91" width="0.1524" />
                <wire x1="139.7" y1="735.59" x2="219.71" y2="735.59" layer="91" width="0.1524" />
                <wire x1="139.7" y1="735.59" x2="139.7" y2="721.62" layer="91" width="0.1524" />
                <wire x1="139.7" y1="773.69" x2="139.7" y2="768.61" layer="91" width="0.1524" />
                <wire x1="139.7" y1="768.61" x2="139.7" y2="735.59" layer="91" width="0.1524" />
                <wire x1="139.7" y1="773.69" x2="167.64" y2="773.69" layer="91" width="0.1524" />
                <wire x1="139.7" y1="768.61" x2="167.64" y2="768.61" layer="91" width="0.1524" />
                <label x="224.79" y="721.62" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="219.71" y="716.54" />
                <junction x="139.7" y="735.59" />
                <junction x="139.7" y="768.61" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="8" />
                <pinref part="U1" gate="G$1" pin="4" />
                <pinref part="U2" gate="G$1" pin="14" />
                <pinref part="U2" gate="G$1" pin="10" />
                <pinref part="R1" gate="G$1" pin="1" />
                <pinref part="J5" gate="G$1" pin="1" />
                <pinref part="C28" gate="G$1" pin="1" />
                <pinref part="C30" gate="G$1" pin="1" />
                <pinref part="C31" gate="G$1" pin="1" />
                <pinref part="U3" gate="P" pin="8" />
                <pinref part="C32" gate="G$1" pin="1" />
                <pinref part="U4" gate="P" pin="8" />
                <pinref part="C34" gate="G$1" pin="1" />
                <pinref part="U5" gate="P" pin="8" />
                <pinref part="C36" gate="G$1" pin="1" />
                <pinref part="U6" gate="P" pin="8" />
                <pinref part="C38" gate="G$1" pin="1" />
                <pinref part="U7" gate="P" pin="8" />
                <pinref part="C40" gate="G$1" pin="1" />
                <pinref part="U8" gate="P" pin="8" />
                <pinref part="C42" gate="G$1" pin="1" />
                <pinref part="U9" gate="P" pin="8" />
                <pinref part="C44" gate="G$1" pin="1" />
                <pinref part="U10" gate="P" pin="8" />
                <pinref part="C46" gate="G$1" pin="1" />
                <pinref part="U11" gate="P" pin="8" />
                <pinref part="C48" gate="G$1" pin="1" />
                <pinref part="U12" gate="P" pin="8" />
                <pinref part="C50" gate="G$1" pin="1" />
                <pinref part="U13" gate="P" pin="8" />
                <pinref part="C52" gate="G$1" pin="1" />
                <pinref part="U14" gate="P" pin="8" />
                <pinref part="C54" gate="G$1" pin="1" />
                <pinref part="U15" gate="P" pin="8" />
                <pinref part="C56" gate="G$1" pin="1" />
                <pinref part="U16" gate="P" pin="8" />
                <pinref part="C58" gate="G$1" pin="1" />
                <wire x1="219.71" y1="806.71" x2="219.71" y2="801.63" layer="91" width="0.1524" />
                <wire x1="180.34" y1="786.39" x2="180.34" y2="781.31" layer="91" width="0.1524" />
                <wire x1="160.02" y1="763.53" x2="167.64" y2="763.53" layer="91" width="0.1524" />
                <wire x1="320.04" y1="791.47" x2="320.04" y2="786.39" layer="91" width="0.1524" />
                <wire x1="335.28" y1="753.37" x2="342.9" y2="753.37" layer="91" width="0.1524" />
                <wire x1="820.42" y1="783.85" x2="844.55" y2="783.85" layer="91" width="0.1524" />
                <wire x1="772.16" y1="778.77" x2="779.78" y2="778.77" layer="91" width="0.1524" />
                <wire x1="900.43" y1="786.39" x2="900.43" y2="781.31" layer="91" width="0.1524" />
                <wire x1="900.43" y1="726.7" x2="900.43" y2="721.62" layer="91" width="0.1524" />
                <wire x1="955.04" y1="726.7" x2="955.04" y2="721.62" layer="91" width="0.1524" />
                <wire x1="44.45" y1="73.91999999999996" x2="49.53" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="49.53" y1="73.91999999999996" x2="69.85" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="69.85" y1="73.91999999999996" x2="115.57" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="115.57" y1="73.91999999999996" x2="135.89" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="135.89" y1="73.91999999999996" x2="181.61" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="181.61" y1="73.91999999999996" x2="201.93" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="201.93" y1="73.91999999999996" x2="247.65" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="247.65" y1="73.91999999999996" x2="267.97" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="267.97" y1="73.91999999999996" x2="313.69" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="313.69" y1="73.91999999999996" x2="334.01" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="334.01" y1="73.91999999999996" x2="379.73" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="379.73" y1="73.91999999999996" x2="400.05" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="400.05" y1="73.91999999999996" x2="445.77" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="445.77" y1="73.91999999999996" x2="466.09" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="466.09" y1="73.91999999999996" x2="511.81" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="511.81" y1="73.91999999999996" x2="532.13" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="532.13" y1="73.91999999999996" x2="577.85" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="577.85" y1="73.91999999999996" x2="598.17" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="598.17" y1="73.91999999999996" x2="643.89" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="643.89" y1="73.91999999999996" x2="664.21" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="664.21" y1="73.91999999999996" x2="709.93" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="709.93" y1="73.91999999999996" x2="730.25" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="730.25" y1="73.91999999999996" x2="775.97" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="775.97" y1="73.91999999999996" x2="796.29" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="796.29" y1="73.91999999999996" x2="842.01" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="842.01" y1="73.91999999999996" x2="862.33" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="862.33" y1="73.91999999999996" x2="908.05" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="908.05" y1="73.91999999999996" x2="928.37" y2="73.91999999999996" layer="91" width="0.1524" />
                <wire x1="69.85" y1="73.91999999999996" x2="69.85" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="49.53" y1="73.91999999999996" x2="49.53" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="135.89" y1="73.91999999999996" x2="135.89" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="115.57" y1="73.91999999999996" x2="115.57" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="201.93" y1="73.91999999999996" x2="201.93" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="181.61" y1="73.91999999999996" x2="181.61" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="267.97" y1="73.91999999999996" x2="267.97" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="247.65" y1="73.91999999999996" x2="247.65" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="334.01" y1="73.91999999999996" x2="334.01" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="313.69" y1="73.91999999999996" x2="313.69" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="400.05" y1="73.91999999999996" x2="400.05" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="379.73" y1="73.91999999999996" x2="379.73" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="466.09" y1="73.91999999999996" x2="466.09" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="445.77" y1="73.91999999999996" x2="445.77" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="532.13" y1="73.91999999999996" x2="532.13" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="511.81" y1="73.91999999999996" x2="511.81" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="598.17" y1="73.91999999999996" x2="598.17" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="577.85" y1="73.91999999999996" x2="577.85" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="664.21" y1="73.91999999999996" x2="664.21" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="643.89" y1="73.91999999999996" x2="643.89" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="730.25" y1="73.91999999999996" x2="730.25" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="709.93" y1="73.91999999999996" x2="709.93" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="796.29" y1="73.91999999999996" x2="796.29" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="775.97" y1="73.91999999999996" x2="775.97" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="862.33" y1="73.91999999999996" x2="862.33" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="842.01" y1="73.91999999999996" x2="842.01" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="928.37" y1="73.91999999999996" x2="928.37" y2="56.139999999999986" layer="91" width="0.1524" />
                <wire x1="908.05" y1="73.91999999999996" x2="908.05" y2="56.139999999999986" layer="91" width="0.1524" />
                <label x="219.71" y="806.71" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="180.34" y="786.39" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="160.02" y="763.53" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="320.04" y="791.47" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="342.9" y="753.37" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="820.42" y="783.85" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="772.16" y="778.77" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="900.43" y="786.39" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="900.43" y="726.7" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="955.04" y="726.7" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="44.45" y="73.91999999999996" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="69.85" y="73.91999999999996" />
                <junction x="49.53" y="73.91999999999996" />
                <junction x="135.89" y="73.91999999999996" />
                <junction x="115.57" y="73.91999999999996" />
                <junction x="201.93" y="73.91999999999996" />
                <junction x="181.61" y="73.91999999999996" />
                <junction x="267.97" y="73.91999999999996" />
                <junction x="247.65" y="73.91999999999996" />
                <junction x="334.01" y="73.91999999999996" />
                <junction x="313.69" y="73.91999999999996" />
                <junction x="400.05" y="73.91999999999996" />
                <junction x="379.73" y="73.91999999999996" />
                <junction x="466.09" y="73.91999999999996" />
                <junction x="445.77" y="73.91999999999996" />
                <junction x="532.13" y="73.91999999999996" />
                <junction x="511.81" y="73.91999999999996" />
                <junction x="598.17" y="73.91999999999996" />
                <junction x="577.85" y="73.91999999999996" />
                <junction x="664.21" y="73.91999999999996" />
                <junction x="643.89" y="73.91999999999996" />
                <junction x="730.25" y="73.91999999999996" />
                <junction x="709.93" y="73.91999999999996" />
                <junction x="796.29" y="73.91999999999996" />
                <junction x="775.97" y="73.91999999999996" />
                <junction x="862.33" y="73.91999999999996" />
                <junction x="842.01" y="73.91999999999996" />
                <junction x="928.37" y="73.91999999999996" />
                <junction x="908.05" y="73.91999999999996" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="J5" gate="G$1" pin="3" />
                <pinref part="C29" gate="G$1" pin="2" />
                <pinref part="U3" gate="P" pin="4" />
                <pinref part="C33" gate="G$1" pin="2" />
                <pinref part="U4" gate="P" pin="4" />
                <pinref part="C35" gate="G$1" pin="2" />
                <pinref part="U5" gate="P" pin="4" />
                <pinref part="C37" gate="G$1" pin="2" />
                <pinref part="U6" gate="P" pin="4" />
                <pinref part="C39" gate="G$1" pin="2" />
                <pinref part="U7" gate="P" pin="4" />
                <pinref part="C41" gate="G$1" pin="2" />
                <pinref part="U8" gate="P" pin="4" />
                <pinref part="C43" gate="G$1" pin="2" />
                <pinref part="U9" gate="P" pin="4" />
                <pinref part="C45" gate="G$1" pin="2" />
                <pinref part="U10" gate="P" pin="4" />
                <pinref part="C47" gate="G$1" pin="2" />
                <pinref part="U11" gate="P" pin="4" />
                <pinref part="C49" gate="G$1" pin="2" />
                <pinref part="U12" gate="P" pin="4" />
                <pinref part="C51" gate="G$1" pin="2" />
                <pinref part="U13" gate="P" pin="4" />
                <pinref part="C53" gate="G$1" pin="2" />
                <pinref part="U14" gate="P" pin="4" />
                <pinref part="C55" gate="G$1" pin="2" />
                <pinref part="U15" gate="P" pin="4" />
                <pinref part="C57" gate="G$1" pin="2" />
                <pinref part="U16" gate="P" pin="4" />
                <pinref part="C59" gate="G$1" pin="2" />
                <wire x1="820.42" y1="778.77" x2="844.55" y2="778.77" layer="91" width="0.1524" />
                <wire x1="772.16" y1="748.29" x2="779.78" y2="748.29" layer="91" width="0.1524" />
                <wire x1="955.04" y1="771.15" x2="955.04" y2="766.0699999999999" layer="91" width="0.1524" />
                <wire x1="44.45" y1="28.200000000000045" x2="69.85" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="69.85" y1="28.200000000000045" x2="90.17" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="90.17" y1="28.200000000000045" x2="135.89" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="135.89" y1="28.200000000000045" x2="156.21" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="156.21" y1="28.200000000000045" x2="201.93" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="201.93" y1="28.200000000000045" x2="222.25" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="222.25" y1="28.200000000000045" x2="267.97" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="267.97" y1="28.200000000000045" x2="288.29" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="288.29" y1="28.200000000000045" x2="334.01" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="334.01" y1="28.200000000000045" x2="354.33" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="354.33" y1="28.200000000000045" x2="400.05" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="400.05" y1="28.200000000000045" x2="420.37" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="420.37" y1="28.200000000000045" x2="466.09" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="466.09" y1="28.200000000000045" x2="486.41" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="486.41" y1="28.200000000000045" x2="532.13" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="532.13" y1="28.200000000000045" x2="552.45" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="552.45" y1="28.200000000000045" x2="598.17" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="598.17" y1="28.200000000000045" x2="618.49" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="618.49" y1="28.200000000000045" x2="664.21" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="664.21" y1="28.200000000000045" x2="684.53" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="684.53" y1="28.200000000000045" x2="730.25" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="730.25" y1="28.200000000000045" x2="750.57" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="750.57" y1="28.200000000000045" x2="796.29" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="796.29" y1="28.200000000000045" x2="816.61" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="816.61" y1="28.200000000000045" x2="862.33" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="862.33" y1="28.200000000000045" x2="882.65" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="882.65" y1="28.200000000000045" x2="928.37" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="928.37" y1="28.200000000000045" x2="948.69" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="69.85" y1="45.98000000000002" x2="69.85" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="90.17" y1="45.98000000000002" x2="90.17" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="135.89" y1="45.98000000000002" x2="135.89" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="156.21" y1="45.98000000000002" x2="156.21" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="201.93" y1="45.98000000000002" x2="201.93" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="222.25" y1="45.98000000000002" x2="222.25" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="267.97" y1="45.98000000000002" x2="267.97" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="288.29" y1="45.98000000000002" x2="288.29" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="334.01" y1="45.98000000000002" x2="334.01" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="354.33" y1="45.98000000000002" x2="354.33" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="400.05" y1="45.98000000000002" x2="400.05" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="420.37" y1="45.98000000000002" x2="420.37" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="466.09" y1="45.98000000000002" x2="466.09" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="486.41" y1="45.98000000000002" x2="486.41" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="532.13" y1="45.98000000000002" x2="532.13" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="552.45" y1="45.98000000000002" x2="552.45" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="598.17" y1="45.98000000000002" x2="598.17" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="618.49" y1="45.98000000000002" x2="618.49" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="664.21" y1="45.98000000000002" x2="664.21" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="684.53" y1="45.98000000000002" x2="684.53" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="730.25" y1="45.98000000000002" x2="730.25" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="750.57" y1="45.98000000000002" x2="750.57" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="796.29" y1="45.98000000000002" x2="796.29" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="816.61" y1="45.98000000000002" x2="816.61" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="862.33" y1="45.98000000000002" x2="862.33" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="882.65" y1="45.98000000000002" x2="882.65" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="928.37" y1="45.98000000000002" x2="928.37" y2="28.200000000000045" layer="91" width="0.1524" />
                <wire x1="948.69" y1="45.98000000000002" x2="948.69" y2="28.200000000000045" layer="91" width="0.1524" />
                <label x="844.55" y="778.77" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="820.42" y="778.77" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="772.16" y="748.29" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="955.04" y="766.0699999999999" size="1.016" layer="95" rot="R0" xref="no" />
                <label x="44.45" y="28.200000000000045" size="1.016" layer="95" rot="R0" xref="no" />
                <junction x="69.85" y="28.200000000000045" />
                <junction x="90.17" y="28.200000000000045" />
                <junction x="135.89" y="28.200000000000045" />
                <junction x="156.21" y="28.200000000000045" />
                <junction x="201.93" y="28.200000000000045" />
                <junction x="222.25" y="28.200000000000045" />
                <junction x="267.97" y="28.200000000000045" />
                <junction x="288.29" y="28.200000000000045" />
                <junction x="334.01" y="28.200000000000045" />
                <junction x="354.33" y="28.200000000000045" />
                <junction x="400.05" y="28.200000000000045" />
                <junction x="420.37" y="28.200000000000045" />
                <junction x="466.09" y="28.200000000000045" />
                <junction x="486.41" y="28.200000000000045" />
                <junction x="532.13" y="28.200000000000045" />
                <junction x="552.45" y="28.200000000000045" />
                <junction x="598.17" y="28.200000000000045" />
                <junction x="618.49" y="28.200000000000045" />
                <junction x="664.21" y="28.200000000000045" />
                <junction x="684.53" y="28.200000000000045" />
                <junction x="730.25" y="28.200000000000045" />
                <junction x="750.57" y="28.200000000000045" />
                <junction x="796.29" y="28.200000000000045" />
                <junction x="816.61" y="28.200000000000045" />
                <junction x="862.33" y="28.200000000000045" />
                <junction x="882.65" y="28.200000000000045" />
                <junction x="928.37" y="28.200000000000045" />
                <junction x="948.69" y="28.200000000000045" />
              </segment>
            </net>
          </nets>
        </sheet>
      </sheets>
      <errors />
    </schematic>
  </drawing>
</eagle>