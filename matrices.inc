// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

https://github.com/t-o-k/POV-Ray-matrices

// Copyright (c) 2022 Tor Olav Kristensen, http://subcube.com

Use of this source code is governed by the GNU Lesser General Public License version 3,
which can be found in the LICENSE file.

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#version 3.7;

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro _M_FromFn(SizeI, SizeJ, Fn)

    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #for (J, 0, SizeJ-1)
            #local MM[I][J] = Fn(I, J);
        #end // for
    #end // for

    MM

#end // macro _M_FromFn


#macro M_Zero(NoOfRows, NoOfCols)

    _M_FromFn(
        NoOfRows, NoOfCols,
        function(_i, _j) { 0 }
    )

#end // macro M_Zero


#macro M_Constant(NoOfRows, NoOfCols, Const)

    _M_FromFn(
        NoOfRows, NoOfCols,
        function(_i, _j) { Const }
    )

#end // macro M_Constant


#macro M_Identity(Size)

    _M_FromFn(
        Size, Size,
        function(_i, _j) { select(_i - _j, 0, 1, 0) }
    )

#end // macro M_Identity

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro _M_ApplyFnToElements(AA, Fn)

    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = dimension_size(AA, 2);
    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #for (J, 0, SizeJ-1)
            #local MM[I][J] = Fn(I, J, AA[I][J]);
        #end // for
    #end // for

    MM

#end // macro _M_ApplyFnToElements


#macro M_Neg(AA)

    _M_ApplyFnToElements(
        AA,
        function(_i, _j, _a) { -_a }
    )

#end // macro M_Neg


#macro M_Pos(AA)

    _M_ApplyFnToElements(
        AA,
        function(_i, _j, _a) { +_a }
    )

#end // macro M_Pos


#macro M_Scale(AA, Scale)

    _M_ApplyFnToElements(
        AA,
        function(_i, _j, _a) { Scale*_a }
    )

#end // macro M_Scale


#macro M_ApplyCheckerSigns(AA)

    _M_ApplyFnToElements(
        AA,
        function(_i, _j, _a) { pow(-1, _i + _j)*_a }
    )

#end // macro M_ApplyCheckerSigns


#macro M_ScaleRow(AA, RowNo, Scale)

    _M_ApplyFnToElements(
        AA,
        function(_i, _j, _a) {
            select(_i - RowNo, _a, Scale*_a, _a)
        }
    )

#end // macro M_ScaleRow


#macro M_ScaleCol(AA, ColNo, Scale)

    _M_ApplyFnToElements(
        AA,
        function(_i, _j, _a) {
            select(_j - ColNo, _a, Scale*_a, _a)
        }
    )

#end // macro M_ScaleRow

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro _M_Rearrange(AA, RowNoFn, ColNoFn)

    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = dimension_size(AA, 2);
    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #for (J, 0, SizeJ-1)
            #local K = RowNoFn(I, J);
            #local L = ColNoFn(I, J);
            #local MM[I][J] = AA[K][L];
        #end // for
    #end // for

    MM

#end // macro _M_Rearrange


#macro M_Transpose(AA)

    _M_Rearrange(
        AA,
        function(_i, _j) { _j },
        function(_i, _j) { _i }
    )

#end // macro M_Transpose


#macro M_SwapRows(AA, RowNo, Row_No)

    _M_Rearrange(
        AA,
        function(_i, _j) {
            select(
                _i - RowNo,
                select(_i - Row_No, _i, RowNo, _i),
                Row_No,
                select(_i - Row_No, _i, RowNo, _i)
            )
        },
        function(_i, _j) {
            _j
        }
    )

#end // macro M_SwapRows


#macro M_SwapCols(AA, ColNo, Col_No)

    _M_Rearrange(
        AA,
        function(_i, _j) {
            _i
        },
        function(_i, _j) {
            select(
                _j - ColNo,
                select(_j - Col_No, _j, ColNo, _j),
                Col_No,
                select(_j - Col_No, _j, ColNo, _j)
            )
        }
    )

#end // macro M_SwapCols

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro _M_ApplyFnToElementPairs(AA, BB, Fn)

    #local SizeI =
        max(
            dimension_size(AA, 1),
            dimension_size(BB, 1)
        )
    ;
    #local SizeJ =
        max(
            dimension_size(AA, 2),
            dimension_size(BB, 2)
        )
    ;
    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #for (J, 0, SizeJ-1)
            #local MM[I][J] = Fn(I, J, AA[I][J], BB[I][J]);
        #end // for
    #end // for

    MM

#end // macro _M_ApplyFnToElementPairs


#macro M_Add(AA, BB)

    _M_ApplyFnToElementPairs(
        AA, BB,
        function(_i, _j, _a, _b) { _a + _b }
    )

#end // macro M_Add


#macro M_Sub(AA, BB)

    _M_ApplyFnToElementPairs(
        AA, BB,
        function(_i, _j, _a, _b) { _a - _b }
    )

#end // macro M_Sub

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro M_Trace(AA)

    #local Size =
        max(
            dimension_size(AA, 1),
            dimension_size(AA, 2)
        )
    ;
    #local Sum = 0;
    #for (I, 0, Size-1)
        #local Sum = Sum + AA[I][I];
    #end // for

    Sum

