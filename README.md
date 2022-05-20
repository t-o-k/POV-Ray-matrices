# POV-Ray-matrices
POV-Ray include file for working with matrices

## M_NoOfRows(AA)

#### Example:
```povray
#declare N =
    M_NoOfRows(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
#debug str(N, 0, 0)
```
#### Result:
```povray
3
```

## M_NoOfCols(AA)

#### Example:
```povray
#declare N =
    M_NoOfCols(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
#debug str(N, 0, 0)
```
#### Result:
```povray
4
```

## M_NoOfRowsStr(AA)

#### Example:
```povray
#declare S =
    M_NoOfRowsStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
#debug S
```
#### Result:
```povray
3
```

## M_NoOfColsStr(AA)

#### Example:
```povray
#declare S =
    M_NoOfColsStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
#debug S
```
#### Result:
```povray
4
```

## M_SizeStr(AA)

#### Example:
```povray
#declare S =
    M_SizeStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
#debug S
```
#### Result:
```povray
[3][4]
```

## M_PrintSize(AA)

#### Example:
```povray
M_PrintSize(
    array[3][2] {
        {  2,  4 },
        {  5,  3 },
        { -3,  0 }
    }
)
```
#### Result:
```povray
[3][2]
```

## M_CustomStr(AA, L, P, Compact)

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        },
        0, 2, false
    )
#debug S
```
#### Result:
```povray
array[3][4] {
    {  2.00,  4.00,  5.00,  4.00 },
    { -4.00,  7.00, -2.00, -0.50 },
    {  1.00,  3.00,  1.00,  0.00 }
}
```

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        },
        0, 1, true
    )
#debug S
```
#### Result:
```povray
array[3][4]{{2.0,4.0,5.0,4.0},{-4.0,7.0,-2.0,-0.5},{1.0,3.0,1.0,0.0}}
```

## M_Str(AA)

#### Example:
```povray
#declare S =
    M_Str(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
#debug S
```
#### Result:
```povray
array[3][4] {
    {  2.000000,  4.000000,  5.000000,  4.000000 },
    { -4.000000,  7.000000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.000000,  0.000000 }
}
```

## M_CustomPrint(AA, L, P, Compact)

#### Example:
```povray
M_CustomPrint(
    array[3][4] {
        {  2.0,  4.0,  5.0,  4.0 },
        { -4.0,  7.0, -2.0, -0.5 },
        {  1.0,  3.0,  1.0,  0.0 }
    },
    0, 2, false
)
```
#### Result:
```povray
array[3][4] {
    {  2.00,  4.00,  5.00,  4.00 },
    { -4.00,  7.00, -2.00, -0.50 },
    {  1.00,  3.00,  1.00,  0.00 }
}
```

#### Example:
```povray
M_CustomPrint(
    array[3][4] {
        {  2.0,  4.0,  5.0,  4.0 },
        { -4.0,  7.0, -2.0, -0.5 },
        {  1.0,  3.0,  1.0,  0.0 }
    },
    0, 1, true
)
```
#### Result:
```povray
array[3][4]{{2.0,4.0,5.0,4.0},{-4.0,7.0,-2.0,-0.5 },{1.0,3.0,1.0,0.0}}
```

## M_Print(AA)

#### Example:
```povray
M_Print(
    array[3][4] {
        {  2.0,  4.0,  5.0,  4.0 },
        { -4.0,  7.0, -2.0, -0.5 },
        {  1.0,  3.0,  1.0,  0.0 }
    }
)
```
#### Result:
```povray
array[3][4] {
    {  2.000000,  4.000000,  5.000000,  4.000000 },
    { -4.000000,  7.000000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.000000,  0.000000 }
}
```

## M_Zero(NoOfRows, NoOfCols)

#### Example:
```povray
#declare MM = M_Zero(4, 3);
M_Print(MM)
```
#### Result:
```povray
array[4][3] {
    {  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000 }
}
```

## M_Constant(NoOfRows, NoOfCols, Const)

#### Example:
```povray
#declare MM = M_Constant(4, 3, -pi);
M_Print(MM)
```
#### Result:
```povray
array[4][3] {
    { -3.141593, -3.141593, -3.141593 },
    { -3.141593, -3.141593, -3.141593 },
    { -3.141593, -3.141593, -3.141593 },
    { -3.141593, -3.141593, -3.141593 }
}
```

## M_Identity(Size)

#### Example:
```povray
#declare MM = M_Identity(3);
M_Print(MM)
```
#### Result:
```povray
array[3][3] {
    {  1.000000,  0.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000 },
}
```

## M_Neg(AA)

#### Example:
```povray
#declare MM =
    M_Neg(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[3][4] {
    { -2.000000, -4.000000, -5.000000, -4.000000 },
    {  4.000000, -7.000000,  2.000000,  0.500000 },
    { -1.000000, -3.000000, -1.000000,  -0.000000 }
}
```

## M_Pos(AA)

