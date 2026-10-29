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
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="CONN2">
              <pin name="1" x="-5.08" y="1.27" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="-5.08" y="-1.27" visible="both" length="short" direction="pas" rot="R0" />
              <wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" layer="94" width="0.1524" />
              <wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" layer="94" width="0.1524" />
              <wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
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
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
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
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
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
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="R">
              <pin name="1" x="-5.08" y="0" visible="both" length="short" direction="pas" rot="R0" />
              <pin name="2" x="5.08" y="0" visible="both" length="short" direction="pas" rot="R180" />
              <wire x1="-2.54" y1="-1" x2="2.54" y2="-1" layer="94" width="0.1524" />
              <wire x1="2.54" y1="-1" x2="2.54" y2="1" layer="94" width="0.1524" />
              <wire x1="2.54" y1="1" x2="-2.54" y2="1" layer="94" width="0.1524" />
              <wire x1="-2.54" y1="1" x2="-2.54" y2="-1" layer="94" width="0.1524" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="TL082">
              <pin name="3" x="-10.16" y="7.62" visible="both" length="short" direction="in" rot="R0" />
              <pin name="2" x="-10.16" y="2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="1" x="10.16" y="5.08" visible="both" length="short" direction="out" rot="R180" />
              <pin name="5" x="-10.16" y="-2.54" visible="both" length="short" direction="in" rot="R0" />
              <pin name="6" x="-10.16" y="-7.62" visible="both" length="short" direction="in" rot="R0" />
              <pin name="7" x="10.16" y="-5.08" visible="both" length="short" direction="out" rot="R180" />
              <pin name="8" x="0" y="15.24" visible="both" length="short" direction="pwr" rot="R270" />
              <pin name="4" x="0" y="-15.24" visible="both" length="short" direction="pwr" rot="R90" />
              <wire x1="-7.62" y1="8.89" x2="-7.62" y2="1.27" layer="94" width="0.1524" />
              <wire x1="-7.62" y1="8.89" x2="7.62" y2="5.08" layer="94" width="0.1524" />
              <wire x1="-7.62" y1="1.27" x2="7.62" y2="5.08" layer="94" width="0.1524" />
              <wire x1="-7.62" y1="-1.27" x2="-7.62" y2="-8.89" layer="94" width="0.1524" />
              <wire x1="-7.62" y1="-1.27" x2="7.62" y2="-5.08" layer="94" width="0.1524" />
              <wire x1="-7.62" y1="-8.89" x2="7.62" y2="-5.08" layer="94" width="0.1524" />
              <text x="0" y="18" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-19" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
            </symbol>
            <symbol name="TP">
              <pin name="1" x="0" y="-2.54" visible="both" length="short" direction="pas" rot="R90" />
              <circle x="0" y="0" radius="0.8" width="0.15" layer="94" />
              <text x="0" y="9" size="1.1" layer="95" align="bottom-center">&gt;NAME</text>
              <text x="0" y="-8" size="1.1" layer="96" align="top-center">&gt;VALUE</text>
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
                <gate name="G$1" symbol="TL082" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="DIP-8_W7.62mm">
                  <connects>
                    <connect gate="G$1" pin="3" pad="3" />
                    <connect gate="G$1" pin="2" pad="2" />
                    <connect gate="G$1" pin="1" pad="1" />
                    <connect gate="G$1" pin="5" pad="5" />
                    <connect gate="G$1" pin="6" pad="6" />
                    <connect gate="G$1" pin="7" pad="7" />
                    <connect gate="G$1" pin="8" pad="8" />
                    <connect gate="G$1" pin="4" pad="4" />
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
            <text x="10" y="410" size="2" layer="97">Waveform synthesis: source (VCC=+12V, VEE=-12V)</text>
          </plain>
          <instances>
            <instance part="U1" gate="G$1" x="38.1" y="369.2" smashed="no" />
            <instance part="U2" gate="G$1" x="114.30000000000001" y="369.2" smashed="no" />
            <instance part="R1" gate="G$1" x="190.5" y="369.2" smashed="no" />
            <instance part="R2" gate="G$1" x="266.70000000000005" y="369.2" smashed="no" />
            <instance part="RV1" gate="G$1" x="342.90000000000003" y="369.2" smashed="no" />
            <instance part="C1" gate="G$1" x="419.1" y="369.2" smashed="no" />
            <instance part="C2" gate="G$1" x="495.30000000000007" y="369.2" smashed="no" />
            <instance part="C3" gate="G$1" x="38.1" y="318.4" smashed="no" />
            <instance part="R3" gate="G$1" x="114.30000000000001" y="318.4" smashed="no" />
            <instance part="RV2" gate="G$1" x="190.5" y="318.4" smashed="no" />
            <instance part="U3" gate="G$1" x="266.70000000000005" y="318.4" smashed="no" />
            <instance part="R4" gate="G$1" x="342.90000000000003" y="318.4" smashed="no" />
            <instance part="R5" gate="G$1" x="419.1" y="318.4" smashed="no" />
            <instance part="TP1" gate="G$1" x="495.30000000000007" y="318.4" smashed="no" />
            <instance part="TP2" gate="G$1" x="38.1" y="267.6" smashed="no" />
            <instance part="TP3" gate="G$1" x="114.30000000000001" y="267.6" smashed="no" />
          </instances>
          <nets>
            <net name="AC_SQUARE" class="0">
              <segment>
                <pinref part="C3" gate="G$1" pin="2" />
                <wire x1="43.18" y1="318.4" x2="58.42" y2="318.4" layer="91" width="0.1524" />
                <label x="58.42" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R3" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="318.4" x2="93.98" y2="318.4" layer="91" width="0.1524" />
                <label x="93.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV2" gate="G$1" pin="1" />
                <wire x1="185.42" y1="318.4" x2="170.18" y2="318.4" layer="91" width="0.1524" />
                <label x="170.18" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="CLOCK_2K" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="3" />
                <wire x1="50.8" y1="374.28" x2="66.04" y2="374.28" layer="91" width="0.1524" />
                <label x="66.04" y="374.28" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="3" />
                <wire x1="99.06000000000002" y1="376.82" x2="83.82" y2="376.82" layer="91" width="0.1524" />
                <label x="83.82" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP1" gate="G$1" pin="1" />
                <wire x1="495.30000000000007" y1="315.85999999999996" x2="495.3" y2="313.32" layer="91" width="0.1524" />
                <label x="495.3" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="CTRL" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="5" />
                <wire x1="25.400000000000002" y1="361.58" x2="10.16" y2="361.58" layer="91" width="0.1524" />
                <label x="10.16" y="361.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C2" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="369.2" x2="474.98" y2="369.2" layer="91" width="0.1524" />
                <label x="474.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="DIGITAL_1K" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="1" />
                <wire x1="129.54000000000002" y1="381.9" x2="144.78" y2="381.9" layer="91" width="0.1524" />
                <label x="144.78" y="381.9" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C3" gate="G$1" pin="1" />
                <wire x1="33.02" y1="318.4" x2="17.78" y2="318.4" layer="91" width="0.1524" />
                <label x="17.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="DISCHARGE" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="7" />
                <wire x1="50.8" y1="364.12" x2="66.04" y2="364.12" layer="91" width="0.1524" />
                <label x="66.04" y="364.12" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R1" gate="G$1" pin="2" />
                <wire x1="195.58" y1="369.2" x2="210.82" y2="369.2" layer="91" width="0.1524" />
                <label x="210.82" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R2" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="369.2" x2="246.38" y2="369.2" layer="91" width="0.1524" />
                <label x="246.38" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D_FEEDBACK" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="5" />
                <wire x1="99.06000000000002" y1="381.9" x2="83.82" y2="381.9" layer="91" width="0.1524" />
                <label x="83.82" y="381.9" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="2" />
                <wire x1="129.54000000000002" y1="376.82" x2="144.78" y2="376.82" layer="91" width="0.1524" />
                <label x="144.78" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="FREQ_R" class="0">
              <segment>
                <pinref part="R2" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="369.2" x2="287.02" y2="369.2" layer="91" width="0.1524" />
                <label x="287.02" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV1" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="369.2" x2="322.58" y2="369.2" layer="91" width="0.1524" />
                <label x="322.58" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="1" />
                <wire x1="38.1" y1="353.96" x2="38.1" y2="351.42" layer="91" width="0.1524" />
                <label x="38.1" y="351.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="7" />
                <wire x1="114.30000000000001" y1="348.88" x2="114.3" y2="346.34" layer="91" width="0.1524" />
                <label x="114.3" y="346.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="6" />
                <wire x1="99.06000000000002" y1="371.74" x2="83.82" y2="371.74" layer="91" width="0.1524" />
                <label x="83.82" y="371.74" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="4" />
                <wire x1="99.06000000000002" y1="366.65999999999997" x2="83.82" y2="366.66" layer="91" width="0.1524" />
                <label x="83.82" y="366.66" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="9" />
                <wire x1="99.06000000000002" y1="361.58" x2="83.82" y2="361.58" layer="91" width="0.1524" />
                <label x="83.82" y="361.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="11" />
                <wire x1="99.06000000000002" y1="356.5" x2="83.82" y2="356.5" layer="91" width="0.1524" />
                <label x="83.82" y="356.5" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="8" />
                <wire x1="129.54000000000002" y1="361.58" x2="144.78" y2="361.58" layer="91" width="0.1524" />
                <label x="144.78" y="361.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C1" gate="G$1" pin="2" />
                <wire x1="424.18" y1="369.2" x2="439.42" y2="369.2" layer="91" width="0.1524" />
                <label x="439.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C2" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="369.2" x2="515.62" y2="369.2" layer="91" width="0.1524" />
                <label x="515.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R3" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="318.4" x2="134.62" y2="318.4" layer="91" width="0.1524" />
                <label x="134.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV2" gate="G$1" pin="3" />
                <wire x1="195.58" y1="318.4" x2="210.82" y2="318.4" layer="91" width="0.1524" />
                <label x="210.82" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="5" />
                <wire x1="256.54" y1="315.85999999999996" x2="241.3" y2="315.86" layer="91" width="0.1524" />
                <label x="241.3" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SOURCE_WIPER" class="0">
              <segment>
                <pinref part="RV2" gate="G$1" pin="2" />
                <wire x1="190.5" y1="323.47999999999996" x2="190.5" y2="326.02" layer="91" width="0.1524" />
                <label x="190.5" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="3" />
                <wire x1="256.54" y1="326.02" x2="241.3" y2="326.02" layer="91" width="0.1524" />
                <label x="241.3" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="2" />
                <wire x1="256.54" y1="320.94" x2="241.3" y2="320.94" layer="91" width="0.1524" />
                <label x="241.3" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="1" />
                <wire x1="276.86000000000007" y1="323.47999999999996" x2="292.1" y2="323.48" layer="91" width="0.1524" />
                <label x="292.1" y="323.48" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R4" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="318.4" x2="322.58" y2="318.4" layer="91" width="0.1524" />
                <label x="322.58" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP2" gate="G$1" pin="1" />
                <wire x1="38.1" y1="265.06" x2="38.1" y2="262.52" layer="91" width="0.1524" />
                <label x="38.1" y="262.52" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ_INV" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="7" />
                <wire x1="276.86000000000007" y1="313.32" x2="292.1" y2="313.32" layer="91" width="0.1524" />
                <label x="292.1" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R5" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="318.4" x2="398.78" y2="318.4" layer="91" width="0.1524" />
                <label x="398.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP3" gate="G$1" pin="1" />
                <wire x1="114.30000000000001" y1="265.06" x2="114.3" y2="262.52" layer="91" width="0.1524" />
                <label x="114.3" y="262.52" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ_INV_IN" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="6" />
                <wire x1="256.54" y1="310.78" x2="241.3" y2="310.78" layer="91" width="0.1524" />
                <label x="241.3" y="310.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R4" gate="G$1" pin="2" />
                <wire x1="347.98" y1="318.4" x2="363.22" y2="318.4" layer="91" width="0.1524" />
                <label x="363.22" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R5" gate="G$1" pin="2" />
                <wire x1="424.18" y1="318.4" x2="439.42" y2="318.4" layer="91" width="0.1524" />
                <label x="439.42" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="TIMING" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="2" />
                <wire x1="25.400000000000002" y1="376.82" x2="10.16" y2="376.82" layer="91" width="0.1524" />
                <label x="10.16" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="6" />
                <wire x1="25.400000000000002" y1="371.74" x2="10.16" y2="371.74" layer="91" width="0.1524" />
                <label x="10.16" y="371.74" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV1" gate="G$1" pin="2" />
                <wire x1="342.90000000000003" y1="374.28" x2="342.9" y2="376.82" layer="91" width="0.1524" />
                <label x="342.9" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV1" gate="G$1" pin="3" />
                <wire x1="347.98" y1="369.2" x2="363.22" y2="369.2" layer="91" width="0.1524" />
                <label x="363.22" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C1" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="369.2" x2="398.78" y2="369.2" layer="91" width="0.1524" />
                <label x="398.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="8" />
                <wire x1="38.1" y1="384.44" x2="38.1" y2="386.98" layer="91" width="0.1524" />
                <label x="38.1" y="386.98" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="4" />
                <wire x1="25.400000000000002" y1="366.65999999999997" x2="10.16" y2="366.66" layer="91" width="0.1524" />
                <label x="10.16" y="366.66" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="14" />
                <wire x1="114.30000000000001" y1="389.52" x2="114.3" y2="392.06" layer="91" width="0.1524" />
                <label x="114.3" y="392.06" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="10" />
                <wire x1="129.54000000000002" y1="356.5" x2="144.78" y2="356.5" layer="91" width="0.1524" />
                <label x="144.78" y="356.5" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R1" gate="G$1" pin="1" />
                <wire x1="185.42" y1="369.2" x2="170.18" y2="369.2" layer="91" width="0.1524" />
                <label x="170.18" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="8" />
                <wire x1="266.70000000000005" y1="333.64" x2="266.7" y2="336.18" layer="91" width="0.1524" />
                <label x="266.7" y="336.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="4" />
                <wire x1="266.70000000000005" y1="303.15999999999997" x2="266.7" y2="300.62" layer="91" width="0.1524" />
                <label x="266.7" y="300.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="10" y="410" size="2" layer="97">Waveform synthesis: harmonic_1 (VCC=+12V, VEE=-12V)</text>
          </plain>
          <instances>
            <instance part="R6" gate="G$1" x="38.1" y="369.2" smashed="no" />
            <instance part="R7" gate="G$1" x="114.30000000000001" y="369.2" smashed="no" />
            <instance part="RV3" gate="G$1" x="190.5" y="369.2" smashed="no" />
            <instance part="R8" gate="G$1" x="266.70000000000005" y="369.2" smashed="no" />
            <instance part="C4" gate="G$1" x="342.90000000000003" y="369.2" smashed="no" />
            <instance part="C5" gate="G$1" x="419.1" y="369.2" smashed="no" />
            <instance part="R9" gate="G$1" x="495.30000000000007" y="369.2" smashed="no" />
            <instance part="R10" gate="G$1" x="38.1" y="318.4" smashed="no" />
            <instance part="RV4" gate="G$1" x="114.30000000000001" y="318.4" smashed="no" />
            <instance part="R11" gate="G$1" x="190.5" y="318.4" smashed="no" />
            <instance part="C6" gate="G$1" x="266.70000000000005" y="318.4" smashed="no" />
            <instance part="C7" gate="G$1" x="342.90000000000003" y="318.4" smashed="no" />
            <instance part="U4" gate="G$1" x="419.1" y="318.4" smashed="no" />
            <instance part="R12" gate="G$1" x="495.30000000000007" y="318.4" smashed="no" />
            <instance part="R13" gate="G$1" x="38.1" y="267.6" smashed="no" />
            <instance part="R14" gate="G$1" x="114.30000000000001" y="267.6" smashed="no" />
            <instance part="RV5" gate="G$1" x="190.5" y="267.6" smashed="no" />
            <instance part="C8" gate="G$1" x="266.70000000000005" y="267.6" smashed="no" />
            <instance part="R15" gate="G$1" x="342.90000000000003" y="267.6" smashed="no" />
            <instance part="R16" gate="G$1" x="419.1" y="267.6" smashed="no" />
            <instance part="R17" gate="G$1" x="495.30000000000007" y="267.6" smashed="no" />
            <instance part="RV6" gate="G$1" x="38.1" y="216.8" smashed="no" />
            <instance part="C9" gate="G$1" x="114.30000000000001" y="216.8" smashed="no" />
            <instance part="U5" gate="G$1" x="190.5" y="216.8" smashed="no" />
            <instance part="R18" gate="G$1" x="266.70000000000005" y="216.8" smashed="no" />
            <instance part="R19" gate="G$1" x="342.90000000000003" y="216.8" smashed="no" />
            <instance part="J1" gate="G$1" x="419.1" y="216.8" smashed="no" />
            <instance part="RV7" gate="G$1" x="495.30000000000007" y="216.8" smashed="no" />
            <instance part="U6" gate="G$1" x="38.1" y="166.0" smashed="no" />
            <instance part="TP4" gate="G$1" x="114.30000000000001" y="166.0" smashed="no" />
            <instance part="TP5" gate="G$1" x="190.5" y="166.0" smashed="no" />
            <instance part="TP6" gate="G$1" x="266.70000000000005" y="166.0" smashed="no" />
          </instances>
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="RV3" gate="G$1" pin="2" />
                <wire x1="190.5" y1="374.28" x2="190.5" y2="376.82" layer="91" width="0.1524" />
                <label x="190.5" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV3" gate="G$1" pin="3" />
                <wire x1="195.58" y1="369.2" x2="210.82" y2="369.2" layer="91" width="0.1524" />
                <label x="210.82" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV4" gate="G$1" pin="2" />
                <wire x1="114.30000000000001" y1="323.47999999999996" x2="114.3" y2="326.02" layer="91" width="0.1524" />
                <label x="114.3" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV4" gate="G$1" pin="3" />
                <wire x1="119.38000000000001" y1="318.4" x2="134.62" y2="318.4" layer="91" width="0.1524" />
                <label x="134.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="3" />
                <wire x1="408.94" y1="326.02" x2="393.7" y2="326.02" layer="91" width="0.1524" />
                <label x="393.7" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="5" />
                <wire x1="408.94" y1="315.85999999999996" x2="393.7" y2="315.86" layer="91" width="0.1524" />
                <label x="393.7" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C8" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="267.6" x2="287.02" y2="267.6" layer="91" width="0.1524" />
                <label x="287.02" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C9" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="216.8" x2="134.62" y2="216.8" layer="91" width="0.1524" />
                <label x="134.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV7" gate="G$1" pin="3" />
                <wire x1="500.38000000000005" y1="216.8" x2="515.62" y2="216.8" layer="91" width="0.1524" />
                <label x="515.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="3" />
                <wire x1="27.94" y1="173.62" x2="12.7" y2="173.62" layer="91" width="0.1524" />
                <label x="12.7" y="173.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV7" gate="G$1" pin="2" />
                <wire x1="495.30000000000007" y1="221.88000000000002" x2="495.3" y2="224.42" layer="91" width="0.1524" />
                <label x="495.3" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="5" />
                <wire x1="27.94" y1="163.46" x2="12.7" y2="163.46" layer="91" width="0.1524" />
                <label x="12.7" y="163.46" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_AP1" class="0">
              <segment>
                <pinref part="R13" gate="G$1" pin="1" />
                <wire x1="33.02" y1="267.6" x2="17.78" y2="267.6" layer="91" width="0.1524" />
                <label x="17.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R15" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="267.6" x2="322.58" y2="267.6" layer="91" width="0.1524" />
                <label x="322.58" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R17" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="267.6" x2="474.98" y2="267.6" layer="91" width="0.1524" />
                <label x="474.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="1" />
                <wire x1="200.66" y1="221.88000000000002" x2="215.9" y2="221.88" layer="91" width="0.1524" />
                <label x="215.9" y="221.88" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_AP2" class="0">
              <segment>
                <pinref part="R16" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="267.6" x2="398.78" y2="267.6" layer="91" width="0.1524" />
                <label x="398.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="7" />
                <wire x1="200.66" y1="211.72" x2="215.9" y2="211.72" layer="91" width="0.1524" />
                <label x="215.9" y="211.72" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R18" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="216.8" x2="246.38" y2="216.8" layer="91" width="0.1524" />
                <label x="246.38" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J1" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="219.34" x2="398.78" y2="219.34" layer="91" width="0.1524" />
                <label x="398.78" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP5" gate="G$1" pin="1" />
                <wire x1="190.5" y1="163.46" x2="190.5" y2="160.92" layer="91" width="0.1524" />
                <label x="190.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_APINV1" class="0">
              <segment>
                <pinref part="R12" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="318.4" x2="515.62" y2="318.4" layer="91" width="0.1524" />
                <label x="515.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R13" gate="G$1" pin="2" />
                <wire x1="43.18" y1="267.6" x2="58.42" y2="267.6" layer="91" width="0.1524" />
                <label x="58.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="2" />
                <wire x1="180.34" y1="219.34" x2="165.1" y2="219.34" layer="91" width="0.1524" />
                <label x="165.1" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_APINV2" class="0">
              <segment>
                <pinref part="R15" gate="G$1" pin="2" />
                <wire x1="347.98" y1="267.6" x2="363.22" y2="267.6" layer="91" width="0.1524" />
                <label x="363.22" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R16" gate="G$1" pin="2" />
                <wire x1="424.18" y1="267.6" x2="439.42" y2="267.6" layer="91" width="0.1524" />
                <label x="439.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="6" />
                <wire x1="180.34" y1="209.18" x2="165.1" y2="209.18" layer="91" width="0.1524" />
                <label x="165.1" y="209.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_BPF1" class="0">
              <segment>
                <pinref part="R8" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="369.2" x2="246.38" y2="369.2" layer="91" width="0.1524" />
                <label x="246.38" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C4" gate="G$1" pin="2" />
                <wire x1="347.98" y1="369.2" x2="363.22" y2="369.2" layer="91" width="0.1524" />
                <label x="363.22" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R9" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="369.2" x2="474.98" y2="369.2" layer="91" width="0.1524" />
                <label x="474.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="1" />
                <wire x1="429.26000000000005" y1="323.47999999999996" x2="444.5" y2="323.48" layer="91" width="0.1524" />
                <label x="444.5" y="323.48" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_BPF2" class="0">
              <segment>
                <pinref part="R11" gate="G$1" pin="1" />
                <wire x1="185.42" y1="318.4" x2="170.18" y2="318.4" layer="91" width="0.1524" />
                <label x="170.18" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C6" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="318.4" x2="287.02" y2="318.4" layer="91" width="0.1524" />
                <label x="287.02" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="7" />
                <wire x1="429.26000000000005" y1="313.32" x2="444.5" y2="313.32" layer="91" width="0.1524" />
                <label x="444.5" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R12" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="318.4" x2="474.98" y2="318.4" layer="91" width="0.1524" />
                <label x="474.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R14" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="267.6" x2="93.98" y2="267.6" layer="91" width="0.1524" />
                <label x="93.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP4" gate="G$1" pin="1" />
                <wire x1="114.30000000000001" y1="163.46" x2="114.3" y2="160.92" layer="91" width="0.1524" />
                <label x="114.3" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_INV1" class="0">
              <segment>
                <pinref part="R8" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="369.2" x2="287.02" y2="369.2" layer="91" width="0.1524" />
                <label x="287.02" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C5" gate="G$1" pin="2" />
                <wire x1="424.18" y1="369.2" x2="439.42" y2="369.2" layer="91" width="0.1524" />
                <label x="439.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="2" />
                <wire x1="408.94" y1="320.94" x2="393.7" y2="320.94" layer="91" width="0.1524" />
                <label x="393.7" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_INV2" class="0">
              <segment>
                <pinref part="R11" gate="G$1" pin="2" />
                <wire x1="195.58" y1="318.4" x2="210.82" y2="318.4" layer="91" width="0.1524" />
                <label x="210.82" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C7" gate="G$1" pin="2" />
                <wire x1="347.98" y1="318.4" x2="363.22" y2="318.4" layer="91" width="0.1524" />
                <label x="363.22" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="6" />
                <wire x1="408.94" y1="310.78" x2="393.7" y2="310.78" layer="91" width="0.1524" />
                <label x="393.7" y="310.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_LP1" class="0">
              <segment>
                <pinref part="RV5" gate="G$1" pin="2" />
                <wire x1="190.5" y1="272.68" x2="190.5" y2="275.22" layer="91" width="0.1524" />
                <label x="190.5" y="275.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV5" gate="G$1" pin="3" />
                <wire x1="195.58" y1="267.6" x2="210.82" y2="267.6" layer="91" width="0.1524" />
                <label x="210.82" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C8" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="267.6" x2="246.38" y2="267.6" layer="91" width="0.1524" />
                <label x="246.38" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="3" />
                <wire x1="180.34" y1="224.42000000000002" x2="165.1" y2="224.42" layer="91" width="0.1524" />
                <label x="165.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_LP2" class="0">
              <segment>
                <pinref part="RV6" gate="G$1" pin="2" />
                <wire x1="38.1" y1="221.88000000000002" x2="38.1" y2="224.42" layer="91" width="0.1524" />
                <label x="38.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV6" gate="G$1" pin="3" />
                <wire x1="43.18" y1="216.8" x2="58.42" y2="216.8" layer="91" width="0.1524" />
                <label x="58.42" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C9" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="216.8" x2="93.98" y2="216.8" layer="91" width="0.1524" />
                <label x="93.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="5" />
                <wire x1="180.34" y1="214.26000000000002" x2="165.1" y2="214.26" layer="91" width="0.1524" />
                <label x="165.1" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_NEG" class="0">
              <segment>
                <pinref part="R19" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="216.8" x2="322.58" y2="216.8" layer="91" width="0.1524" />
                <label x="322.58" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J1" gate="G$1" pin="3" />
                <wire x1="414.02000000000004" y1="214.26000000000002" x2="398.78" y2="214.26" layer="91" width="0.1524" />
                <label x="398.78" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="1" />
                <wire x1="48.260000000000005" y1="171.08" x2="63.5" y2="171.08" layer="91" width="0.1524" />
                <label x="63.5" y="171.08" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_NODE1" class="0">
              <segment>
                <pinref part="R6" gate="G$1" pin="2" />
                <wire x1="43.18" y1="369.2" x2="58.42" y2="369.2" layer="91" width="0.1524" />
                <label x="58.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R7" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="369.2" x2="93.98" y2="369.2" layer="91" width="0.1524" />
                <label x="93.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C4" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="369.2" x2="322.58" y2="369.2" layer="91" width="0.1524" />
                <label x="322.58" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C5" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="369.2" x2="398.78" y2="369.2" layer="91" width="0.1524" />
                <label x="398.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_NODE2" class="0">
              <segment>
                <pinref part="R9" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="369.2" x2="515.62" y2="369.2" layer="91" width="0.1524" />
                <label x="515.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R10" gate="G$1" pin="1" />
                <wire x1="33.02" y1="318.4" x2="17.78" y2="318.4" layer="91" width="0.1524" />
                <label x="17.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C6" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="318.4" x2="246.38" y2="318.4" layer="91" width="0.1524" />
                <label x="246.38" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C7" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="318.4" x2="322.58" y2="318.4" layer="91" width="0.1524" />
                <label x="322.58" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_OUT" class="0">
              <segment>
                <pinref part="U6" gate="G$1" pin="6" />
                <wire x1="27.94" y1="158.38" x2="12.7" y2="158.38" layer="91" width="0.1524" />
                <label x="12.7" y="158.38" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="7" />
                <wire x1="48.260000000000005" y1="160.92" x2="63.5" y2="160.92" layer="91" width="0.1524" />
                <label x="63.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP6" gate="G$1" pin="1" />
                <wire x1="266.70000000000005" y1="163.46" x2="266.7" y2="160.92" layer="91" width="0.1524" />
                <label x="266.7" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_PHR1" class="0">
              <segment>
                <pinref part="R14" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="267.6" x2="134.62" y2="267.6" layer="91" width="0.1524" />
                <label x="134.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV5" gate="G$1" pin="1" />
                <wire x1="185.42" y1="267.6" x2="170.18" y2="267.6" layer="91" width="0.1524" />
                <label x="170.18" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_PHR2" class="0">
              <segment>
                <pinref part="R17" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="267.6" x2="515.62" y2="267.6" layer="91" width="0.1524" />
                <label x="515.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV6" gate="G$1" pin="1" />
                <wire x1="33.02" y1="216.8" x2="17.78" y2="216.8" layer="91" width="0.1524" />
                <label x="17.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_POLINV" class="0">
              <segment>
                <pinref part="R18" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="216.8" x2="287.02" y2="216.8" layer="91" width="0.1524" />
                <label x="287.02" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R19" gate="G$1" pin="2" />
                <wire x1="347.98" y1="216.8" x2="363.22" y2="216.8" layer="91" width="0.1524" />
                <label x="363.22" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="2" />
                <wire x1="27.94" y1="168.54" x2="12.7" y2="168.54" layer="91" width="0.1524" />
                <label x="12.7" y="168.54" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_SELECT" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="2" />
                <wire x1="414.02000000000004" y1="216.8" x2="398.78" y2="216.8" layer="91" width="0.1524" />
                <label x="398.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV7" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="216.8" x2="474.98" y2="216.8" layer="91" width="0.1524" />
                <label x="474.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_TUNE1" class="0">
              <segment>
                <pinref part="R7" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="369.2" x2="134.62" y2="369.2" layer="91" width="0.1524" />
                <label x="134.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV3" gate="G$1" pin="1" />
                <wire x1="185.42" y1="369.2" x2="170.18" y2="369.2" layer="91" width="0.1524" />
                <label x="170.18" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_TUNE2" class="0">
              <segment>
                <pinref part="R10" gate="G$1" pin="2" />
                <wire x1="43.18" y1="318.4" x2="58.42" y2="318.4" layer="91" width="0.1524" />
                <label x="58.42" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV4" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="318.4" x2="93.98" y2="318.4" layer="91" width="0.1524" />
                <label x="93.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ" class="0">
              <segment>
                <pinref part="R6" gate="G$1" pin="1" />
                <wire x1="33.02" y1="369.2" x2="17.78" y2="369.2" layer="91" width="0.1524" />
                <label x="17.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="8" />
                <wire x1="419.1" y1="333.64" x2="419.1" y2="336.18" layer="91" width="0.1524" />
                <label x="419.1" y="336.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="8" />
                <wire x1="190.5" y1="232.04000000000002" x2="190.5" y2="234.58" layer="91" width="0.1524" />
                <label x="190.5" y="234.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="8" />
                <wire x1="38.1" y1="181.24" x2="38.1" y2="183.78" layer="91" width="0.1524" />
                <label x="38.1" y="183.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="4" />
                <wire x1="419.1" y1="303.15999999999997" x2="419.1" y2="300.62" layer="91" width="0.1524" />
                <label x="419.1" y="300.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="4" />
                <wire x1="190.5" y1="201.56" x2="190.5" y2="199.02" layer="91" width="0.1524" />
                <label x="190.5" y="199.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="4" />
                <wire x1="38.1" y1="150.76" x2="38.1" y2="148.22" layer="91" width="0.1524" />
                <label x="38.1" y="148.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="10" y="410" size="2" layer="97">Waveform synthesis: harmonic_3 (VCC=+12V, VEE=-12V)</text>
          </plain>
          <instances>
            <instance part="R20" gate="G$1" x="38.1" y="369.2" smashed="no" />
            <instance part="R21" gate="G$1" x="114.30000000000001" y="369.2" smashed="no" />
            <instance part="RV8" gate="G$1" x="190.5" y="369.2" smashed="no" />
            <instance part="R22" gate="G$1" x="266.70000000000005" y="369.2" smashed="no" />
            <instance part="C10" gate="G$1" x="342.90000000000003" y="369.2" smashed="no" />
            <instance part="C11" gate="G$1" x="419.1" y="369.2" smashed="no" />
            <instance part="R23" gate="G$1" x="495.30000000000007" y="369.2" smashed="no" />
            <instance part="R24" gate="G$1" x="38.1" y="318.4" smashed="no" />
            <instance part="RV9" gate="G$1" x="114.30000000000001" y="318.4" smashed="no" />
            <instance part="R25" gate="G$1" x="190.5" y="318.4" smashed="no" />
            <instance part="C12" gate="G$1" x="266.70000000000005" y="318.4" smashed="no" />
            <instance part="C13" gate="G$1" x="342.90000000000003" y="318.4" smashed="no" />
            <instance part="U7" gate="G$1" x="419.1" y="318.4" smashed="no" />
            <instance part="R26" gate="G$1" x="495.30000000000007" y="318.4" smashed="no" />
            <instance part="R27" gate="G$1" x="38.1" y="267.6" smashed="no" />
            <instance part="R28" gate="G$1" x="114.30000000000001" y="267.6" smashed="no" />
            <instance part="RV10" gate="G$1" x="190.5" y="267.6" smashed="no" />
            <instance part="C14" gate="G$1" x="266.70000000000005" y="267.6" smashed="no" />
            <instance part="R29" gate="G$1" x="342.90000000000003" y="267.6" smashed="no" />
            <instance part="R30" gate="G$1" x="419.1" y="267.6" smashed="no" />
            <instance part="R31" gate="G$1" x="495.30000000000007" y="267.6" smashed="no" />
            <instance part="RV11" gate="G$1" x="38.1" y="216.8" smashed="no" />
            <instance part="C15" gate="G$1" x="114.30000000000001" y="216.8" smashed="no" />
            <instance part="U8" gate="G$1" x="190.5" y="216.8" smashed="no" />
            <instance part="R32" gate="G$1" x="266.70000000000005" y="216.8" smashed="no" />
            <instance part="R33" gate="G$1" x="342.90000000000003" y="216.8" smashed="no" />
            <instance part="J2" gate="G$1" x="419.1" y="216.8" smashed="no" />
            <instance part="RV12" gate="G$1" x="495.30000000000007" y="216.8" smashed="no" />
            <instance part="U9" gate="G$1" x="38.1" y="166.0" smashed="no" />
            <instance part="TP7" gate="G$1" x="114.30000000000001" y="166.0" smashed="no" />
            <instance part="TP8" gate="G$1" x="190.5" y="166.0" smashed="no" />
            <instance part="TP9" gate="G$1" x="266.70000000000005" y="166.0" smashed="no" />
          </instances>
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="RV8" gate="G$1" pin="2" />
                <wire x1="190.5" y1="374.28" x2="190.5" y2="376.82" layer="91" width="0.1524" />
                <label x="190.5" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV8" gate="G$1" pin="3" />
                <wire x1="195.58" y1="369.2" x2="210.82" y2="369.2" layer="91" width="0.1524" />
                <label x="210.82" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV9" gate="G$1" pin="2" />
                <wire x1="114.30000000000001" y1="323.47999999999996" x2="114.3" y2="326.02" layer="91" width="0.1524" />
                <label x="114.3" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV9" gate="G$1" pin="3" />
                <wire x1="119.38000000000001" y1="318.4" x2="134.62" y2="318.4" layer="91" width="0.1524" />
                <label x="134.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="3" />
                <wire x1="408.94" y1="326.02" x2="393.7" y2="326.02" layer="91" width="0.1524" />
                <label x="393.7" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="5" />
                <wire x1="408.94" y1="315.85999999999996" x2="393.7" y2="315.86" layer="91" width="0.1524" />
                <label x="393.7" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C14" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="267.6" x2="287.02" y2="267.6" layer="91" width="0.1524" />
                <label x="287.02" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C15" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="216.8" x2="134.62" y2="216.8" layer="91" width="0.1524" />
                <label x="134.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV12" gate="G$1" pin="3" />
                <wire x1="500.38000000000005" y1="216.8" x2="515.62" y2="216.8" layer="91" width="0.1524" />
                <label x="515.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="3" />
                <wire x1="27.94" y1="173.62" x2="12.7" y2="173.62" layer="91" width="0.1524" />
                <label x="12.7" y="173.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV12" gate="G$1" pin="2" />
                <wire x1="495.30000000000007" y1="221.88000000000002" x2="495.3" y2="224.42" layer="91" width="0.1524" />
                <label x="495.3" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="5" />
                <wire x1="27.94" y1="163.46" x2="12.7" y2="163.46" layer="91" width="0.1524" />
                <label x="12.7" y="163.46" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_AP1" class="0">
              <segment>
                <pinref part="R27" gate="G$1" pin="1" />
                <wire x1="33.02" y1="267.6" x2="17.78" y2="267.6" layer="91" width="0.1524" />
                <label x="17.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R29" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="267.6" x2="322.58" y2="267.6" layer="91" width="0.1524" />
                <label x="322.58" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R31" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="267.6" x2="474.98" y2="267.6" layer="91" width="0.1524" />
                <label x="474.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="1" />
                <wire x1="200.66" y1="221.88000000000002" x2="215.9" y2="221.88" layer="91" width="0.1524" />
                <label x="215.9" y="221.88" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_AP2" class="0">
              <segment>
                <pinref part="R30" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="267.6" x2="398.78" y2="267.6" layer="91" width="0.1524" />
                <label x="398.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="7" />
                <wire x1="200.66" y1="211.72" x2="215.9" y2="211.72" layer="91" width="0.1524" />
                <label x="215.9" y="211.72" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R32" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="216.8" x2="246.38" y2="216.8" layer="91" width="0.1524" />
                <label x="246.38" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J2" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="219.34" x2="398.78" y2="219.34" layer="91" width="0.1524" />
                <label x="398.78" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP8" gate="G$1" pin="1" />
                <wire x1="190.5" y1="163.46" x2="190.5" y2="160.92" layer="91" width="0.1524" />
                <label x="190.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_APINV1" class="0">
              <segment>
                <pinref part="R26" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="318.4" x2="515.62" y2="318.4" layer="91" width="0.1524" />
                <label x="515.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R27" gate="G$1" pin="2" />
                <wire x1="43.18" y1="267.6" x2="58.42" y2="267.6" layer="91" width="0.1524" />
                <label x="58.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="2" />
                <wire x1="180.34" y1="219.34" x2="165.1" y2="219.34" layer="91" width="0.1524" />
                <label x="165.1" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_APINV2" class="0">
              <segment>
                <pinref part="R29" gate="G$1" pin="2" />
                <wire x1="347.98" y1="267.6" x2="363.22" y2="267.6" layer="91" width="0.1524" />
                <label x="363.22" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R30" gate="G$1" pin="2" />
                <wire x1="424.18" y1="267.6" x2="439.42" y2="267.6" layer="91" width="0.1524" />
                <label x="439.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="6" />
                <wire x1="180.34" y1="209.18" x2="165.1" y2="209.18" layer="91" width="0.1524" />
                <label x="165.1" y="209.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_BPF1" class="0">
              <segment>
                <pinref part="R22" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="369.2" x2="246.38" y2="369.2" layer="91" width="0.1524" />
                <label x="246.38" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C10" gate="G$1" pin="2" />
                <wire x1="347.98" y1="369.2" x2="363.22" y2="369.2" layer="91" width="0.1524" />
                <label x="363.22" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R23" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="369.2" x2="474.98" y2="369.2" layer="91" width="0.1524" />
                <label x="474.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="1" />
                <wire x1="429.26000000000005" y1="323.47999999999996" x2="444.5" y2="323.48" layer="91" width="0.1524" />
                <label x="444.5" y="323.48" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_BPF2" class="0">
              <segment>
                <pinref part="R25" gate="G$1" pin="1" />
                <wire x1="185.42" y1="318.4" x2="170.18" y2="318.4" layer="91" width="0.1524" />
                <label x="170.18" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C12" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="318.4" x2="287.02" y2="318.4" layer="91" width="0.1524" />
                <label x="287.02" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="7" />
                <wire x1="429.26000000000005" y1="313.32" x2="444.5" y2="313.32" layer="91" width="0.1524" />
                <label x="444.5" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R26" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="318.4" x2="474.98" y2="318.4" layer="91" width="0.1524" />
                <label x="474.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R28" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="267.6" x2="93.98" y2="267.6" layer="91" width="0.1524" />
                <label x="93.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP7" gate="G$1" pin="1" />
                <wire x1="114.30000000000001" y1="163.46" x2="114.3" y2="160.92" layer="91" width="0.1524" />
                <label x="114.3" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_INV1" class="0">
              <segment>
                <pinref part="R22" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="369.2" x2="287.02" y2="369.2" layer="91" width="0.1524" />
                <label x="287.02" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C11" gate="G$1" pin="2" />
                <wire x1="424.18" y1="369.2" x2="439.42" y2="369.2" layer="91" width="0.1524" />
                <label x="439.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="2" />
                <wire x1="408.94" y1="320.94" x2="393.7" y2="320.94" layer="91" width="0.1524" />
                <label x="393.7" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_INV2" class="0">
              <segment>
                <pinref part="R25" gate="G$1" pin="2" />
                <wire x1="195.58" y1="318.4" x2="210.82" y2="318.4" layer="91" width="0.1524" />
                <label x="210.82" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C13" gate="G$1" pin="2" />
                <wire x1="347.98" y1="318.4" x2="363.22" y2="318.4" layer="91" width="0.1524" />
                <label x="363.22" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="6" />
                <wire x1="408.94" y1="310.78" x2="393.7" y2="310.78" layer="91" width="0.1524" />
                <label x="393.7" y="310.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_LP1" class="0">
              <segment>
                <pinref part="RV10" gate="G$1" pin="2" />
                <wire x1="190.5" y1="272.68" x2="190.5" y2="275.22" layer="91" width="0.1524" />
                <label x="190.5" y="275.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV10" gate="G$1" pin="3" />
                <wire x1="195.58" y1="267.6" x2="210.82" y2="267.6" layer="91" width="0.1524" />
                <label x="210.82" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C14" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="267.6" x2="246.38" y2="267.6" layer="91" width="0.1524" />
                <label x="246.38" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="3" />
                <wire x1="180.34" y1="224.42000000000002" x2="165.1" y2="224.42" layer="91" width="0.1524" />
                <label x="165.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_LP2" class="0">
              <segment>
                <pinref part="RV11" gate="G$1" pin="2" />
                <wire x1="38.1" y1="221.88000000000002" x2="38.1" y2="224.42" layer="91" width="0.1524" />
                <label x="38.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV11" gate="G$1" pin="3" />
                <wire x1="43.18" y1="216.8" x2="58.42" y2="216.8" layer="91" width="0.1524" />
                <label x="58.42" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C15" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="216.8" x2="93.98" y2="216.8" layer="91" width="0.1524" />
                <label x="93.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="5" />
                <wire x1="180.34" y1="214.26000000000002" x2="165.1" y2="214.26" layer="91" width="0.1524" />
                <label x="165.1" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_NEG" class="0">
              <segment>
                <pinref part="R33" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="216.8" x2="322.58" y2="216.8" layer="91" width="0.1524" />
                <label x="322.58" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J2" gate="G$1" pin="3" />
                <wire x1="414.02000000000004" y1="214.26000000000002" x2="398.78" y2="214.26" layer="91" width="0.1524" />
                <label x="398.78" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="1" />
                <wire x1="48.260000000000005" y1="171.08" x2="63.5" y2="171.08" layer="91" width="0.1524" />
                <label x="63.5" y="171.08" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_NODE1" class="0">
              <segment>
                <pinref part="R20" gate="G$1" pin="2" />
                <wire x1="43.18" y1="369.2" x2="58.42" y2="369.2" layer="91" width="0.1524" />
                <label x="58.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R21" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="369.2" x2="93.98" y2="369.2" layer="91" width="0.1524" />
                <label x="93.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C10" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="369.2" x2="322.58" y2="369.2" layer="91" width="0.1524" />
                <label x="322.58" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C11" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="369.2" x2="398.78" y2="369.2" layer="91" width="0.1524" />
                <label x="398.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_NODE2" class="0">
              <segment>
                <pinref part="R23" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="369.2" x2="515.62" y2="369.2" layer="91" width="0.1524" />
                <label x="515.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R24" gate="G$1" pin="1" />
                <wire x1="33.02" y1="318.4" x2="17.78" y2="318.4" layer="91" width="0.1524" />
                <label x="17.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C12" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="318.4" x2="246.38" y2="318.4" layer="91" width="0.1524" />
                <label x="246.38" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C13" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="318.4" x2="322.58" y2="318.4" layer="91" width="0.1524" />
                <label x="322.58" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_OUT" class="0">
              <segment>
                <pinref part="U9" gate="G$1" pin="6" />
                <wire x1="27.94" y1="158.38" x2="12.7" y2="158.38" layer="91" width="0.1524" />
                <label x="12.7" y="158.38" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="7" />
                <wire x1="48.260000000000005" y1="160.92" x2="63.5" y2="160.92" layer="91" width="0.1524" />
                <label x="63.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP9" gate="G$1" pin="1" />
                <wire x1="266.70000000000005" y1="163.46" x2="266.7" y2="160.92" layer="91" width="0.1524" />
                <label x="266.7" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_PHR1" class="0">
              <segment>
                <pinref part="R28" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="267.6" x2="134.62" y2="267.6" layer="91" width="0.1524" />
                <label x="134.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV10" gate="G$1" pin="1" />
                <wire x1="185.42" y1="267.6" x2="170.18" y2="267.6" layer="91" width="0.1524" />
                <label x="170.18" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_PHR2" class="0">
              <segment>
                <pinref part="R31" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="267.6" x2="515.62" y2="267.6" layer="91" width="0.1524" />
                <label x="515.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV11" gate="G$1" pin="1" />
                <wire x1="33.02" y1="216.8" x2="17.78" y2="216.8" layer="91" width="0.1524" />
                <label x="17.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_POLINV" class="0">
              <segment>
                <pinref part="R32" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="216.8" x2="287.02" y2="216.8" layer="91" width="0.1524" />
                <label x="287.02" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R33" gate="G$1" pin="2" />
                <wire x1="347.98" y1="216.8" x2="363.22" y2="216.8" layer="91" width="0.1524" />
                <label x="363.22" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="2" />
                <wire x1="27.94" y1="168.54" x2="12.7" y2="168.54" layer="91" width="0.1524" />
                <label x="12.7" y="168.54" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_SELECT" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="2" />
                <wire x1="414.02000000000004" y1="216.8" x2="398.78" y2="216.8" layer="91" width="0.1524" />
                <label x="398.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV12" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="216.8" x2="474.98" y2="216.8" layer="91" width="0.1524" />
                <label x="474.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_TUNE1" class="0">
              <segment>
                <pinref part="R21" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="369.2" x2="134.62" y2="369.2" layer="91" width="0.1524" />
                <label x="134.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV8" gate="G$1" pin="1" />
                <wire x1="185.42" y1="369.2" x2="170.18" y2="369.2" layer="91" width="0.1524" />
                <label x="170.18" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_TUNE2" class="0">
              <segment>
                <pinref part="R24" gate="G$1" pin="2" />
                <wire x1="43.18" y1="318.4" x2="58.42" y2="318.4" layer="91" width="0.1524" />
                <label x="58.42" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV9" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="318.4" x2="93.98" y2="318.4" layer="91" width="0.1524" />
                <label x="93.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ" class="0">
              <segment>
                <pinref part="R20" gate="G$1" pin="1" />
                <wire x1="33.02" y1="369.2" x2="17.78" y2="369.2" layer="91" width="0.1524" />
                <label x="17.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U7" gate="G$1" pin="8" />
                <wire x1="419.1" y1="333.64" x2="419.1" y2="336.18" layer="91" width="0.1524" />
                <label x="419.1" y="336.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="8" />
                <wire x1="190.5" y1="232.04000000000002" x2="190.5" y2="234.58" layer="91" width="0.1524" />
                <label x="190.5" y="234.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="8" />
                <wire x1="38.1" y1="181.24" x2="38.1" y2="183.78" layer="91" width="0.1524" />
                <label x="38.1" y="183.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="U7" gate="G$1" pin="4" />
                <wire x1="419.1" y1="303.15999999999997" x2="419.1" y2="300.62" layer="91" width="0.1524" />
                <label x="419.1" y="300.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="4" />
                <wire x1="190.5" y1="201.56" x2="190.5" y2="199.02" layer="91" width="0.1524" />
                <label x="190.5" y="199.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U9" gate="G$1" pin="4" />
                <wire x1="38.1" y1="150.76" x2="38.1" y2="148.22" layer="91" width="0.1524" />
                <label x="38.1" y="148.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="10" y="410" size="2" layer="97">Waveform synthesis: harmonic_5 (VCC=+12V, VEE=-12V)</text>
          </plain>
          <instances>
            <instance part="R34" gate="G$1" x="38.1" y="369.2" smashed="no" />
            <instance part="R35" gate="G$1" x="114.30000000000001" y="369.2" smashed="no" />
            <instance part="RV13" gate="G$1" x="190.5" y="369.2" smashed="no" />
            <instance part="R36" gate="G$1" x="266.70000000000005" y="369.2" smashed="no" />
            <instance part="C16" gate="G$1" x="342.90000000000003" y="369.2" smashed="no" />
            <instance part="C17" gate="G$1" x="419.1" y="369.2" smashed="no" />
            <instance part="R37" gate="G$1" x="495.30000000000007" y="369.2" smashed="no" />
            <instance part="R38" gate="G$1" x="38.1" y="318.4" smashed="no" />
            <instance part="RV14" gate="G$1" x="114.30000000000001" y="318.4" smashed="no" />
            <instance part="R39" gate="G$1" x="190.5" y="318.4" smashed="no" />
            <instance part="C18" gate="G$1" x="266.70000000000005" y="318.4" smashed="no" />
            <instance part="C19" gate="G$1" x="342.90000000000003" y="318.4" smashed="no" />
            <instance part="U10" gate="G$1" x="419.1" y="318.4" smashed="no" />
            <instance part="R40" gate="G$1" x="495.30000000000007" y="318.4" smashed="no" />
            <instance part="R41" gate="G$1" x="38.1" y="267.6" smashed="no" />
            <instance part="R42" gate="G$1" x="114.30000000000001" y="267.6" smashed="no" />
            <instance part="RV15" gate="G$1" x="190.5" y="267.6" smashed="no" />
            <instance part="C20" gate="G$1" x="266.70000000000005" y="267.6" smashed="no" />
            <instance part="R43" gate="G$1" x="342.90000000000003" y="267.6" smashed="no" />
            <instance part="R44" gate="G$1" x="419.1" y="267.6" smashed="no" />
            <instance part="R45" gate="G$1" x="495.30000000000007" y="267.6" smashed="no" />
            <instance part="RV16" gate="G$1" x="38.1" y="216.8" smashed="no" />
            <instance part="C21" gate="G$1" x="114.30000000000001" y="216.8" smashed="no" />
            <instance part="U11" gate="G$1" x="190.5" y="216.8" smashed="no" />
            <instance part="R46" gate="G$1" x="266.70000000000005" y="216.8" smashed="no" />
            <instance part="R47" gate="G$1" x="342.90000000000003" y="216.8" smashed="no" />
            <instance part="J3" gate="G$1" x="419.1" y="216.8" smashed="no" />
            <instance part="RV17" gate="G$1" x="495.30000000000007" y="216.8" smashed="no" />
            <instance part="U12" gate="G$1" x="38.1" y="166.0" smashed="no" />
            <instance part="TP10" gate="G$1" x="114.30000000000001" y="166.0" smashed="no" />
            <instance part="TP11" gate="G$1" x="190.5" y="166.0" smashed="no" />
            <instance part="TP12" gate="G$1" x="266.70000000000005" y="166.0" smashed="no" />
          </instances>
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="RV13" gate="G$1" pin="2" />
                <wire x1="190.5" y1="374.28" x2="190.5" y2="376.82" layer="91" width="0.1524" />
                <label x="190.5" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV13" gate="G$1" pin="3" />
                <wire x1="195.58" y1="369.2" x2="210.82" y2="369.2" layer="91" width="0.1524" />
                <label x="210.82" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV14" gate="G$1" pin="2" />
                <wire x1="114.30000000000001" y1="323.47999999999996" x2="114.3" y2="326.02" layer="91" width="0.1524" />
                <label x="114.3" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV14" gate="G$1" pin="3" />
                <wire x1="119.38000000000001" y1="318.4" x2="134.62" y2="318.4" layer="91" width="0.1524" />
                <label x="134.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U10" gate="G$1" pin="3" />
                <wire x1="408.94" y1="326.02" x2="393.7" y2="326.02" layer="91" width="0.1524" />
                <label x="393.7" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U10" gate="G$1" pin="5" />
                <wire x1="408.94" y1="315.85999999999996" x2="393.7" y2="315.86" layer="91" width="0.1524" />
                <label x="393.7" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C20" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="267.6" x2="287.02" y2="267.6" layer="91" width="0.1524" />
                <label x="287.02" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C21" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="216.8" x2="134.62" y2="216.8" layer="91" width="0.1524" />
                <label x="134.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV17" gate="G$1" pin="3" />
                <wire x1="500.38000000000005" y1="216.8" x2="515.62" y2="216.8" layer="91" width="0.1524" />
                <label x="515.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="3" />
                <wire x1="27.94" y1="173.62" x2="12.7" y2="173.62" layer="91" width="0.1524" />
                <label x="12.7" y="173.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV17" gate="G$1" pin="2" />
                <wire x1="495.30000000000007" y1="221.88000000000002" x2="495.3" y2="224.42" layer="91" width="0.1524" />
                <label x="495.3" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="5" />
                <wire x1="27.94" y1="163.46" x2="12.7" y2="163.46" layer="91" width="0.1524" />
                <label x="12.7" y="163.46" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_AP1" class="0">
              <segment>
                <pinref part="R41" gate="G$1" pin="1" />
                <wire x1="33.02" y1="267.6" x2="17.78" y2="267.6" layer="91" width="0.1524" />
                <label x="17.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R43" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="267.6" x2="322.58" y2="267.6" layer="91" width="0.1524" />
                <label x="322.58" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R45" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="267.6" x2="474.98" y2="267.6" layer="91" width="0.1524" />
                <label x="474.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="1" />
                <wire x1="200.66" y1="221.88000000000002" x2="215.9" y2="221.88" layer="91" width="0.1524" />
                <label x="215.9" y="221.88" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_AP2" class="0">
              <segment>
                <pinref part="R44" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="267.6" x2="398.78" y2="267.6" layer="91" width="0.1524" />
                <label x="398.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="7" />
                <wire x1="200.66" y1="211.72" x2="215.9" y2="211.72" layer="91" width="0.1524" />
                <label x="215.9" y="211.72" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R46" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="216.8" x2="246.38" y2="216.8" layer="91" width="0.1524" />
                <label x="246.38" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J3" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="219.34" x2="398.78" y2="219.34" layer="91" width="0.1524" />
                <label x="398.78" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP11" gate="G$1" pin="1" />
                <wire x1="190.5" y1="163.46" x2="190.5" y2="160.92" layer="91" width="0.1524" />
                <label x="190.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_APINV1" class="0">
              <segment>
                <pinref part="R40" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="318.4" x2="515.62" y2="318.4" layer="91" width="0.1524" />
                <label x="515.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R41" gate="G$1" pin="2" />
                <wire x1="43.18" y1="267.6" x2="58.42" y2="267.6" layer="91" width="0.1524" />
                <label x="58.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="2" />
                <wire x1="180.34" y1="219.34" x2="165.1" y2="219.34" layer="91" width="0.1524" />
                <label x="165.1" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_APINV2" class="0">
              <segment>
                <pinref part="R43" gate="G$1" pin="2" />
                <wire x1="347.98" y1="267.6" x2="363.22" y2="267.6" layer="91" width="0.1524" />
                <label x="363.22" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R44" gate="G$1" pin="2" />
                <wire x1="424.18" y1="267.6" x2="439.42" y2="267.6" layer="91" width="0.1524" />
                <label x="439.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="6" />
                <wire x1="180.34" y1="209.18" x2="165.1" y2="209.18" layer="91" width="0.1524" />
                <label x="165.1" y="209.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_BPF1" class="0">
              <segment>
                <pinref part="R36" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="369.2" x2="246.38" y2="369.2" layer="91" width="0.1524" />
                <label x="246.38" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C16" gate="G$1" pin="2" />
                <wire x1="347.98" y1="369.2" x2="363.22" y2="369.2" layer="91" width="0.1524" />
                <label x="363.22" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R37" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="369.2" x2="474.98" y2="369.2" layer="91" width="0.1524" />
                <label x="474.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U10" gate="G$1" pin="1" />
                <wire x1="429.26000000000005" y1="323.47999999999996" x2="444.5" y2="323.48" layer="91" width="0.1524" />
                <label x="444.5" y="323.48" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_BPF2" class="0">
              <segment>
                <pinref part="R39" gate="G$1" pin="1" />
                <wire x1="185.42" y1="318.4" x2="170.18" y2="318.4" layer="91" width="0.1524" />
                <label x="170.18" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C18" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="318.4" x2="287.02" y2="318.4" layer="91" width="0.1524" />
                <label x="287.02" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U10" gate="G$1" pin="7" />
                <wire x1="429.26000000000005" y1="313.32" x2="444.5" y2="313.32" layer="91" width="0.1524" />
                <label x="444.5" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R40" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="318.4" x2="474.98" y2="318.4" layer="91" width="0.1524" />
                <label x="474.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R42" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="267.6" x2="93.98" y2="267.6" layer="91" width="0.1524" />
                <label x="93.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP10" gate="G$1" pin="1" />
                <wire x1="114.30000000000001" y1="163.46" x2="114.3" y2="160.92" layer="91" width="0.1524" />
                <label x="114.3" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_INV1" class="0">
              <segment>
                <pinref part="R36" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="369.2" x2="287.02" y2="369.2" layer="91" width="0.1524" />
                <label x="287.02" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C17" gate="G$1" pin="2" />
                <wire x1="424.18" y1="369.2" x2="439.42" y2="369.2" layer="91" width="0.1524" />
                <label x="439.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U10" gate="G$1" pin="2" />
                <wire x1="408.94" y1="320.94" x2="393.7" y2="320.94" layer="91" width="0.1524" />
                <label x="393.7" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_INV2" class="0">
              <segment>
                <pinref part="R39" gate="G$1" pin="2" />
                <wire x1="195.58" y1="318.4" x2="210.82" y2="318.4" layer="91" width="0.1524" />
                <label x="210.82" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C19" gate="G$1" pin="2" />
                <wire x1="347.98" y1="318.4" x2="363.22" y2="318.4" layer="91" width="0.1524" />
                <label x="363.22" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U10" gate="G$1" pin="6" />
                <wire x1="408.94" y1="310.78" x2="393.7" y2="310.78" layer="91" width="0.1524" />
                <label x="393.7" y="310.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_LP1" class="0">
              <segment>
                <pinref part="RV15" gate="G$1" pin="2" />
                <wire x1="190.5" y1="272.68" x2="190.5" y2="275.22" layer="91" width="0.1524" />
                <label x="190.5" y="275.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV15" gate="G$1" pin="3" />
                <wire x1="195.58" y1="267.6" x2="210.82" y2="267.6" layer="91" width="0.1524" />
                <label x="210.82" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C20" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="267.6" x2="246.38" y2="267.6" layer="91" width="0.1524" />
                <label x="246.38" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="3" />
                <wire x1="180.34" y1="224.42000000000002" x2="165.1" y2="224.42" layer="91" width="0.1524" />
                <label x="165.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_LP2" class="0">
              <segment>
                <pinref part="RV16" gate="G$1" pin="2" />
                <wire x1="38.1" y1="221.88000000000002" x2="38.1" y2="224.42" layer="91" width="0.1524" />
                <label x="38.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV16" gate="G$1" pin="3" />
                <wire x1="43.18" y1="216.8" x2="58.42" y2="216.8" layer="91" width="0.1524" />
                <label x="58.42" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C21" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="216.8" x2="93.98" y2="216.8" layer="91" width="0.1524" />
                <label x="93.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="5" />
                <wire x1="180.34" y1="214.26000000000002" x2="165.1" y2="214.26" layer="91" width="0.1524" />
                <label x="165.1" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_NEG" class="0">
              <segment>
                <pinref part="R47" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="216.8" x2="322.58" y2="216.8" layer="91" width="0.1524" />
                <label x="322.58" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J3" gate="G$1" pin="3" />
                <wire x1="414.02000000000004" y1="214.26000000000002" x2="398.78" y2="214.26" layer="91" width="0.1524" />
                <label x="398.78" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="1" />
                <wire x1="48.260000000000005" y1="171.08" x2="63.5" y2="171.08" layer="91" width="0.1524" />
                <label x="63.5" y="171.08" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_NODE1" class="0">
              <segment>
                <pinref part="R34" gate="G$1" pin="2" />
                <wire x1="43.18" y1="369.2" x2="58.42" y2="369.2" layer="91" width="0.1524" />
                <label x="58.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R35" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="369.2" x2="93.98" y2="369.2" layer="91" width="0.1524" />
                <label x="93.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C16" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="369.2" x2="322.58" y2="369.2" layer="91" width="0.1524" />
                <label x="322.58" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C17" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="369.2" x2="398.78" y2="369.2" layer="91" width="0.1524" />
                <label x="398.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_NODE2" class="0">
              <segment>
                <pinref part="R37" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="369.2" x2="515.62" y2="369.2" layer="91" width="0.1524" />
                <label x="515.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R38" gate="G$1" pin="1" />
                <wire x1="33.02" y1="318.4" x2="17.78" y2="318.4" layer="91" width="0.1524" />
                <label x="17.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C18" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="318.4" x2="246.38" y2="318.4" layer="91" width="0.1524" />
                <label x="246.38" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C19" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="318.4" x2="322.58" y2="318.4" layer="91" width="0.1524" />
                <label x="322.58" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_OUT" class="0">
              <segment>
                <pinref part="U12" gate="G$1" pin="6" />
                <wire x1="27.94" y1="158.38" x2="12.7" y2="158.38" layer="91" width="0.1524" />
                <label x="12.7" y="158.38" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="7" />
                <wire x1="48.260000000000005" y1="160.92" x2="63.5" y2="160.92" layer="91" width="0.1524" />
                <label x="63.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP12" gate="G$1" pin="1" />
                <wire x1="266.70000000000005" y1="163.46" x2="266.7" y2="160.92" layer="91" width="0.1524" />
                <label x="266.7" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_PHR1" class="0">
              <segment>
                <pinref part="R42" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="267.6" x2="134.62" y2="267.6" layer="91" width="0.1524" />
                <label x="134.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV15" gate="G$1" pin="1" />
                <wire x1="185.42" y1="267.6" x2="170.18" y2="267.6" layer="91" width="0.1524" />
                <label x="170.18" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_PHR2" class="0">
              <segment>
                <pinref part="R45" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="267.6" x2="515.62" y2="267.6" layer="91" width="0.1524" />
                <label x="515.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV16" gate="G$1" pin="1" />
                <wire x1="33.02" y1="216.8" x2="17.78" y2="216.8" layer="91" width="0.1524" />
                <label x="17.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_POLINV" class="0">
              <segment>
                <pinref part="R46" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="216.8" x2="287.02" y2="216.8" layer="91" width="0.1524" />
                <label x="287.02" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R47" gate="G$1" pin="2" />
                <wire x1="347.98" y1="216.8" x2="363.22" y2="216.8" layer="91" width="0.1524" />
                <label x="363.22" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="2" />
                <wire x1="27.94" y1="168.54" x2="12.7" y2="168.54" layer="91" width="0.1524" />
                <label x="12.7" y="168.54" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_SELECT" class="0">
              <segment>
                <pinref part="J3" gate="G$1" pin="2" />
                <wire x1="414.02000000000004" y1="216.8" x2="398.78" y2="216.8" layer="91" width="0.1524" />
                <label x="398.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV17" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="216.8" x2="474.98" y2="216.8" layer="91" width="0.1524" />
                <label x="474.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_TUNE1" class="0">
              <segment>
                <pinref part="R35" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="369.2" x2="134.62" y2="369.2" layer="91" width="0.1524" />
                <label x="134.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV13" gate="G$1" pin="1" />
                <wire x1="185.42" y1="369.2" x2="170.18" y2="369.2" layer="91" width="0.1524" />
                <label x="170.18" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_TUNE2" class="0">
              <segment>
                <pinref part="R38" gate="G$1" pin="2" />
                <wire x1="43.18" y1="318.4" x2="58.42" y2="318.4" layer="91" width="0.1524" />
                <label x="58.42" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV14" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="318.4" x2="93.98" y2="318.4" layer="91" width="0.1524" />
                <label x="93.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ" class="0">
              <segment>
                <pinref part="R34" gate="G$1" pin="1" />
                <wire x1="33.02" y1="369.2" x2="17.78" y2="369.2" layer="91" width="0.1524" />
                <label x="17.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U10" gate="G$1" pin="8" />
                <wire x1="419.1" y1="333.64" x2="419.1" y2="336.18" layer="91" width="0.1524" />
                <label x="419.1" y="336.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="8" />
                <wire x1="190.5" y1="232.04000000000002" x2="190.5" y2="234.58" layer="91" width="0.1524" />
                <label x="190.5" y="234.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="8" />
                <wire x1="38.1" y1="181.24" x2="38.1" y2="183.78" layer="91" width="0.1524" />
                <label x="38.1" y="183.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="U10" gate="G$1" pin="4" />
                <wire x1="419.1" y1="303.15999999999997" x2="419.1" y2="300.62" layer="91" width="0.1524" />
                <label x="419.1" y="300.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U11" gate="G$1" pin="4" />
                <wire x1="190.5" y1="201.56" x2="190.5" y2="199.02" layer="91" width="0.1524" />
                <label x="190.5" y="199.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U12" gate="G$1" pin="4" />
                <wire x1="38.1" y1="150.76" x2="38.1" y2="148.22" layer="91" width="0.1524" />
                <label x="38.1" y="148.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="10" y="410" size="2" layer="97">Waveform synthesis: harmonic_7 (VCC=+12V, VEE=-12V)</text>
          </plain>
          <instances>
            <instance part="R48" gate="G$1" x="38.1" y="369.2" smashed="no" />
            <instance part="R49" gate="G$1" x="114.30000000000001" y="369.2" smashed="no" />
            <instance part="RV18" gate="G$1" x="190.5" y="369.2" smashed="no" />
            <instance part="R50" gate="G$1" x="266.70000000000005" y="369.2" smashed="no" />
            <instance part="C22" gate="G$1" x="342.90000000000003" y="369.2" smashed="no" />
            <instance part="C23" gate="G$1" x="419.1" y="369.2" smashed="no" />
            <instance part="R51" gate="G$1" x="495.30000000000007" y="369.2" smashed="no" />
            <instance part="R52" gate="G$1" x="38.1" y="318.4" smashed="no" />
            <instance part="RV19" gate="G$1" x="114.30000000000001" y="318.4" smashed="no" />
            <instance part="R53" gate="G$1" x="190.5" y="318.4" smashed="no" />
            <instance part="C24" gate="G$1" x="266.70000000000005" y="318.4" smashed="no" />
            <instance part="C25" gate="G$1" x="342.90000000000003" y="318.4" smashed="no" />
            <instance part="U13" gate="G$1" x="419.1" y="318.4" smashed="no" />
            <instance part="R54" gate="G$1" x="495.30000000000007" y="318.4" smashed="no" />
            <instance part="R55" gate="G$1" x="38.1" y="267.6" smashed="no" />
            <instance part="R56" gate="G$1" x="114.30000000000001" y="267.6" smashed="no" />
            <instance part="RV20" gate="G$1" x="190.5" y="267.6" smashed="no" />
            <instance part="C26" gate="G$1" x="266.70000000000005" y="267.6" smashed="no" />
            <instance part="R57" gate="G$1" x="342.90000000000003" y="267.6" smashed="no" />
            <instance part="R58" gate="G$1" x="419.1" y="267.6" smashed="no" />
            <instance part="R59" gate="G$1" x="495.30000000000007" y="267.6" smashed="no" />
            <instance part="RV21" gate="G$1" x="38.1" y="216.8" smashed="no" />
            <instance part="C27" gate="G$1" x="114.30000000000001" y="216.8" smashed="no" />
            <instance part="U14" gate="G$1" x="190.5" y="216.8" smashed="no" />
            <instance part="R60" gate="G$1" x="266.70000000000005" y="216.8" smashed="no" />
            <instance part="R61" gate="G$1" x="342.90000000000003" y="216.8" smashed="no" />
            <instance part="J4" gate="G$1" x="419.1" y="216.8" smashed="no" />
            <instance part="RV22" gate="G$1" x="495.30000000000007" y="216.8" smashed="no" />
            <instance part="U15" gate="G$1" x="38.1" y="166.0" smashed="no" />
            <instance part="TP13" gate="G$1" x="114.30000000000001" y="166.0" smashed="no" />
            <instance part="TP14" gate="G$1" x="190.5" y="166.0" smashed="no" />
            <instance part="TP15" gate="G$1" x="266.70000000000005" y="166.0" smashed="no" />
          </instances>
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="RV18" gate="G$1" pin="2" />
                <wire x1="190.5" y1="374.28" x2="190.5" y2="376.82" layer="91" width="0.1524" />
                <label x="190.5" y="376.82" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV18" gate="G$1" pin="3" />
                <wire x1="195.58" y1="369.2" x2="210.82" y2="369.2" layer="91" width="0.1524" />
                <label x="210.82" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV19" gate="G$1" pin="2" />
                <wire x1="114.30000000000001" y1="323.47999999999996" x2="114.3" y2="326.02" layer="91" width="0.1524" />
                <label x="114.3" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV19" gate="G$1" pin="3" />
                <wire x1="119.38000000000001" y1="318.4" x2="134.62" y2="318.4" layer="91" width="0.1524" />
                <label x="134.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U13" gate="G$1" pin="3" />
                <wire x1="408.94" y1="326.02" x2="393.7" y2="326.02" layer="91" width="0.1524" />
                <label x="393.7" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U13" gate="G$1" pin="5" />
                <wire x1="408.94" y1="315.85999999999996" x2="393.7" y2="315.86" layer="91" width="0.1524" />
                <label x="393.7" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C26" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="267.6" x2="287.02" y2="267.6" layer="91" width="0.1524" />
                <label x="287.02" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C27" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="216.8" x2="134.62" y2="216.8" layer="91" width="0.1524" />
                <label x="134.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV22" gate="G$1" pin="3" />
                <wire x1="500.38000000000005" y1="216.8" x2="515.62" y2="216.8" layer="91" width="0.1524" />
                <label x="515.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="3" />
                <wire x1="27.94" y1="173.62" x2="12.7" y2="173.62" layer="91" width="0.1524" />
                <label x="12.7" y="173.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_AMPLITUDE" class="0">
              <segment>
                <pinref part="RV22" gate="G$1" pin="2" />
                <wire x1="495.30000000000007" y1="221.88000000000002" x2="495.3" y2="224.42" layer="91" width="0.1524" />
                <label x="495.3" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="5" />
                <wire x1="27.94" y1="163.46" x2="12.7" y2="163.46" layer="91" width="0.1524" />
                <label x="12.7" y="163.46" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_AP1" class="0">
              <segment>
                <pinref part="R55" gate="G$1" pin="1" />
                <wire x1="33.02" y1="267.6" x2="17.78" y2="267.6" layer="91" width="0.1524" />
                <label x="17.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R57" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="267.6" x2="322.58" y2="267.6" layer="91" width="0.1524" />
                <label x="322.58" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R59" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="267.6" x2="474.98" y2="267.6" layer="91" width="0.1524" />
                <label x="474.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="1" />
                <wire x1="200.66" y1="221.88000000000002" x2="215.9" y2="221.88" layer="91" width="0.1524" />
                <label x="215.9" y="221.88" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_AP2" class="0">
              <segment>
                <pinref part="R58" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="267.6" x2="398.78" y2="267.6" layer="91" width="0.1524" />
                <label x="398.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="7" />
                <wire x1="200.66" y1="211.72" x2="215.9" y2="211.72" layer="91" width="0.1524" />
                <label x="215.9" y="211.72" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R60" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="216.8" x2="246.38" y2="216.8" layer="91" width="0.1524" />
                <label x="246.38" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J4" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="219.34" x2="398.78" y2="219.34" layer="91" width="0.1524" />
                <label x="398.78" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP14" gate="G$1" pin="1" />
                <wire x1="190.5" y1="163.46" x2="190.5" y2="160.92" layer="91" width="0.1524" />
                <label x="190.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_APINV1" class="0">
              <segment>
                <pinref part="R54" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="318.4" x2="515.62" y2="318.4" layer="91" width="0.1524" />
                <label x="515.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R55" gate="G$1" pin="2" />
                <wire x1="43.18" y1="267.6" x2="58.42" y2="267.6" layer="91" width="0.1524" />
                <label x="58.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="2" />
                <wire x1="180.34" y1="219.34" x2="165.1" y2="219.34" layer="91" width="0.1524" />
                <label x="165.1" y="219.34" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_APINV2" class="0">
              <segment>
                <pinref part="R57" gate="G$1" pin="2" />
                <wire x1="347.98" y1="267.6" x2="363.22" y2="267.6" layer="91" width="0.1524" />
                <label x="363.22" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R58" gate="G$1" pin="2" />
                <wire x1="424.18" y1="267.6" x2="439.42" y2="267.6" layer="91" width="0.1524" />
                <label x="439.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="6" />
                <wire x1="180.34" y1="209.18" x2="165.1" y2="209.18" layer="91" width="0.1524" />
                <label x="165.1" y="209.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_BPF1" class="0">
              <segment>
                <pinref part="R50" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="369.2" x2="246.38" y2="369.2" layer="91" width="0.1524" />
                <label x="246.38" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C22" gate="G$1" pin="2" />
                <wire x1="347.98" y1="369.2" x2="363.22" y2="369.2" layer="91" width="0.1524" />
                <label x="363.22" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R51" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="369.2" x2="474.98" y2="369.2" layer="91" width="0.1524" />
                <label x="474.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U13" gate="G$1" pin="1" />
                <wire x1="429.26000000000005" y1="323.47999999999996" x2="444.5" y2="323.48" layer="91" width="0.1524" />
                <label x="444.5" y="323.48" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_BPF2" class="0">
              <segment>
                <pinref part="R53" gate="G$1" pin="1" />
                <wire x1="185.42" y1="318.4" x2="170.18" y2="318.4" layer="91" width="0.1524" />
                <label x="170.18" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C24" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="318.4" x2="287.02" y2="318.4" layer="91" width="0.1524" />
                <label x="287.02" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U13" gate="G$1" pin="7" />
                <wire x1="429.26000000000005" y1="313.32" x2="444.5" y2="313.32" layer="91" width="0.1524" />
                <label x="444.5" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R54" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="318.4" x2="474.98" y2="318.4" layer="91" width="0.1524" />
                <label x="474.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R56" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="267.6" x2="93.98" y2="267.6" layer="91" width="0.1524" />
                <label x="93.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP13" gate="G$1" pin="1" />
                <wire x1="114.30000000000001" y1="163.46" x2="114.3" y2="160.92" layer="91" width="0.1524" />
                <label x="114.3" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_INV1" class="0">
              <segment>
                <pinref part="R50" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="369.2" x2="287.02" y2="369.2" layer="91" width="0.1524" />
                <label x="287.02" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C23" gate="G$1" pin="2" />
                <wire x1="424.18" y1="369.2" x2="439.42" y2="369.2" layer="91" width="0.1524" />
                <label x="439.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U13" gate="G$1" pin="2" />
                <wire x1="408.94" y1="320.94" x2="393.7" y2="320.94" layer="91" width="0.1524" />
                <label x="393.7" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_INV2" class="0">
              <segment>
                <pinref part="R53" gate="G$1" pin="2" />
                <wire x1="195.58" y1="318.4" x2="210.82" y2="318.4" layer="91" width="0.1524" />
                <label x="210.82" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C25" gate="G$1" pin="2" />
                <wire x1="347.98" y1="318.4" x2="363.22" y2="318.4" layer="91" width="0.1524" />
                <label x="363.22" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U13" gate="G$1" pin="6" />
                <wire x1="408.94" y1="310.78" x2="393.7" y2="310.78" layer="91" width="0.1524" />
                <label x="393.7" y="310.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_LP1" class="0">
              <segment>
                <pinref part="RV20" gate="G$1" pin="2" />
                <wire x1="190.5" y1="272.68" x2="190.5" y2="275.22" layer="91" width="0.1524" />
                <label x="190.5" y="275.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV20" gate="G$1" pin="3" />
                <wire x1="195.58" y1="267.6" x2="210.82" y2="267.6" layer="91" width="0.1524" />
                <label x="210.82" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C26" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="267.6" x2="246.38" y2="267.6" layer="91" width="0.1524" />
                <label x="246.38" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="3" />
                <wire x1="180.34" y1="224.42000000000002" x2="165.1" y2="224.42" layer="91" width="0.1524" />
                <label x="165.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_LP2" class="0">
              <segment>
                <pinref part="RV21" gate="G$1" pin="2" />
                <wire x1="38.1" y1="221.88000000000002" x2="38.1" y2="224.42" layer="91" width="0.1524" />
                <label x="38.1" y="224.42" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV21" gate="G$1" pin="3" />
                <wire x1="43.18" y1="216.8" x2="58.42" y2="216.8" layer="91" width="0.1524" />
                <label x="58.42" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C27" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="216.8" x2="93.98" y2="216.8" layer="91" width="0.1524" />
                <label x="93.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="5" />
                <wire x1="180.34" y1="214.26000000000002" x2="165.1" y2="214.26" layer="91" width="0.1524" />
                <label x="165.1" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_NEG" class="0">
              <segment>
                <pinref part="R61" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="216.8" x2="322.58" y2="216.8" layer="91" width="0.1524" />
                <label x="322.58" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J4" gate="G$1" pin="3" />
                <wire x1="414.02000000000004" y1="214.26000000000002" x2="398.78" y2="214.26" layer="91" width="0.1524" />
                <label x="398.78" y="214.26" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="1" />
                <wire x1="48.260000000000005" y1="171.08" x2="63.5" y2="171.08" layer="91" width="0.1524" />
                <label x="63.5" y="171.08" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_NODE1" class="0">
              <segment>
                <pinref part="R48" gate="G$1" pin="2" />
                <wire x1="43.18" y1="369.2" x2="58.42" y2="369.2" layer="91" width="0.1524" />
                <label x="58.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R49" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="369.2" x2="93.98" y2="369.2" layer="91" width="0.1524" />
                <label x="93.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C22" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="369.2" x2="322.58" y2="369.2" layer="91" width="0.1524" />
                <label x="322.58" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C23" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="369.2" x2="398.78" y2="369.2" layer="91" width="0.1524" />
                <label x="398.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_NODE2" class="0">
              <segment>
                <pinref part="R51" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="369.2" x2="515.62" y2="369.2" layer="91" width="0.1524" />
                <label x="515.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R52" gate="G$1" pin="1" />
                <wire x1="33.02" y1="318.4" x2="17.78" y2="318.4" layer="91" width="0.1524" />
                <label x="17.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C24" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="318.4" x2="246.38" y2="318.4" layer="91" width="0.1524" />
                <label x="246.38" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C25" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="318.4" x2="322.58" y2="318.4" layer="91" width="0.1524" />
                <label x="322.58" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_OUT" class="0">
              <segment>
                <pinref part="U15" gate="G$1" pin="6" />
                <wire x1="27.94" y1="158.38" x2="12.7" y2="158.38" layer="91" width="0.1524" />
                <label x="12.7" y="158.38" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="7" />
                <wire x1="48.260000000000005" y1="160.92" x2="63.5" y2="160.92" layer="91" width="0.1524" />
                <label x="63.5" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP15" gate="G$1" pin="1" />
                <wire x1="266.70000000000005" y1="163.46" x2="266.7" y2="160.92" layer="91" width="0.1524" />
                <label x="266.7" y="160.92" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_PHR1" class="0">
              <segment>
                <pinref part="R56" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="267.6" x2="134.62" y2="267.6" layer="91" width="0.1524" />
                <label x="134.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV20" gate="G$1" pin="1" />
                <wire x1="185.42" y1="267.6" x2="170.18" y2="267.6" layer="91" width="0.1524" />
                <label x="170.18" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_PHR2" class="0">
              <segment>
                <pinref part="R59" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="267.6" x2="515.62" y2="267.6" layer="91" width="0.1524" />
                <label x="515.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV21" gate="G$1" pin="1" />
                <wire x1="33.02" y1="216.8" x2="17.78" y2="216.8" layer="91" width="0.1524" />
                <label x="17.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_POLINV" class="0">
              <segment>
                <pinref part="R60" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="216.8" x2="287.02" y2="216.8" layer="91" width="0.1524" />
                <label x="287.02" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R61" gate="G$1" pin="2" />
                <wire x1="347.98" y1="216.8" x2="363.22" y2="216.8" layer="91" width="0.1524" />
                <label x="363.22" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="2" />
                <wire x1="27.94" y1="168.54" x2="12.7" y2="168.54" layer="91" width="0.1524" />
                <label x="12.7" y="168.54" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_SELECT" class="0">
              <segment>
                <pinref part="J4" gate="G$1" pin="2" />
                <wire x1="414.02000000000004" y1="216.8" x2="398.78" y2="216.8" layer="91" width="0.1524" />
                <label x="398.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV22" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="216.8" x2="474.98" y2="216.8" layer="91" width="0.1524" />
                <label x="474.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_TUNE1" class="0">
              <segment>
                <pinref part="R49" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="369.2" x2="134.62" y2="369.2" layer="91" width="0.1524" />
                <label x="134.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV18" gate="G$1" pin="1" />
                <wire x1="185.42" y1="369.2" x2="170.18" y2="369.2" layer="91" width="0.1524" />
                <label x="170.18" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_TUNE2" class="0">
              <segment>
                <pinref part="R52" gate="G$1" pin="2" />
                <wire x1="43.18" y1="318.4" x2="58.42" y2="318.4" layer="91" width="0.1524" />
                <label x="58.42" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="RV19" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="318.4" x2="93.98" y2="318.4" layer="91" width="0.1524" />
                <label x="93.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SQ" class="0">
              <segment>
                <pinref part="R48" gate="G$1" pin="1" />
                <wire x1="33.02" y1="369.2" x2="17.78" y2="369.2" layer="91" width="0.1524" />
                <label x="17.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U13" gate="G$1" pin="8" />
                <wire x1="419.1" y1="333.64" x2="419.1" y2="336.18" layer="91" width="0.1524" />
                <label x="419.1" y="336.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="8" />
                <wire x1="190.5" y1="232.04000000000002" x2="190.5" y2="234.58" layer="91" width="0.1524" />
                <label x="190.5" y="234.58" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="8" />
                <wire x1="38.1" y1="181.24" x2="38.1" y2="183.78" layer="91" width="0.1524" />
                <label x="38.1" y="183.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="U13" gate="G$1" pin="4" />
                <wire x1="419.1" y1="303.15999999999997" x2="419.1" y2="300.62" layer="91" width="0.1524" />
                <label x="419.1" y="300.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U14" gate="G$1" pin="4" />
                <wire x1="190.5" y1="201.56" x2="190.5" y2="199.02" layer="91" width="0.1524" />
                <label x="190.5" y="199.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U15" gate="G$1" pin="4" />
                <wire x1="38.1" y1="150.76" x2="38.1" y2="148.22" layer="91" width="0.1524" />
                <label x="38.1" y="148.22" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="10" y="410" size="2" layer="97">Waveform synthesis: power_sum (VCC=+12V, VEE=-12V)</text>
          </plain>
          <instances>
            <instance part="R62" gate="G$1" x="38.1" y="369.2" smashed="no" />
            <instance part="R63" gate="G$1" x="114.30000000000001" y="369.2" smashed="no" />
            <instance part="R64" gate="G$1" x="190.5" y="369.2" smashed="no" />
            <instance part="R65" gate="G$1" x="266.70000000000005" y="369.2" smashed="no" />
            <instance part="R66" gate="G$1" x="342.90000000000003" y="369.2" smashed="no" />
            <instance part="R67" gate="G$1" x="419.1" y="369.2" smashed="no" />
            <instance part="R68" gate="G$1" x="495.30000000000007" y="369.2" smashed="no" />
            <instance part="U16" gate="G$1" x="38.1" y="318.4" smashed="no" />
            <instance part="R69" gate="G$1" x="114.30000000000001" y="318.4" smashed="no" />
            <instance part="TP16" gate="G$1" x="190.5" y="318.4" smashed="no" />
            <instance part="TP17" gate="G$1" x="266.70000000000005" y="318.4" smashed="no" />
            <instance part="TP18" gate="G$1" x="342.90000000000003" y="318.4" smashed="no" />
            <instance part="J5" gate="G$1" x="419.1" y="318.4" smashed="no" />
            <instance part="J6" gate="G$1" x="495.30000000000007" y="318.4" smashed="no" />
            <instance part="C28" gate="G$1" x="38.1" y="267.6" smashed="no" />
            <instance part="C29" gate="G$1" x="114.30000000000001" y="267.6" smashed="no" />
            <instance part="C30" gate="G$1" x="190.5" y="267.6" smashed="no" />
            <instance part="C31" gate="G$1" x="266.70000000000005" y="267.6" smashed="no" />
            <instance part="C32" gate="G$1" x="342.90000000000003" y="267.6" smashed="no" />
            <instance part="C33" gate="G$1" x="419.1" y="267.6" smashed="no" />
            <instance part="C34" gate="G$1" x="495.30000000000007" y="267.6" smashed="no" />
            <instance part="C35" gate="G$1" x="38.1" y="216.8" smashed="no" />
            <instance part="C36" gate="G$1" x="114.30000000000001" y="216.8" smashed="no" />
            <instance part="C37" gate="G$1" x="190.5" y="216.8" smashed="no" />
            <instance part="C38" gate="G$1" x="266.70000000000005" y="216.8" smashed="no" />
            <instance part="C39" gate="G$1" x="342.90000000000003" y="216.8" smashed="no" />
            <instance part="C40" gate="G$1" x="419.1" y="216.8" smashed="no" />
            <instance part="C41" gate="G$1" x="495.30000000000007" y="216.8" smashed="no" />
            <instance part="C42" gate="G$1" x="38.1" y="166.0" smashed="no" />
            <instance part="C43" gate="G$1" x="114.30000000000001" y="166.0" smashed="no" />
            <instance part="C44" gate="G$1" x="190.5" y="166.0" smashed="no" />
            <instance part="C45" gate="G$1" x="266.70000000000005" y="166.0" smashed="no" />
            <instance part="C46" gate="G$1" x="342.90000000000003" y="166.0" smashed="no" />
            <instance part="C47" gate="G$1" x="419.1" y="166.0" smashed="no" />
            <instance part="C48" gate="G$1" x="495.30000000000007" y="166.0" smashed="no" />
            <instance part="C49" gate="G$1" x="38.1" y="115.19999999999999" smashed="no" />
            <instance part="C50" gate="G$1" x="114.30000000000001" y="115.19999999999999" smashed="no" />
            <instance part="C51" gate="G$1" x="190.5" y="115.19999999999999" smashed="no" />
            <instance part="C52" gate="G$1" x="266.70000000000005" y="115.19999999999999" smashed="no" />
            <instance part="C53" gate="G$1" x="342.90000000000003" y="115.19999999999999" smashed="no" />
            <instance part="C54" gate="G$1" x="419.1" y="115.19999999999999" smashed="no" />
            <instance part="C55" gate="G$1" x="495.30000000000007" y="115.19999999999999" smashed="no" />
            <instance part="C56" gate="G$1" x="38.1" y="64.40000000000003" smashed="no" />
            <instance part="C57" gate="G$1" x="114.30000000000001" y="64.40000000000003" smashed="no" />
            <instance part="C58" gate="G$1" x="190.5" y="64.40000000000003" smashed="no" />
            <instance part="C59" gate="G$1" x="266.70000000000005" y="64.40000000000003" smashed="no" />
          </instances>
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="U16" gate="G$1" pin="3" />
                <wire x1="27.94" y1="326.02" x2="12.7" y2="326.02" layer="91" width="0.1524" />
                <label x="12.7" y="326.02" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U16" gate="G$1" pin="5" />
                <wire x1="27.94" y1="315.85999999999996" x2="12.7" y2="315.86" layer="91" width="0.1524" />
                <label x="12.7" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP18" gate="G$1" pin="1" />
                <wire x1="342.90000000000003" y1="315.85999999999996" x2="342.9" y2="313.32" layer="91" width="0.1524" />
                <label x="342.9" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J5" gate="G$1" pin="2" />
                <wire x1="414.02000000000004" y1="318.4" x2="398.78" y2="318.4" layer="91" width="0.1524" />
                <label x="398.78" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J6" gate="G$1" pin="2" />
                <wire x1="490.2200000000001" y1="317.13" x2="474.98" y2="317.13" layer="91" width="0.1524" />
                <label x="474.98" y="317.13" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C28" gate="G$1" pin="2" />
                <wire x1="43.18" y1="267.6" x2="58.42" y2="267.6" layer="91" width="0.1524" />
                <label x="58.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C29" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="267.6" x2="93.98" y2="267.6" layer="91" width="0.1524" />
                <label x="93.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C30" gate="G$1" pin="2" />
                <wire x1="195.58" y1="267.6" x2="210.82" y2="267.6" layer="91" width="0.1524" />
                <label x="210.82" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C31" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="267.6" x2="287.02" y2="267.6" layer="91" width="0.1524" />
                <label x="287.02" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C32" gate="G$1" pin="2" />
                <wire x1="347.98" y1="267.6" x2="363.22" y2="267.6" layer="91" width="0.1524" />
                <label x="363.22" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C33" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="267.6" x2="398.78" y2="267.6" layer="91" width="0.1524" />
                <label x="398.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C34" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="267.6" x2="515.62" y2="267.6" layer="91" width="0.1524" />
                <label x="515.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C35" gate="G$1" pin="1" />
                <wire x1="33.02" y1="216.8" x2="17.78" y2="216.8" layer="91" width="0.1524" />
                <label x="17.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C36" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="216.8" x2="134.62" y2="216.8" layer="91" width="0.1524" />
                <label x="134.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C37" gate="G$1" pin="1" />
                <wire x1="185.42" y1="216.8" x2="170.18" y2="216.8" layer="91" width="0.1524" />
                <label x="170.18" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C38" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="216.8" x2="287.02" y2="216.8" layer="91" width="0.1524" />
                <label x="287.02" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C39" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="216.8" x2="322.58" y2="216.8" layer="91" width="0.1524" />
                <label x="322.58" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C40" gate="G$1" pin="2" />
                <wire x1="424.18" y1="216.8" x2="439.42" y2="216.8" layer="91" width="0.1524" />
                <label x="439.42" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C41" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="216.8" x2="474.98" y2="216.8" layer="91" width="0.1524" />
                <label x="474.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C42" gate="G$1" pin="2" />
                <wire x1="43.18" y1="166.0" x2="58.42" y2="166.0" layer="91" width="0.1524" />
                <label x="58.42" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C43" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="166.0" x2="93.98" y2="166.0" layer="91" width="0.1524" />
                <label x="93.98" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C44" gate="G$1" pin="2" />
                <wire x1="195.58" y1="166.0" x2="210.82" y2="166.0" layer="91" width="0.1524" />
                <label x="210.82" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C45" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="166.0" x2="246.38" y2="166.0" layer="91" width="0.1524" />
                <label x="246.38" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C46" gate="G$1" pin="2" />
                <wire x1="347.98" y1="166.0" x2="363.22" y2="166.0" layer="91" width="0.1524" />
                <label x="363.22" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C47" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="166.0" x2="398.78" y2="166.0" layer="91" width="0.1524" />
                <label x="398.78" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C48" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="166.0" x2="515.62" y2="166.0" layer="91" width="0.1524" />
                <label x="515.62" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C49" gate="G$1" pin="1" />
                <wire x1="33.02" y1="115.19999999999999" x2="17.78" y2="115.2" layer="91" width="0.1524" />
                <label x="17.78" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C50" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="115.19999999999999" x2="134.62" y2="115.2" layer="91" width="0.1524" />
                <label x="134.62" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C51" gate="G$1" pin="1" />
                <wire x1="185.42" y1="115.19999999999999" x2="170.18" y2="115.2" layer="91" width="0.1524" />
                <label x="170.18" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C52" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="115.19999999999999" x2="287.02" y2="115.2" layer="91" width="0.1524" />
                <label x="287.02" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C53" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="115.19999999999999" x2="322.58" y2="115.2" layer="91" width="0.1524" />
                <label x="322.58" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C54" gate="G$1" pin="2" />
                <wire x1="424.18" y1="115.19999999999999" x2="439.42" y2="115.2" layer="91" width="0.1524" />
                <label x="439.42" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C55" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="115.19999999999999" x2="474.98" y2="115.2" layer="91" width="0.1524" />
                <label x="474.98" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C56" gate="G$1" pin="2" />
                <wire x1="43.18" y1="64.40000000000003" x2="58.42" y2="64.4" layer="91" width="0.1524" />
                <label x="58.42" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C57" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="64.40000000000003" x2="93.98" y2="64.4" layer="91" width="0.1524" />
                <label x="93.98" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C58" gate="G$1" pin="2" />
                <wire x1="195.58" y1="64.40000000000003" x2="210.82" y2="64.4" layer="91" width="0.1524" />
                <label x="210.82" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C59" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="64.40000000000003" x2="246.38" y2="64.4" layer="91" width="0.1524" />
                <label x="246.38" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H1_OUT" class="0">
              <segment>
                <pinref part="R62" gate="G$1" pin="1" />
                <wire x1="33.02" y1="369.2" x2="17.78" y2="369.2" layer="91" width="0.1524" />
                <label x="17.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H3_OUT" class="0">
              <segment>
                <pinref part="R63" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="369.2" x2="93.98" y2="369.2" layer="91" width="0.1524" />
                <label x="93.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H5_OUT" class="0">
              <segment>
                <pinref part="R64" gate="G$1" pin="1" />
                <wire x1="185.42" y1="369.2" x2="170.18" y2="369.2" layer="91" width="0.1524" />
                <label x="170.18" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="H7_OUT" class="0">
              <segment>
                <pinref part="R65" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="369.2" x2="246.38" y2="369.2" layer="91" width="0.1524" />
                <label x="246.38" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="OUT" class="0">
              <segment>
                <pinref part="R69" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="318.4" x2="134.62" y2="318.4" layer="91" width="0.1524" />
                <label x="134.62" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP17" gate="G$1" pin="1" />
                <wire x1="266.70000000000005" y1="315.85999999999996" x2="266.7" y2="313.32" layer="91" width="0.1524" />
                <label x="266.7" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J6" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="319.66999999999996" x2="474.98" y2="319.67" layer="91" width="0.1524" />
                <label x="474.98" y="319.67" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RESTORE_INV" class="0">
              <segment>
                <pinref part="R67" gate="G$1" pin="2" />
                <wire x1="424.18" y1="369.2" x2="439.42" y2="369.2" layer="91" width="0.1524" />
                <label x="439.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R68" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="369.2" x2="515.62" y2="369.2" layer="91" width="0.1524" />
                <label x="515.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U16" gate="G$1" pin="6" />
                <wire x1="27.94" y1="310.78" x2="12.7" y2="310.78" layer="91" width="0.1524" />
                <label x="12.7" y="310.78" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SUM_INV" class="0">
              <segment>
                <pinref part="R62" gate="G$1" pin="2" />
                <wire x1="43.18" y1="369.2" x2="58.42" y2="369.2" layer="91" width="0.1524" />
                <label x="58.42" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R63" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="369.2" x2="134.62" y2="369.2" layer="91" width="0.1524" />
                <label x="134.62" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R64" gate="G$1" pin="2" />
                <wire x1="195.58" y1="369.2" x2="210.82" y2="369.2" layer="91" width="0.1524" />
                <label x="210.82" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R65" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="369.2" x2="287.02" y2="369.2" layer="91" width="0.1524" />
                <label x="287.02" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R66" gate="G$1" pin="2" />
                <wire x1="347.98" y1="369.2" x2="363.22" y2="369.2" layer="91" width="0.1524" />
                <label x="363.22" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U16" gate="G$1" pin="2" />
                <wire x1="27.94" y1="320.94" x2="12.7" y2="320.94" layer="91" width="0.1524" />
                <label x="12.7" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SUM_NEG" class="0">
              <segment>
                <pinref part="R66" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="369.2" x2="322.58" y2="369.2" layer="91" width="0.1524" />
                <label x="322.58" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R67" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="369.2" x2="398.78" y2="369.2" layer="91" width="0.1524" />
                <label x="398.78" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U16" gate="G$1" pin="1" />
                <wire x1="48.260000000000005" y1="323.47999999999996" x2="63.5" y2="323.48" layer="91" width="0.1524" />
                <label x="63.5" y="323.48" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SUM_RAW" class="0">
              <segment>
                <pinref part="R68" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="369.2" x2="474.98" y2="369.2" layer="91" width="0.1524" />
                <label x="474.98" y="369.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U16" gate="G$1" pin="7" />
                <wire x1="48.260000000000005" y1="313.32" x2="63.5" y2="313.32" layer="91" width="0.1524" />
                <label x="63.5" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R69" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="318.4" x2="93.98" y2="318.4" layer="91" width="0.1524" />
                <label x="93.98" y="318.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP16" gate="G$1" pin="1" />
                <wire x1="190.5" y1="315.85999999999996" x2="190.5" y2="313.32" layer="91" width="0.1524" />
                <label x="190.5" y="313.32" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VCC" class="0">
              <segment>
                <pinref part="U16" gate="G$1" pin="8" />
                <wire x1="38.1" y1="333.64" x2="38.1" y2="336.18" layer="91" width="0.1524" />
                <label x="38.1" y="336.18" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J5" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="320.94" x2="398.78" y2="320.94" layer="91" width="0.1524" />
                <label x="398.78" y="320.94" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C28" gate="G$1" pin="1" />
                <wire x1="33.02" y1="267.6" x2="17.78" y2="267.6" layer="91" width="0.1524" />
                <label x="17.78" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C30" gate="G$1" pin="1" />
                <wire x1="185.42" y1="267.6" x2="170.18" y2="267.6" layer="91" width="0.1524" />
                <label x="170.18" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C31" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="267.6" x2="246.38" y2="267.6" layer="91" width="0.1524" />
                <label x="246.38" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C32" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="267.6" x2="322.58" y2="267.6" layer="91" width="0.1524" />
                <label x="322.58" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C34" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="267.6" x2="474.98" y2="267.6" layer="91" width="0.1524" />
                <label x="474.98" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C36" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="216.8" x2="93.98" y2="216.8" layer="91" width="0.1524" />
                <label x="93.98" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C38" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="216.8" x2="246.38" y2="216.8" layer="91" width="0.1524" />
                <label x="246.38" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C40" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="216.8" x2="398.78" y2="216.8" layer="91" width="0.1524" />
                <label x="398.78" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C42" gate="G$1" pin="1" />
                <wire x1="33.02" y1="166.0" x2="17.78" y2="166.0" layer="91" width="0.1524" />
                <label x="17.78" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C44" gate="G$1" pin="1" />
                <wire x1="185.42" y1="166.0" x2="170.18" y2="166.0" layer="91" width="0.1524" />
                <label x="170.18" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C46" gate="G$1" pin="1" />
                <wire x1="337.82000000000005" y1="166.0" x2="322.58" y2="166.0" layer="91" width="0.1524" />
                <label x="322.58" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C48" gate="G$1" pin="1" />
                <wire x1="490.2200000000001" y1="166.0" x2="474.98" y2="166.0" layer="91" width="0.1524" />
                <label x="474.98" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C50" gate="G$1" pin="1" />
                <wire x1="109.22000000000001" y1="115.19999999999999" x2="93.98" y2="115.2" layer="91" width="0.1524" />
                <label x="93.98" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C52" gate="G$1" pin="1" />
                <wire x1="261.62000000000006" y1="115.19999999999999" x2="246.38" y2="115.2" layer="91" width="0.1524" />
                <label x="246.38" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C54" gate="G$1" pin="1" />
                <wire x1="414.02000000000004" y1="115.19999999999999" x2="398.78" y2="115.2" layer="91" width="0.1524" />
                <label x="398.78" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C56" gate="G$1" pin="1" />
                <wire x1="33.02" y1="64.40000000000003" x2="17.78" y2="64.4" layer="91" width="0.1524" />
                <label x="17.78" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C58" gate="G$1" pin="1" />
                <wire x1="185.42" y1="64.40000000000003" x2="170.18" y2="64.4" layer="91" width="0.1524" />
                <label x="170.18" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VEE" class="0">
              <segment>
                <pinref part="U16" gate="G$1" pin="4" />
                <wire x1="38.1" y1="303.15999999999997" x2="38.1" y2="300.62" layer="91" width="0.1524" />
                <label x="38.1" y="300.62" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J5" gate="G$1" pin="3" />
                <wire x1="414.02000000000004" y1="315.85999999999996" x2="398.78" y2="315.86" layer="91" width="0.1524" />
                <label x="398.78" y="315.86" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C29" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="267.6" x2="134.62" y2="267.6" layer="91" width="0.1524" />
                <label x="134.62" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C33" gate="G$1" pin="2" />
                <wire x1="424.18" y1="267.6" x2="439.42" y2="267.6" layer="91" width="0.1524" />
                <label x="439.42" y="267.6" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C35" gate="G$1" pin="2" />
                <wire x1="43.18" y1="216.8" x2="58.42" y2="216.8" layer="91" width="0.1524" />
                <label x="58.42" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C37" gate="G$1" pin="2" />
                <wire x1="195.58" y1="216.8" x2="210.82" y2="216.8" layer="91" width="0.1524" />
                <label x="210.82" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C39" gate="G$1" pin="2" />
                <wire x1="347.98" y1="216.8" x2="363.22" y2="216.8" layer="91" width="0.1524" />
                <label x="363.22" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C41" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="216.8" x2="515.62" y2="216.8" layer="91" width="0.1524" />
                <label x="515.62" y="216.8" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C43" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="166.0" x2="134.62" y2="166.0" layer="91" width="0.1524" />
                <label x="134.62" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C45" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="166.0" x2="287.02" y2="166.0" layer="91" width="0.1524" />
                <label x="287.02" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C47" gate="G$1" pin="2" />
                <wire x1="424.18" y1="166.0" x2="439.42" y2="166.0" layer="91" width="0.1524" />
                <label x="439.42" y="166.0" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C49" gate="G$1" pin="2" />
                <wire x1="43.18" y1="115.19999999999999" x2="58.42" y2="115.2" layer="91" width="0.1524" />
                <label x="58.42" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C51" gate="G$1" pin="2" />
                <wire x1="195.58" y1="115.19999999999999" x2="210.82" y2="115.2" layer="91" width="0.1524" />
                <label x="210.82" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C53" gate="G$1" pin="2" />
                <wire x1="347.98" y1="115.19999999999999" x2="363.22" y2="115.2" layer="91" width="0.1524" />
                <label x="363.22" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C55" gate="G$1" pin="2" />
                <wire x1="500.38000000000005" y1="115.19999999999999" x2="515.62" y2="115.2" layer="91" width="0.1524" />
                <label x="515.62" y="115.2" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C57" gate="G$1" pin="2" />
                <wire x1="119.38000000000001" y1="64.40000000000003" x2="134.62" y2="64.4" layer="91" width="0.1524" />
                <label x="134.62" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C59" gate="G$1" pin="2" />
                <wire x1="271.78000000000003" y1="64.40000000000003" x2="287.02" y2="64.4" layer="91" width="0.1524" />
                <label x="287.02" y="64.4" size="0.95" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
      </sheets>
      <errors />
    </schematic>
  </drawing>
</eagle>