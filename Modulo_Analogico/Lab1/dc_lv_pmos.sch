v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 460 -730 1260 -330 {flags=graph
y1=-5e-05
y2=1.4e-11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2
x2=0
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
T {The Vds source is inverted in 
order to plot positive value of 
the current, which corresponds 
to real value of Ic} 20 -330 0 0 0.3 0.3 {}
T {Ctrl-Click to execute launcher} 940 -310 0 0 0.3 0.3 {layer=11}
N 200 -150 200 -130 {
lab=GND}
N 200 -220 200 -210 {
lab=#net1}
N 330 -190 330 -130 {
lab=GND}
N 460 -190 460 -130 {
lab=GND}
N 330 -220 380 -220 {
lab=GND}
N 380 -220 380 -130 {
lab=GND}
N 330 -330 360 -330 {
lab=#net2}
N 420 -330 460 -330 {
lab=#net3}
N 200 -220 290 -220 {
lab=#net1}
N 330 -330 330 -250 {
lab=#net2}
N 460 -330 460 -250 {
lab=#net3}
C {devices/code_shown.sym} 110 -60 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 530 -230 0 0 {name=NGSPICE only_toplevel=true 
value="
.options savecurrents
.param temp=27
.control
save all
op
write dc_lv_pmos.raw
set appendwrite
dc Vds 0 -1.2 -0.01 Vgs -0.35 -1.1 -0.05
write dc_lv_pmos.raw
.endc
"}
C {devices/gnd.sym} 330 -130 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 200 -130 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 200 -180 0 0 {name=Vgs value=-0.75}
C {devices/vsource.sym} 460 -220 0 0 {name=Vds value=-1.5}
C {devices/gnd.sym} 460 -130 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 380 -130 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} 310 -220 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/ammeter.sym} 390 -330 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} 320 -490 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 1000 -240 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 1000 -210 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 1000 -270 0 0 {name=h3
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
