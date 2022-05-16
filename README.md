# POV-Ray-matrices
POV-Ray include file for working with matrices

## M_NoOfRows(AA)

#### Example:
```
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
```
3
```

## M_NoOfCols(AA)

#### Example:
```
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
```
4
```

## M_NoOfRowsStr(AA)

#### Example:
```
#declare S =
    M_NoOfRowsStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
#debug S
```
#### Result:
```
3
```

## M_NoOfColsStr(AA)

#### Example:
```
#declare S =
    M_NoOfColsStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
#debug S
```
#### Result:
```
4
```

## M_SizeStr(AA)

#### Example:
```
#declare S =
    M_SizeStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
#debug S
```
#### Result:
```
[3][4]
```

## M_PrintSize(AA)

#### Example:
```
M_PrintSize(
    array[3][2] {
        {  2,  4 },
        {  5,  3 },
        { -3,  0 }
    }
)
```
#### Result:
```
[3][2]
```

## M_CustomStr(AA, L, P, Compact)

#### Example:
```
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
        0, 2, false
    )
;
#debug S
```
#### Result:
```
array[3][4] {
    {  2.00,  4.00,  5.00,  4.00 },
    { -4.00,  7.00, -2.00, -0.50 },
    {  1.00,  3.00,  1.00,  0.00 }
}
```

#### Example:
```
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
        0, 1, true
    )
#debug S
```
#### Result:
```
array[3][4]{{2.0,4.0,5.0,4.0},{-4.0,7.0,-2.0,-0.5 },{1.0,3.0,1.0,0.0}}
```

## M_Str(AA)

#### Example:
```
#declare S =
    M_Str(
        array[3][4] {
            {  2.0,  4.0,  5.0,  4.0 },
            { -4.0,  7.0, -2.0, -0.5 },
            {  1.0,  3.0,  1.0,  0.0 }
        }
    )
;
#debug S
```
#### Result:
```
array[3][4] {
    {  2.000000,  4.000000,  5.000000,  4.000000 },
    { -4.000000,  7.000000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.000000,  0.000000 }
}
```

## M_CustomPrint(AA, L, P, Compact)

#### Example:
```
M_CustomPrint(
    array[3][4] {
        {  2.0,  4.0,  5.0,  4.0 },
        { -4.0,  7.0, -2.0, -0.5 },
        {  1.0,  3.0,  1.0,  0.0 }
    }
    0, 2, false
)
```

#### Result:
```
array[3][4] {
    {  2.00,  4.00,  5.00,  4.00 },
    { -4.00,  7.00, -2.00, -0.50 },
    {  1.00,  3.00,  1.00,  0.00 }
}
```

#### Example:
```
M_CustomPrint(
    array[3][4] {
        {  2.0,  4.0,  5.0,  4.0 },
        { -4.0,  7.0, -2.0, -0.5 },
        {  1.0,  3.0,  1.0,  0.0 }
    }
    0, 1, true
)
```

#### Result:
```
array[3][4]{{2.0,4.0,5.0,4.0},{-4.0,7.0,-2.0,-0.5 },{1.0,3.0,1.0,0.0}}
```

## M_Print(AA)

#### Example:
```
M_Print(
    array[3][4] {
        {  2.0,  4.0,  5.0,  4.0 },
        { -4.0,  7.0, -2.0, -0.5 },
        {  1.0,  3.0,  1.0,  0.0 }
    }
)
```

#### Result:
```
array[3][4] {
    {  2.000000,  4.000000,  5.000000,  4.000000 },
    { -4.000000,  7.000000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.000000,  0.000000 }
}
```

## M_Zero(SizeI, SizeJ)

#### Example:
```
#declare MM = M_Zero(4, 3)
M_Print(MM)
```

#### Result:
```
array[4][3] {
    {  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000 }
}
```

## M_Constant(SizeI, SizeJ, Const)

#### Example:
```
#declare MM = M_Constant(4, 3, -pi)
M_Print(MM)
```

#### Result:
```
array[4][3] {
    { -3.141593, -3.141593, -3.141593 },
    { -3.141593, -3.141593, -3.141593 },
    { -3.141593, -3.141593, -3.141593 },
    { -3.141593, -3.141593, -3.141593 }
}
```

## M_Identity(Size)

#### Example:
```
#declare MM = M_Identity(3)
M_Print(MM)
```

#### Result:
```
array[3][3] {
    {  1.000000,  0.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000 },
}
```

## M_Neg(AA)

#### Example:
```
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
```
array[3][4] {
    { -2.000000, -4.000000, -5.000000, -4.000000 },
    {  4.000000, -7.000000,  2.000000,  0.500000 },
    { -1.000000, -3.000000, -1.000000, -0.000000 }
}
```

## M_Pos(AA)

#### Example:
```
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
```
array[3][4] {
    {  2.000000,  4.000000,  5.000000,  4.000000 },
    { -4.000000,  7.000000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.000000,  0.000000 }
}
```

## M_Scale(AA, Scale)

#### Example:
```
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
```
array[3][2] {
    {  2.718282, -5.436564 },
    {  5.436564,  8.154845 },
    { -2.718282,  0.000000 }
}
```

## M_ApplyCheckerSigns(AA)

## M_ScaleRow(AA, RowNo, Scale)

## M_ScaleCol(AA, ColNo, Scale)

## M_Transpose(AA)

## M_SwapRows(AA, RowNo, Row_No)

## M_SwapCols(AA, ColNo, Col_No)

## M_Add(AA, BB)

## M_Sub(AA, BB)

## M_Trace(AA)

## M_Mult(AA, BB)

## M_DelRow(AA, RowNo)

## M_DelCol(AA, ColNo)

## M_DelRowAndCol(AA, RowNo, ColNo)

## M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)

## M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)

## M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)

## M_Stack(AAAA)

## M_Det_11(AA)

## M_Det_22(AA)

## M_Det_33(AA)

## M_Det_44(AA)

## M_Det_55(AA)

## M_Det_66(AA)

## M_Det_SS(AA)

## M_Det(AA)

## M_Minors(AA)

## M_Cofactors(AA)

## M_Adjoint(AA)

## M_Inv_11(AA)

## M_Inv_22(AA)

## M_Inv_33(AA)

## M_Inv_44(AA)

## M_Inv_SS(AA)

## M_Inv(AA)

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
