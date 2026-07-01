v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 570 -140 570 -120 {
lab=GND}
N 680 -140 680 -120 {
lab=GND}
N 1720 -550 1810 -550 {
lab=v_out}
N 1400 -350 1720 -350 {
lab=v_out}
N 1400 -500 1400 -350 {
lab=v_out}
N 790 -580 790 -490 {
lab=v_in}
N 1580 -740 1580 -720 {
lab=vdd}
N 1580 -660 1580 -620 {
lab=#net1}
N 1400 -500 1470 -500 {lab=v_out}
N 1630 -540 1650 -540 {lab=v_out}
N 1650 -550 1650 -540 {lab=v_out}
N 1530 -740 1580 -740 {lab=vdd}
N 1530 -690 1530 -620 {
lab=vdd}
N 570 -240 570 -200 {lab=v_dd}
N 680 -240 680 -200 {lab=v_ss}
N 1450 -690 1530 -690 {lab=vdd}
N 1530 -740 1530 -690 {
lab=vdd}
N 1720 -550 1720 -350 {lab=v_out}
N 1650 -550 1720 -550 {
lab=v_out}
N 1550 -460 1550 -420 {lab=vss}
N 790 -430 790 -400 {lab=GND}
N 790 -580 1010 -580 {lab=v_in}
N 1310 -580 1470 -580 {lab=#net2}
N 1310 -470 1310 -440 {lab=GND}
N 1310 -580 1310 -530 {lab=#net2}
N 1210 -580 1310 -580 {lab=#net2}
N 1110 -580 1150 -580 {lab=#net3}
N 1110 -840 1110 -580 {lab=#net3}
N 1070 -580 1110 -580 {lab=#net3}
N 1110 -840 1390 -840 {lab=#net3}
N 1450 -840 1720 -840 {lab=v_out}
N 1720 -840 1720 -550 {lab=v_out}
C {devices/code_shown.sym} 0 -740 0 0 {name=NGSPICE only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.option sparse

.control
set num_threads=1
save all
noise v(v_out) Vin dec 101 1k 1MEG

let noise=onoise_total
echo $&noise > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024 Harald Pretl"}
C {devices/code_shown.sym} 0 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_CACE\{corner_res\}
.lib cornerCAP.lib cap_CACE\{corner_cap\}
"}
C {devices/vsource.sym} 570 -170 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 570 -120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 570 -220 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 680 -170 0 0 {name=Vss value=0}
C {devices/gnd.sym} 680 -120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 680 -220 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {lab_wire.sym} 1800 -550 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 790 -460 0 0 {name=Vin value="dc CACE\{vin\} ac 1"}
C {lab_wire.sym} 850 -580 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1580 -690 0 0 {name=I0 value=CACE\{ibias\}}
C {spice_probe.sym} 910 -580 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1680 -550 0 0 {name=p6 attrs=""}
C {ota-2stage.sym} 1550 -540 0 0 {name=x1}
C {iopin.sym} 570 -240 0 0 {name=p7 lab=vdd}
C {iopin.sym} 680 -240 0 0 {name=p8 lab=vss}
C {iopin.sym} 1450 -690 0 1 {name=p9 lab=vdd}
C {iopin.sym} 1550 -420 0 0 {name=p10 lab=vss}
C {devices/gnd.sym} 790 -400 0 0 {name=l4 lab=GND}
C {res.sym} 1040 -580 3 1 {name=R1
value=37.5MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 1180 -580 3 1 {name=R2
value=37.5MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 1310 -500 0 0 {name=C1
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1310 -440 0 0 {name=l6 lab=GND}
C {capa.sym} 1420 -840 3 1 {name=C2
m=1
value=0.6p
footprint=1206
device="ceramic capacitor"}
