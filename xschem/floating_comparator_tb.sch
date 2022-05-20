v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -160 0 -160 30 {
lab=vin}
N -80 0 -0 0 {
lab=vin}
N -160 90 -160 110 {
lab=GND}
N 170 -0 230 0 {
lab=vout_pre}
N -160 -0 -80 0 {
lab=vin}
N -20 40 -20 60 {
lab=vctrl_lo}
N -20 40 0 40 {
lab=vctrl_lo}
N -70 -40 -70 60 {
lab=vctrl_hi}
N -70 -40 -0 -40 {
lab=vctrl_hi}
N 390 0 430 0 {
lab=vout}
N -210 20 -20 20 {
lab=vctrl_lo}
N -20 20 -20 40 {
lab=vctrl_lo}
N -210 -40 -70 -40 {
lab=vctrl_hi}
N -300 -40 -300 40 {
lab=vctrl_hi}
N -300 -40 -270 -40 {
lab=vctrl_hi}
N -390 20 -270 20 {
lab=vctrl_lo}
N -390 20 -390 40 {
lab=vctrl_lo}
N -270 -40 -210 -40 {
lab=vctrl_hi}
N -270 20 -210 20 {
lab=vctrl_lo}
N 280 -10 280 10 {
lab=#net1}
N 230 -0 230 40 {
lab=vout_pre}
N 230 40 240 40 {
lab=vout_pre}
N 230 -40 230 0 {
lab=vout_pre}
N 230 -40 240 -40 {
lab=vout_pre}
N 70 70 70 110 {
lab=GND}
N 280 100 290 100 {
lab=GND}
N 280 40 300 40 {
lab=GND}
N 290 100 300 100 {
lab=GND}
N 300 40 300 100 {
lab=GND}
N 250 90 280 90 {
lab=vctrl_lo1}
N 280 70 280 90 {
lab=vctrl_lo1}
N 270 -100 280 -100 {
lab=vctrl_hi1}
N 280 -100 280 -70 {
lab=vctrl_hi1}
N 280 0 310 0 {
lab=#net1}
C {floating_comparator_0.sym} 70 0 0 0 {name=x1}
C {devices/vdd.sym} 70 -70 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -150 -150 0 0 {name=Vsp value=1.8}
C {devices/vdd.sym} -150 -180 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -150 -120 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -160 60 0 0 {name=Vin value="PULSE(1.8 0 0 10ns 10ns 1ps 20001ps 0)"
}
C {devices/gnd.sym} -160 110 0 0 {name=l5 lab=GND}
C {devices/capa.sym} -20 90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -70 90 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 70 110 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -20 120 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -70 120 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 430 0 2 0 {name=l3 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -70 -40 0 0 {name=l9 sig_type=std_logic lab=vctrl_hi
}
C {devices/lab_pin.sym} -20 40 0 0 {name=l10 sig_type=std_logic lab=vctrl_lo}
C {devices/code.sym} 100 170 0 0 {name=TT_MODELS only_toplevel=false
format="tcleval(@value )" value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::PDKPATH\\\\/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 390 110 0 0 {name=s2 only_toplevel=false value=".control

alter vhi = 1.8
alter vlo = 0.8
alter vhi1 = 1.6
alter vlo1 = 0.6
tran 1ps 23ns
plot v(vin) v(vctrl_hi) v(vctrl_lo) v(vout_pre) v(vout)

alter vhi = 1.6
alter vlo = 0.6
alter vhi1 = 1.5
alter vlo1 = 0.5
tran 1ps 23ns
plot v(vin) v(vctrl_hi) v(vctrl_lo) v(vout_pre) v(vout)

alter vhi = 1.4
alter vlo = 0.4
alter vhi1 = 1.4
alter vlo1 = 0.4
tran 1ps 23ns
plot v(vin) v(vctrl_hi) v(vctrl_lo) v(vout_pre) v(vout)

alter vhi = 1.2
alter vlo = 0.2
alter vhi1 = 1.3
alter vlo1 = 0.3
tran 1ps 23ns
plot v(vin) v(vctrl_hi) v(vctrl_lo) v(vout_pre) v(vout)

alter vhi = 1.0
alter vlo = 0.0
alter vhi1 = 1.2
alter vlo1 = 0.2
tran 1ps 23ns
plot v(vin) v(vctrl_hi) v(vctrl_lo) v(vout_pre) v(vout)

.endc
"}
C {devices/lab_pin.sym} -160 0 0 0 {name=l13 sig_type=std_logic lab=vin
}
C {devices/lab_wire.sym} 220 0 0 0 {name=l11 sig_type=std_logic lab=vout_pre}
C {devices/vsource.sym} -300 70 0 0 {name=vhi value=1.8
}
C {devices/vsource.sym} -390 70 0 0 {name=vlo value=0}
C {devices/gnd.sym} -300 100 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} -390 100 0 0 {name=l14 lab=GND}
C {sky130_stdcells/inv_1.sym} 350 0 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hvl__ }
C {devices/vsource.sym} -560 70 0 0 {name=vhi1 value=1.8
}
C {devices/gnd.sym} -560 100 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} -560 40 0 0 {name=l16 sig_type=std_logic lab=vctrl_hi1
}
C {devices/vsource.sym} -470 70 0 0 {name=vlo1 value=0}
C {devices/gnd.sym} -470 100 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -470 40 0 0 {name=l18 sig_type=std_logic lab=vctrl_lo1}
C {sky130_fd_pr/nfet_01v8.sym} 260 40 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 260 -40 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 270 -100 0 0 {name=l19 sig_type=std_logic lab=vctrl_hi1
}
C {devices/lab_pin.sym} 250 90 0 0 {name=l20 sig_type=std_logic lab=vctrl_lo1}
C {devices/gnd.sym} 280 100 0 0 {name=l21 lab=GND}
