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

#macro ShowPoints(Points, Radius, Color)

    #local NoOfPoints = dimension_size(Points, 1);

    union {
        #for (I, 0, NoOfPoints - 1)
            sphere { Points[I], Radius }
        #end // for
        pigment { color Color }
    }

#end // macro ShowPoints

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare NoOfPoints = 22;

#declare Points =
    array[NoOfPoints] {
        < 2.132830, -2.260413,  4.795362>,
        < 0.804232, -1.717253,  4.536139>,
        < 2.342416, -0.896272,  3.076065>,
        < 1.251726, -0.693523,  3.378081>,
        < 0.322050, -0.899578,  3.510624>,
        < 3.642814, -1.104892,  0.984167>,
        <-0.474270, -0.452408,  2.791708>,
        < 3.141867, -0.782500,  0.312580>,
        < 0.103558, -0.074581,  1.843630>,
        <-0.221492, -0.158193,  1.447141>,
        <-1.399939, -0.350643,  1.513625>,
        < 1.664254, -0.165579, -0.393662>,
        <-1.969350, -0.633106,  1.419041>,
        <-1.593441, -0.420517,  0.722568>,
        <-1.052104, -0.175216, -0.185254>,
        < 2.307946, -1.575021, -2.584682>,
        <-0.178501, -0.416734, -1.388992>,
        <-3.266040, -1.463029, -0.215529>,
        < 0.562096, -1.574368, -3.201455>,
        < 0.697841, -2.072161, -3.591406>,
        <-3.268714, -1.972498, -1.613953>,
        <-0.735871, -2.438953, -3.919537>
    }
;

