v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 950 -230 950 -200 {lab=#net1}
N 380 350 380 370 {
lab=GND}
N 490 350 490 370 {
lab=GND}
N 1020 -130 1040 -130 {lab=v_out}
N 1040 -130 1150 -130 {lab=v_out}
N 470 -50 470 -30 {lab=0}
N 470 -160 470 -110 {lab=v_in}
N 450 -160 470 -160 {lab=v_in}
N 470 -160 510 -160 {lab=v_in}
N 590 -160 620 -160 {lab=#net2}
N 720 -160 720 -70 {lab=#net3}
N 720 -160 840 -160 {lab=#net3}
N 720 -10 720 40 {lab=GND}
N 590 -420 780 -420 {lab=#net2}
N 590 -420 590 -160 {lab=#net2}
N 570 -160 590 -160 {lab=#net2}
N 840 -420 1040 -420 {lab=v_out}
N 1040 -420 1040 -130 {lab=v_out}
N 800 110 1020 110 {lab=v_out}
N 1020 -130 1020 110 {lab=v_out}
N 1000 -130 1020 -130 {lab=v_out}
N 680 -160 720 -160 {lab=#net3}
N 800 -80 840 -80 {lab=v_out}
N 800 -80 800 110 {lab=v_out}
N 380 240 380 290 {lab=vdd}
N 950 -340 950 -290 {lab=vdd}
N 900 -300 900 -200 {lab=vdd}
N 490 240 490 290 {lab=vss}
N 920 -40 920 10 {lab=vss}
C {isource.sym} 950 -260 0 0 {name=I0 value=20u}
C {devices/vsource.sym} 380 320 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 380 370 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 490 320 0 0 {name=Vss value=0}
C {devices/gnd.sym} 490 370 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1120 -130 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {code_shown.sym} -390 -380 0 0 {name=NGSPICE only_toplevel=true value="
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
C {lab_pin.sym} 460 -160 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} 470 -80 0 0 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {gnd.sym} 470 -30 0 0 {name=l2 lab=0}
C {res.sym} 540 -160 3 0 {name=R1
value=8.8k
footprint=1206
device=resistor
m=1}
C {res.sym} 650 -160 3 0 {name=R2
value=8.8k
footprint=1206
device=resistor
m=1}
C {capa.sym} 720 -40 0 0 {name=C2
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 720 40 0 0 {name=l5 lab=GND}
C {capa.sym} 810 -420 3 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {ota-2stage.sym} 920 -120 0 0 {name=x1}
C {devices/code_shown.sym} -410 370 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {iopin.sym} 380 240 0 0 {name=p4 lab=vdd}
C {iopin.sym} 950 -340 0 0 {name=p2 lab=vdd}
C {iopin.sym} 900 -300 2 0 {name=p6 lab=vdd}
C {iopin.sym} 490 240 0 0 {name=p1 lab=vss}
C {iopin.sym} 920 10 0 0 {name=p7 lab=vss}
