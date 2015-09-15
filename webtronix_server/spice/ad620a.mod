* AD620A SPICE Macro-model
* Description: Amplifier                                      
* Generic Desc: 30/36V Bipolar, Inamp, prec  G=1-10,000
* Developed by: ARG/ADSC
* Revision History: 08/10/2012 - Updated to new header style
* 1.0 - Added V2,V3,V12,V13 and D3,D4,D15,D16 to clamp inputs to Q3,Q4 to prevent output phase reversal.
* Copyright 1990, 2012 by Analog Devices, Inc.
*
* Refer to http://www.analog.com/Analog_Root/static/techSupport/designTools/spiceModels/license/spice_general.html for License Statement. Use of this model
* indicates your acceptance with the terms and provisions in the License Statement.
*
* BEGIN Notes:
*
* Not Modeled:
*
* Parameters modeled include:
* This version of the AD620 model simulates the worst-case parameters of the 'A' grade. 
* The worst-case parameters
* used correspond to those in the data sheet.
*
* END Notes
*
* Node assignments
*                  non-inverting input
*                  |  inverting input
*                  |  |  positive supply
*                  |  |  |  negative supply
*                  |  |  |  |  output
*                  |  |  |  |  |  ref
*                  |  |  |  |  |  |  rg1
*                  |  |  |  |  |  |  |  rg2
*                  |  |  |  |  |  |  |  |
*.SUBCKT AD620A    1  2  99 50 46 20 7  8
.SUBCKT AD620A    1  7  8  2  50 20 46  99
*
* INPUT STAGE
*
I1   7    50   5.002E-6
I2   8    50   5.002E-6
IOS  3    4    0.5E-9
VIOS 21   3    125E-6
CCM  3    4    2E-12
CD1  3    0    2E-12
CD2  4    0    2E-12
Q1   5    4    7    QN1
Q2   6    21   8    QN1
D1   7    4    DX
D2   8    21   DX
R1   1    3    400
R2   2    4    400
R3   99   5    100E3
R4   99   6    100E3
R5   7    9    24.7E3
R6   8    10   24.7E3
E1   9    46   (11,5) 375E6
E2   10   46   (11,6) 375E6
V1   99   11   0.5
RV1  99   11   1E3
CC1  5    9    4E-12
CC2  6    10   4E-12
*
* DIFFERENCE AMPLIFIER AND POLE AT 1MHZ
*
I3   18   50   5E-6
R7   99   12   11.937E3
R8   99   15   11.937E3
R9   14   18   1.592E3
R10  17   18   1.592E3
R11  9    13   10E3
R12  13   46   10E3
Q3   12   13   14   QN2
Q4   15   16   17   QN2
R13  19   16   10E3
R14  16   20   10E3
C1   12   15   6.667E-12
EOOS 19   10   POLY (38,98) 1.5E-3 223.872
*EREF 98   0    POLY(2) (99,0) (50,0) 0 0.5 0.5
EREF1 98  97 poly (99,0) 0 0.5 0.5
EREF2 97  0  poly (50,0) 0 0.5 0.5
D3 13 51 DX
D4 16 52 DX
V2 99 51 0.7
V3 99 52 0.7
D15 53 13 DX
D16 54 16 DX
V12 53 50 0.7
V13 54 50 0.7
*
* GAIN STAGE AND DOMINANT POLE AT 0.667HZ
*
R16  25   98   35.810E9
C2   25   98   6.667E-12
G1   98   25   (12,15) 83.776E-6
V6   99   26   1.53
V7   27   50   1.33
D7   25   26   DX
D8   27   25   DX
*
* POLE AT 10MHZ
*
R17  40   98   1
C3   40   98   15.916E-9
G2   98   40   (25,98) 1
*
* COMMON MODE STAGE WITH ZERO AT 708HZ
*
*E3   36   98   POLY(2) (1,98) (2,98) 0 0.5 0.5
E4 36  96	poly (1,98)	0 0.5 0.5
E5 96  98 poly (2,98) 0 0.5 0.5  
R18  36   38   1E6
R19  38   98   1
C5   36   38   224.812E-12
*
* OUTPUT STAGE
*
GSY  99   50   POLY (99,50) 1.1725E-3 3.125E-6
RO1  99   45   250
RO2  45   50   250
L1   45   46   1E-6
GO1  45   99   (99,40) 4E-3
GO2  50   45   (40,50) 4E-3
GC1  43   50   (40,45) 4E-3
GC2  44   50   (45,40) 4E-3
F1   45   0    V4 1
F2   0    45   V5 1
V4   41   45   1.65
V5   45   42   1.65
D9   50   43   DY
D10  50   44   DY
D11  99   43   DX
D12  99   44   DX
D13  40   41   DX
D14  42   40   DX
*
* MODELS USED
*
.MODEL DX D(IS=1E-12)
.MODEL DY D(IS=1E-12 BV=50)
.MODEL QN1 NPN(BF=2.5E3 KF=0.7E-15 AF=1)
.MODEL QN2 NPN(BF=250 KF=0.5E-14 AF=1)
.ENDS AD620A