#end // macro M_Trace


#macro M_Mult(AA, BB)

    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = dimension_size(BB, 2);
    #local SizeK =
        max(
            dimension_size(AA, 2),
            dimension_size(BB, 1)
        )
    ;
    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #for (J, 0, SizeJ-1)
            #local Sum = 0;
            #for (K, 0, SizeK-1)
                #local Sum = Sum + AA[I][K]*BB[K][J];
            #end // for
            #local MM[I][J] = Sum;
        #end // for
    #end // for

    MM

#end // macro M_Mult


#macro M_DelRow(AA, RowNo)

    #local SizeI = max(RowNo, dimension_size(AA, 1) - 1);
    #local SizeJ = dimension_size(AA, 2);
    #local MM = array[SizeI][SizeJ];
    #local K = 0;
    #for (I, 0, SizeI)
        #if (I != RowNo)
            #for (J, 0, SizeJ-1)
                #local MM[K][J] = AA[I][J];
            #end // for
            #local K = K + 1;
        #end // if
    #end // for

    MM

#end // macro M_DelRow


#macro M_DelCol(AA, ColNo)

    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = max(ColNo, dimension_size(AA, 2) - 1);
    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #local L = 0;
        #for (J, 0, SizeJ)
            #if (J != ColNo)
                #local MM[I][L] = AA[I][J];
                #local L = L + 1;
            #end // if
        #end // for
    #end // for

    MM

#end // macro M_DelCol


#macro M_DelRowAndCol(AA, RowNo, ColNo)

    #local SizeI = max(RowNo, dimension_size(AA, 1) - 1);
    #local SizeJ = max(ColNo, dimension_size(AA, 2) - 1);
    #local MM = array[SizeI][SizeJ];
    #local K = 0;
    #for (I, 0, SizeI)
        #if (I != RowNo)
            #local L = 0;
            #for (J, 0, SizeJ)
                #if (J != ColNo)
                    #local MM[K][L] = AA[I][J];
                    #local L = L + 1;
                #end // if
            #end // for
            #local K = K + 1;
        #end // if
    #end // for

    MM

#end // macro M_DelRowAndCol


#macro M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)

    #local MM = AA;
    #local SizeJ = dimension_size(MM, 2);
    #for (J, 0, SizeJ-1)
        #local MM[ToRowNo][J] = AA[ToRowNo][J] + Scale*AA[RowNo][J];
    #end // for

    MM

#end // macro M_AddScaledRowToRow


#macro M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)

    #local MM = AA;
    #local SizeI = dimension_size(MM, 1);
    #for (I, 0, SizeI-1)
        #local MM[I][ToColNo] = AA[I][ToColNo] + Scale*AA[I][ColNo];
    #end // for

    MM

#end // macro M_AddScaledColToCol


#macro M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)

    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = dimension_size(AA, 2);
    #if (RowNo = -1)
        #local RowNo = 0;
    #end // if
    #if (NoOfRows = -1)
        #local SizeK = SizeI - RowNo;
    #else
        #local SizeK = NoOfRows;
    #end // if
    #if (ColNo = -1)
        #local ColNo = 0;
    #end // if
    #if (NoOfCols = -1)
        #local SizeL = SizeJ - ColNo;
    #else
        #local SizeL = NoOfCols;
    #end // if
    #local MM = array[SizeK][SizeL];
    #for (K, 0, SizeK-1)
        #for (L, 0, SizeL-1)
            #local MM[K][L] = AA[RowNo+K][ColNo+L];
        #end // for
    #end // for

    MM

#end // macro M_SubMatrix


#macro M_Stack(AAAA)

    #local SizeI = dimension_size(AAAA, 1);
    #local SizeJ = dimension_size(AAAA, 2);

    #local SizesK = array[SizeI];
    #local TotalSizeK = 0;
    #for (I, 0, SizeI-1)
        #local MaxSizeK = 0;
        #for (J, 0, SizeJ-1)
            #local MaxSizeK =
                max(
                    MaxSizeK,
                    dimension_size(AAAA[I][J], 1)
                )
            ;
        #end // for
        #local SizesK[I] = MaxSizeK; 
        #local TotalSizeK = TotalSizeK + MaxSizeK;
    #end // for

    #local SizesL = array[SizeJ];
    #local TotalSizeL = 0;
    #for (J, 0, SizeJ-1)
        #local MaxSizeL = 0;
        #for (I, 0, SizeI-1)
            #local MaxSizeL =
                max(
                    MaxSizeL,
                    dimension_size(AAAA[I][J], 2)
                )
            ;
        #end // for
        #local SizesL[J] = MaxSizeL;
        #local TotalSizeL = TotalSizeL + MaxSizeL;
    #end // for

    #local MM = array[TotalSizeK][TotalSizeL];
    #local OffsetK = 0;
    #for (I, 0, SizeI-1)
        #local SizeK = SizesK[I];
        #local OffsetL = 0;
        #for (J, 0, SizeJ-1)
            #local SizeL = SizesL[J];
            #local AA = AAAA[I][J];
            #for (K, 0, SizeK-1)
                #for (L, 0, SizeL-1)
                    #local MM[OffsetK+K][OffsetL+L] = AA[K][L];
                #end // for
            #end // for
            #local OffsetL = OffsetL + SizeL;
        #end // for
        #local OffsetK = OffsetK + SizeK;
    #end // for

    MM

