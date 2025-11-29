v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -410 290 -380 {lab=#net1}
N 160 -490 290 -490 {lab=VDD}
N 160 -490 160 -430 {lab=VDD}
N 290 -490 290 -470 {lab=VDD}
N 290 -320 290 -300 {lab=#net2}
N 90 -400 120 -400 {lab=B}
N 230 -440 250 -440 {lab=C}
N 160 -370 160 -300 {lab=#net2}
N 160 -300 290 -300 {lab=#net2}
N 230 -350 250 -350 {lab=D}
N 180 -270 200 -270 {lab=A}
N 240 -230 240 -210 {lab=Q}
N 210 -130 210 -110 {lab=#net3}
N 450 -130 450 -110 {lab=#net3}
N 240 -150 240 -130 {lab=#net3}
N 450 -50 450 -30 {lab=VSS}
N 100 -30 210 -30 {lab=VSS}
N 180 -180 200 -180 {lab=B}
N 100 -130 100 -30 {lab=VSS}
N 100 -230 100 -190 {lab=Q}
N 100 -230 240 -230 {lab=Q}
N 150 -80 170 -80 {lab=C}
N 390 -80 410 -80 {lab=D}
N 240 -230 420 -230 {lab=Q}
N 30 -160 60 -160 {lab=A}
N 210 -130 240 -130 {lab=#net3}
N 210 -50 210 -30 {lab=VSS}
N 240 -240 240 -230 {lab=Q}
N 290 -440 340 -440 {
lab=VDD}
N 160 -400 210 -400 {
lab=VDD}
N 290 -350 340 -350 {
lab=VDD}
N 240 -270 290 -270 {
lab=VDD}
N 240 -130 450 -130 {
lab=#net3}
N 210 -30 450 -30 {
lab=VSS}
N 240 -180 290 -180 {
lab=VSS}
N 100 -160 150 -160 {
lab=VSS}
N 210 -80 260 -80 {
lab=VSS}
N 450 -80 500 -80 {
lab=GND}
C {opin.sym} 420 -230 0 0 {name=p10 lab=Q}
C {ipin.sym} 90 -400 0 0 {name=p1 lab=B}
C {ipin.sym} 230 -440 0 0 {name=p2 lab=C}
C {ipin.sym} 230 -350 0 0 {name=p3 lab=D}
C {ipin.sym} 180 -270 0 0 {name=p4 lab=A}
C {lab_wire.sym} 110 -400 0 0 {name=p5 sig_type=std_logic lab=B}
C {lab_wire.sym} 180 -180 0 0 {name=p6 sig_type=std_logic lab=B}
C {lab_wire.sym} 30 -160 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_wire.sym} 190 -270 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_wire.sym} 240 -440 0 0 {name=p12 sig_type=std_logic lab=C}
C {lab_wire.sym} 240 -350 0 0 {name=p13 sig_type=std_logic lab=D}
C {lab_wire.sym} 150 -80 0 0 {name=p7 sig_type=std_logic lab=C}
C {lab_wire.sym} 390 -80 0 0 {name=p8 sig_type=std_logic lab=D}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -440 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 140 -400 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -350 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -270 0 0 {name=M4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 340 -440 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -400 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -350 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -270 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 -180 0 0 {name=M5
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 -160 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 190 -80 0 0 {name=M7
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 430 -80 0 0 {name=M8
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 290 -180 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -160 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -80 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -80 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {ipin.sym} 160 -490 0 0 {name=p22 lab=VDD}
C {ipin.sym} 100 -30 2 1 {name=p23 lab=VSS}
