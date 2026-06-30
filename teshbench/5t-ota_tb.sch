v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -280 150 -250 {lab=#net1}
N -410 100 -410 120 {
lab=GND}
N -330 100 -330 120 {
lab=GND}
N -330 20 -330 40 {
lab=v_ss}
N -410 -390 -410 40 {lab=v_dd}
N -410 -390 110 -390 {lab=v_dd}
N 110 -390 110 -250 {lab=v_dd}
N 110 -90 110 20 {lab=v_ss}
N 150 -90 150 -70 {lab=#net2}
N 150 -10 150 20 {lab=v_ss}
N 110 20 150 20 {lab=v_ss}
N 110 -390 150 -390 {lab=v_dd}
N 150 -390 150 -340 {lab=v_dd}
N -90 -200 30 -200 {lab=v_inp}
N 210 -170 340 -170 {lab=v_out}
N -330 20 110 20 {lab=v_ss}
N -160 -140 30 -140 {lab=v_inn}
N -210 -250 -90 -250 {lab=v_inp}
N 340 -170 340 -130 {lab=v_out}
N 340 -70 340 -40 {lab=0}
N -210 -190 -210 -170 {lab=0}
N -160 -80 -160 -60 {lab=0}
N -90 -250 -90 -200 {lab=v_inp}
C {ota-5t.sym} 110 -170 0 0 {name=x1}
C {isource.sym} 150 -310 0 0 {name=I0 value=20u}
C {devices/vsource.sym} -410 70 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -410 120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 20 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -330 70 0 0 {name=Vss value=0}
C {devices/gnd.sym} -330 120 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -330 20 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 150 -40 0 0 {name=Venable value=1.5 savecurrent=false}
C {lab_pin.sym} -30 -200 1 0 {name=p3 sig_type=std_logic lab=v_inp}
C {lab_pin.sym} -30 -140 1 0 {name=p4 sig_type=std_logic lab=v_inn}
C {lab_pin.sym} 300 -170 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {vsource.sym} -160 -110 0 0 {name=v_in_n value=0.7 savecurrent=false}
C {vsource.sym} -210 -220 0 0 {name=v_in_p value="dc 0.7 ac 1" savecurrent=false}
C {code_shown.sym} -1180 -420 0 0 {name=NGSPICE only_toplevel=true value="
.temp 27
.control
option sparse
save all

# 1. Run DC Operating Point
op

# 2. Run AC Sweep (Extended to 10 GHz for your fast circuit)
ac dec 101 1 10g

# 3. Plot Gain in dB and Phase in Degrees
plot 20*log10(v(v_out))
plot \{ph(v(v_out)) * 180 / pi\}

# 4. Measure DC Open-Loop Gain (Linear magnitude)
meas ac dc_gain_linear MAX vmag(v_out) FROM=1k TO=10k

# 5. Measure the 3dB Bandwidth
let target_3db = dc_gain_linear / sqrt(2)
meas ac bandwidth_3db WHEN vmag(v_out)=target_3db FALL=1

# 6. Measure Unity-Gain Bandwidth (Where Gain crosses 0dB / Magnitude = 1)
meas ac unity_bandwidth WHEN vmag(v_out)=1.0 FALL=1

# 7. Print everything to your terminal screen
print dc_gain_linear
print bandwidth_3db
print unity_bandwidth

let c_test = 50e-15
let computed_rout = 1 / (2 * pi * bandwidth_3db * c_test)
let computed_gm = dc_gain_linear / computed_rout

print computed_rout
print computed_gm

.endc
"}
C {devices/code_shown.sym} -1180 370 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {gnd.sym} 340 -40 0 0 {name=l2 lab=0}
C {gnd.sym} -210 -170 0 0 {name=l4 lab=0}
C {gnd.sym} -160 -60 0 0 {name=l5 lab=0}
C {devices/capa.sym} 340 -100 0 0 {name=C2
value=50f}
