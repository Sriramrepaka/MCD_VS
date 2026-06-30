v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 170 -10 190 {
lab=GND}
N 70 170 70 190 {
lab=GND}
N 70 90 70 110 {
lab=v_ss}
N 770 -60 770 90 {
lab=v_ss}
N 770 -160 770 -120 {
lab=v_out}
N 690 -160 770 -160 {
lab=v_out}
N 690 -160 690 -40 {
lab=v_out}
N 620 -160 690 -160 {
lab=v_out}
N 370 -40 690 -40 {
lab=v_out}
N 370 -110 370 -40 {
lab=v_out}
N 170 -40 170 90 {
lab=v_ss}
N 70 90 170 90 {
lab=v_ss}
N 170 -190 170 -100 {
lab=v_in}
N 560 -350 560 -330 {
lab=v_dd}
N 560 -270 560 -230 {
lab=#net1}
N -10 -290 -10 110 {
lab=v_dd}
N 510 -290 510 -230 {
lab=v_dd}
N 530 90 770 90 {
lab=v_ss}
N 890 -10 890 90 {lab=v_ss}
N 770 90 890 90 {lab=v_ss}
N 890 -160 890 -70 {lab=v_out}
N 770 -160 890 -160 {lab=v_out}
N 170 -190 450 -190 {
lab=v_in}
N 370 -110 450 -110 {lab=v_out}
N 530 -70 530 90 {lab=v_ss}
N 170 90 530 90 {
lab=v_ss}
N 510 -350 560 -350 {lab=v_dd}
N -10 -290 510 -290 {lab=v_dd}
N 510 -350 510 -290 {
lab=v_dd}
N 610 -150 620 -150 {lab=v_out}
N 620 -160 620 -150 {lab=v_out}
C {devices/code_shown.sym} -530 -280 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 130
.control
option sparse
save all
op
write ota-5t_tb-ac.raw
set appendwrite

ac dec 101 1k 100MEG
write ota-5t_tb-ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/vsource.sym} -10 140 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -10 190 0 0 {name=l3 lab=GND}
C {devices/title.sym} -370 440 0 0 {name=l5 author="(c) 2024-2025 Harald Pretl, Apache-2.0 license"}
C {devices/launcher.sym} 150 310 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 390 310 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} -10 90 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 70 140 0 0 {name=Vss value=0}
C {devices/gnd.sym} 70 190 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 70 90 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 770 -90 0 0 {name=C1
value=1p}
C {devices/lab_wire.sym} 770 -160 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 170 -70 0 0 {name=Vin value="dc 0.8 ac 1"}
C {devices/lab_wire.sym} 230 -190 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 560 -300 0 0 {name=I0 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/spice_probe.sym} 290 -190 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 650 -160 0 0 {name=p6 attrs=""}
C {isource.sym} 890 -40 2 0 {name=I1 value="dc 0 ac 0"}
C {ota-2stage.sym} 530 -150 0 0 {name=x1}
C {devices/code_shown.sym} -530 330 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_ss
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