ShowPoints(Points, 0.06, Green)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

      Xi = Points[i].x
      Yi = Points[i].y
      Zi = Points[i].z

      (xi - CtrX)^2 + (yi - CtrY)^2 + (zi - CtrZ)^2 = R^2

      xi^2 + yi^2 + zi^2 - 2*xi*CtrX - 2*yi*CtrY - 2*zi*CtrZ + CtrX^2 + CtrY^2 + CtrZ^2 = R^2

      2*xi*CtrX + 2*yi*CtrY + 2*zi*CtrZ + R^2 - CtrX^2 - CtrY^2 - CtrZ^2 = xi^2 + yi^2 + zi^2

      T = R^2 - CtrX^2 - CtrY^2 - CtrZ^2

      2*xi *CtrX + 2*yi *CtrY + 2*zi *CtrZ + T = xi^2  + yi^2  + zi^2

      2*x00*CtrX + 2*y00*CtrY + 2*z00*CtrZ + T = x00^2 + y00^2 + z00^2
      2*x01*CtrX + 2*y01*CtrY + 2*z01*CtrZ + T = x01^2 + y01^2 + z01^2
      2*x02*CtrX + 2*y02*CtrY + 2*z02*CtrZ + T = x02^2 + y02^2 + z02^2
      2*x03*CtrX + 2*y03*CtrY + 2*z03*CtrZ + T = x03^2 + y03^2 + z03^2
      2*x04*CtrX + 2*y04*CtrY + 2*z04*CtrZ + T = x04^2 + y04^2 + z04^2
      2*x05*CtrX + 2*y05*CtrY + 2*z05*CtrZ + T = x05^2 + y05^2 + z05^2
      2*x06*CtrX + 2*y06*CtrY + 2*z06*CtrZ + T = x06^2 + y06^2 + z06^2
      2*x07*CtrX + 2*y07*CtrY + 2*z07*CtrZ + T = x07^2 + y07^2 + z07^2
      2*x08*CtrX + 2*y08*CtrY + 2*z08*CtrZ + T = x08^2 + y08^2 + z08^2
      2*x09*CtrX + 2*y09*CtrY + 2*z09*CtrZ + T = x09^2 + y09^2 + z09^2
      2*x10*CtrX + 2*y10*CtrY + 2*z10*CtrZ + T = x10^2 + y10^2 + z10^2
      2*x11*CtrX + 2*y11*CtrY + 2*z11*CtrZ + T = x11^2 + y11^2 + z11^2
      2*x12*CtrX + 2*y12*CtrY + 2*z12*CtrZ + T = x12^2 + y12^2 + z12^2
      2*x13*CtrX + 2*y13*CtrY + 2*z13*CtrZ + T = x13^2 + y13^2 + z13^2
      2*x14*CtrX + 2*y14*CtrY + 2*z14*CtrZ + T = x14^2 + y14^2 + z14^2
      2*x15*CtrX + 2*y15*CtrY + 2*z15*CtrZ + T = x15^2 + y15^2 + z15^2
      2*x16*CtrX + 2*y16*CtrY + 2*z16*CtrZ + T = x16^2 + y16^2 + z16^2
      2*x17*CtrX + 2*y17*CtrY + 2*z17*CtrZ + T = x17^2 + y17^2 + z17^2
      2*x18*CtrX + 2*y18*CtrY + 2*z18*CtrZ + T = x18^2 + y18^2 + z18^2
      2*x19*CtrX + 2*y19*CtrY + 2*z19*CtrZ + T = x19^2 + y19^2 + z19^2
      2*x20*CtrX + 2*y20*CtrY + 2*z20*CtrZ + T = x20^2 + y20^2 + z20^2
      2*x21*CtrX + 2*y21*CtrY + 2*z21*CtrZ + T = x21^2 + y21^2 + z21^2

 
      --                         --                    --                       --
      |                           |                    |                         |
      |  2*x00  2*y00  2*z00   1  |                    |  x00^2 + y00^2 + z00^2  |
      |                           |                    |                         |
      |  2*x01  2*y01  2*z01   1  |                    |  x01^2 + y01^2 + z01^2  |
      |                           |                    |                         |
      |  2*x02  2*y02  2*z02   1  |                    |  x02^2 + y02^2 + z02^2  |
      |                           |                    |                         |
      |  2*x03  2*y03  2*z03   1  |                    |  x03^2 + y03^2 + z03^2  |
      |                           |                    |                         |
      |  2*x04  2*y04  2*z04   1  |                    |  x04^2 + y04^2 + z04^2  |
      |                           |                    |                         |
      |  2*x05  2*y05  2*z05   1  |                    |  x05^2 + y05^2 + z05^2  |
      |                           |                    |                         |
      |  2*x06  2*y06  2*z06   1  |                    |  x06^2 + y06^2 + z06^2  |
      |                           |                    |                         |
      |  2*x07  2*y07  2*z07   1  |                    |  x07^2 + y07^2 + z07^2  |
      |                           |                    |                         |
      |  2*x08  2*y08  2*z08   1  |     --      --     |  x08^2 + y08^2 + z08^2  |
      |                           |     |        |     |                         |
      |  2*x09  2*y09  2*z09   1  |     |  CtrX  |     |  x09^2 + y09^2 + z09^2  |
      |                           |     |        |     |                         |
      |  2*x10  2*y10  2*z10   1  |     |  CtrY  |     |  x10^2 + y10^2 + z10^2  |
      |                           |  *  |        |  =  |                         |
      |  2*x11  2*y11  2*z11   1  |     |  CtrZ  |     |  x11^2 + y11^2 + z11^2  |
      |                           |     |        |     |                         |
      |  2*x12  2*y12  2*z12   1  |     |    T   |     |  x12^2 + y12^2 + z12^2  |
      |                           |     |        |     |                         |
      |  2*x13  2*y13  2*z13   1  |     --      --     |  x13^2 + y13^2 + z13^2  |
      |                           |                    |                         |
      |  2*x14  2*y14  2*z14   1  |                    |  x14^2 + y14^2 + z14^2  |
      |                           |                    |                         |
      |  2*x15  2*y15  2*z15   1  |                    |  x15^2 + y15^2 + z15^2  |
      |                           |                    |                         |
      |  2*x16  2*y16  2*z16   1  |                    |  x16^2 + y16^2 + z16^2  |
      |                           |                    |                         |
      |  2*x17  2*y17  2*z17   1  |                    |  x17^2 + y17^2 + z17^2  |
      |                           |                    |                         |
      |  2*x18  2*y18  2*z18   1  |                    |  x18^2 + y18^2 + z18^2  |
      |                           |                    |                         |
      |  2*x19  2*y19  2*z19   1  |                    |  x19^2 + y19^2 + z19^2  |
      |                           |                    |                         |
      |  2*x20  2*y20  2*z20   1  |                    |  x20^2 + y20^2 + z20^2  |
      |                           |                    |                         |
      |  2*x21  2*y21  2*z21   1  |                    |  x21^2 + y21^2 + z21^2  |
      |                           |                    |                         |
      --                         --                    --                       --


                   AA                *      CC      =               BB


