// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

https://github.com/t-o-k/POV-Ray-matrices

Copyright (c) 2023 Tor Olav Kristensen, http://subcube.com

Use of this source code is governed by the GNU Lesser General Public License version 3,
which can be found in the LICENSE file.

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

Some relevant articles:

https://en.wikipedia.org/wiki/Overdetermined_system
https://en.wikipedia.org/wiki/Least_squares
https://en.wikipedia.org/wiki/Ordinary_least_squares
https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#version 3.7;

#include "colors.inc"
#include "../matrices.inc"

global_settings { assumed_gamma 1.0 }

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro ShowPoints2D(Points, Radius, Color)

    #local NoOfPoints = dimension_size(Points, 1);

    union {
        #for (I, 0, NoOfPoints - 1)
            sphere { <Points[I].u, Points[I].v, 0>, Radius }
        #end // for
        pigment { color Color }
    }

#end // macro ShowPoints2D

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare NoOfPoints = 20;

#declare Points =
    array[NoOfPoints] {
        <-2.260413,  4.795362>,
        <-1.717253,  4.536139>,
        <-0.896272,  3.076065>,
        <-0.693523,  3.378081>,
        <-0.899578,  3.510624>,
        <-0.452408,  2.791708>,
        <-0.782500,  0.312580>,
        <-0.074581,  1.843630>,
        <-0.158193,  1.447141>,
        <-0.350643,  1.513625>,
        <-0.165579, -0.393662>,
        <-0.633106,  1.419041>,
        <-0.420517,  0.722568>,
        <-0.175216, -0.185254>,
        <-1.575021, -2.584682>,
        <-0.416734, -1.388992>,
        <-1.574368, -3.201455>,
        <-2.072161, -3.591406>,
        <-1.972498, -1.613953>,
        <-2.438953, -3.919537>
    }
;

ShowPoints2D(Points, 0.04, Green)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

      ui = Points[i].u
      vi = Points[i].v

      (ui - CtrU)^2 + (vi - CtrV)^2 = R^2

      ui^2 + vi^2 - 2*ui*CtrU - 2*vi*CtrV + CtrU^2 + CtrV^2 = R^2

      2*ui*CtrU + 2*vi*CtrV + R^2 - CtrU^2 - CtrV^2 = ui^2 + vi^2

      T = R^2 - CtrU^2 - CtrV^2

      2*ui *CtrU + 2*vi *CtrV + T = ui^2  + vi^2

      2*u00*CtrU + 2*v00*CtrV + T = u00^2 + v00^2
      2*u01*CtrU + 2*v01*CtrV + T = u01^2 + v01^2
      2*u02*CtrU + 2*v02*CtrV + T = u02^2 + v02^2
      2*u03*CtrU + 2*v03*CtrV + T = u03^2 + v03^2
      2*u04*CtrU + 2*v04*CtrV + T = u04^2 + v04^2
      2*u05*CtrU + 2*v05*CtrV + T = u05^2 + v05^2
      2*u06*CtrU + 2*v06*CtrV + T = u06^2 + v06^2
      2*u07*CtrU + 2*v07*CtrV + T = u07^2 + v07^2
      2*u08*CtrU + 2*v08*CtrV + T = u08^2 + v08^2
      2*u09*CtrU + 2*v09*CtrV + T = u09^2 + v09^2
      2*u10*CtrU + 2*v10*CtrV + T = u10^2 + v10^2
      2*u11*CtrU + 2*v11*CtrV + T = u11^2 + v11^2
      2*u12*CtrU + 2*v12*CtrV + T = u12^2 + v12^2
      2*u13*CtrU + 2*v13*CtrV + T = u13^2 + v13^2
      2*u14*CtrU + 2*v14*CtrV + T = u14^2 + v14^2
      2*u15*CtrU + 2*v15*CtrV + T = u15^2 + v15^2
      2*u16*CtrU + 2*v16*CtrV + T = u16^2 + v16^2
      2*u17*CtrU + 2*v17*CtrV + T = u17^2 + v17^2
      2*u18*CtrU + 2*v18*CtrV + T = u18^2 + v18^2
      2*u19*CtrU + 2*v19*CtrV + T = u19^2 + v19^2

 
      --                  --                    --               --
      |                    |                    |                 |
      |  2*u00  2*v00   1  |                    |  u00^2 + v00^2  |
      |                    |                    |                 |
      |  2*u01  2*v01   1  |                    |  u01^2 + v01^2  |
      |                    |                    |                 |
      |  2*u02  2*v02   1  |                    |  u02^2 + v02^2  |
      |                    |                    |                 |
      |  2*u03  2*v03   1  |                    |  u03^2 + v03^2  |
      |                    |                    |                 |
      |  2*u04  2*v04   1  |                    |  u04^2 + v04^2  |
      |                    |                    |                 |
      |  2*u05  2*v05   1  |                    |  u05^2 + v05^2  |
      |                    |                    |                 |
      |  2*u06  2*v06   1  |                    |  u06^2 + v06^2  |
      |                    |                    |                 |
      |  2*u07  2*v07   1  |                    |  u07^2 + v07^2  |
      |                    |     --      --     |                 |
      |  2*u08  2*v08   1  |     |        |     |  u08^2 + v08^2  |
      |                    |     |  CtrU  |     |                 |
      |  2*u09  2*v09   1  |     |        |     |  u09^2 + v09^2  |
      |                    |  *  |  CtrV  |  =  |                 |
      |  2*u10  2*v10   1  |     |        |     |  u10^2 + v10^2  |
      |                    |     |    T   |     |                 |
      |  2*u11  2*v11   1  |     |        |     |  u11^2 + v11^2  |
      |                    |     --      --     |                 |
      |  2*u12  2*v12   1  |                    |  u12^2 + v12^2  |
      |                    |                    |                 |
      |  2*u13  2*v13   1  |                    |  u13^2 + v13^2  |
      |                    |                    |                 |
      |  2*u14  2*v14   1  |                    |  u14^2 + v14^2  |
      |                    |                    |                 |
      |  2*u15  2*v15   1  |                    |  u15^2 + v15^2  |
      |                    |                    |                 |
      |  2*u16  2*v16   1  |                    |  u16^2 + v16^2  |
      |                    |                    |                 |
      |  2*u17  2*v17   1  |                    |  u17^2 + v17^2  |
      |                    |                    |                 |
      |  2*u18  2*v18   1  |                    |  u18^2 + v18^2  |
      |                    |                    |                 |
      |  2*u19  2*v19   1  |                    |  u19^2 + v19^2  |
      |                    |                    |                 |
      --                  --                    --               --


                AA            *      CC      =           BB