#### Example:
```povray
#declare MM =
    M_Pos(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[3][4] {
    {  2.000000,  4.000000,  5.000000,  4.000000 },
    { -4.000000,  7.000000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.000000,  0.000000 }
}
```

## M_Scale(AA, Scale)

#### Example:
```povray
#declare MM =
    M_Scale(
        array[3][2] {
            {  1, -2 },
            {  2,  3 },
            { -1,  0 }
        },
        exp(1)
    )
;
M_Print(MM)
```
#### Result:
```povray
array[3][2] {
    {  2.718282, -5.436564 },
    {  5.436564,  8.154845 },
    { -2.718282,  0.000000 }
}
```

## M_ApplyCheckerSigns(AA)

#### Example:
```povray
#declare MM =
    M_ApplyCheckerSigns(
        array[4][5] {
            {  1,  2,  3,  4,  5 },
            {  6,  7,  8,  9,  0 },
            { -1, -6,  0, -3,  4 }
            { -2,  1,  5,  0, -5 }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[4][5] {
    {  1.000000, -2.000000,  3.000000, -4.000000,  5.000000 },
    { -6.000000,  7.000000, -8.000000,  9.000000,  -0.000000 },
    { -1.000000,  6.000000,  0.000000,  3.000000,  4.000000 }
    {  2.000000,  1.000000, -5.000000,  0.000000, -5.000000 }
}
```

## M_ScaleRow(AA, RowNo, Scale)

## M_ScaleCol(AA, ColNo, Scale)

## M_SwapRows(AA, RowNo, Row_No)

## M_SwapCols(AA, ColNo, Col_No)

## M_Add(AA, BB)

#### Example:
```povray
#declare MM =
    M_Add(
        array[3][4] {
            {  3,  0, -2,  2 },
            {  1, -2,  0,  1 },
            { -1,  2, -3,  3 }
        },
        array[3][4] {
            { -1,  1, -2, -3 },
            {  2,  3,  0,  1 },
            {  2,  1, -1, -2 }
        }
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][4] {
    {  2,  1, -4, -1 },
    {  3,  1,  0,  2 },
    {  1,  3, -4,  1 }
}
```

## M_Sub(AA, BB)

#### Example:
```povray
#declare MM =
    M_Sub(
        array[3][4] {
            {  3,  0, -2,  2 },
            {  1, -2,  0,  1 },
            { -1,  2, -3,  3 }
        },
        array[3][4] {
            { -1,  1, -2, -3 },
            {  2,  3,  0,  1 },
            {  2,  1, -1, -2 }
        }
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][4] {
    {  4, -1,  0,  5 },
    { -1, -5,  0,  0 },
    { -3,  1, -2,  5 }
}
```

## M_Trace(AA)

## M_Transpose(AA)

#### Example:
```povray
#declare MM =
    M_Transpose(
        array[3][5] {
            {   0,  1,  2,  3,  4 },
            {  10, 11, 12, 13, 14 },
            {  20, 21, 22, 23, 24 },
        }
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[5][3] {
    {  0, 10, 20 },
    {  1, 11, 21 },
    {  2, 12, 22 },
    {  3, 13, 23 },
    {  4, 14, 24 }
}
```

## M_Mult(AA, BB)

#### Example:
```povray
#declare MM =
    M_Mult(
        array[4][2] {
            {  2.00,  0.00 },
            { -4.00,  2.00 },
            {  1.00,  2.00 },
            {  0.00, -2.00 }
        },
        array[2][3] {
            {  0.90,  0.30,  0.40 },
            {  0.40,  0.30,  0.40 }
        }
    )
;
M_CustomPrint(MM, 5, 2, false)
```
#### Result:
```povray
array[4][3] {
    {  1.80,  0.60,  0.80 },
    { -2.80, -0.60, -0.80 },
    {  1.70,  0.90,  1.20 },
    { -0.80, -0.60, -0.80 }
}
```

#### Example:
```povray
#declare MM =
    M_Mult(
        array[4][4] {
            {  2.00,  0.00,  1.00,  4.00 },
            { -4.00,  2.00, -2.00,  0.00 },
            {  1.00,  2.00,  1.00, -2.00 },
            {  0.00, -2.00, -1.00, -4.00 }
        },
        array[4][4] {
            {  0.90,  0.30,  0.40,  0.70 },
            {  0.40,  0.30,  0.40,  0.20 },
            { -1.40, -0.80, -0.40, -1.20 },
            {  0.15,  0.05, -0.10, -0.05 }
        }
    )
;
M_CustomPrint(MM, 5, 2, false)
```
#### Result:
```povray
array[4][4] {
    {  1.00, -0.00,  0.00, -0.00 },
    {  0.00,  1.00,  0.00,  0.00 },
    {  0.00, -0.00,  1.00,  0.00 },
    { -0.00,  0.00,  0.00,  1.00 }
}
```

## M_DelRow(AA, RowNo)

## M_DelCol(AA, ColNo)

## M_DelRowAndCol(AA, RowNo, ColNo)

