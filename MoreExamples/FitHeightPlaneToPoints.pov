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

#macro ShowPlane(MinX, MaxX, MinZ, MaxZ, FnY, Color)

    union {
        triangle {
            <MinX, FnY(MinX, MinZ), MinZ>,
            <MaxX, FnY(MaxX, MinZ), MinZ>,
            <MaxX, FnY(MaxX, MaxZ), MaxZ>
        }
        triangle {
            <MaxX, FnY(MaxX, MaxZ), MaxZ>,
            <MinX, FnY(MinX, MaxZ), MaxZ>,
            <MinX, FnY(MinX, MinZ), MinZ>
        }
        pigment { color Color }
    }

#end // macro ShowPlane


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

#declare NoOfPoints = 10;

#declare Points =
    array[NoOfPoints] {
        <-2.819030,  1.380336,  2.962326>,
        < 2.770709, -0.510592,  0.753829>,
        <-2.535787,  0.277434, -2.714970>,
        <-3.294156, -0.075235,  0.063955>,
        <-2.983145,  0.825793, -0.217786>,
        <-0.159124,  0.216913,  3.539645>,
        <-0.988899,  0.274605,  1.441053>,
        <-0.871684, -1.033114, -0.787784>,
        < 3.325845, -0.065593,  1.025272>,
        < 2.236117, -1.056194, -3.814512>
    }
;

ShowPoints(Points, 0.06, Green)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

/*

    xi = Points[i].x
    yi = Points[i].y
    zi = Points[i].z

    SlopeX*xi + SlopeZ*zi + Offset = yi

    SlopeX*x0 + SlopeZ*z0 + Offset = y0
    SlopeX*x1 + SlopeZ*z1 + Offset = y1
    SlopeX*x2 + SlopeZ*z2 + Offset = y2
    SlopeX*x3 + SlopeZ*z3 + Offset = y3
    SlopeX*x4 + SlopeZ*z4 + Offset = y4
    SlopeX*x5 + SlopeZ*z5 + Offset = y5
    SlopeX*x6 + SlopeZ*z6 + Offset = y6
    SlopeX*x7 + SlopeZ*z7 + Offset = y7
    SlopeX*x8 + SlopeZ*z8 + Offset = y8
    SlopeX*x9 + SlopeZ*z9 + Offset = y9


    --            --                      --    --
    |              |                      |      |
    |  x0  z0   1  |                      |  y0  |
    |              |                      |      |
    |  x1  z1   1  |                      |  y1  |
    |              |                      |      |
    |  x2  z2   1  |                      |  y2  |
    |              |     --        --     |      |
    |  x3  z3   1  |     |          |     |  y3  |
    |              |     |  SlopeX  |     |      |
    |  x4  z4   1  |     |          |     |  y4  |
    |              |  *  |  SlopeZ  |  =  |      |
    |  x5  z5   1  |     |          |     |  y5  |
    |              |     |  Offset  |     |      |
    |  x6  z6   1  |     |          |     |  y6  |
    |              |     --        --     |      |
    |  x7  z7   1  |                      |  y7  |
    |              |                      |      |
    |  x8  z8   1  |                      |  y8  |
    |              |                      |      |
    |  x9  z9   1  |                      |  y9  |
    |              |                      |      |
    --            --                      --    --


           AA         *       CC       =     BB


*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#declare AA = array[NoOfPoints][3];
#for (I, 0, NoOfPoints - 1)
    #declare AA[I][0] = Points[I].x;
    #declare AA[I][1] = Points[I].z;
    #declare AA[I][2] = 1;
#end // for

#declare BB = array[NoOfPoints][1];
#for (I, 0, NoOfPoints - 1)
    #declare BB[I][0] = Points[I].y;
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

#declare SlopeX = CC[0][0];
#debug concat("SlopeX: ", str(SlopeX, 9, 6), "\n\n")

#declare SlopeZ = CC[1][0];
#debug concat("SlopeZ: ", str(SlopeZ, 9, 6), "\n\n")

#declare Offset = CC[2][0];
#debug concat("Offset: ", str(Offset, 9, 6), "\n\n")

#declare Residual = sqrt(RR[0][0]);
#debug concat("Residual: ", str(Residual, 9, 6), "\n\n")

#declare PlaneFnY = function(x, z) { SlopeX*x + SlopeZ*z + Offset };

#declare Nil = 1e-6;

#declare S = 5;
#declare MinX = -S;
#declare MaxX = +S;
#declare MinZ = -S;
#declare MaxZ = +S;

ShowPlane(
    MinX, MaxX,
    MinZ, MaxZ,
    PlaneFnY,
    color rgbt <1.0, 0.0, 1.0, 0.6>
)

//    Alternative ways to show the plane
//
//    +SlopeX*x +SlopeZ*z +Offset = +y
//    -SlopeX*x -SlopeZ*z -Offset = -y
//
//    +SlopeX*x -1*y +SlopeZ*z = -Offset
//    -SlopeX*x +1*y -SlopeZ*z = +Offset

/*
difference {
    plane { <+SlopeX, -1, +SlopeZ>, -Offset + Nil }
    plane { <+SlopeX, -1, +SlopeZ>, -Offset - Nil }
    plane { +x, -S }
    plane { -x, -S }
    plane { +z, -S }
    plane { -z, -S }
    pigment { color rgbt <1.0, 0.0, 1.0, 0.6> }
}
*/

/*
intersection {
    difference {
        plane { <-SlopeX, +1, -SlopeZ>, +Offset + Nil }
        plane { <-SlopeX, +1, -SlopeZ>, +Offset - Nil }
    }
    sphere { <0, 0, 0>, 7 }
    pigment { color rgbt <1.0, 0.0, 1.0, 0.6> }
}
*/

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

background { color Blue/10 + Green/20 }

light_source {
    100*<3, 5, -10>
    color White
}

camera {
    location <0, 3, -13>
    look_at <0, -1, 0>
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

Coefficient matrix:
    array[3][1] {
        { -0.165172 },
        {  0.169151 },
        { -0.102498 }
    }

Error matrix:
    array[10][1] {
        {  0.516129 },
        { -0.077962 },
        {  0.420333 },
        { -0.527656 },
        {  0.472399 },
        { -0.305607 },
        { -0.029991 },
        { -0.941338 },
        {  0.412815 },
        {  0.060877 }
    }

Residual matrix:
    array[1][1] {
        {  2.105264 }
    }

SlopeX: -0.165172

SlopeZ:  0.169151

Offset: -0.102498

Residual:  1.450953

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