#end // macro M_Stack

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro _M_ZeroCountInRow(AA, RowNo)

    #local SizeJ = dimension_size(AA, 1);
    #local Cnt = 0;
    #for (J, 0, SizeJ-1)
        #if (AA[RowNo][J] = 0)
            #local Cnt = Cnt + 1;
        #end // if
    #end // for

    Cnt

#end // macro _M_ZeroCountInRow


#macro _M_ZeroCountInCol(AA, ColNo)

    #local SizeI = dimension_size(AA, 2);
    #local Cnt = 0;
    #for (I, 0, SizeI-1)
        #if (AA[I][ColNo] = 0)
            #local Cnt = Cnt + 1;
        #end // if
    #end // for

    Cnt

#end // macro _M_ZeroCountInCol


/*
#macro M_Det(AA)

    #local Size =
        min(
            dimension_size(AA, 1),
            dimension_size(AA, 2)
        )
    ;
    #if (Size > 1)
        #local Det = 0;
        #for (J, 0, Size-1)
            #local A = AA[0][J];
            #if (A != 0)
                #local D =
                    M_Det(
                        M_DeleteRowAndCol(AA, 0, J)
                    )
                ;
                #local Det = Det + pow(-1, J)*A*D;
            #end // if
        #end // for
    #else
        #local Det = AA[0][0];
    #end // if

    Det

#end // macro M_Det
*/

#macro M_Det_11(AA)

    (AA[0][0])

#end // macro M_Det_11


#macro M_Det_22(AA)

    (AA[0][0]*AA[1][1] - AA[0][1]*AA[1][0])

#end // macro M_Det_22


#macro M_Det_33(AA)

    vdot(
        <AA[0][0], AA[0][1], AA[0][2]>,
        vcross(
            <AA[1][0], AA[1][1], AA[1][2]>,
            <AA[2][0], AA[2][1], AA[2][2]>
        )
    )

#end // macro M_Det_33


#macro M_Det_44(AA)

    #local A10 = AA[1][0];
    #local A11 = AA[1][1];
    #local A12 = AA[1][2];
    #local A13 = AA[1][3];

    #local A20 = AA[2][0];
    #local A21 = AA[2][1];
    #local A22 = AA[2][2];
    #local A23 = AA[2][3];

    #local A30 = AA[3][0];
    #local A31 = AA[3][1];
    #local A32 = AA[3][2];
    #local A33 = AA[3][3];

    (
        +AA[0][0]*vdot(<A11, A12, A13>, vcross(<A21, A22, A23>, <A31, A32, A33>))
        -AA[0][1]*vdot(<A10, A12, A13>, vcross(<A20, A22, A23>, <A30, A32, A33>))
        +AA[0][2]*vdot(<A10, A11, A13>, vcross(<A20, A21, A23>, <A30, A31, A33>))
        -AA[0][3]*vdot(<A10, A11, A12>, vcross(<A20, A21, A22>, <A30, A31, A32>))
    )

#end // macro M_Det_44


#macro M_Det_55(AA)

    #local A10 = AA[1][0];
    #local A11 = AA[1][1];
    #local A12 = AA[1][2];
    #local A13 = AA[1][3];
    #local A14 = AA[1][4];

    #local A20 = AA[2][0];
    #local A21 = AA[2][1];
    #local A22 = AA[2][2];
    #local A23 = AA[2][3];
    #local A24 = AA[2][4];

    #local A30 = AA[3][0];
    #local A31 = AA[3][1];
    #local A32 = AA[3][2];
    #local A33 = AA[3][3];
    #local A34 = AA[3][4];

    #local A40 = AA[4][0];
    #local A41 = AA[4][1];
    #local A42 = AA[4][2];
    #local A43 = AA[4][3];
    #local A44 = AA[4][4];

    #local SA = vdot(<A22, A23, A24>, vcross(<A32, A33, A34>, <A42, A43, A44>));
    #local SB = vdot(<A21, A23, A24>, vcross(<A31, A33, A34>, <A41, A43, A44>));
    #local SC = vdot(<A21, A22, A24>, vcross(<A31, A32, A34>, <A41, A42, A44>));
    #local SD = vdot(<A21, A22, A23>, vcross(<A31, A32, A33>, <A41, A42, A43>));
    #local SE = vdot(<A20, A23, A24>, vcross(<A30, A33, A34>, <A40, A43, A44>));
    #local SF = vdot(<A20, A22, A24>, vcross(<A30, A32, A34>, <A40, A42, A44>));
    #local SG = vdot(<A20, A22, A23>, vcross(<A30, A32, A33>, <A40, A42, A43>));
    #local SH = vdot(<A20, A21, A24>, vcross(<A30, A31, A34>, <A40, A41, A44>));
    #local SI = vdot(<A20, A21, A23>, vcross(<A30, A31, A33>, <A40, A41, A43>));
    #local SJ = vdot(<A20, A21, A22>, vcross(<A30, A31, A32>, <A40, A41, A42>));

    (
        +AA[0][0]*(+A11*SA -A12*SB +A13*SC -A14*SD)
        -AA[0][1]*(+A10*SA -A12*SE +A13*SF -A14*SG)
        +AA[0][2]*(+A10*SB -A11*SE +A13*SH -A14*SI)
        -AA[0][3]*(+A10*SC -A11*SF +A12*SH -A14*SJ)
        +AA[0][4]*(+A10*SD -A11*SG +A12*SI -A13*SJ)
    )