*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare AA = array[NoOfPoints][4];
#for (I, 0, NoOfPoints - 1)
    #declare AA[I][0] = 2*Points[I].x;
    #declare AA[I][1] = 2*Points[I].y;
    #declare AA[I][2] = 2*Points[I].z;
    #declare AA[I][3] = 1;
#end // for
 
#declare BB = array[NoOfPoints][1];
#for (I, 0, NoOfPoints - 1)
    // #declare BB[I][0] = pow(Points[I].x, 2) + pow(Points[I].y, 2) + pow(Points[I].z, 2);
    #declare BB[I][0] = vdot(Points[I], Points[I]);
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

#declare CtrX = CC[0][0];
#debug concat("CtrX: ", str(CtrX, 9, 6), "\n\n")

#declare CtrY = CC[1][0];
#debug concat("CtrY: ", str(CtrY, 9, 6), "\n\n")

#declare CtrZ = CC[2][0];
#debug concat("CtrZ: ", str(CtrZ, 9, 6), "\n\n")

#declare T = CC[3][0];
// T = R^2 - CtrX^2 - CtrY^2 - CtrZ^2
// R^2 = T + CtrX^2 + CtrY^2 + CtrZ^2
// R = (T + CtrX^2 + CtrY^2 + CtrZ^2)^0.5
// #declare R = sqrt(T + pow(CtrX, 2) + pow(CtrY, 2) + pow(CtrZ, 2));
#declare pCtr = <CtrX, CtrY, CtrZ>;
#declare R = sqrt(T + vdot(pCtr, pCtr));
#debug concat("R: ", str(R, 9, 6), "\n\n")

#declare Residual = sqrt(RR[0][0]);
#debug concat("Residual: ", str(Residual, 9, 6), "\n\n")

sphere {
    pCtr, R
    pigment { color rgbf <1.0, 0.3, 0.8, 0.4> }
}   

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

background { color Blue/10 + Green/20 }

light_source {
    100*<3, 5, -10>
    color White
    shadowless
}

camera {
    location <0, 6, -9>
    look_at <0, -5, 0>
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

Coefficient matrix:
    array[4][1] {
        {  0.370201 },
        { -5.493425 },
        {  0.641980 },
        { -0.416072 }
    }

Error matrix:
    array[22][1] {
        {  0.498976 },
        { -0.698501 },
        {  0.637383 },
        {  0.991560 },
        { -0.975966 },
        { -0.224525 },
        {  0.435481 },
        { -0.327383 },
        {  0.568098 },
        { -0.847748 },
        {  0.030535 },
        {  0.822237 },
        { -0.610808 },
        { -0.714052 },
        {  0.679783 },
        { -0.790739 },
        { -0.112119 },
        { -0.109167 },
        { -0.143007 },
        { -0.576878 },
        {  0.417035 },
        {  1.049803 }
    }

Residual matrix:
    array[1][1] {
        {  8.768551 }
    }

CtrX:  0.370201

CtrY: -5.493425

CtrZ:  0.641980

R:  5.505527

Residual:  2.961174

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
