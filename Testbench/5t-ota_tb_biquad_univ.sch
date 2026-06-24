v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 20 0 20 {lab=#net1}
N 0 -70 0 20 {lab=#net1}
N -70 -70 0 -70 {lab=#net1}
N -220 -530 -190 -530 {lab=BPF}
N -190 -70 -130 -70 {lab=BPF}
N -190 -530 90 -530 {lab=BPF}
N 250 -700 370 -700 {lab=#net2}
N 300 -530 320 -530 {lab=bias}
N -220 -710 -170 -710 {lab=BPF}
N -490 -710 -370 -710 {lab=#net3}
N -600 -560 -490 -560 {lab=#net3}
N 100 -220 260 -220 {lab=#net1}
N 710 -190 750 -190 {lab=#net4}
N 700 -500 750 -500 {lab=#net4}
N -720 -560 -660 -560 {lab=HPF}
N 410 -190 650 -190 {lab=BSF}
N 540 -500 640 -500 {lab=LPF}
N -200 20 -200 50 {lab=#net5}
N -200 20 -130 20 {lab=#net5}
N -200 110 -200 130 {lab=GND}
N 990 -700 1090 -700 {lab=HPF}
N -720 -880 1090 -880 {lab=HPF}
N 540 -700 580 -700 {lab=LPF}
N -190 -530 -190 -70 {lab=BPF}
N 750 -500 750 -190 {lab=#net4}
N 320 -220 410 -220 {lab=BSF}
N 410 -40 470 -40 {lab=BSF}
N -630 160 -630 180 {
lab=GND}
N -710 160 -710 180 {
lab=GND}
N -710 80 -710 100 {lab=vss}
N -630 80 -630 100 {lab=vdd}
N -360 -450 -360 -420 {lab=vss}
N -360 -640 -360 -610 {lab=vdd}
N -550 160 -550 180 {
lab=GND}
N -550 80 -550 100 {lab=bias}
N -720 -880 -720 -560 {lab=HPF}
N 1090 -700 1090 -470 {lab=HPF}
N -320 -350 -320 -330 {lab=vss}
N 290 140 290 160 {lab=vss}
N -260 -530 -220 -530 {lab=BPF}
N -220 -710 -220 -530 {lab=BPF}
N -310 -710 -220 -710 {lab=BPF}
N -490 -710 -490 -560 {lab=#net3}
N -320 -450 -320 -410 {lab=#net6}
N 400 -420 400 -390 {lab=vss}
N 400 -610 400 -580 {lab=vdd}
N 440 -320 440 -300 {lab=vss}
N 440 -420 440 -380 {lab=#net7}
N 930 -390 930 -360 {lab=vss}
N 930 -580 930 -550 {lab=vdd}
N 970 -290 970 -270 {lab=vss}
N 970 -390 970 -350 {lab=#net8}
N 500 -500 540 -500 {lab=LPF}
N 1030 -470 1090 -470 {lab=HPF}
N 540 -700 540 -500 {lab=LPF}
N 430 -700 540 -700 {lab=LPF}
N 250 -700 250 -530 {lab=#net2}
N 150 -530 250 -530 {lab=#net2}
N 1090 -880 1090 -700 {lab=HPF}
N 800 -700 930 -700 {lab=#net4}
N 800 -700 800 -500 {lab=#net4}
N 750 -500 800 -500 {lab=#net4}
N 250 40 250 70 {lab=vss}
N 250 -150 250 -120 {lab=vdd}
N 290 40 290 80 {lab=#net9}
N 410 -190 410 -40 {lab=BSF}
N 410 -220 410 -190 {lab=BSF}
N 350 -40 410 -40 {lab=BSF}
N 100 -220 100 -70 {lab=#net1}
N 0 -70 100 -70 {lab=#net1}
N -460 -630 -460 -560 {lab=bias}
N 300 -610 300 -530 {lab=bias}
N 1090 -470 1120 -470 {lab=HPF}
N -490 -560 -490 -500 {lab=#net3}
N -490 -500 -440 -500 {lab=#net3}
N -460 -560 -440 -560 {lab=bias}
N 250 -530 250 -470 {lab=#net2}
N 250 -470 320 -470 {lab=#net2}
N 820 -500 850 -500 {lab=bias}
N 820 -570 820 -500 {lab=bias}
N 800 -440 850 -440 {lab=#net4}
N 800 -500 800 -440 {lab=#net4}
N 100 -70 100 -10 {lab=#net1}
N 100 -10 170 -10 {lab=#net1}
N 140 -70 170 -70 {lab=bias}
N 140 -140 140 -70 {lab=bias}
N 970 -630 970 -610 {lab=vdd}
C {capa.sym} 400 -700 1 1 {name=C1
m=1
value=\{C\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -340 -710 1 1 {name=C2
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
C {res.sym} 960 -700 3 0 {name=R3
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
C {res.sym} 290 -220 3 0 {name=R8
value=\{R\}
footprint=1206
device=resistor
m=1}
C {opin.sym} 1120 -470 0 0 {name=p1 lab=HPF sig_type=std_logic}
C {opin.sym} 470 -40 0 0 {name=p2 lab=BSF sig_type=std_logic}
C {opin.sym} 580 -700 0 0 {name=p3 lab=LPF sig_type=std_logic
}
C {opin.sym} -170 -710 0 0 {name=p4 lab=BPF sig_type=std_logic}
C {gnd.sym} -200 130 0 0 {name=l5 lab=GND sig_type=std_logic}
C {vsource.sym} -200 80 0 1 {name=V1 value= "dc 0.8 ac 1"
*"PULSE(-0.2 0.2 0 0.1u 0.1u 0.5m 1ms 10) AC 1"}
C {devices/code_shown.sym} 940 -120 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.param R=3.18MEG C=4.5p RQ=R*10 RH=R/1
.control
option sparse
save all
op
write biquad.raw
set appendwrite

ac dec 101 100 100MEG
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
C {devices/vsource.sym} -630 130 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} -630 180 0 1 {name=l6 lab=GND}
C {devices/vsource.sym} -710 130 0 1 {name=Vss value=0}
C {devices/gnd.sym} -710 180 0 1 {name=l7 lab=GND}
C {iopin.sym} -710 80 0 0 {name=p5 lab=vss
}
C {iopin.sym} -630 80 0 0 {name=p6 lab=vdd
}
C {iopin.sym} -360 -640 0 1 {name=p7 lab=vdd
}
C {iopin.sym} -360 -420 2 0 {name=p11 lab=vss
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
C {iopin.sym} 140 -140 0 1 {name=p24 lab=bias
}
C {isource.sym} -320 -640 0 0 {name=I1 value=20u}
C {iopin.sym} -320 -330 0 1 {name=p26 lab=vss

}
C {ota-5t-custom.sym} -360 -530 0 0 {name=x5}
C {iopin.sym} -320 -670 0 1 {name=p8 lab=vdd
}
C {devices/vsource.sym} -320 -380 0 0 {name=Venable value=1.5 savecurrent=false}
C {iopin.sym} 400 -610 0 1 {name=p9 lab=vdd
}
C {iopin.sym} 400 -390 2 0 {name=p19 lab=vss
}
C {iopin.sym} 440 -300 0 1 {name=p21 lab=vss

}
C {ota-5t-custom.sym} 400 -500 0 0 {name=x1}
C {iopin.sym} 440 -640 0 1 {name=p27 lab=vdd
}
C {devices/vsource.sym} 440 -350 0 0 {name=Venable1 value=1.5 savecurrent=false}
C {iopin.sym} 930 -580 0 1 {name=p10 lab=vdd
}
C {iopin.sym} 930 -360 2 0 {name=p12 lab=vss
}
C {iopin.sym} 970 -270 0 1 {name=p14 lab=vss

}
C {ota-5t-custom.sym} 930 -470 0 0 {name=x2}
C {iopin.sym} 970 -630 0 1 {name=p16 lab=vdd
}
C {devices/vsource.sym} 970 -320 0 0 {name=Venable2 value=1.5 savecurrent=false}
C {isource.sym} 440 -610 0 0 {name=I2 value=20u}
C {isource.sym} 970 -580 0 0 {name=I3 value=20u}
C {iopin.sym} 250 -150 0 1 {name=p13 lab=vdd
}
C {iopin.sym} 250 70 2 0 {name=p15 lab=vss
}
C {iopin.sym} 290 160 0 1 {name=p22 lab=vss

}
C {ota-5t-custom.sym} 250 -40 0 0 {name=x3}
C {iopin.sym} 290 -180 0 1 {name=p23 lab=vdd
}
C {devices/vsource.sym} 290 110 0 0 {name=Venable3 value=1.5 savecurrent=false}
C {isource.sym} 290 -150 0 0 {name=I5 value=20u}
C {iopin.sym} -460 -630 0 1 {name=p17 lab=bias
}
C {iopin.sym} 300 -610 0 1 {name=p18 lab=bias
}
C {iopin.sym} 820 -570 0 1 {name=p25 lab=bias
}