#end // macro M_Det_55


#macro M_Det_66(AA)

    #local A00 = AA[0][0];
    #local A01 = AA[0][1];
    #local A02 = AA[0][2];
    #local A03 = AA[0][3];
    #local A04 = AA[0][4];
    #local A05 = AA[0][5];

    #local A10 = AA[1][0];
    #local A11 = AA[1][1];
    #local A12 = AA[1][2];
    #local A13 = AA[1][3];
    #local A14 = AA[1][4];
    #local A15 = AA[1][5];

    #local A20 = AA[2][0];
    #local A21 = AA[2][1];
    #local A22 = AA[2][2];
    #local A23 = AA[2][3];
    #local A24 = AA[2][4];
    #local A25 = AA[2][5];

    #local A30 = AA[3][0];
    #local A31 = AA[3][1];
    #local A32 = AA[3][2];
    #local A33 = AA[3][3];
    #local A34 = AA[3][4];
    #local A35 = AA[3][5];

    #local A40 = AA[4][0];
    #local A41 = AA[4][1];
    #local A42 = AA[4][2];
    #local A43 = AA[4][3];
    #local A44 = AA[4][4];
    #local A45 = AA[4][5];

    #local A50 = AA[5][0];
    #local A51 = AA[5][1];
    #local A52 = AA[5][2];
    #local A53 = AA[5][3];
    #local A54 = AA[5][4];
    #local A55 = AA[5][5];

    (
        + vdot(<A00, A01, A02>, vcross(<A10, A11, A12>, <A20, A21, A22>))*
          vdot(<A33, A34, A35>, vcross(<A43, A44, A45>, <A53, A54, A55>))
        - vdot(<A00, A01, A03>, vcross(<A10, A11, A13>, <A20, A21, A23>))*
          vdot(<A32, A34, A35>, vcross(<A42, A44, A45>, <A52, A54, A55>))
        + vdot(<A00, A01, A04>, vcross(<A10, A11, A14>, <A20, A21, A24>))*
          vdot(<A32, A33, A35>, vcross(<A42, A43, A45>, <A52, A53, A55>))
        - vdot(<A00, A01, A05>, vcross(<A10, A11, A15>, <A20, A21, A25>))*
          vdot(<A32, A33, A34>, vcross(<A42, A43, A44>, <A52, A53, A54>))
        + vdot(<A00, A02, A03>, vcross(<A10, A12, A13>, <A20, A22, A23>))*
          vdot(<A31, A34, A35>, vcross(<A41, A44, A45>, <A51, A54, A55>))
        - vdot(<A00, A02, A04>, vcross(<A10, A12, A14>, <A20, A22, A24>))*
          vdot(<A31, A33, A35>, vcross(<A41, A43, A45>, <A51, A53, A55>))
        + vdot(<A00, A02, A05>, vcross(<A10, A12, A15>, <A20, A22, A25>))*
          vdot(<A31, A33, A34>, vcross(<A41, A43, A44>, <A51, A53, A54>))
    
        - vdot(<A01, A02, A05>, vcross(<A11, A12, A15>, <A21, A22, A25>))*
          vdot(<A30, A33, A34>, vcross(<A40, A43, A44>, <A50, A53, A54>))
        + vdot(<A01, A02, A04>, vcross(<A11, A12, A14>, <A21, A22, A24>))*
          vdot(<A30, A33, A35>, vcross(<A40, A43, A45>, <A50, A53, A55>))
        - vdot(<A01, A02, A03>, vcross(<A11, A12, A13>, <A21, A22, A23>))*
          vdot(<A30, A34, A35>, vcross(<A40, A44, A45>, <A50, A54, A55>))
        + vdot(<A00, A04, A05>, vcross(<A10, A14, A15>, <A20, A24, A25>))*
          vdot(<A31, A32, A33>, vcross(<A41, A42, A43>, <A51, A52, A53>))
        - vdot(<A00, A03, A05>, vcross(<A10, A13, A15>, <A20, A23, A25>))*
          vdot(<A31, A32, A34>, vcross(<A41, A42, A44>, <A51, A52, A54>))
        + vdot(<A00, A03, A04>, vcross(<A10, A13, A14>, <A20, A23, A24>))*
          vdot(<A31, A32, A35>, vcross(<A41, A42, A45>, <A51, A52, A55>))
    
        - vdot(<A01, A03, A04>, vcross(<A11, A13, A14>, <A21, A23, A24>))*
          vdot(<A30, A32, A35>, vcross(<A40, A42, A45>, <A50, A52, A55>))
        + vdot(<A01, A03, A05>, vcross(<A11, A13, A15>, <A21, A23, A25>))*
          vdot(<A30, A32, A34>, vcross(<A40, A42, A44>, <A50, A52, A54>))
        - vdot(<A01, A04, A05>, vcross(<A11, A14, A15>, <A21, A24, A25>))*
          vdot(<A30, A32, A33>, vcross(<A40, A42, A43>, <A50, A52, A53>))
        + vdot(<A02, A03, A04>, vcross(<A12, A13, A14>, <A22, A23, A24>))*
          vdot(<A30, A31, A35>, vcross(<A40, A41, A45>, <A50, A51, A55>))
        - vdot(<A02, A03, A05>, vcross(<A12, A13, A15>, <A22, A23, A25>))*
          vdot(<A30, A31, A34>, vcross(<A40, A41, A44>, <A50, A51, A54>))
        + vdot(<A02, A04, A05>, vcross(<A12, A14, A15>, <A22, A24, A25>))*
          vdot(<A30, A31, A33>, vcross(<A40, A41, A43>, <A50, A51, A53>))
        - vdot(<A03, A04, A05>, vcross(<A13, A14, A15>, <A23, A24, A25>))*
          vdot(<A30, A31, A32>, vcross(<A40, A41, A42>, <A50, A51, A52>))
    )