*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare AA = array[NoOfPoints][3];
#for (I, 0, NoOfPoints - 1)
    #declare AA[I][0] = 2*Points[I].u;
    #declare AA[I][1] = 2*Points[I].v;
    #declare AA[I][2] = 1;
#end // for
 
#declare BB = array[NoOfPoints][1];
#for (I, 0, NoOfPoints - 1)
    #declare BB[I][0] = pow(Points[I].u, 2) + pow(Points[I].v, 2);
#end // for

// Coefficients
#declare CC = M_Mult(M_PseudoInv(AA), BB);

// Errors
#declare EE = M_Sub(BB, M_Mult(AA, CC));

// Residual
#declare RR = M_Mult(M_Transpose(EE), EE);

#debug "\n\n"

#debug "Coefficient matrix:\n"
M_CustomPrint(CC, 9, 6, "    ", false)
#debug "\n\n"

#debug "Error matrix:\n"
M_CustomPrint(EE, 9, 6, "    ", false)
#debug "\n\n"

#debug "Residual matrix:\n"
M_CustomPrint(RR, 9, 6, "    ", false)
#debug "\n\n"

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare CtrU = CC[0][0];
#debug concat("CtrU: ", str(CtrU, 9, 6), "\n\n")

#declare CtrV = CC[1][0];
#debug concat("CtrV: ", str(CtrV, 9, 6), "\n\n")

#declare T = CC[2][0];
// T = R^2 - CtrU^2 - CtrV^2
// R^2 = T + CtrU^2 + CtrV^2
// R = (T + CtrU^2 + CtrV^2)^0.5
#declare R = sqrt(T + pow(CtrU, 2) + pow(CtrV, 2));
#debug concat("R: ", str(R, 9, 6), "\n\n")

#declare Residual = sqrt(RR[0][0]);
#debug concat("Residual: ", str(Residual, 9, 6), "\n\n")

torus {
    R, 0.02
    rotate +90*x
    translate <CtrU, CtrV, 0>
    pigment { color rgbf <1.0, 0.3, 0.8, 0.4> }
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

background { color Blue/10 + Green/20 }

light_source {
    -100*z
    color White
    shadowless
}

camera {
    orthographic
    location <CtrU, CtrV, -10>
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

Coefficient matrix:
    array[3][1] {
        { -5.144485 },
        {  0.682421 },
        { -2.204631 }
    }

Error matrix:
    array[20][1] {
        {  0.507362 },
        {  1.870269 },
        { -0.949948 },
        {  2.350852 },
        {  1.291175 },
        {  1.737885 },
        { -5.563098 },
        {  2.325540 },
        {  0.721111 },
        { -1.054972 },
        {  1.220666 },
        { -3.831644 },
        { -2.409308 },
        {  0.719701 },
        { -1.311759 },
        {  1.915588 },
        {  3.103434 },
        {  2.977978 },
        { -9.391959 },
        {  3.771127 }
    }

Residual matrix:
    array[1][1] {
        { 201.675 }
    }

CtrU: -5.144485

CtrV:  0.682421

R:  4.972604

Residual: 14.201238

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
