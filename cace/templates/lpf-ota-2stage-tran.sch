v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -160 580 -140 {
lab=GND}
N 690 -160 690 -140 {
lab=GND}
N 1730 -570 1820 -570 {
lab=v_out}
N 1410 -370 1730 -370 {
lab=v_out}
N 1410 -520 1410 -370 {
lab=v_out}
N 800 -600 800 -510 {
lab=v_in}
N 1590 -760 1590 -740 {
lab=vdd}
N 1590 -680 1590 -640 {
lab=#net1}
N 1410 -520 1480 -520 {lab=v_out}
N 1640 -560 1660 -560 {lab=v_out}
N 1660 -570 1660 -560 {lab=v_out}
N 1540 -760 1590 -760 {lab=vdd}
N 1540 -710 1540 -640 {
lab=vdd}
N 580 -260 580 -220 {lab=vdd}
N 690 -260 690 -220 {lab=vss}
N 1460 -710 1540 -710 {lab=vdd}
N 1540 -760 1540 -710 {
lab=vdd}
N 1730 -570 1730 -370 {lab=v_out}
N 1660 -570 1730 -570 {
lab=v_out}
N 1560 -480 1560 -440 {lab=vss}
N 800 -450 800 -420 {lab=GND}
N 800 -600 1020 -600 {lab=v_in}
N 1320 -600 1480 -600 {lab=#net2}
N 1320 -490 1320 -460 {lab=GND}
N 1320 -600 1320 -550 {lab=#net2}
N 1220 -600 1320 -600 {lab=#net2}
N 1120 -600 1160 -600 {lab=#net3}
N 1120 -860 1120 -600 {lab=#net3}
N 1080 -600 1120 -600 {lab=#net3}
N 1120 -860 1400 -860 {lab=#net3}
N 1460 -860 1730 -860 {lab=v_out}
N 1730 -860 1730 -570 {lab=v_out}
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
tran 0.1u 500u uic

let vout_limit=CACE\{vin\}*0.99
meas tran tcross WHEN v(v_out)=vout_limit
let vena_limit=0.5*CACE\{vdd\}
meas tran tstart WHEN v(v_ena)=vena_limit
let tsettle=tcross-tstart

echo $&tsettle > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/code_shown.sym} 0 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_CACE\{corner_res\}
.lib cornerCAP.lib cap_CACE\{corner_cap\}
"}
C {devices/vsource.sym} 580 -190 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 580 -140 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Copyright 2024 Harald Pretl"}
C {devices/vsource.sym} 690 -190 0 0 {name=Vss value=0}
C {devices/gnd.sym} 690 -140 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 1810 -570 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 800 -480 0 0 {name=Vin value="dc CACE\{vin\} ac 1"}
C {lab_wire.sym} 860 -600 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1590 -710 0 0 {name=I0 value=CACE\{ibias\}}
C {spice_probe.sym} 920 -600 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1690 -570 0 0 {name=p6 attrs=""}
C {ota-2stage.sym} 1560 -560 0 0 {name=x1}
C {iopin.sym} 580 -260 0 0 {name=p7 lab=vdd}
C {iopin.sym} 690 -260 0 0 {name=p8 lab=vss}
C {iopin.sym} 1460 -710 0 1 {name=p9 lab=vdd}
C {iopin.sym} 1560 -440 0 0 {name=p10 lab=vss}
C {devices/gnd.sym} 800 -420 0 0 {name=l4 lab=GND}
C {res.sym} 1050 -600 3 1 {name=R1
value=37.5MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 1190 -600 3 1 {name=R2
value=37.5MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 1320 -520 0 0 {name=C1
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1320 -460 0 0 {name=l6 lab=GND}
C {capa.sym} 1430 -860 3 1 {name=C2
m=1
value=0.6p
footprint=1206
device="ceramic capacitor"}
