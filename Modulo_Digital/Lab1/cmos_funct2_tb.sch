v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N -110 60 -80 60 {lab=C}
N -110 80 -80 80 {lab=B}
N -110 100 -80 100 {lab=D}
N -110 120 -80 120 {lab=A}
N 210 60 240 60 {lab=Q}
C {devices/vsource.sym} 340 -50 0 0 {name=V1 value=1.5 savecurrent=false}
C {devices/vdd.sym} 340 -80 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 340 -20 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 450 -20 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 440 -100 0 0 {name=p10 sig_type=std_logic lab=A}
C {code_shown.sym} 320 290 0 0 {name=Ngspice only_toplevel=false value="
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
C {devices/lab_pin.sym} -110 120 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -110 80 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -110 60 0 0 {name=p3 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} -110 100 0 0 {name=p4 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 240 60 0 1 {name=p5 sig_type=std_logic lab=Q}
C {cmos_funct2.sym} 60 90 0 0 {name=x1}
C {simulator_commands_shown.sym} 310 140 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
"
      }
