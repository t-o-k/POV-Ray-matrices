// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

https://github.com/t-o-k/POV-Ray-matrices

Copyright (c) 2022-2023 Tor Olav Kristensen, http://subcube.com

Use of this source code is governed by the GNU Lesser General Public License version 3,
which can be found in the LICENSE file.

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// Blockwise Matrix Inversion

// https://en.wikipedia.org/wiki/Block_matrix

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#version 3.7;
#include "..\matrices.inc"

global_settings { assumed_gamma 1.0 }

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

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

#declare MMinv = M_Inv(MM);

#declare AA = M_SubMatrix(MM, 0, 5, 0, 5);  // 5x5 upper left
#declare BB = M_SubMatrix(MM, 0, 5, 5, 3);  // 5x3 upper right
#declare CC = M_SubMatrix(MM, 5, 3, 0, 5);  // 3x5 lower left
#declare DD = M_SubMatrix(MM, 5, 3, 5, 3);  // 3x3 lower right

#debug "\n\n"
#debug "AA =\n"
M_CustomPrint(AA, 4, 1, "    ", false)
#debug "\n"
#debug "M_Det(AA) = "
#debug str(M_Det(AA), 0, -1)

#debug "\n\n"
#debug "BB =\n"
M_CustomPrint(BB, 4, 1, "    ", false)

#debug "\n\n"
#debug "CC =\n"
M_CustomPrint(CC, 4, 1, "    ", false)

#debug "\n\n"
#debug "DD =\n"
M_CustomPrint(DD, 4, 1, "    ", false)
#debug "\n"
#debug "M_Det(DD) = "
#debug str(M_Det(DD), 0, -1)

#debug "\n\n"
#debug "MMinv =\n"
M_CustomPrint(MMinv, 9, 6, "    ", false)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

//  case  AA^-1  DD^-1  calc    EE FF GG HH   KK KKinv LL LLinv   PP QQ RR SS   TT UU
//        exist  exist  these                                                        
//   0      Y     Y     --->    i  i          i    f   i    f     f  f               
//   1      Y     N     --->    i     i       i    f              f     f       f    
//   2      N     Y     --->       i     i             i    f        f     f       f 
//
// i: intermediate result
// f: final result

#declare AAinv = M_Inv(AA);  // AA^-1
#declare DDinv = M_Inv(DD);  // DD^-1

#declare EE = M_Mult(CC, AAinv);  // CC.AAinv
#declare FF = M_Mult(BB, DDinv);  // BB.DDinv
#declare GG = M_Mult(AAinv, BB);  // AAinv.BB
#declare HH = M_Mult(DDinv, CC);  // DDinv.CC

#declare KK = M_Sub(DD, M_Mult(EE, BB));  // DD - EE.BB
// #declare KK = M_Sub(DD, M_Mult(CC, GG));  // DD - CC.GG
#declare LL = M_Sub(AA, M_Mult(FF, CC));  // AA - FF.CC
// #declare LL = M_Sub(AA, M_Mult(BB, HH));  // AA - BB.HH
#declare KKinv = M_Inv(KK);  // = KK^-1
#declare LLinv = M_Inv(LL);  // = LL^-1

#declare PP = M_Neg(M_Mult(KKinv, EE));  // -KKinv.EE
#declare QQ = M_Neg(M_Mult(LLinv, FF));  // -LLinv.FF
#declare RR = M_Neg(M_Mult(GG, KKinv));  // -GG.KKinv
#declare SS = M_Neg(M_Mult(HH, LLinv));  // -HH.LLinv

#declare TT = M_Sub(AAinv, M_Mult(RR, EE));  // AAinv - RR.EE
// #declare TT = M_Sub(AAinv, M_Mult(GG, PP));  // AAinv - GG.PP
#declare UU = M_Sub(DDinv, M_Mult(SS, FF));  // DDinv - SS.FF
// #declare UU = M_Sub(AAinv, M_Mult(HH, QQ));  // AAinv - HH.QQ

// LLinv == TT   (upper left)
// QQ    == RR   (upper right)
// PP    == SS   (lower left)
// KKinv == UU   (lower right)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// Case 0; if both AA and DD are invertible:

#declare MMinv0 =
    M_Stack(
        array[2][2] {
            { LLinv, QQ    },
            { PP   , KKinv }
        }
    )
;

#debug "\n\n"
#debug "MMinv0 =\n"
M_CustomPrint(MMinv0, 9, 6, "    ", false)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// Case 1; if only AA is invertible:

#declare MMinv1 =
    M_Stack(
        array[2][2] {
            { TT   , RR    },
            { PP   , KKinv }
        }
    )
;

#debug "\n\n"
#debug "MMinv1 =\n"
M_CustomPrint(MMinv1, 9, 6, "    ", false)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// Case 2; if only DD is invertible:

#declare MMinv2 =
    M_Stack(
        array[2][2] {
            { LLinv, QQ    },
            { SS   , UU    }
        }
    )
;

#debug "\n\n"
#debug "MMinv2 =\n"
M_CustomPrint(MMinv2, 9, 6, "    ", false)

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

AA =
    array[5][5] {
        {  0.4, -0.2,  0.2,  0.0, -0.8 },
        { -0.2, -0.2,  0.2,  0.2, -0.4 },
        { -0.4,  0.2,  0.6,  0.2,  0.6 },
        {  0.6,  0.0,  0.0,  0.6,  0.4 },
        {  0.0, -1.0,  0.4,  0.0,  0.0 }
    }
M_Det(AA) = -0.232960

BB =
    array[5][3] {
        {  0.6, -0.2,  0.2 },
        { -0.4,  0.0, -0.4 },
        { -0.4, -0.4,  0.0 },
        {  0.0, -0.4, -0.2 },
        { -0.4, -0.6, -0.6 }
    }

CC =
    array[3][5] {
        {  0.4, -0.4,  0.8, -0.6,  0.0 },
        {  0.2,  0.6, -0.6,  0.6, -0.4 },
        { -0.6,  0.4, -0.4,  0.4,  0.4 }
    }

DD =
    array[3][3] {
        {  0.0, -1.0,  0.4 },
        {  0.2, -0.2, -0.4 },
        { -0.4,  0.4, -0.2 }
    }
M_Det(D) = -0.200000

MMinv =
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

#debug "\n\n"
#error "No error, just finished!"

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

