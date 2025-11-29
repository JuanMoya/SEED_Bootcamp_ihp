v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -230 380 -210 {
lab=GND}
N 540 -300 610 -300 {
lab=GND}
N 380 -470 380 -330 {
lab=v_dd}
N 380 -470 610 -470 {
lab=v_dd}
N 610 -350 610 -330 {
lab=v_gs}
N 650 -300 680 -300 {
lab=v_gs}
N 680 -350 680 -300 {
lab=v_gs}
N 610 -350 680 -350 {
lab=v_gs}
N 610 -470 610 -450 {
lab=v_dd}
N 610 -390 610 -350 {
lab=v_gs}
N 820 -300 890 -300 {
lab=GND}
N 1060 -300 1130 -300 {
lab=GND}
N 1320 -300 1390 -300 {
lab=GND}
N 1260 -300 1280 -300 {
lab=v_gs}
N 1000 -300 1020 -300 {
lab=v_gs}
N 760 -300 780 -300 {
lab=v_gs}
N 760 -350 760 -300 {
lab=v_gs}
N 380 -230 540 -230 {
lab=GND}
N 380 -270 380 -230 {
lab=GND}
N 540 -300 540 -230 {
lab=GND}
N 540 -230 610 -230 {
lab=GND}
N 610 -270 610 -230 {
lab=GND}
N 610 -230 820 -230 {
lab=GND}
N 820 -270 820 -230 {
lab=GND}
N 820 -230 890 -230 {
lab=GND}
N 890 -300 890 -230 {
lab=GND}
N 1060 -270 1060 -230 {
lab=GND}
N 940 -230 1060 -230 {
lab=GND}
N 940 -250 940 -230 {
lab=GND}
N 890 -230 940 -230 {
lab=GND}
N 1060 -230 1130 -230 {
lab=GND}
N 1130 -300 1130 -230 {
lab=GND}
N 1180 -230 1320 -230 {
lab=GND}
N 1320 -270 1320 -230 {
lab=GND}
N 1320 -230 1390 -230 {
lab=GND}
N 1390 -300 1390 -230 {
lab=GND}
N 1260 -350 1260 -300 {
lab=v_gs}
N 680 -350 760 -350 {
lab=v_gs}
N 1000 -350 1000 -300 {
lab=v_gs}
N 760 -350 1000 -350 {
lab=v_gs}
N 820 -450 940 -450 {
lab=out1}
N 940 -450 940 -310 {
lab=out1}
N 1180 -250 1180 -230 {
lab=GND}
N 1130 -230 1180 -230 {
lab=GND}
N 1180 -450 1180 -300 {
lab=out2}
N 1060 -450 1180 -450 {
lab=out2}
N 1000 -350 1260 -350 {
lab=v_gs}
N 1320 -450 1440 -450 {
lab=out3}
N 1440 -450 1440 -310 {
lab=out3}
N 1440 -250 1440 -230 {
lab=GND}
N 1390 -230 1440 -230 {
lab=GND}
N 820 -370 820 -330 {
lab=#net1}
N 820 -450 820 -430 {
lab=out1}
N 1060 -370 1060 -330 {
lab=#net2}
N 1060 -450 1060 -430 {
lab=out2}
N 1320 -370 1320 -330 {
lab=#net3}
N 1320 -450 1320 -430 {
lab=out3}
C {devices/code_shown.sym} 0 -480 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save all

op
write current_mirror_improved.raw
dc Vout1 0 1.5 10m
plot i(viout1) vs v(out1)
dc Vout2 0 1.5 10m
plot i(viout2) vs v(out2)
dc Vout3 0 1.5 10m
plot i(viout3) vs v(out3)

.endc
"}
C {devices/vsource.sym} 380 -300 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 380 -210 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 500 -90 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 740 -90 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/isource.sym} 610 -420 0 0 {name=Ibias value=20u}
C {devices/lab_pin.sym} 680 -300 0 1 {name=p1 sig_type=std_logic lab=v_gs}
C {devices/lab_pin.sym} 380 -470 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 940 -280 0 0 {name=Vout1 value=0.6
}
C {devices/vsource.sym} 1180 -280 0 0 {name=Vout2 value=0.6}
C {devices/vsource.sym} 1440 -280 0 0 {name=Vout3 value=0.6}
C {devices/spice_probe.sym} 820 -450 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 1060 -450 0 0 {name=p4 attrs=""}
C {devices/spice_probe.sym} 1320 -450 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 700 -350 0 0 {name=p6 attrs=""}
C {devices/lab_pin.sym} 940 -450 0 1 {name=p7 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 1180 -450 0 1 {name=p8 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 1440 -450 0 1 {name=p9 sig_type=std_logic lab=out3}
C {devices/ammeter.sym} 820 -400 0 0 {name=Viout1 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1060 -400 0 0 {name=Viout2 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1320 -400 0 0 {name=Viout3 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_nmos.sym} 630 -300 0 1 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -300 0 0 {name=M2
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1040 -300 0 0 {name=M3
l=1u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1300 -300 0 0 {name=M4
l=1u
w=4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} 90 -70 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
