v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -260 170 -230 {lab=VDD}
N 170 -90 170 -50 {lab=VSS}
N 90 -160 130 -160 {lab=n1}
N 400 -260 400 -230 {lab=VDD}
N 400 -90 400 -50 {lab=VSS}
N 320 -160 360 -160 {lab=n2}
N 630 -260 630 -230 {lab=VDD}
N 630 -90 630 -50 {lab=VSS}
N 550 -160 590 -160 {lab=n3}
N 780 -160 820 -160 {lab=n1}
C {/home/juan/Documents/Workshop_ihp/Modulo_Analogico/Lab2/inverter.sym} 230 -40 0 0 {name=x1}
C {lab_wire.sym} 170 -260 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 -50 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {/home/juan/Documents/Workshop_ihp/Modulo_Analogico/Lab2/inverter.sym} 460 -40 0 0 {name=x2}
C {lab_wire.sym} 400 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 400 -50 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {/home/juan/Documents/Workshop_ihp/Modulo_Analogico/Lab2/inverter.sym} 690 -40 0 0 {name=x3}
C {lab_wire.sym} 630 -260 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 630 -50 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -160 0 1 {name=p6 sig_type=std_logic lab=n1}
C {lab_wire.sym} 330 -160 0 1 {name=p8 sig_type=std_logic lab=n2}
C {lab_wire.sym} 560 -160 0 1 {name=p9 sig_type=std_logic lab=n3}
C {iopin.sym} -90 -230 0 0 {name=p10 lab=VDD}
C {iopin.sym} -90 -190 0 0 {name=p11 lab=VSS}
C {iopin.sym} -90 -150 0 0 {name=p12 lab=n1}
C {lab_wire.sym} 100 -160 0 0 {name=p13 sig_type=std_logic lab=n1}
