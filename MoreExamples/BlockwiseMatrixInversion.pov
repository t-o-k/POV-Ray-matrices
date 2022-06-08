// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

https://github.com/t-o-k/POV-Ray-matrices

Copyright (c) 2022 Tor Olav Kristensen, http://subcube.com

Use of this source code is governed by the GNU Lesser General Public License version 3,
which can be found in the LICENSE file.

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#version 3.7;
#include "matrices.inc"

global_settings { assumed_gamma 1.0 }

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// Blockwise matrix inversion
// https://en.wikipedia.org/wiki/Block_matrix

#declare MM =
    array[8][8] {
        {  0.4, -0.2,  0.2,  0.0, -0.8,    0.6, -0.2,  0.2 },
        { -0.2, -0.2,  0.2,  0.2, -0.4,   -0.4,  0.0, -0.4 },
        { -0.4,  0.2,  0.6,  0.2,  0.6,   -0.4, -0.4,  0.0 },
        {  0.6,  0.0,  0.0,  0.6,  0.4,    0.0, -0.4, -0.2 },
        {  0.0, -1.0,  0.4,  0.0,  0.0,   -0.4, -0.6, -0.6 },

        {  0.4, -0.4,  0.8, -0.6,  0.0,    0.0, -1.0,  0.4 },
        {  0.2,  0.6, -0.6,  0.6, -0.4,    0.2, -0.2, -0.4 },
        { -0.6,  0.4, -0.4,  0.4,  0.4,   -0.4,  0.4, -0.2 }
    }
;

#declare AA = M_SubMatrix(MM, 0, 5, 0, 5);  // 5x5 upper left
#declare BB = M_SubMatrix(MM, 0, 5, 5, 3);  // 5x3 upper right
#declare CC = M_SubMatrix(MM, 5, 3, 0, 5);  // 3x5 lower left
#declare DD = M_SubMatrix(MM, 5, 3, 5, 3);  // 3x3 lower right

#declare GG = M_Mult(BB, M_Inv(DD));
#declare HH = M_Mult(CC, M_Inv(AA));

#declare EE = M_Inv(M_Sub(AA, M_Mult(GG, CC)));  // 5x5 upper left
#declare FF = M_Inv(M_Sub(DD, M_Mult(HH, BB)));  // 3x3 lower right

#declare KK = M_Neg(M_Mult(EE, GG));  // 5x3 upper right
#declare LL = M_Neg(M_Mult(FF, HH));  // 3x5 lower left

#declare MM_inv =
    M_Stack(
        array[2][2] {
            { EE, KK },
            { LL, FF }
        }
    )
;

#debug "\n\n"
M_CustomPrint(MM_inv, 9, 6, "", false)
#debug "\n\n"

#error "No error, just finished!"

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

MM_inv:

array[8][8] {
    { -1.097945,  1.066649, -0.612104,  0.995640,   -0.799447,  0.025037, -0.190581, -1.397306 },
    { -1.214064,  0.493395,  0.870241, -0.417638,   -0.788656, -0.423465,  0.852758, -1.969697 },
    { -0.368644,  0.689372,  1.583355, -0.100147,   -0.393249, -1.256583, -0.219287, -2.542088 },
    {  1.804368,  0.208927, -0.208927,  1.087369,   -0.018993,  0.389364, -0.636277,  2.407407 },

    { -0.597211, -1.052404,  0.597859,  0.101226,    0.343607, -0.680307, -0.080074, -0.824916 },
    {  0.478287, -2.006820,  1.552275, -0.888803,    0.884918, -1.777173,  0.553829, -1.936027 },
    { -0.533972,  0.746784,  0.162307,  0.229647,   -0.563757, -1.170250, -0.704049, -1.498316 },
    {  1.992791,  0.228352, -1.591988,  0.992187,   -0.640594,  2.223086, -1.232625,  4.377104 }
}

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

