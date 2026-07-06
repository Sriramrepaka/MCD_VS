v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 700 -180 700 -160 {
lab=GND}
N 780 -180 780 -160 {
lab=GND}
N 780 -260 780 -240 {
lab=v_ss}
N 1480 -410 1480 -260 {
lab=v_ss}
N 1480 -510 1480 -470 {
lab=v_out}
N 1400 -510 1480 -510 {
lab=v_out}
N 1400 -510 1400 -390 {
lab=v_out}
N 1330 -510 1400 -510 {
lab=v_out}
N 1080 -390 1400 -390 {
lab=v_out}
N 1080 -460 1080 -390 {
lab=v_out}
N 880 -390 880 -260 {
lab=v_ss}
N 780 -260 880 -260 {
lab=v_ss}
N 880 -540 880 -450 {
lab=v_in}
N 880 -540 1150 -540 {
lab=v_in}
N 1260 -700 1260 -680 {
lab=v_dd}
N 1260 -620 1260 -580 {
lab=#net1}
N 700 -640 700 -240 {
lab=v_dd}
N 1210 -640 1210 -580 {
lab=v_dd}
N 1230 -260 1480 -260 {
lab=v_ss}
N 1080 -460 1150 -460 {lab=v_out}
N 1230 -420 1230 -260 {lab=v_ss}
N 880 -260 1230 -260 {
lab=v_ss}
N 1210 -700 1260 -700 {lab=v_dd}
N 700 -640 1210 -640 {lab=v_dd}
N 1210 -700 1210 -640 {
lab=v_dd}
N 1310 -500 1330 -500 {lab=v_out}
N 1330 -510 1330 -500 {lab=v_out}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

.ic v(v_out)=0
.option method=gear

.control
set num_threads=1
tran 0.005u 15u

let vout_limit=CACE\{vin\}*0.99
meas tran tcross WHEN v(v_out)=vout_limit
let vin_limit=0.8*CACE\{vin\}
meas tran tstart WHEN v(v_in)=vin_limit
let tsettle=tcross-tstart

echo $&tsettle > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/vsource.sym} 700 -210 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 700 -160 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024-2025 Harald Pretl"}
C {lab_pin.sym} 700 -260 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 780 -210 0 0 {name=Vss value=0}
C {devices/gnd.sym} 780 -160 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 780 -260 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1480 -440 0 0 {name=C1
value=CACE\{cload\}}
C {lab_wire.sym} 1480 -510 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 880 -420 0 0 {name=Vin value="dc 0 pwl(0 0 1u 0 1.1u CACE\{vin\})"}
C {lab_wire.sym} 940 -540 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1260 -650 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u CACE\{ibias\})"}
C {spice_probe.sym} 1000 -540 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1360 -510 0 0 {name=p6 attrs=""}
C {ota-2stage.sym} 1230 -500 0 0 {name=x1}
C {devices/code_shown.sym} 0 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_CACE\{corner_res\}
.lib cornerCAP.lib cap_CACE\{corner_cap\}
"}