#end // macro M_Det_66


#macro _M_DetAlongRow(AA, RowNo)

    #local SizeJ = dimension_size(AA, 2);
    #local Det = 0;
    #for (J, 0, SizeJ-1)
        #local A = AA[RowNo][J];
        #if (A != 0)
            #local D =
                M_Det(
                    M_DelRowAndCol(AA, RowNo, J)
                )
            ;
            #local Det = Det + pow(-1, RowNo + J)*A*D;
        #end // if
    #end // for

    Det

#end // macro _M_DetAlongRow


#macro _M_DetAlongCol(AA, ColNo)

    #local SizeI = dimension_size(AA, 1);
    #local Det = 0;
    #for (I, 0, SizeI-1)
        #local A = AA[I][ColNo];
        #if (A != 0)
            #local D =
                M_Det(
                    M_DelRowAndCol(AA, I, ColNo)
                )
            ;
            #local Det = Det + pow(-1, I + ColNo)*A*D;
        #end // if
    #end // for

    Det

#end // macro _M_DetAlongCol


#macro M_Det_SS(AA)

    #local Size =
        max(
            dimension_size(AA, 1),
            dimension_size(AA, 2)
        )
    ;
    #local BestRow = 0;
    #local BestCol = 0;
    #local MaxCntInRows = 0;
    #local MaxCntInCols = 0;
    #local FullCnt = false;
    #local K = 0;
    #while ((K < Size) & ! FullCnt)
        #local CntInRow = _M_ZeroCountInRow(AA, K);
        #local CntInCol = _M_ZeroCountInCol(AA, K);
        #if (MaxCntInRows < CntInRow)
            #local MaxCntInRows = CntInRow;
            #local BestRow = K;
        #end // if
        #if (MaxCntInCols < CntInCol)
            #local MaxCntInCols = CntInCol;
            #local BestCol = K;
        #end // if
        #local FullCnt =
            ((MaxCntInRows = Size) | (MaxCntInCols = Size));
        #local K = K + 1;
    #end // for
    #if (FullCnt)
        #local Det = 0;
    #else
        #if (MaxCntInCols < MaxCntInRows)
            #local Det = _M_DetAlongRow(AA, BestRow);
        #else
            #local Det = _M_DetAlongCol(AA, BestCol);
        #end // if
    #end // if

    Det

#end // macro M_Det_SS


#macro M_Det(AA)

    #local Size =
        max(
            dimension_size(AA, 1),
            dimension_size(AA, 2)
        )
    ;
    #switch (Size)
        #case (1)
            #local Det = M_Det_11(AA);
            #break
        #case (2)
            #local Det = M_Det_22(AA);
            #break
        #case (3)
            #local Det = M_Det_33(AA);
            #break
        #case (4)
            #local Det = M_Det_44(AA);
            #break
        #case (5)
            #local Det = M_Det_55(AA);
            #break
        #case (6)
            #local Det = M_Det_66(AA);
            #break
        #else
            #local Det = M_Det_SS(AA);
    #end // switch

    Det

#end // macro M_Det

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro M_Minors(AA)

    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = dimension_size(AA, 2);
    #local MM = array[SizeI][SizeJ];
    #for (I, 0, SizeI-1)
        #for (J, 0, SizeJ-1)
            #local MM[I][J] =
                M_Det(
                    M_DeleteRowAndCol(AA, I, J)
                )
            ;
        #end // for
    #end // for

    MM

#end // macro M_Minors


#macro M_Cofactors(AA)

    M_ApplyCheckerSigns(
        M_Minors(AA)
    )

#end // macro M_Cofactors


#macro M_Adjoint(AA)

    M_Transpose(
        M_Cofactors(AA)
    )

