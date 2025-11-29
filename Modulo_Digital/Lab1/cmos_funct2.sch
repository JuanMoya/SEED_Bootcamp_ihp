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
N 270 260 270 280 {lab=#net3}
N 60 240 60 260 {lab=#net3}
N 30 360 30 370 {lab=GND}
N 270 340 270 360 {lab=GND}
N -80 360 30 360 {lab=GND}
N -0 210 20 210 {lab=B}
N -80 260 -80 360 {lab=GND}
N -80 160 -80 200 {lab=Q}
N -80 160 60 160 {lab=Q}
N -30 310 -10 310 {lab=C}
N 210 310 230 310 {lab=D}
N 60 160 240 160 {lab=Q}
N -150 230 -120 230 {lab=A}
N 30 260 60 260 {lab=#net3}
N 30 340 30 360 {lab=GND}
N 60 150 60 160 {lab=Q}
N 110 -50 160 -50 {
lab=VDD}
N -20 -10 30 -10 {
lab=VDD}
N 110 40 160 40 {
lab=VDD}
N 60 120 110 120 {
lab=VDD}
N 60 260 270 260 {
lab=#net3}
N 30 360 270 360 {
lab=GND}
N 60 210 110 210 {
lab=GND}
N -80 230 -30 230 {
lab=GND}
N 30 310 80 310 {
lab=GND}
N 270 310 320 310 {
lab=GND}
C {gnd.sym} 30 370 0 0 {name=l1 lab=GND}
C {vdd.sym} 40 -100 0 0 {name=l2 lab=VDD}
C {opin.sym} 240 160 0 0 {name=p10 lab=Q}
C {ipin.sym} -90 -10 0 0 {name=p1 lab=B}
C {ipin.sym} 50 -50 0 0 {name=p2 lab=C}
C {ipin.sym} 50 40 0 0 {name=p3 lab=D}
C {ipin.sym} 0 120 0 0 {name=p4 lab=A}
C {lab_wire.sym} -70 -10 0 0 {name=p5 sig_type=std_logic lab=B}
C {lab_wire.sym} 0 210 0 0 {name=p6 sig_type=std_logic lab=B}
C {lab_wire.sym} -150 230 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_wire.sym} 10 120 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_wire.sym} 60 -50 0 0 {name=p12 sig_type=std_logic lab=C}
C {lab_wire.sym} 60 40 0 0 {name=p13 sig_type=std_logic lab=D}
C {lab_wire.sym} -30 310 0 0 {name=p7 sig_type=std_logic lab=C}
C {lab_wire.sym} 210 310 0 0 {name=p8 sig_type=std_logic lab=D}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 -50 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -40 -10 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 40 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 120 0 0 {name=M4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 160 -50 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 30 -10 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 40 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 110 120 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 210 0 0 {name=M5
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -100 230 0 0 {name=M6
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
C {sg13g2_pr/sg13_lv_nmos.sym} 250 310 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 110 210 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -30 230 0 1 {name=p18 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 80 310 0 1 {name=p20 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 320 310 0 1 {name=p21 sig_type=std_logic lab=GND}
