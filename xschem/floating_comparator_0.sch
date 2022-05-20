v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 100 230 120 {
lab=Q}
N 170 70 190 70 {
lab=vin}
N 170 150 190 150 {
lab=vin}
N 170 70 170 150 {
lab=vin}
N 230 70 250 70 {
lab=vdd1v8}
N 250 10 250 70 {
lab=vdd1v8}
N 230 150 250 150 {
lab=vss}
N 250 150 250 200 {
lab=vss}
N 230 110 320 110 {
lab=Q}
N 230 10 230 40 {
lab=vctrl_h}
N 230 180 230 210 {
lab=vctrl_l}
N 140 150 170 150 {
lab=vin}
N 140 10 230 10 {
lab=vctrl_h}
N 140 210 230 210 {
lab=vctrl_l}
C {devices/iopin.sym} 250 10 0 0 {name=p6 lab=vdd1v8}
C {devices/iopin.sym} 250 200 0 0 {name=p2 lab=vss}
C {devices/opin.sym} 320 110 0 0 {name=p5 lab=Q}
C {devices/iopin.sym} 140 10 2 0 {name=p1 lab=vctrl_h
}
C {devices/ipin.sym} 140 150 0 0 {name=p3 lab=vin
}
C {sky130_fd_pr/nfet_01v8.sym} 210 150 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 210 70 0 0 {name=M2
L=0.15
W=2
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
C {devices/iopin.sym} 140 210 2 0 {name=p4 lab=vctrl_l

}
