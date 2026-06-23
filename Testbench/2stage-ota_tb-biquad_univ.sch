v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -70 180 -70 {lab=#net1}
N -70 20 0 20 {lab=#net1}
N 0 -70 0 20 {lab=#net1}
N -70 -70 0 -70 {lab=#net1}
N -220 -530 -190 -530 {lab=BPF}
N -190 -70 -130 -70 {lab=BPF}
N 250 -530 320 -530 {lab=#net2}
N -190 -530 90 -530 {lab=BPF}
N 250 -650 370 -650 {lab=#net2}
N 250 -650 250 -530 {lab=#net2}
N 150 -530 250 -530 {lab=#net2}
N -310 -660 -220 -660 {lab=BPF}
N -220 -660 -220 -530 {lab=BPF}
N -490 -660 -370 -660 {lab=#net3}
N -490 -660 -490 -560 {lab=#net3}
N -600 -560 -490 -560 {lab=#net3}
N 100 -190 260 -190 {lab=#net1}
N 100 -190 100 -70 {lab=#net1}
N 0 -70 100 -70 {lab=#net1}
N 710 -190 750 -190 {lab=#net4}
N 810 -500 880 -500 {lab=#net4}
N 700 -500 750 -500 {lab=#net4}
N 540 -650 540 -500 {lab=LPF}
N 810 -610 930 -610 {lab=#net4}
N 810 -610 810 -500 {lab=#net4}
N 750 -500 810 -500 {lab=#net4}
N 1090 -610 1090 -470 {lab=HPF}
N -720 -560 -660 -560 {lab=HPF}
N 410 -190 410 -40 {lab=BSF}
N 410 -190 650 -190 {lab=BSF}
N 540 -500 640 -500 {lab=LPF}
N -200 20 -200 50 {lab=#net5}
N -200 20 -130 20 {lab=#net5}
N -200 110 -200 130 {lab=GND}
N -220 -660 -170 -660 {lab=BPF}
N 990 -610 1090 -610 {lab=HPF}
N 1050 -470 1090 -470 {lab=HPF}
N -720 -880 1090 -880 {lab=HPF}
N 1090 -470 1130 -470 {lab=HPF}
N 430 -650 540 -650 {lab=LPF}
N 540 -650 580 -650 {lab=LPF}
N -190 -530 -190 -70 {lab=BPF}
N 750 -500 750 -190 {lab=#net4}
N 320 -190 410 -190 {lab=BSF}
N 410 -40 470 -40 {lab=BSF}
N 360 -40 410 -40 {lab=BSF}
N -490 -560 -430 -560 {lab=#net3}
N -460 -480 -430 -480 {lab=bias}
N -460 -480 -460 -420 {lab=bias}
N -270 -520 -220 -520 {lab=BPF}
N -220 -530 -220 -520 {lab=BPF}
N -630 160 -630 180 {
lab=GND}
N -710 160 -710 180 {
lab=GND}
N -710 80 -710 100 {lab=vss}
N -630 80 -630 100 {lab=vdd}
N -370 -440 -370 -410 {lab=vdd}
N -350 -630 -350 -600 {lab=vss}
N 290 -450 320 -450 {lab=bias}
N 290 -450 290 -370 {lab=bias}
N 380 -410 380 -380 {lab=vdd}
N 400 -600 400 -570 {lab=vss}
N 860 -420 880 -420 {lab=bias}
N 860 -420 860 -360 {lab=bias}
N 960 -570 960 -540 {lab=vss}
N 940 -380 940 -350 {lab=vdd}
N 480 -490 540 -490 {lab=LPF}
N 540 -500 540 -490 {lab=LPF}
N 1040 -460 1050 -460 {lab=HPF}
N 1050 -470 1050 -460 {lab=HPF}
N 340 -30 360 -30 {lab=BSF}
N 360 -40 360 -30 {lab=BSF}
N 140 10 140 80 {lab=bias}
N 140 10 180 10 {lab=bias}
N 240 50 240 80 {lab=vdd}
N -550 160 -550 180 {
lab=GND}
N -550 80 -550 100 {lab=bias}
N -720 -880 -720 -560 {lab=HPF}
N 1090 -880 1090 -610 {lab=HPF}
N 260 -140 260 -110 {lab=vss}
N -320 -350 -320 -330 {lab=vdd}
N 430 -320 430 -300 {lab=vdd}
N 430 -410 430 -380 {lab=#net6}
N 990 -290 990 -270 {lab=vdd}
N 990 -380 990 -350 {lab=#net7}
N 290 140 290 160 {lab=vdd}
N 290 50 290 80 {lab=#net8}
N -320 -440 -320 -410 {lab=#net9}
C {capa.sym} 400 -650 1 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -340 -660 1 1 {name=C2
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 120 -530 3 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 670 -500 3 0 {name=R2
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 960 -610 3 0 {name=R3
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} 680 -190 3 0 {name=R4
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} -630 -560 3 0 {name=R5
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} -100 -70 3 0 {name=R6
value=\{R\}
footprint=1206
device=resistor
m=1}
C {res.sym} -100 20 3 0 {name=R7
value=\{RH\}
footprint=1206
device=resistor
m=1}
C {res.sym} 290 -190 3 0 {name=R8
value=\{R\}
footprint=1206
device=resistor
m=1}
C {opin.sym} 1120 -470 0 0 {name=p1 lab=HPF sig_type=std_logic}
C {opin.sym} 470 -40 0 0 {name=p2 lab=BSF sig_type=std_logic}
C {opin.sym} 570 -650 0 0 {name=p3 lab=LPF sig_type=std_logic
}
C {opin.sym} -170 -660 0 0 {name=p4 lab=BPF sig_type=std_logic}
C {gnd.sym} -200 130 0 0 {name=l5 lab=GND sig_type=std_logic}
C {vsource.sym} -200 80 0 1 {name=V1 value= "dc 0.8 ac 1"
*"PULSE(-0.2 0.2 0 0.1u 0.1u 0.5m 1ms 10) AC 1"}
C {devices/code_shown.sym} 940 -120 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.param R=3.18MEG C=5p RQ=R*10 RH=R/1
.control
option sparse
save all
op
write biquad.raw
set appendwrite

ac dec 101 100 1MEG
*ac lin 1000 1 3k
write biquad.raw
plot db(v(LPF)) db(v(HPF)) db(v(BPF)) db(v(BSF))

.endc
"}
C {launcher.sym} 670 60 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 670 100 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {ota-2stage.sym} -350 -520 2 1 {name=x1}
C {devices/vsource.sym} -630 130 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} -630 180 0 1 {name=l6 lab=GND}
C {devices/vsource.sym} -710 130 0 1 {name=Vss value=0}
C {devices/gnd.sym} -710 180 0 1 {name=l7 lab=GND}
C {iopin.sym} -710 80 0 0 {name=p5 lab=vss
}
C {iopin.sym} -630 80 0 0 {name=p6 lab=vdd
}
C {iopin.sym} -370 -410 0 1 {name=p7 lab=vdd
}
C {iopin.sym} -350 -630 0 0 {name=p11 lab=vss
}
C {ota-2stage.sym} 400 -490 2 1 {name=x2}
C {iopin.sym} 380 -380 0 1 {name=p12 lab=vdd
}
C {iopin.sym} 400 -600 0 0 {name=p14 lab=vss
}
C {ota-2stage.sym} 960 -460 2 1 {name=x3}
C {iopin.sym} 960 -570 0 0 {name=p15 lab=vss
}
C {iopin.sym} 940 -350 0 1 {name=p16 lab=vdd
}
C {ota-2stage.sym} 260 -30 2 1 {name=x4}
C {iopin.sym} 240 80 0 1 {name=p18 lab=vdd
}
C {devices/code_shown.sym} 940 280 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} -550 130 0 1 {name=Vdd1 value="dc 0.8"}
C {devices/gnd.sym} -550 180 0 1 {name=l8 lab=GND}
C {iopin.sym} -550 80 0 0 {name=p20 lab=bias
}
C {iopin.sym} -460 -420 0 1 {name=p21 lab=bias
}
C {iopin.sym} 290 -370 0 1 {name=p22 lab=bias
}
C {iopin.sym} 860 -360 0 1 {name=p23 lab=bias
}
C {iopin.sym} 140 80 0 1 {name=p24 lab=bias
}
C {iopin.sym} 260 -140 0 0 {name=p25 lab=vss
}
C {isource.sym} -320 -380 2 0 {name=I1 value=20u}
C {iopin.sym} -320 -330 0 1 {name=p26 lab=vdd
}
C {isource.sym} 430 -350 2 0 {name=I2 value=20u}
C {iopin.sym} 430 -300 0 1 {name=p10 lab=vdd
}
C {isource.sym} 990 -320 2 0 {name=I3 value=20u}
C {iopin.sym} 990 -270 0 1 {name=p13 lab=vdd
}
C {isource.sym} 290 110 2 0 {name=I4 value=20u}
C {iopin.sym} 290 160 0 1 {name=p17 lab=vdd
}
