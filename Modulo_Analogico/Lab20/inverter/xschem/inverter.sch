v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -130 90 -100 {lab=Vout}
N 20 -190 50 -190 {lab=Vin}
N 20 -130 20 -70 {lab=Vin}
N 20 -70 50 -70 {lab=Vin}
N 90 -0 90 20 {lab=VSS}
N 90 -250 90 -220 {lab=VDD}
N 90 -130 140 -130 {lab=Vout}
N 90 -70 160 -70 {lab=VSS}
N 160 -70 160 0 {lab=VSS}
N 90 -0 160 0 {lab=VSS}
N 90 -190 160 -190 {lab=VDD}
N 160 -250 160 -190 {lab=VDD}
N 90 -250 160 -250 {lab=VDD}
N -20 -130 20 -130 {lab=Vin}
N 90 -160 90 -130 {lab=Vout}
N 90 -40 90 -0 {lab=VSS}
N 90 -270 90 -250 {lab=VDD}
N 20 -190 20 -130 {lab=Vin}
C {ipin.sym} -170 -190 0 0 {name=p1 lab=Vin}
C {iopin.sym} -190 -150 0 0 {name=p2 lab=VDD}
C {iopin.sym} -190 -110 0 0 {name=p3 lab=VSS}
C {iopin.sym} -190 -70 0 0 {name=p4 lab=Vout}
C {lab_wire.sym} -20 -130 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 140 -130 0 1 {name=p6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 90 -270 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 90 20 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 70 -70 0 0 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 70 -190 0 0 {name=M2
l=1u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
