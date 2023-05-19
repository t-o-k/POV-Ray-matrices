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

#macro ShowLine2D(MinU, MaxU, FnV, Radius, Color)

    cylinder {
        <MinU, FnV(MinU), 0>, <MaxU, FnV(MaxU), 0>, Radius
        pigment { color Color }
    }

#end // macro ShowLine2D


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

#declare NoOfPoints = 10;

#declare Points =
    array[NoOfPoints] {
        <-2.819030,  1.380336>,
        < 2.770709, -0.510592>,
        <-2.535787,  0.277434>,
        <-3.294156, -0.075235>,
        <-2.983145,  0.825793>,
        <-0.159124,  0.216913>,
        <-0.988899,  0.274605>,
        < 0.828316, -0.383114>,
        < 3.325845, -0.065593>,
        < 2.236117, -1.056194>
    }
;

ShowPoints2D(Points, 0.06, Green)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

    ui = Points[i].u
    vi = Points[i].v

    SlopeU*ui + Offset = vi

    SlopeU*u0 + Offset = v0
    SlopeU*u1 + Offset = v1
    SlopeU*u2 + Offset = v2
    SlopeU*u3 + Offset = v3
    SlopeU*u4 + Offset = v4
    SlopeU*u5 + Offset = v5
    SlopeU*u6 + Offset = v6
    SlopeU*u7 + Offset = v7
    SlopeU*u8 + Offset = v8
    SlopeU*u9 + Offset = v9


    --        --                      --    --
    |          |                      |      |
    |  u0   1  |                      |  v0  |
    |          |                      |      |
    |  u1   1  |                      |  v1  |
    |          |                      |      |
    |  u2   1  |                      |  v2  |
    |          |                      |      |
    |  u3   1  |     --        --     |  v3  |
    |          |     |          |     |      |
    |  u4   1  |     |  SlopeU  |     |  v4  |
    |          |  *  |          |  =  |      |
    |  u5   1  |     |  Offset  |     |  v5  |
    |          |     |          |     |      |
    |  u6   1  |     --        --     |  v6  |
    |          |                      |      |
    |  u7   1  |                      |  v7  |
    |          |                      |      |
    |  u8   1  |                      |  v8  |
    |          |                      |      |
    |  u9   1  |                      |  v9  |
    |          |                      |      |
    --        --                      --    --


         AA       *       CC       =     BB


*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare AA = array[NoOfPoints][2];
#for (I, 0, NoOfPoints - 1)
    #declare AA[I][0] = Points[I].u;
    #declare AA[I][1] = 1;
#end // for

#declare BB = array[NoOfPoints][1];
#for (I, 0, NoOfPoints - 1)
    #declare BB[I][0] = Points[I].v;
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

#declare SlopeU = CC[0][0];
#debug concat("SlopeU: ", str(SlopeU, 9, 6), "\n\n")

#declare Offset = CC[1][0];
#debug concat("Offset: ", str(Offset, 9, 6), "\n\n")

#declare Residual = sqrt(RR[0][0]);
#debug concat("Residual: ", str(Residual, 9, 6), "\n\n")

#declare LineFnV = function(u) { SlopeU*u + Offset };

#declare MinU = -5;
#declare MaxU = +5;

ShowLine2D(
    MinU, MaxU,
    LineFnV,
    0.02
    color rgbt <1.0, 0.0, 1.0, 0.6>
)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

background { color Blue/10 + Green/20 }

light_source {
    -100*z
    color White
    shadowless
}

#declare MidU = (MinU + MaxU)/2;

camera {
    orthographic
    location <MidU, LineFnV(MidU), -8>
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

Coefficient matrix:
    array[2][1] {
        { -0.190715 },
        {  0.019413 }

    }

Error matrix:
    array[10][1] {
        {  0.823291 },
        { -0.001588 },
        { -0.225592 },
        { -0.722894 },
        {  0.237449 },
        {  0.167153 },
        {  0.066594 },
        { -0.244554 },
        {  0.549284 },
        { -0.649145 }
    }

Residual matrix:
    array[1][1] {
        {  2.122943 }
    }

SlopeU: -0.190715

Offset: 0.019412

Residual: 1.457032

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
