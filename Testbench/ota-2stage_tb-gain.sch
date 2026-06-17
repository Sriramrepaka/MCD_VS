v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -350 -160 -350 -140 {
lab=GND}
N -430 -160 -430 -140 {
lab=GND}
N -430 -240 -430 -220 {lab=vss}
N -350 -240 -350 -220 {lab=vdd}
N 40 -110 40 -80 {lab=#net1}
N 40 -220 40 -170 {lab=vdd}
N -10 -110 -10 -80 {lab=vdd}
N -320 80 -320 100 {lab=0}
N -320 -40 -320 20 {lab=v_in}
N 120 0 240 0 {lab=v_out}
N 240 0 240 70 {lab=v_out}
N 240 130 240 150 {lab=GND}
N -110 40 -70 40 {lab=#net2}
N -320 -40 -70 -40 {lab=v_in}
N 10 80 10 100 {lab=vss}
N -150 160 -40 160 {lab=#net2}
N -150 40 -150 160 {lab=#net2}
N 20 160 120 160 {lab=v_out}
N 120 0 120 160 {lab=v_out}
N 90 0 120 0 {lab=v_out}
N -110 40 -110 70 {lab=#net2}
N -150 40 -110 40 {lab=#net2}
N -110 130 -110 200 {lab=GND}
C {ota-2stage.sym} 10 0 0 0 {name=x1}
C {devices/vsource.sym} -350 -190 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} -350 -140 0 1 {name=l3 lab=GND}
C {devices/vsource.sym} -430 -190 0 1 {name=Vss value=0}
C {devices/gnd.sym} -430 -140 0 1 {name=l1 lab=GND}
C {iopin.sym} -430 -240 0 0 {name=p1 lab=vss
}
C {iopin.sym} -350 -240 0 0 {name=p2 lab=vdd
}
C {isource.sym} 40 -140 0 0 {name=I0 value=20u}
C {iopin.sym} -10 -110 0 1 {name=p6 lab=vdd
}
C {iopin.sym} 40 -220 0 1 {name=p7 lab=vdd
}
C {lab_pin.sym} -320 -40 0 0 {name=p3 sig_type=std_logic lab=v_in}
C {vsource.sym} -320 50 0 1 {name=v_in_p value="dc 0.7 ac 1" savecurrent=false}
C {gnd.sym} -320 100 0 1 {name=l2 lab=0}
C {lab_pin.sym} 210 0 0 0 {name=p5 sig_type=std_logic lab=v_out}
C {capa.sym} 240 100 0 0 {name=C_out
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 240 150 0 0 {name=l4 lab=GND}
C {ind.sym} -10 160 3 0 {name=L5
m=1
value=1T
footprint=1206
device=inductor}
C {iopin.sym} 10 100 0 1 {name=p4 lab=vss
}
C {capa.sym} -110 100 0 0 {name=C1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -110 200 0 1 {name=l6 lab=GND}
C {code_shown.sym} 370 -200 0 0 {name=s1 only_toplevel=false value="
.control

* Run the AC sweep from 1 Hz to 1 GHz
  ac dec 100 1 1G
  
  * Measure the exact Open-Loop DC gain at 1 Hz
  meas ac dc_gain_dB max vdb(v_out)
  
  * Measure the true Unity-Gain Bandwidth (where it crosses 0 dB)
  meas ac true_ugbw when vdb(v_out)=0
  
  * Plot the magnitude (Gain) and phase
  plot vdb(v_out)
  plot cph(v_out)*(180/pi)
.endc
"}
C {devices/code_shown.sym} 380 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"}
