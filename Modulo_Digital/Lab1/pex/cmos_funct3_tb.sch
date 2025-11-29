v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 610 -520 620 -520 {
lab=A}
N 620 -520 620 -500 {
lab=A}
N 710 -520 720 -520 {
lab=B}
N 720 -520 720 -500 {
lab=B}
N 810 -520 820 -520 {
lab=C}
N 820 -520 820 -500 {
lab=C}
N 920 -520 930 -520 {
lab=D}
N 930 -520 930 -500 {
lab=D}
N 60 -360 90 -360 {lab=C}
N 60 -340 90 -340 {lab=B}
N 60 -320 90 -320 {lab=D}
N 60 -300 90 -300 {lab=A}
N 380 -360 410 -360 {lab=Q}
N 440 -530 440 -500 {
lab=VSS}
N 230 -270 230 -240 {
lab=#net1}
N 230 -420 230 -390 {
lab=#net2}
C {devices/vsource.sym} 510 -470 0 0 {name=V1 value=1.5 savecurrent=false}
C {devices/vdd.sym} 510 -500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 510 -440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 620 -440 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 610 -520 0 0 {name=p10 sig_type=std_logic lab=A}
C {code_shown.sym} 490 -100 0 0 {name=Ngspice only_toplevel=false value="
.control
tran 0.01n 80n
plot A B+2 C+4 D+6 Q+8
.endc"
}
C {sqwsource.sym} 620 -470 0 0 {name=V3 vhi=1.5 freq=100e6}
C {devices/gnd.sym} 720 -440 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 710 -520 0 0 {name=p11 sig_type=std_logic lab=B}
C {sqwsource.sym} 720 -470 0 0 {name=V2 vhi=1.5 freq=50e6}
C {devices/gnd.sym} 820 -440 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 810 -520 0 0 {name=p12 sig_type=std_logic lab=C}
C {sqwsource.sym} 820 -470 0 0 {name=V4 vhi=1.5 freq=25e6}
C {devices/gnd.sym} 930 -440 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 920 -520 0 0 {name=p13 sig_type=std_logic lab=D}
C {sqwsource.sym} 930 -470 0 0 {name=V5 vhi=1.5 freq=12.5e6}
C {devices/lab_pin.sym} 60 -300 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 60 -340 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 60 -360 0 0 {name=p3 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 60 -320 0 0 {name=p4 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 410 -360 0 1 {name=p5 sig_type=std_logic lab=Q}
C {simulator_commands_shown.sym} 750 -60 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
"
      }
C {code_shown.sym} 510 -250 0 0 {name=DUT only_toplevel=true
format="tcleval( @value )"
value="
.include "/home/juan/Documents/Digital_module/Lab1/pex/cmos_funct3.spice"
Xx1 Q B C D A VDD VSS cmos_funct3
"}
C {devices/vsource.sym} 440 -470 0 0 {name=V6 value=0 savecurrent=false}
C {devices/gnd.sym} 440 -440 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 440 -530 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {/home/juan/Documents/Digital_module/Lab1/pex/cmos_funct3.sym} 60 -250 0 0 {name=X1}
C {devices/lab_pin.sym} 230 -240 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -420 0 0 {name=p8 sig_type=std_logic lab=VDD}
