v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 810 -390 810 -360 {lab=#net1}
N 240 190 240 210 {
lab=GND}
N 350 190 350 210 {
lab=GND}
N 880 -290 900 -290 {lab=v_out}
N 330 -210 330 -190 {lab=GND}
N 330 -320 330 -270 {lab=v_in}
N 450 -580 640 -580 {lab=#net2}
N 450 -580 450 -320 {lab=#net2}
N 700 -580 900 -580 {lab=v_out}
N 900 -580 900 -290 {lab=v_out}
N 880 -280 880 -50 {lab=v_out}
N 240 80 240 130 {lab=vdd}
N 810 -500 810 -450 {lab=vdd}
N 760 -460 760 -360 {lab=vdd}
N 350 80 350 130 {lab=vss}
N 780 -200 780 -150 {lab=vss}
N 660 -240 700 -240 {lab=v_out}
N 660 -240 660 -50 {lab=v_out}
N 660 -50 880 -50 {lab=v_out}
N 900 -290 1010 -290 {lab=v_out}
N 330 -320 370 -320 {lab=v_in}
N 450 -320 480 -320 {lab=#net2}
N 430 -320 450 -320 {lab=#net2}
N 580 -320 580 -250 {lab=#net3}
N 540 -320 580 -320 {lab=#net3}
N 580 -320 700 -320 {lab=#net3}
N 580 -190 580 -150 {lab=#net4}
N 580 -90 580 -40 {lab=GND}
N 860 -280 880 -280 {lab=v_out}
N 880 -290 880 -280 {lab=v_out}
C {isource.sym} 810 -420 0 0 {name=I0 value=20u}
C {devices/vsource.sym} 240 160 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 240 210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 350 160 0 0 {name=Vss value=0}
C {devices/gnd.sym} 350 210 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 980 -290 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {code_shown.sym} -530 -540 0 0 {name=NGSPICE only_toplevel=true value="
.temp 27
.control
option sparse
save all

* Sweep from 100 Hz to 0.5 MHz 
ac dec 101 100 0.5MEG

* Plot the response to see your beautiful 10kHz cutoff!
plot v(v_out)
plot 20*log10(v(v_out))

* Calculate the exact -3dB cutoff frequency
meas ac dcgain MAX vmag(v_out) FROM=50k TO=0.5MEG
let f3db_target = dcgain / 2
meas ac fbw WHEN vmag(v_out)=f3db_target RISE=1

print dcgain
print fbw
.endc
"}
C {lab_pin.sym} 330 -310 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} 330 -240 0 0 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {devices/gnd.sym} 580 -40 0 0 {name=l5 lab=GND}
C {ota-2stage.sym} 780 -280 0 0 {name=x1}
C {devices/code_shown.sym} -530 120 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {iopin.sym} 240 80 0 0 {name=p4 lab=vdd}
C {iopin.sym} 810 -500 0 0 {name=p2 lab=vdd}
C {iopin.sym} 760 -460 2 0 {name=p6 lab=vdd}
C {iopin.sym} 350 80 0 0 {name=p1 lab=vss}
C {iopin.sym} 780 -150 0 0 {name=p7 lab=vss}
C {res.sym} 670 -580 1 0 {name=R1
value=20MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 580 -220 2 0 {name=R2
value=20MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 400 -320 1 0 {name=C1
m=1
value=0.8p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 510 -320 1 0 {name=C2
m=1
value=0.8p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 330 -190 0 0 {name=l2 lab=GND}
C {vsource.sym} 580 -120 0 0 {name=V1 value="dc 0.8" savecurrent=false}
C {devices/title.sym} -160 290 0 0 {name=l4 author=""}