#end // macro M_Adjoint


#macro M_Inv_11(AA)

    #local Det = AA[0][0];
    #if (Det = 0)
        #error "Singular matrix. Not invertible."
    #end // if

    #local MM = array[1][1];
    #local MM[0][0] = +1/Det;

    MM

#end // macro M_Inv_11


#macro M_Inv_22(AA)

    #local Det =
        +AA[0][0]*AA[1][1]
        -AA[0][1]*AA[1][0]
    ;
    #if (Det = 0)
        #error "Singular matrix. Not invertible."
    #end // if

    #local MM = array[2][2];
    #local MM[0][0] = +AA[1][1]/Det;
    #local MM[0][1] = -AA[0][1]/Det;
    #local MM[1][0] = -AA[1][0]/Det;
    #local MM[1][1] = +AA[0][0]/Det;

    MM

#end // macro M_Inv_22


#macro M_Inv_33(AA)

    #local vA = <AA[0][0], AA[0][1], AA[0][2]>;
    #local vB = <AA[1][0], AA[1][1], AA[1][2]>;
    #local vC = <AA[2][0], AA[2][1], AA[2][2]>;

    #local v0 = vcross(vB, vC);
    #local v1 = vcross(vC, vA);
    #local v2 = vcross(vA, vB);

    #local Det = vdot(v2, vC);
    #if (Det = 0)
        #error "Singular matrix. Not invertible."
    #end // if

    #local vX = v0/Det;
    #local vY = v1/Det;
    #local vZ = v2/Det;

    #local MM = array[3][3];
    #local MM[0][0] = vX.x;
    #local MM[0][1] = vY.x;
    #local MM[0][2] = vZ.x;
    #local MM[1][0] = vX.y;
    #local MM[1][1] = vY.y;
    #local MM[1][2] = vZ.y;
    #local MM[2][0] = vX.z;
    #local MM[2][1] = vY.z;
    #local MM[2][2] = vZ.z;

    MM

#end // macro M_Inv_33


#macro M_Inv_44(AA)

    #local A00 = AA[0][0];
    #local A01 = AA[0][1];
    #local A02 = AA[0][2];
    #local A03 = AA[0][3];

    #local A10 = AA[1][0];
    #local A11 = AA[1][1];
    #local A12 = AA[1][2];
    #local A13 = AA[1][3];

    #local A20 = AA[2][0];
    #local A21 = AA[2][1];
    #local A22 = AA[2][2];
    #local A23 = AA[2][3];

    #local A30 = AA[3][0];
    #local A31 = AA[3][1];
    #local A32 = AA[3][2];
    #local A33 = AA[3][3];

    #local S0 = A00*A11 - A10*A01;
    #local S1 = A00*A12 - A10*A02;
    #local S2 = A00*A13 - A10*A03;
    #local S3 = A01*A12 - A11*A02;
    #local S4 = A01*A13 - A11*A03;
    #local S5 = A02*A13 - A12*A03;

    #local C5 = A22*A33 - A32*A23;
    #local C4 = A21*A33 - A31*A23;
    #local C3 = A21*A32 - A31*A22;
    #local C2 = A20*A33 - A30*A23;
    #local C1 = A20*A32 - A30*A22;
    #local C0 = A20*A31 - A30*A21;

    #local Det = S0*C5 - S1*C4 + S2*C3 + S3*C2 - S4*C1 + S5*C0;
    #if (Det = 0)
        #error "Singular matrix. Not invertible."
    #end // if

    #local MM = array[4][4];

    #local MM[0][0] = (+A11*C5 -A12*C4 +A13*C3)/Det;
    #local MM[0][1] = (-A01*C5 +A02*C4 -A03*C3)/Det;
    #local MM[0][2] = (+A31*S5 -A32*S4 +A33*S3)/Det;
    #local MM[0][3] = (-A21*S5 +A22*S4 -A23*S3)/Det;

    #local MM[1][0] = (-A10*C5 +A12*C2 -A13*C1)/Det;
    #local MM[1][1] = (+A00*C5 -A02*C2 +A03*C1)/Det;
    #local MM[1][2] = (-A30*S5 +A32*S2 -A33*S1)/Det;
    #local MM[1][3] = ( A20*S5 -A22*S2 +A23*S1)/Det;

    #local MM[2][0] = (+A10*C4 -A11*C2 +A13*C0)/Det;
    #local MM[2][1] = (-A00*C4 +A01*C2 -A03*C0)/Det;
    #local MM[2][2] = (+A30*S4 -A31*S2 +A33*S0)/Det;
    #local MM[2][3] = (-A20*S4 +A21*S2 -A23*S0)/Det;

    #local MM[3][0] = (-A10*C3 +A11*C1 -A12*C0)/Det;
    #local MM[3][1] = (+A00*C3 -A01*C1 +A02*C0)/Det;
    #local MM[3][2] = (-A30*S3 +A31*S1 -A32*S0)/Det;
    #local MM[3][3] = (+A20*S3 -A21*S1 +A22*S0)/Det;

    MM

#end // macro M_Inv_44


