v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -20 110 10 {lab=#net1}
N -20 -100 110 -100 {lab=VDD}
N -20 -100 -20 -40 {lab=VDD}
N 110 -100 110 -80 {lab=VDD}
N 110 70 110 90 {lab=#net2}
N -90 -10 -60 -10 {lab=B}
N 50 -50 70 -50 {lab=C}
N -20 20 -20 90 {lab=#net2}
N -20 90 110 90 {lab=#net2}
N 50 40 70 40 {lab=D}
N 0 120 20 120 {lab=A}
N 60 160 60 180 {lab=Q}
N 30 260 30 280 {lab=#net3}
N 240 260 240 280 {lab=#net3}
N 60 240 60 260 {lab=#net3}
N 30 360 30 370 {lab=GND}
N 240 340 240 360 {lab=GND}
N -80 360 30 360 {lab=GND}
N -0 210 20 210 {lab=B}
N -80 260 -80 360 {lab=GND}
N -80 160 -80 200 {lab=Q}
N -80 160 60 160 {lab=Q}
N -140 230 -120 230 {lab=A}
N -30 310 -10 310 {lab=C}
N 180 310 200 310 {lab=D}
N 60 160 240 160 {lab=Q}
N 440 -100 450 -100 {
lab=A}
N 450 -100 450 -80 {
lab=A}
N 540 -100 550 -100 {
lab=B}
N 550 -100 550 -80 {
lab=B}
N 640 -100 650 -100 {
lab=C}
N 650 -100 650 -80 {
lab=C}
N 750 -100 760 -100 {
lab=D}
N 760 -100 760 -80 {
lab=D}
N 30 260 60 260 {lab=#net3}
N 30 340 30 360 {lab=GND}
N 60 150 60 160 {lab=Q}
N 110 -50 160 -50 {
lab=VDD}
N 110 40 160 40 {
lab=VDD}
N 60 120 110 120 {
lab=VDD}
N -20 -10 30 -10 {
lab=VDD}
N -80 230 -30 230 {
lab=GND}
N 60 210 110 210 {
lab=GND}
N 60 260 240 260 {
lab=#net3}
N 30 360 240 360 {
lab=GND}
N 30 310 80 310 {
lab=GND}
N 240 310 290 310 {
lab=GND}
C {gnd.sym} 30 370 0 0 {name=l1 lab=GND}
C {vdd.sym} 40 -100 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} -90 -10 0 0 {name=p1 sig_type=std_logic lab=B}
C {lab_pin.sym} 50 -50 0 0 {name=p2 sig_type=std_logic lab=C}
C {lab_pin.sym} 50 40 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_pin.sym} 0 120 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_pin.sym} -140 230 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} 0 210 0 0 {name=p6 sig_type=std_logic lab=B}
C {lab_pin.sym} -30 310 0 0 {name=p7 sig_type=std_logic lab=C}
C {lab_pin.sym} 180 310 0 0 {name=p8 sig_type=std_logic lab=D}
C {lab_pin.sym} 240 160 0 1 {name=p9 sig_type=std_logic lab=Q}
C {devices/vsource.sym} 340 -50 0 0 {name=V1 value=1.5 savecurrent=false}
C {devices/vdd.sym} 340 -80 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 340 -20 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 450 -20 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 440 -100 0 0 {name=p10 sig_type=std_logic lab=A}
C {code_shown.sym} 370 150 0 0 {name=Ngspice only_toplevel=false value="
.control
tran 0.01n 80n
plot A B+2 C+4 D+6 Q+8
.endc"
}
C {sqwsource.sym} 450 -50 0 0 {name=V3 vhi=1.5 freq=100e6}
C {devices/gnd.sym} 550 -20 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 540 -100 0 0 {name=p11 sig_type=std_logic lab=B}
C {sqwsource.sym} 550 -50 0 0 {name=V2 vhi=1.5 freq=50e6}
C {devices/gnd.sym} 650 -20 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 640 -100 0 0 {name=p12 sig_type=std_logic lab=C}
C {sqwsource.sym} 650 -50 0 0 {name=V4 vhi=1.5 freq=25e6}
C {devices/gnd.sym} 760 -20 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 750 -100 0 0 {name=p13 sig_type=std_logic lab=D}
C {sqwsource.sym} 760 -50 0 0 {name=V5 vhi=1.5 freq=12.5e6}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 40 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 120 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -40 -10 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 -50 0 0 {name=M4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 160 -50 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 40 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 110 120 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 30 -10 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -100 230 0 0 {name=M5
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 210 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 10 310 0 0 {name=M7
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 310 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} -30 230 0 1 {name=p18 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 110 210 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 80 310 0 1 {name=p20 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 290 310 0 1 {name=p21 sig_type=std_logic lab=GND}
C {simulator_commands_shown.sym} 370 60 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
"
      }
