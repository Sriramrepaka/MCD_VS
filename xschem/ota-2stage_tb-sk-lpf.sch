v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 940 -230 940 -200 {lab=#net1}
N 380 350 380 370 {
lab=GND}
N 490 350 490 370 {
lab=GND}
N 470 -50 470 -30 {lab=0}
N 470 -160 470 -110 {lab=v_in}
N 450 -160 470 -160 {lab=v_in}
N 470 -160 510 -160 {lab=v_in}
N 590 -160 620 -160 {lab=#net2}
N 720 -160 720 -70 {lab=#net3}
N 720 -10 720 40 {lab=GND}
N 590 -420 780 -420 {lab=#net2}
N 590 -420 590 -160 {lab=#net2}
N 570 -160 590 -160 {lab=#net2}
N 840 -420 1040 -420 {lab=v_out}
N 790 110 1010 110 {lab=v_out}
N 1010 -120 1010 110 {lab=v_out}
N 680 -160 720 -160 {lab=#net3}
N 790 -80 830 -80 {lab=v_out}
N 790 -80 790 110 {lab=v_out}
N 380 240 380 290 {lab=vdd}
N 940 -340 940 -290 {lab=vdd}
N 890 -300 890 -200 {lab=vdd}
N 490 240 490 290 {lab=vss}
N 910 -40 910 10 {lab=vss}
N 990 -120 1010 -120 {lab=v_out}
N 720 -160 830 -160 {lab=#net3}
N 1010 -120 1040 -120 {lab=v_out}
N 1040 -420 1040 -120 {lab=v_out}
N 1040 -120 1130 -120 {lab=v_out}
C {isource.sym} 940 -260 0 0 {name=I0 value=20u}
C {devices/vsource.sym} 380 320 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 380 370 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 490 320 0 0 {name=Vss value=0}
C {devices/gnd.sym} 490 370 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1090 -120 1 0 {name=p5 sig_type=std_logic lab=v_out}
C {code_shown.sym} -390 -380 0 0 {name=NGSPICE only_toplevel=true value="
.temp 27
.control
option sparse
save all

* Sweep from 100 Hz to 0.5 MHz 
ac dec 101 100 0.5MEG

* Plot the response to see your 10kHz cutoff!
plot v(v_out)
plot 20*log10(v(v_out))

* Calculate the exact -6dB cutoff frequency
meas ac dcgain MAX vmag(v_out) FROM=100 TO=1k
let f6db_target = dcgain / 2
meas ac fc WHEN vmag(v_out)=f6db_target FALL=1

print dcgain
print fc
.endc
"}
C {lab_pin.sym} 460 -160 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} 470 -80 0 0 {name=v_in_p value="dc 0.8 ac 1" savecurrent=false}
C {gnd.sym} 470 -30 0 0 {name=l2 lab=0}
C {res.sym} 540 -160 3 0 {name=R1
value=68MEG
footprint=1206
device=resistor
m=1}
C {res.sym} 650 -160 3 0 {name=R2
value=10MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 720 -40 0 0 {name=C2
m=1
value=0.4p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 720 40 0 0 {name=l5 lab=GND}
C {capa.sym} 810 -420 3 0 {name=C1
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
C {ota-2stage.sym} 910 -120 0 0 {name=x1}
C {devices/code_shown.sym} -370 250 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {iopin.sym} 380 240 0 0 {name=p4 lab=vdd}
C {iopin.sym} 940 -340 0 0 {name=p2 lab=vdd}
C {iopin.sym} 890 -300 2 0 {name=p6 lab=vdd}
C {iopin.sym} 490 240 0 0 {name=p1 lab=vss}
C {iopin.sym} 910 10 0 0 {name=p7 lab=vss}
C {devices/title.sym} -60 440 0 0 {name=l4 author=""}
