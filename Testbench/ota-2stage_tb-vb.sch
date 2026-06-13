v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1280 -230 1280 -200 {lab=#net1}
N 880 -250 880 -230 {
lab=GND}
N 800 -250 800 -230 {
lab=GND}
N 1280 -340 1280 -290 {lab=vdd}
N 1330 -120 1370 -120 {lab=v_out}
N 1370 -120 1480 -120 {lab=v_out}
N 1060 -40 1060 -20 {lab=0}
N 1130 0 1370 0 {lab=v_out}
N 1480 -120 1480 -50 {lab=v_out}
N 1130 -80 1170 -80 {lab=v_out}
N 1060 -160 1170 -160 {lab=v_in}
N 1060 -160 1060 -100 {lab=v_in}
N 1130 -80 1130 0 {lab=v_out}
N 1370 -120 1370 0 {lab=v_out}
N 1230 -230 1230 -200 {lab=vdd}
N 1480 10 1480 30 {lab=GND}
N 800 -330 800 -310 {lab=vss}
N 880 -330 880 -310 {lab=vdd}
N 1250 -40 1250 -20 {lab=vss}
C {isource.sym} 1280 -260 0 0 {name=I0 value=20u}
C {devices/vsource.sym} 880 -280 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} 880 -230 0 1 {name=l3 lab=GND}
C {devices/vsource.sym} 800 -280 0 1 {name=Vss value=0}
C {devices/gnd.sym} 800 -230 0 1 {name=l1 lab=GND}
C {lab_pin.sym} 1450 -120 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {code_shown.sym} -60 -370 0 0 {name=NGSPICE only_toplevel=true value="
.temp 27
.control
option sparse
save all

* ─────────────────────────────────────────────────────────
* TEST 1: AC Simulation (Bandwidth, Gain, and Gain Error)
* ─────────────────────────────────────────────────────────
op
ac dec 101 1k 10g

plot 20*log10(v(v_out))

* Calculate exact maximum voltage magnitude
meas ac dcgain MAX vmag(v_out) FROM=1k TO=10k

* Find the exact -3dB frequency point
let f3db_target = dcgain / sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db_target FALL=1

* Compute the voltage tracking gain error
let gainerror = (dcgain - 1.0) / 1.0

print dcgain
print fbw
print gainerror

* ─────────────────────────────────────────────────────────
* TEST 2: DC Sweep (Input Range Tracking: 0.7V to 0.9V)
* ─────────────────────────────────────────────────────────
* This executes the sweep on your voltage source component
dc v_in_p 0.5 1.2 0.01

* FIXED: We use 'v-sweep', which is NGSPICE's universal name 
* for the x-axis variable during any DC sweep.
meas dc vout_at_vin_min find v(v_out) when v-sweep=0.7
meas dc vout_at_vin_max find v(v_out) when v-sweep=0.9

print vout_at_vin_min
print vout_at_vin_max

.endc
"}
C {devices/code_shown.sym} -60 450 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {lab_pin.sym} 1060 -160 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} 1060 -70 0 1 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {gnd.sym} 1060 -20 0 1 {name=l2 lab=0}
C {capa.sym} 1480 -20 0 0 {name=C_out
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 30 0 0 {name=l4 lab=GND}
C {ota-2stage.sym} 1250 -120 0 0 {name=x2}
C {iopin.sym} 800 -330 0 0 {name=p1 lab=vss
}
C {iopin.sym} 880 -330 0 0 {name=p2 lab=vdd
}
C {iopin.sym} 1250 -20 0 1 {name=p4 lab=vss
}
C {iopin.sym} 1230 -230 0 1 {name=p6 lab=vdd
}
C {iopin.sym} 1280 -340 0 1 {name=p7 lab=vdd
}