/*
TODO:

#macro M_Inv_55(AA)

#end // macro M_Inv_55


#macro M_Inv_66(AA)

#end // macro M_Inv_66

*/


#macro M_Inv_SS(AA)

    #local Size =
        max(
            dimension_size(AA, 1),
            dimension_size(AA, 2)
        )
    ;
    #local MM = M_Cofactors(AA);
    #local Det = 0;
    #for (I, 0, Size-1)
        #local Det = Det + AA[I][0]*MM[I][0];
    #end // for
    #if (Det = 0)
        #error "Singular matrix. Not invertible."
    #end // if

    M_Scale(M_Transpose(MM), 1/Det)

#end // macro M_Inv_SS


#macro M_Inv(AA)

    #local Size =
        max(
            dimension_size(AA, 1),
            dimension_size(AA, 2)
        )
    ;
    #switch (Size)
        #case (1)
            #local Det = M_Inv_11(AA);
            #break
        #case (2)
            #local Det = M_Inv_22(AA);
            #break
        #case (3)
            #local Det = M_Inv_33(AA);
            #break
        #case (4)
            #local Det = M_Inv_44(AA);
            #break
/*
        #case (5)
            #local Det = M_Inv_55(AA);
            #break
        #case (6)
            #local Det = M_Inv_66(AA);
            #break
*/
        #else
            #local Det = M_Inv_SS(AA);
    #end // switch

    Det

#end // macro M_Inv

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro M_FromTransformFn(TransformFn)

    #local pT = TransformFn(0, 0, 0);
    #local vX = TransformFn(1, 0, 0) - pT;
    #local vY = TransformFn(0, 1, 0) - pT;
    #local vZ = TransformFn(0, 0, 1) - pT;

    #local MM = array[4][4];
    #local MM[0][0] = vX.x;
    #local MM[0][1] = vY.x;
    #local MM[0][2] = vZ.x;
    #local MM[0][3] = pT.x;
    #local MM[1][0] = vX.y;
    #local MM[1][1] = vY.y;
    #local MM[1][2] = vZ.y;
    #local MM[1][3] = pT.y;
    #local MM[2][0] = vX.z;
    #local MM[2][1] = vY.z;
    #local MM[2][2] = vZ.z;
    #local MM[2][3] = pT.z;
    #local MM[3][0] = 0;
    #local MM[3][1] = 0;
    #local MM[3][2] = 0;
    #local MM[3][3] = 1;

    MM

#end // macro M_FromTransformFn


#macro M_FromTransform(Transform)

    M_FromTransformFn(
        function { transform { Transform } }
    )

#end // macro M_FromTransform

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro M_RowFromPosition2D(p0)

    #local MM = array[1][3];
    #local MM[0][0] = p0.u;
    #local MM[0][1] = p0.v;
    #local MM[0][2] = 1;

    MM

#end // macro M_RowFromPosition2D


#macro M_ColFromPosition2D(p0)

    #local MM = array[3][1];
    #local MM[0][0] = p0.u;
    #local MM[1][0] = p0.v;
    #local MM[2][0] = 1;

    MM

#end // macro M_ColFromPosition2D


#macro M_RowFromVector2D(v0)

    #local MM = array[1][3];
    #local MM[0][0] = v0.u;
    #local MM[0][1] = v0.v;
    #local MM[0][2] = 0;

    MM

#end // macro M_RowFromVector2D


#macro M_ColFromVector2D(v0)

    #local MM = array[3][1];
    #local MM[0][0] = v0.u;
    #local MM[1][0] = v0.v;
    #local MM[2][0] = 0;

    MM

#end // macro M_ColFromVector2D


#macro M_RowFromPosition3D(p0)

    #local MM = array[1][4];
    #local MM[0][0] = p0.x;
    #local MM[0][1] = p0.y;
    #local MM[0][2] = p0.z;
    #local MM[0][3] = 1;

    MM

#end // macro M_RowFromPosition3D


#macro M_ColFromPosition3D(p0)

    #local MM = array[4][1];
    #local MM[0][0] = p0.x;
    #local MM[1][0] = p0.y;
    #local MM[2][0] = p0.z;
    #local MM[3][0] = 1;

    MM

#end // macro M_ColFromPosition3D


#macro M_RowFromVector3D(v0)

    #local MM = array[1][4];
    #local MM[0][0] = v0.x;
    #local MM[0][1] = v0.y;
    #local MM[0][2] = v0.z;
    #local MM[0][3] = 0;

    MM

#end // macro M_RowFromVector3D


#macro M_ColFromVector3D(v0)

    #local MM = array[4][1];
    #local MM[0][0] = v0.x;
    #local MM[1][0] = v0.y;
    #local MM[2][0] = v0.z;
    #local MM[3][0] = 0;

    MM

#end // macro M_ColFromVector3D


#macro M_SkewFromVector3D(v0)

    #local X = v0.x;
    #local Y = v0.y;
    #local Z = v0.z;

    array[4][4] {
        {  0, -Z, +Y,  0 },
        { +Z,  0, -X,  0 },
        { -Y, +X,  0,  0 },
        {  0,  0,  0,  1 }
    }

