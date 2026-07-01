v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 760 -290 760 -260 {lab=#net1}
N -180 -350 -180 -330 {
lab=GND}
N -70 -350 -70 -330 {
lab=GND}
N 110 -430 110 -410 {lab=GND}
N 110 -540 110 -490 {lab=v_in}
N 400 -480 590 -480 {lab=#net2}
N 400 -480 400 -220 {lab=#net2}
N 650 -480 850 -480 {lab=v_hpf}
N 850 -480 850 -180 {lab=v_hpf}
N 830 -180 830 50 {lab=v_hpf}
N -180 -460 -180 -410 {lab=vdd}
N 760 -400 760 -350 {lab=vdd}
N 710 -360 710 -260 {lab=vdd}
N -70 -460 -70 -410 {lab=vss}
N 730 -100 730 -50 {lab=vss}
N 610 -140 650 -140 {lab=v_hpf}
N 610 -140 610 50 {lab=v_hpf}
N 610 50 830 50 {lab=v_hpf}
N 110 -540 260 -540 {lab=v_in}
N 400 -220 430 -220 {lab=#net2}
N 380 -220 400 -220 {lab=#net2}
N 530 -220 530 -150 {lab=#net3}
N 490 -220 530 -220 {lab=#net3}
N 530 -220 650 -220 {lab=#net3}
N 530 -90 530 -50 {lab=#net4}
N 530 10 530 60 {lab=GND}
N 810 -180 830 -180 {lab=v_hpf}
N 740 -910 740 -880 {lab=#net5}
N 390 -840 420 -840 {lab=#net6}
N 520 -840 520 -750 {lab=#net7}
N 520 -690 520 -640 {lab=GND}
N 390 -1100 580 -1100 {lab=#net6}
N 390 -1100 390 -840 {lab=#net6}
N 370 -840 390 -840 {lab=#net6}
N 640 -1100 840 -1100 {lab=v_lpf}
N 590 -570 810 -570 {lab=v_lpf}
N 810 -800 810 -570 {lab=v_lpf}
N 480 -840 520 -840 {lab=#net7}
N 590 -760 630 -760 {lab=v_lpf}
N 590 -760 590 -570 {lab=v_lpf}
N 740 -1020 740 -970 {lab=vdd}
N 690 -980 690 -880 {lab=vdd}
N 710 -720 710 -670 {lab=vss}
N 790 -800 810 -800 {lab=v_lpf}
N 520 -840 630 -840 {lab=#net7}
N 810 -800 840 -800 {lab=v_lpf}
N 840 -1100 840 -800 {lab=v_lpf}
N 840 -800 930 -800 {lab=v_lpf}
N 260 -840 310 -840 {lab=v_in}
N 260 -220 320 -220 {lab=v_in}
N 260 -540 260 -220 {lab=v_in}
N 260 -840 260 -540 {lab=v_in}
N 850 -180 920 -180 {lab=v_hpf}
N 830 -180 850 -180 {lab=v_hpf}
C {isource.sym} 760 -320 0 0 {name=I0 value=20u}
C {devices/vsource.sym} -180 -380 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -180 -330 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -70 -380 0 0 {name=Vss value=0}
C {devices/gnd.sym} -70 -330 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 900 -180 1 0 {name=p5 sig_type=std_logic lab=v_hpf}
C {lab_pin.sym} 110 -530 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} 110 -460 0 0 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {devices/gnd.sym} 530 60 0 0 {name=l5 lab=GND}
C {ota-2stage.sym} 730 -180 0 0 {name=x1}
C {devices/code_shown.sym} -670 -410 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {iopin.sym} -180 -460 0 0 {name=p4 lab=vdd}
C {iopin.sym} 760 -400 0 0 {name=p2 lab=vdd}
C {iopin.sym} 710 -360 2 0 {name=p6 lab=vdd}
C {iopin.sym} -70 -460 0 0 {name=p1 lab=vss}
C {iopin.sym} 730 -50 0 0 {name=p7 lab=vss}
C {res.sym} 620 -480 1 0 {name=R1
value=20MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 530 -120 2 0 {name=R2
value=20MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 350 -220 1 0 {name=C1
m=1
value=0.8p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 460 -220 1 0 {name=C2
m=1
value=0.8p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 110 -410 0 0 {name=l2 lab=GND}
C {vsource.sym} 530 -20 0 0 {name=V1 value="dc 0.8" savecurrent=false}
C {isource.sym} 740 -940 0 0 {name=I1 value=20u}
C {lab_pin.sym} 890 -800 1 0 {name=p8 sig_type=std_logic lab=v_lpf}
C {res.sym} 340 -840 3 0 {name=R3
value=68MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 450 -840 3 0 {name=R4
value=10MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 520 -720 0 0 {name=C3
m=1
value=0.4p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 520 -640 0 0 {name=l6 lab=GND}
C {capa.sym} 610 -1100 3 0 {name=C4
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
C {ota-2stage.sym} 710 -800 0 0 {name=x2}
C {iopin.sym} 740 -1020 0 0 {name=p10 lab=vdd}
C {iopin.sym} 690 -980 2 0 {name=p11 lab=vdd}
C {iopin.sym} 710 -670 0 0 {name=p12 lab=vss}
C {code_shown.sym} -670 -1070 0 0 {name=NGSPICE only_toplevel=true value="
.temp 27
.control
option sparse
save all

* Sweep from 100 Hz to 1 MHz 
ac dec 101 100 1MEG

* Plot the response to see 10kHz cutoff
let LPF = 20*log10(v(v_lpf))
let HPF = 20*log10(v(v_hpf))
let SUM = 20*log10(mag(v(v_lpf) + v(v_hpf)))
let DIF = 20*log10(mag(v(v_lpf) - v(v_hpf)))
plot LPF HPF SUM DIF 

* Measure the exact maximum DC gain of the Low-Pass section
meas ac max_gain MAX vmag(v_lpf) FROM=100 TO=1k

* For LR4, the crossover target is exactly half the voltage amplitude (-6dB)
let fc_target = max_gain / 2

* Find the exact frequency where the LPF drops to that target (-6dB)
meas ac crossover_freq WHEN vmag(v_lpf)=fc_target FALL=1

print max_gain
print crossover_freq

.endc
"}
