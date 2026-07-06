v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -290 380 -290 400 {
lab=GND}
N -210 380 -210 400 {
lab=GND}
N -210 300 -210 320 {
lab=v_ss}
N 490 150 490 300 {
lab=v_ss}
N 490 50 490 90 {
lab=v_out}
N 410 50 490 50 {
lab=v_out}
N 410 50 410 170 {
lab=v_out}
N 340 50 410 50 {
lab=v_out}
N 90 170 410 170 {
lab=v_out}
N 90 100 90 170 {
lab=v_out}
N -110 170 -110 300 {
lab=v_ss}
N -210 300 -110 300 {
lab=v_ss}
N -110 20 -110 110 {
lab=v_in}
N -110 20 160 20 {
lab=v_in}
N 270 -140 270 -120 {
lab=v_dd}
N 270 -60 270 -20 {
lab=#net1}
N -290 -80 -290 320 {
lab=v_dd}
N 240 300 490 300 {
lab=v_ss}
N 90 100 160 100 {lab=v_out}
N 320 60 340 60 {lab=v_out}
N 340 50 340 60 {lab=v_out}
N 220 -140 270 -140 {lab=v_dd}
N 220 -80 220 -20 {lab=v_dd}
N -290 -80 220 -80 {
lab=v_dd}
N 220 -140 220 -80 {lab=v_dd}
N 240 140 240 300 {lab=v_ss}
N -110 300 240 300 {
lab=v_ss}
C {devices/vsource.sym} -290 350 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -290 400 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -290 300 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -210 350 0 0 {name=Vss value=0}
C {devices/gnd.sym} -210 400 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -210 300 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 490 120 0 0 {name=C1
value=1p}
C {devices/lab_wire.sym} 490 50 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -110 140 0 0 {name=Vin value="dc 0 pwl(0 0 1u 0 1.1u 0.7)"}
C {devices/lab_wire.sym} -50 20 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 270 -90 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u 20u)"}
C {devices/spice_probe.sym} 10 20 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 370 50 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} -1230 450 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_ss
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {ota-2stage.sym} 240 60 0 0 {name=x1}
C {devices/code_shown.sym} -1230 -190 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27

.ic v(v_out)=0
.option method=gear

.control

* Overwrite Vin from the schematic with the active pulse parameter limits
* alter Vin PULSE(1.05 1.25 1u 1n 1n 20u 40u)

* Simulates up to 15us
tran 0.005u 15u


plot v_in v_out

let vout_limit=0.7*0.99
meas tran tcross WHEN v(v_out)=vout_limit
let vin_limit=0.8*0.7
meas tran tstart WHEN v(v_in)=vin_limit
let tsettle=tcross-tstart

print tstart
print tcross
print tsettle

* Convert from seconds to microseconds so CACE can log it under your 'us' unit spec!
let tsettle_us = tsettle * 1e6
*echo $&tsettle_us > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
