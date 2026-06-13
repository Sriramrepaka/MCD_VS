v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -80 -90 -10 {lab=#net1}
N 230 -100 230 -10 {lab=#net2}
N 40 -190 190 -190 {lab=#net1}
N -90 -80 40 -80 {lab=#net1}
N -90 -160 -90 -80 {lab=#net1}
N 40 -190 40 -80 {lab=#net1}
N -50 -190 40 -190 {lab=#net1}
N -90 50 -90 100 {lab=#net3}
N 140 100 230 100 {lab=#net3}
N 230 50 230 100 {lab=#net3}
N 390 -100 460 -100 {lab=#net2}
N 230 -160 230 -100 {lab=#net2}
N -310 240 -310 290 {lab=ibias}
N -20 240 400 240 {lab=ibias}
N 400 240 400 320 {lab=ibias}
N 400 320 460 320 {lab=ibias}
N 80 100 80 290 {lab=#net3}
N -270 320 -220 320 {lab=ibias}
N -220 240 -220 320 {lab=ibias}
N -310 240 -220 240 {lab=ibias}
N -20 320 40 320 {lab=ibias}
N -20 240 -20 320 {lab=ibias}
N -220 240 -20 240 {lab=ibias}
N 310 -280 500 -280 {lab=vdd}
N -90 -280 -90 -220 {lab=vdd}
N 230 -280 230 -220 {lab=vdd}
N -90 -280 230 -280 {lab=vdd}
N 500 -280 500 -130 {lab=vdd}
N 390 -100 390 -80 {lab=#net2}
N 230 -100 390 -100 {lab=#net2}
N 390 -20 390 -0 {lab=vout}
N 500 90 680 90 {lab=vout}
N -170 -280 -90 -280 {lab=vdd}
N -310 -160 -310 240 {lab=ibias}
N -310 350 -310 460 {lab=vss}
N 80 350 80 460 {lab=vss}
N 500 350 500 460 {lab=vss}
N -310 460 80 460 {lab=vss}
N -460 -160 -310 -160 {lab=ibias}
N 500 90 500 290 {lab=vout}
N -460 20 -130 20 {lab=vinn}
N 270 20 340 20 {lab=vinp}
N 340 20 340 160 {lab=vinp}
N -460 160 340 160 {lab=vinp}
N -170 -190 -90 -190 {lab=vdd}
N -170 -280 -170 -190 {lab=vdd}
N -460 -280 -170 -280 {lab=vdd}
N 230 -190 310 -190 {lab=vdd}
N 310 -280 310 -190 {lab=vdd}
N 230 -280 310 -280 {lab=vdd}
N 500 -280 580 -280 {lab=vdd}
N 500 -100 580 -100 {lab=vdd}
N 580 -280 580 -100 {lab=vdd}
N -400 320 -310 320 {lab=vss}
N -400 320 -400 460 {lab=vss}
N -460 460 -400 460 {lab=vss}
N 500 460 600 460 {lab=vss}
N 500 320 600 320 {lab=vss}
N 600 320 600 460 {lab=vss}
N 80 320 180 320 {lab=vss}
N 180 320 180 460 {lab=vss}
N 80 460 180 460 {lab=vss}
N 140 20 230 20 {lab=#net3}
N 180 460 500 460 {lab=vss}
N -400 460 -310 460 {lab=vss}
N 140 20 140 100 {lab=#net3}
N 80 100 140 100 {lab=#net3}
N 500 -0 500 90 {lab=vout}
N 390 -0 500 -0 {lab=vout}
N 500 -70 500 -0 {lab=vout}
N 0 100 80 100 {lab=#net3}
N -90 20 -0 20 {lab=#net3}
N 0 20 0 100 {lab=#net3}
N -90 100 0 100 {lab=#net3}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 20 0 0 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 20 0 1 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -190 0 0 {name=M4
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -70 -190 0 1 {name=M3
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 -100 0 0 {name=M5
l=10u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -290 320 0 1 {name=M6
l=5u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 320 0 0 {name=M7
l=5u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 320 0 0 {name=M8
l=5u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 390 -50 0 0 {name=CM
model=cap_cmim
w=29e-6
l=29e-6
m=1
spiceprefix=X}
C {iopin.sym} -460 -280 0 1 {name=p1 lab=vdd}
C {iopin.sym} -460 460 0 1 {name=p2 lab=vss}
C {ipin.sym} -460 -160 0 0 {name=p3 lab=ibias}
C {iopin.sym} 680 90 0 0 {name=p4 lab=vout}
C {ipin.sym} -460 20 0 0 {name=p5 lab=vinn}
C {ipin.sym} -460 160 0 0 {name=p6 lab=vinp}