#### Example:
```povray
#declare MM =
    M_DelRowAndCol(
        array[5][4] {
            {   0,  1,  2,  3 },
            {  10, 11, 12, 13 },
            {  20, 21, 22, 23 },
            {  30, 31, 32, 33 },
            {  40, 41, 42, 43 },
        },
        0, 2
    )
;
M_Print(MM)
```
#### Result:
```povray
array[4][3] {
    {  10.000000, 11.000000, 13.000000 },
    {  20.000000, 21.000000, 23.000000 },
    {  30.000000, 31.000000, 33.000000 },
    {  40.000000, 41.000000, 43.000000 }
}
```

## M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)

## M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)

## M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)

#### Example:
```povray
#declare MM =
    M_SubMatrix(
        array[5][7] {
            {   0,  1,  2,  3,  4,  5,  6 },
            {  10, 11, 12, 13, 14, 15, 16 },
            {  20, 21, 22, 23, 24, 25, 26 },
            {  30, 31, 32, 33, 34, 35, 36 },
            {  40, 41, 42, 43, 44, 45, 46 },
        },
        1, 3, 2, 4
    )
;
M_Print(MM)
```
#### Result:
```povray
array[3][4] {
    {  12.000000, 13.000000, 14.000000, 15.000000 },
    {  22.000000, 23.000000, 24.000000, 25.000000 },
    {  32.000000, 33.000000, 34.000000, 35.000000 }
}
```

## M_Stack(AAAA)

## M_Det_SS(AA)

#### Example:
```povray
#declare R =
    M_Det_SS(
        array[8][8] {
            { -2,  4,  5,  0, -4, -5, -2,  0 },
            {  3, -3,  0, -1, -2,  0, -4, -5 },
            { -4,  6, -2,  4,  0, -3,  0, -1 },
            {  1,  3, -1,  0,  3,  2,  1,  3 },
            {  2,  0,  5,  4,  1,  0,  1,  1 },
            {  1,  3, -3,  1,  0,  3, -2,  0 },
            {  4, -5, -4,  0,  3, -3,  2, -1 },
            {  0, -1,  3, -2,  2, -1,  3,  2 }
        }
    )
;
#debug str(R, 0, -1)
```
#### Result:
```povray
106676.000000
```

## M_Det(AA)

#### Example:
```povray
#declare R =
    M_Det(
        array[7][7] {
            { -2,  4,  5,  0, -4, -5, -2 },
            {  3, -3,  0, -1, -2,  0, -4 },
            { -4,  6, -2,  4,  0, -3,  0 },
            {  1,  3, -1,  0,  3,  2,  1 },
            {  2,  0,  5,  4,  1,  0,  1 },
            {  1,  3, -3,  1,  0,  3, -2 },
            {  4, -5, -4,  0,  3, -3,  2 }
        }
    )
;
#debug str(R, 0, -1)
```
#### Result:
```povray
-72380.000000
```

## M_Minors(AA)

#### Example:
```povray
#declare MM =
    M_Minors(
        array[3][3] {
            { -2,  4,  5 },
            {  3, -3,  0 },
            { -4,  6, -2 }
        }
    )
;
M_CustomPrint(MM, 3, 0, false)
```
#### Result:
```povray
array[3][3] {
    {   6,  -6,   6 },
    { -38,  24,   4 },
    {  15, -15,  -6 }
}
```

## M_Cofactors(AA)

## M_Adjoint(AA)

## M_Inv_SS(AA)

## M_Inv(AA)

#### Example:
```povray
#declare MM =
    M_Inv(
        array[4][4] {
            {  2,  0,  1,  4 },
            { -4,  2, -2,  0 },
            {  1,  2,  1, -2 },
            {  0, -2, -1, -4 }
        }
    )
;
M_CustomPrint(MM, 0, 2, false)
```
#### Result:
```povray
array[4][4] {
    {  0.90,  0.30,  0.40,  0.70 },
    {  0.40,  0.30,  0.40,  0.20 },
    { -1.40, -0.80, -0.40, -1.20 },
    {  0.15,  0.05, -0.10, -0.05 }
}
```

## M_FromTransformFn(TransformFn)

## M_FromTransform(Transform)

## M_RowFromPosition2D(p0)

## M_ColFromPosition2D(p0)

## M_RowFromVector2D(v0)

## M_ColFromVector2D(v0)

## M_RowFromPosition3D(p0)

## M_ColFromPosition3D(p0)

## M_RowFromVector3D(v0)

## M_ColFromVector3D(v0)

## M_SkewFromVector3D(v0)

## M_Position2D_FromRow(AA, RowNo)

## M_Position2D_FromCol(AA, ColNo)

## M_Vector2D_FromRow(AA, RowNo)

## M_Vector2D_FromCol(AA, ColNo)

## M_Position3D_FromRow(AA, RowNo)

## M_Position3D_FromCol(AA, ColNo)

## M_Vector3D_FromRow(AA, RowNo)

## M_Vector3D_FromCol(AA, ColNo)
