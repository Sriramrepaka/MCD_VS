v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 780 -240 780 -220 {
lab=GND}
N 940 -240 940 -220 {
lab=GND}
N 940 -320 940 -300 {
lab=v_ss}
N 1560 -470 1560 -320 {
lab=v_ss}
N 1560 -570 1560 -530 {
lab=v_out}
N 1480 -570 1560 -570 {
lab=v_out}
N 1480 -570 1480 -450 {
lab=v_out}
N 1410 -570 1480 -570 {
lab=v_out}
N 1160 -450 1480 -450 {
lab=v_out}
N 1160 -520 1160 -450 {
lab=v_out}
N 960 -450 960 -320 {
lab=v_ss}
N 940 -320 960 -320 {
lab=v_ss}
N 960 -600 960 -510 {
lab=v_in}
N 960 -600 1230 -600 {
lab=v_in}
N 1340 -760 1340 -740 {
lab=v_dd}
N 1340 -680 1340 -640 {
lab=#net1}
N 780 -700 780 -300 {
lab=v_dd}
N 1290 -700 1290 -640 {
lab=v_dd}
N 1310 -320 1560 -320 {
lab=v_ss}
N 1310 -480 1310 -320 {lab=v_ss}
N 960 -320 1310 -320 {
lab=v_ss}
N 1160 -520 1230 -520 {lab=v_out}
N 1290 -760 1340 -760 {lab=v_dd}
N 780 -700 1290 -700 {lab=v_dd}
N 1290 -760 1290 -700 {
lab=v_dd}
N 1390 -560 1410 -560 {lab=v_out}
N 1410 -570 1410 -560 {lab=v_out}
C {devices/code_shown.sym} 0 -740 0 0 {name=NGSPICE only_toplevel=true 
value="
.include /home/sriram/MCD_VS/cace/netlist/schematic/ota-2stage.spice
.temp -40
.param mc_ok = 1
.option SEED=12345
.option sparse

.control
set num_threads=1
save all
noise v(v_out) Vin dec 101 1k 100MEG

let noise=onoise_total
echo $&noise > /home/sriram/MCD_VS/_runs/RUN_2026-06-30_16-33-54/parameters/noise_params/run_2979/ota-2stage-noise_2979.data
.endc
"}
C {devices/vsource.sym} 780 -270 0 0 {name=Vdd value=1.45}
C {devices/gnd.sym} 780 -220 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024 Harald Pretl"}
C {lab_pin.sym} 780 -320 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 940 -270 0 0 {name=Vss value=0}
C {devices/gnd.sym} 940 -220 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 940 -320 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1560 -500 0 0 {name=C1
value=1e-12}
C {lab_wire.sym} 1560 -570 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 960 -480 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 1020 -600 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1340 -710 0 0 {name=I0 value=1.9999999999999998e-05}
C {spice_probe.sym} 1080 -600 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1440 -570 0 0 {name=p6 attrs=""}
C {ota-2stage.sym} 1310 -560 0 0 {name=x1}
C {devices/code_shown.sym} 0 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ss
.lib cornerMOShv.lib mos_ss
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"}