#end // macro M_SkewFromVector3D

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro M_Position2D_FromRow(AA, RowNo)

    #local U = AA[RowNo][0];
    #local V = AA[RowNo][1];
    #local W = AA[RowNo][2];

    (<U, V>/W)

#end // macro M_Position2D_FromRow


#macro M_Position2D_FromCol(AA, ColNo)

    #local U = AA[0][ColNo];
    #local V = AA[1][ColNo];
    #local W = AA[2][ColNo];

    (<U, V>/W)

#end // macro M_Position2D_FromCol


#macro M_Vector2D_FromRow(AA, RowNo)

    #local U = AA[RowNo][0];
    #local V = AA[RowNo][1];
    #local W = AA[RowNo][2];

    <U, V>

#end // macro M_Vector2D_FromRow


#macro M_Vector2D_FromCol(AA, ColNo)

    #local U = AA[0][ColNo];
    #local V = AA[1][ColNo];
    #local W = AA[2][ColNo];

    <U, V>

#end // macro M_Vector2D_FromCol


#macro M_Position3D_FromRow(AA, RowNo)

    #local X = AA[RowNo][0];
    #local Y = AA[RowNo][1];
    #local Z = AA[RowNo][2];
    #local W = AA[RowNo][3];

    (<X, Y, Z>/W)

#end // macro M_Position3D_FromRow


#macro M_Position3D_FromCol(AA, ColNo)

    #local X = AA[0][ColNo];
    #local Y = AA[1][ColNo];
    #local Z = AA[2][ColNo];
    #local W = AA[3][ColNo];

    (<X, Y, Z>/W)

#end // macro M_Position3D_FromCol


#macro M_Vector3D_FromRow(AA, RowNo)

    #local X = AA[RowNo][0];
    #local Y = AA[RowNo][1];
    #local Z = AA[RowNo][2];
    #local W = AA[RowNo][3];

    <X, Y, Z>

#end // macro M_Vector3D_FromRow


#macro M_Vector3D_FromCol(AA, ColNo)

    #local X = AA[0][ColNo];
    #local Y = AA[1][ColNo];
    #local Z = AA[2][ColNo];
    #local W = AA[3][ColNo];

    <X, Y, Z>

#end // M_macro Vector3D_FromCol

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#macro _M_DebugLongStr(Str)

    #local C = 100;
    #local L = strlen(Str);
    #local D = div(L, C);
    #local M = mod(L, C);
    #for (I, 0, D-1)
        #debug substr(Str, 1 + I*C, C)
    #end // for
    #debug substr(Str, 1 + D*C, M)

#end // macro _M_DebugLongStr


#macro M_NoOfRows(AA)

    dimension_size(AA, 1)

#end // M_NoOfRows


#macro M_NoOfCols(AA)

    dimension_size(AA, 2)

#end // M_NoOfCols


#macro M_NoOfRowsStr(AA)

    str(M_NoOfRows(AA), 0, 0)

#end // M_NoOfRowsStr


#macro M_NoOfColsStr(AA)

    str(M_NoOfCols(AA), 0, 0)

#end // M_NoOfColsStr


#macro M_SizeStr(AA)

    concat(
        "[", M_NoOfRowsStr(AA), "]",
        "[", M_NoOfColsStr(AA), "]"
    )

#end // M_SizeStr


#macro M_PrintSize(AA)

    #debug M_SizeStr(AA)

#end // M_PrintSize


#macro M_CustomStr(AA, L, P, Compact)

    #if (Compact)
        #local IndentStr = ""
        #local EndStr = ""
        #local PadStr = ""
    #else
        #local IndentStr = "    "
        #local EndStr = "\n"
        #local PadStr = " "
    #end // if
    #local SizeI = dimension_size(AA, 1);
    #local SizeJ = dimension_size(AA, 2);
    #local StrI = str(SizeI, 0, 0)
    #local StrJ = str(SizeJ, 0, 0)
    #local Str = concat("array[", StrI, "][", StrJ, "]")
    #local Str = concat(Str, PadStr, "{", EndStr)
    #for (I, 0, SizeI-1)
        #local Str = concat(Str, IndentStr, "{", PadStr)
        #for (J, 0, SizeJ-1)
            #local M = AA[I][J];
            #if (M >= 0)
                #local Str = concat(Str, PadStr)
            #end // if
            #local Str = concat(Str, str(M, L, P))
            #if (J < SizeJ-1)
                #local Str = concat(Str, ",", PadStr)
            #end // if
        #end // for
        #local Str = concat(Str, PadStr, "}")
        #if (I < SizeI-1)
            #local Str = concat(Str, ",")
        #end // if
        #local Str = concat(Str, EndStr)
    #end // for
    #local Str = concat(Str, "}")

    Str

#end // macro M_CustomStr


#macro M_Str(AA)

    M_CustomStr(AA, 0, -1, false)

#end // macro M_Str


#macro M_CustomPrint(AA, L, P, Compact)

    _M_DebugLongStr(
        M_CustomStr(AA, L, P, Compact)
    )

#end // macro M_CustomPrint


#macro M_Print(AA)

    _M_DebugLongStr(
        M_Str(AA)
    )

#end // macro M_Print

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
