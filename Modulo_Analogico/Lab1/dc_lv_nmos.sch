v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 490 -560 1050 -260 {flags=graph
y1=-4.6e-12
y2=0.00025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
divx=5
subdivx=1
node=i(vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1}
T {Ctrl-Click to execute launcher} 630 -240 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 630 -120 0 0 0.3 0.3 {layer=11}
N 230 -70 230 -50 {
lab=GND}
N 230 -160 230 -130 {
lab=G}
N 360 -130 360 -70 {
lab=GND}
N 490 -130 490 -70 {
lab=GND}
N 360 -250 360 -190 {
lab=#net1}
N 490 -250 490 -190 {
lab=D}
N 360 -160 430 -160 {
lab=GND}
N 430 -160 430 -70 {
lab=GND}
N 360 -250 390 -250 {
lab=#net1}
N 450 -250 490 -250 {
lab=D}
N 230 -160 320 -160 {
lab=G}
C {devices/code_shown.sym} -20 -10 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 80 -520 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
op
write dc_lv_nmos.raw
set appendwrite
dc Vds 0 1.2 0.01 Vgs 0.3 1.0 0.1
write dc_lv_nmos.raw
.endc
"}
C {devices/gnd.sym} 360 -70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 230 -50 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 230 -100 0 0 {name=Vgs value=1.2}
C {devices/vsource.sym} 490 -160 0 0 {name=Vds value=1.5}
C {devices/gnd.sym} 490 -70 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 430 -70 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 420 -250 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} 220 -310 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} 230 -160 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 490 -250 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/launcher.sym} 690 -170 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {sg13g2_pr/sg13_lv_nmos.sym} 340 -160 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/launcher.sym} 690 -140 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 690 -200 0 0 {name=h3
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
