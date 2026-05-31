v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1270 -230 1270 -200 {lab=#net1}
N 710 360 710 380 {
lab=GND}
N 790 360 790 380 {
lab=GND}
N 790 280 790 300 {
lab=v_ss}
N 710 -340 710 300 {lab=v_dd}
N 710 -340 1230 -340 {lab=v_dd}
N 1230 -340 1230 -200 {lab=v_dd}
N 1270 -40 1270 -20 {lab=#net2}
N 1230 -340 1270 -340 {lab=v_dd}
N 1270 -340 1270 -290 {lab=v_dd}
N 1230 280 1270 280 {lab=v_ss}
N 1270 40 1270 280 {lab=v_ss}
N 1230 -40 1230 280 {lab=v_ss}
N 790 280 1230 280 {lab=v_ss}
N 1050 -90 1150 -90 {lab=v_out}
N 1050 -90 1050 120 {lab=v_out}
N 1350 -120 1370 -120 {lab=v_out}
N 1370 -120 1480 -120 {lab=v_out}
N 800 -40 800 -20 {lab=0}
N 800 -150 800 -100 {lab=v_in}
N 780 -150 800 -150 {lab=v_in}
N 800 -150 840 -150 {lab=v_in}
N 920 -150 950 -150 {lab=#net3}
N 1100 -150 1150 -150 {lab=#net4}
N 1100 -150 1100 -60 {lab=#net4}
N 1010 -150 1100 -150 {lab=#net4}
N 1100 0 1100 50 {lab=GND}
N 920 -410 1110 -410 {lab=#net3}
N 920 -410 920 -150 {lab=#net3}
N 900 -150 920 -150 {lab=#net3}
N 1170 -410 1370 -410 {lab=v_out}
N 1370 -410 1370 -120 {lab=v_out}
N 1050 120 1350 120 {lab=v_out}
N 1350 -120 1350 120 {lab=v_out}
N 1330 -120 1350 -120 {lab=v_out}
C {isource.sym} 1270 -260 0 0 {name=I0 value=20u}
C {devices/vsource.sym} 710 330 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 710 380 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 710 280 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 790 330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 790 380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 790 280 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 1270 10 0 0 {name=Venable value=1.5 savecurrent=false}
C {lab_pin.sym} 1450 -120 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {code_shown.sym} -60 -370 0 0 {name=NGSPICE only_toplevel=true value="
.temp 27
.control
option sparse
save all

* Sweep from 100 Hz to 1 MHz 
ac dec 101 100 30M

* Plot the response to see your beautiful 20kHz cutoff!
plot v(v_out)
plot 20*log10(v(v_out))

* Calculate the exact -3dB cutoff frequency
meas ac dcgain MAX vmag(v_out) FROM=100 TO=1k
let f3db_target = dcgain / sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db_target FALL=1

print dcgain
print fbw
.endc
"}
C {devices/code_shown.sym} -60 420 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_pin.sym} 790 -150 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} 800 -70 0 0 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {gnd.sym} 800 -20 0 0 {name=l2 lab=0}
C {ota-5t-custom.sym} 1230 -120 0 0 {name=x1}
C {res.sym} 870 -150 3 0 {name=R1
value=8.8k
footprint=1206
device=resistor
m=1}
C {res.sym} 980 -150 3 0 {name=R2
value=8.8k
footprint=1206
device=resistor
m=1}
C {capa.sym} 1100 -30 0 0 {name=C2
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1100 50 0 0 {name=l5 lab=GND}
C {capa.sym} 1140 -410 3 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
