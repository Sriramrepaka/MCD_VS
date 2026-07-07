v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -400 170 -380 {
lab=GND}
N 250 -400 250 -380 {
lab=GND}
N 250 -480 250 -460 {
lab=v_ss}
N 700 -650 700 -480 {
lab=v_ss}
N 950 -630 950 -480 {
lab=v_ss}
N 800 -730 950 -730 {
lab=v_out}
N 350 -610 350 -480 {
lab=v_ss}
N 250 -480 350 -480 {
lab=v_ss}
N 350 -760 350 -670 {
lab=v_cm}
N 480 -760 620 -760 {
lab=v_cm}
N 730 -920 730 -900 {
lab=v_dd}
N 730 -840 730 -800 {
lab=#net1}
N 170 -860 170 -460 {
lab=v_dd}
N 700 -480 950 -480 {
lab=v_ss}
N 350 -480 700 -480 {
lab=v_ss}
N 480 -760 480 -730 {lab=v_cm}
N 350 -760 480 -760 {
lab=v_cm}
N 550 -680 550 -640 {lab=#net2}
N 480 -640 550 -640 {lab=#net2}
N 480 -670 480 -640 {lab=#net2}
N 950 -730 950 -690 {lab=v_out}
N 550 -680 620 -680 {lab=#net2}
N 780 -720 800 -720 {lab=v_out}
N 800 -730 800 -720 {lab=v_out}
N 680 -860 680 -800 {lab=v_dd}
N 170 -860 680 -860 {
lab=v_dd}
N 680 -920 680 -860 {lab=v_dd}
N 680 -920 730 -920 {lab=v_dd}
C {devices/code_shown.sym} -350 -850 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
set filetype=ascii
save all

op
write ota-2stage_tb-noise.raw
set appendwrite

ac dec 101 1k 10MEG
write ota-2stage_tb-noise.raw
plot 20*log10(v_out)

noise v(v_out) Vin lin 1000 1MEG 1000MEG 1
print inoise_total
print onoise_total

setplot noise1
plot inoise_spectrum linplot
plot onoise_spectrum linplot

setplot noise2
write ota-2stage_tb-noise.raw

.endc
"}
C {devices/vsource.sym} 170 -430 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 170 -380 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 150 -260 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 390 -260 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 170 -480 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 250 -430 0 0 {name=Vss value=0}
C {devices/gnd.sym} 250 -380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 250 -480 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 950 -660 0 0 {name=C1
value=1p}
C {devices/lab_wire.sym} 950 -730 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 350 -640 0 0 {name=Vcm value="dc 0.8"}
C {devices/lab_wire.sym} 410 -760 0 0 {name=p4 sig_type=std_logic lab=v_cm}
C {devices/isource.sym} 730 -870 0 0 {name=I0 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/spice_probe.sym} 470 -760 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 830 -730 0 0 {name=p6 attrs=""}
C {devices/vsource.sym} 480 -700 0 0 {name=Vin value="dc 0 ac 1"}
C {ota-2stage.sym} 700 -720 0 0 {name=x1}
C {devices/code_shown.sym} -350 -280 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
C {devices/title.sym} -110 -140 0 0 {name=l5 author=""}
