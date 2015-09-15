** Standard Linear Ics Macromodels, 1993. 
** CONNECTIONS :
* 1 INVERTING INPUT
* 2 NON-INVERTING INPUT
* 3 OUTPUT
* 4 POSITIVE POWER SUPPLY
* 5 NEGATIVE POWER SUPPLY











.SUBCKT TL08x 2 1 4 5 3
**********************************************************
.MODEL MDTH D IS=1E-8 KF=5.306587E-14 CJO=10F
* INPUT STAGE
CIP 2 5 1.000000E-12
CIN 1 5 1.000000E-12
EIP 10 5 2 5 1
EIN 16 5 1 5 1
RIP 10 11 1.130435E+00
RIN 15 16 1.130435E+00
RIS 11 15 2.476554E-01
DIP 11 12 MDTH 400E-12
DIN 15 14 MDTH 400E-12
VOFP 12 13 DC 0
VOFN 13 14 DC 0
IPOL 13 5 2.300000E-04
CPS 11 15 4.091333E-08
DINN 17 13 MDTH 400E-12
VIN 17 5 3.000000e+00
DINR 15 18 MDTH 400E-12
VIP 4 18 0.000000E+00
FCP 4 5 VOFP 6.096957E+00
FCN 5 4 VOFN 6.096957E+00
* AMPLIFYING STAGE
FIP 5 19 VOFP 8.217391E+02
FIN 5 19 VOFN 8.217391E+02
RG1 19 5 1.112645E+06
RG2 19 4 1.112645E+06
CC 19 29 1.300000E-08
HZTP 30 29 VOFP 7.743183E+02
HZTN  5 30 VOFN 7.743183E+02
DOPM 19 22 MDTH 400E-12
DONM 21 19 MDTH 400E-12
HOPM 22 28 VOUT 3.750000E+03
VIPM 28 4 1.500000E+02
HONM 21 27 VOUT 3.750000E+03
VINM 5 27 1.500000E+02
EOUT 26 23 19 5 1
VOUT 23 5 0
ROUT 26 3 9.384786E+01
COUT 3 5 1.000000E-12
DOP 19 25 MDTH 400E-12
VOP 4 25 3.259753E+00
DON 24 19 MDTH 400E-12
VON 24 5 3.259753E+00
.ENDS TL08x 
