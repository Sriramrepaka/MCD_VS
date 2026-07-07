v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -350 140 -320 {lab=#net1}
N 110 -160 110 -140 {lab=#net2}
N 90 -460 140 -460 {lab=vdd}
N 140 -460 140 -410 {lab=vdd}
N 210 -240 230 -240 {lab=v_out}
N 230 -240 340 -240 {lab=v_out}
N -360 -280 -340 -280 {lab=v_in}
N -340 -280 -300 -280 {lab=v_in}
N -30 -280 -30 -190 {lab=#net3}
N -120 -280 -30 -280 {lab=#net3}
N -30 -130 -30 -80 {lab=GND}
N -220 -530 -30 -530 {lab=#net4}
N 30 -530 230 -530 {lab=v_out}
N 230 -530 230 -240 {lab=v_out}
N 210 -240 210 0 {lab=v_out}
N 190 -240 210 -240 {lab=v_out}
N -100 -200 -100 0 {lab=v_out}
N -30 -280 30 -280 {lab=#net3}
N -220 -530 -220 -280 {lab=#net4}
N -220 -280 -180 -280 {lab=#net4}
N -240 -280 -220 -280 {lab=#net4}
N -340 -280 -340 -230 {lab=v_in}
N -340 -170 -340 -140 {lab=0}
N -100 -200 30 -200 {lab=v_out}
N -100 0 210 0 {lab=v_out}
N 90 -400 90 -320 {lab=vdd}
N 60 -400 90 -400 {lab=vdd}
N -440 -450 -440 -430 {
lab=GND}
N -520 -450 -520 -430 {
lab=GND}
N -520 -530 -520 -510 {lab=vss}
N -440 -530 -440 -510 {lab=vdd}
N 110 -80 110 -50 {lab=vss}
C {isource.sym} 140 -380 0 0 {name=I0 value=20u}
C {devices/vsource.sym} 110 -110 0 0 {name=Venable value=1.5 savecurrent=false}
C {lab_pin.sym} 310 -240 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {code_shown.sym} -1200 -490 0 0 {name=NGSPICE only_toplevel=true value="
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

op
show x2.xm1

print dcgain
print fbw
.endc
"}
C {devices/code_shown.sym} -1190 130 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {lab_pin.sym} -360 -280 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} -340 -200 0 0 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {gnd.sym} -340 -140 0 0 {name=l2 lab=0}
C {res.sym} -270 -280 3 0 {name=R1
value=8.8k
footprint=1206
device=resistor
m=1}
C {res.sym} -150 -280 3 0 {name=R2
value=8.8k
footprint=1206
device=resistor
m=1}
C {capa.sym} -30 -160 0 0 {name=C2
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -30 -80 0 0 {name=l5 lab=GND}
C {capa.sym} 0 -530 3 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {ota-2stage.sym} 110 -240 0 0 {name=x2}
C {iopin.sym} 90 -460 0 1 {name=p7 lab=vdd
}
C {iopin.sym} 60 -400 0 1 {name=p4 lab=vdd
}
C {devices/vsource.sym} -440 -480 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} -440 -430 0 1 {name=l3 lab=GND}
C {devices/vsource.sym} -520 -480 0 1 {name=Vss1 value=0}
C {devices/gnd.sym} -520 -430 0 1 {name=l4 lab=GND}
C {iopin.sym} -520 -530 0 0 {name=p2 lab=vss
}
C {iopin.sym} -440 -530 0 0 {name=p6 lab=vdd
}
C {iopin.sym} 110 -50 0 1 {name=p8 lab=vss
}
