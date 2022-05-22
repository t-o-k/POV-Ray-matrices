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
    {  0.000000,  0.000000,  1.000000 }
}
```

## M_Neg(AA)

#### Example:
```povray
#declare MM =
    M_Neg(
        array[3][4] {
            {  2.0,  4.2, -5.6,  4.0 },
            { -4.8,  7.0,  2.7, -0.5 },
            {  1.3,  3.0, -1.4,  0.0 }
        }
    )
;
M_CustomPrint(MM, 4, 1, false)
```
#### Result:
```povray
array[3][4] {
    { -2.0, -4.2,  5.6, -4.0 },
    {  4.8, -7.0, -2.7,  0.5 },
    { -1.3, -3.0,  1.4, -0.0 }
}
```

## M_Pos(AA)

#### Example:
```povray
#declare MM =
    M_Pos(
        array[3][4] {
            {  2.0,  4.2, -5.6,  4.0 },
            { -4.8,  7.0,  2.7, -0.5 },
            {  1.3,  3.0, -1.4,  0.0 }
        }
    )
;
M_CustomPrint(MM, 4, 1, false)
```
#### Result:
```povray
array[3][4] {
    {  2.0,  4.2, -5.6,  4.0 },
    { -4.8,  7.0,  2.7, -0.5 },
    {  1.3,  3.0, -1.4,  0.0 }
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
        sqrt(2)
    )
;
M_Print(MM)
```
#### Result:
```povray
array[3][2] {
    {  1.414214, -2.828427 },
    {  2.828427,  4.242641 },
    { -1.414214,  0.000000 }
}
```

## M_Round(AA, N)

#### Example:
```povray
#declare MM =
    M_Round(
        array[3][3] {
            {    4.5666, -212.3857,  126.5807 },
            { -161.3253,  196.7763,   -7.5485 },
            {   55.0143,  -97.8642,   69.9952 }
        },
        2
    )
;
M_CustomPrint(MM, 9, 4, false)
```
#### Result:
```povray
array[3][3] {
    {    4.5700, -212.3900,  126.5800 },
    { -161.3300,  196.7800,   -7.5500 },
    {   55.0100,  -97.8600,   70.0000 }
}
```

#### Example:
```povray
#declare MM =
    M_Round(
        array[3][3] {
            {    4.5666, -212.3857,  126.5807 },
            { -161.3253,  196.7763,   -7.5485 },
            {   55.0143,  -97.8642,   69.9952 }
        },
        -1
    )
;
M_CustomPrint(MM, 9, 4, false)
```
#### Result:
```povray
array[3][3] {
    {    0.0000, -210.0000,  130.0000 },
    { -160.0000,  200.0000,  -10.0000 },
    {   60.0000, -100.0000,   70.0000 }
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
            { -1, -6,  0, -3,  4 },
            { -2,  1,  5,  0, -5 }
        }
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][5] {
    {  1, -2,  3, -4,  5 },
    { -6,  7, -8,  9, -0 },
    { -1,  6,  0,  3,  4 },
    {  2,  1, -5,  0, -5 }
}
```

## M_ScaleRow(AA, RowNo, Scale)

#### Example:
```povray
#declare MM =
    M_ScaleRow(
        array[5][4] {
            {   0,   1,  -2,   3 },
            { -10,  11,  12, -13 },
            {  20, -21,  22,  23 },
            { -30,  31,  32, -33 },
            {  40,  41, -42,  43 }
        },
        3, -15
    )
;
M_CustomPrint(MM, 4, 0, false)
```
#### Result:
```povray
array[5][4] {
    {    0,    1,   -2,    3 },
    {  -10,   11,   12,  -13 },
    {   20,  -21,   22,   23 },
    {  450, -465, -480,  495 },
    {   40,   41,  -42,   43 }
}

```

## M_ScaleCol(AA, ColNo, Scale)

#### Example:
```povray
#declare MM =
    M_ScaleCol(
        array[5][4] {
            {   0,   1,  -2,   3 },
            { -10,  11,  12, -13 },
            {  20, -21,  22,  23 },
            { -30,  31,  32, -33 },
            {  40,  41, -42,  43 }
        },
        0, 22
    )
;
M_CustomPrint(MM, 4, 0, false)
```
#### Result:
```povray
array[5][4] {
    {    0,    1,   -2,    3 },
    { -220,   11,   12,  -13 },
    {  440,  -21,   22,   23 },
    { -660,   31,   32,  -33 },
    {  880,   41,  -42,   43 }
}
```

## M_SwapRows(AA, RowNo, Row_No)

#### Example:
```povray
#declare MM =
    M_SwapRows(
        array[5][4] {
            {   0,   1,  -2,   3 },
            { -10,  11,  12, -13 },
            {  20, -21,  22,  23 },
            { -30,  31,  32, -33 },
            {  40,  41, -42,  43 }
        },
        1, 3
    )
;
M_CustomPrint(MM, 3, 0, false)
```
#### Result:
```povray
array[5][4] {
    {   0,   1,  -2,   3 },
    { -30,  31,  32, -33 },
    {  20, -21,  22,  23 },
    { -10,  11,  12, -13 },
    {  40,  41, -42,  43 }
}
```

## M_SwapCols(AA, ColNo, Col_No)

#### Example:
```povray
#declare MM =
    M_SwapCols(
        array[5][4] {
            {   0,   1,  -2,   3 },
            { -10,  11,  12, -13 },
            {  20, -21,  22,  23 },
            { -30,  31,  32, -33 },
            {  40,  41, -42,  43 }
        },
        2, 0
    )
;
M_CustomPrint(MM, 3, 0, false)
```
#### Result:
```povray
array[5][4] {
    {  -2,   1,   0,   3 },
    {  12,  11, -10, -13 },
    {  22, -21,  20,  23 },
    {  32,  31, -30, -33 },
    { -42,  41,  40,  43 }
}
```

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

#### Example:
```povray
#declare R =
    M_Trace(
        array[3][3] {
            {  2.0,  4.5, -5.7 },
            {  3.6, -3.0,  0.1 },
            { -4.3,  6.4, -2.0 }
        }
    )
;
#debug str(R, 0, -1)
```
#### Result:
```povray
-3.000000
```

## M_Transpose(AA)

#### Example:
```povray
#declare MM =
    M_Transpose(
        array[3][5] {
            {   0,  1,  2,  3,  4 },
            {  10, 11, 12, 13, 14 },
            {  20, 21, 22, 23, 24 }
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

#### Example:
```povray
#declare MM =
    M_DelRow(
        array[5][4] {
            {  0,  1,  2,  3 },
            { 10, 11, 12, 13 },
            { 20, 21, 22, 23 },
            { 30, 31, 32, 33 },
            { 40, 41, 42, 43 }
        },
        1
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    {  0,  1,  2,  3 },
    { 20, 21, 22, 23 },
    { 30, 31, 32, 33 },
    { 40, 41, 42, 43 }
}
```

## M_DelCol(AA, ColNo)

#### Example:
```povray
#declare MM =
    M_DelCol(
        array[5][4] {
            {  0,  1,  2,  3 },
            { 10, 11, 12, 13 },
            { 20, 21, 22, 23 },
            { 30, 31, 32, 33 },
            { 40, 41, 42, 43 }
        },
        2
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[5][3] {
    {  0,  1,  3 },
    { 10, 11, 13 },
    { 20, 21, 23 },
    { 30, 31, 33 },
    { 40, 41, 43 }
}
```

## M_DelRowAndCol(AA, RowNo, ColNo)

#### Example:
```povray
#declare MM =
    M_DelRowAndCol(
        array[5][4] {
            {  0,  1,  2,  3 },
            { 10, 11, 12, 13 },
            { 20, 21, 22, 23 },
            { 30, 31, 32, 33 },
            { 40, 41, 42, 43 }
        },
        1, 2
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][3] {
    {  0,  1,  3 },
    { 20, 21, 23 },
    { 30, 31, 33 },
    { 40, 41, 43 }
}
```

## M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)

#### Example:
```povray
#declare MM =
    M_AddScaledRowToRow(
        array[4][4] {
            {  1,  2, -1,  0 },
            { -5, -3,  0,  6 },
            { -6,  5,  7, -4 },
            {  4,  0, -2,  3 }
        }
        -4, 0, 3
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    {  1,  2, -1,  0 },
    { -5, -3,  0,  6 },
    { -6,  5,  7, -4 },
    {  0, -8,  2,  3 }
}
```

#### Example:
```povray
#declare MM =
    M_AddScaledRowToRow(
        array[4][4] {
            {  1,  2, -1,  0 },
            { -5, -3,  0,  6 },
            { -6,  5,  7, -4 },
            {  4,  0, -2,  3 }
        }
        -1, 0, 0
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    {  0,  0,  0,  0 },
    { -5, -3,  0,  6 },
    { -6,  5,  7, -4 },
    {  4,  0, -2,  3 }
}
```

## M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)

#### Example:
```povray
#declare MM =
    M_AddScaledColToCol(
        array[4][4] {
            { -5,  1, -4, -6 },
            { -3,  2,  0,  5 },
            {  0, -1,  2,  7 },
            {  6,  0, -3, -4 }
        }
        4, 1, 2
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    { -5,  1,  0, -6 },
    { -3,  2,  8,  5 },
    {  0, -1, -2,  7 },
    {  6,  0, -3, -4 }
}
```

#### Example:
```povray
#declare MM =
    M_AddScaledColToCol(
        array[4][4] {
            { -5,  1, -4, -6 },
            { -3,  2,  0,  5 },
            {  0, -1,  2,  7 },
            {  6,  0, -3, -4 }
        }
        -1, 3, 3
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    { -5,  1, -4,  0 },
    { -3,  2,  0,  0 },
    {  0, -1,  2,  0 },
    {  6,  0, -3,  0 }
}
```

## M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)

#### Example:
```povray
#declare MM =
    M_SubMatrix(
        array[5][7] {
            {  0,  1,  2,  3,  4,  5,  6 },
            { 10, 11, 12, 13, 14, 15, 16 },
            { 20, 21, 22, 23, 24, 25, 26 },
            { 30, 31, 32, 33, 34, 35, 36 },
            { 40, 41, 42, 43, 44, 45, 46 }
        },
        1, 3, 2, 4
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][4] {
    { 12, 13, 14, 15 },
    { 22, 23, 24, 25 },
    { 32, 33, 34, 35 }
}
```

## M_Stack(AAAA)

#### Example:
```povray
#declare BB =
    array[3][4] {
        { 00, 01, 02, 03 },
        { 10, 11, 12, 13 },
        { 20, 21, 22, 23 }
    }
;
#declare CC =
    array[3][2] {
        { 04, 05 },
        { 14, 15 },
        { 24, 25 }
    }
;
#declare DD =
    array[1][4] {
        { 30, 31, 32, 33 }
    }
;
#declare EE =
    array[1][2] {
        { 34, 35 }
    }
;
#declare MM =
    M_Stack(
        array[2][2] {
            { BB, CC },
            { DD, EE }
        }
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][6] {
    {  0,  1,  2,  3,  4,  5 },
    { 10, 11, 12, 13, 14, 15 },
    { 20, 21, 22, 23, 24, 25 },
    { 30, 31, 32, 33, 34, 35 }
}
```

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
        array[4][4] {
            { -2,  4,  5,  0 },
            {  3, -3,  0, -1 },
            { -4,  6, -2,  4 },
            {  1,  3, -1,  0 }
        }
    )
;
#debug str(R, 0, -1)
```
#### Result:
```povray
-150.000000
```

## M_Minors(AA)

#### Example:
```povray
#declare MM =
    M_Minors(
        array[4][4] {
            {  2,  0,  1,  4 },
            { -4,  2, -2,  0 },
            {  1,  2,  1, -2 },
            {  0, -2, -1, -4 }
        }
    )
;
M_CustomPrint(MM, 3, 0, false)
```
#### Result:
```povray
array[4][4] {
    { -36,  16,  56,   6 },
    {  12, -12, -32,  -2 },
    { -16,  16,  16,  -4 },
    {  28,  -8, -48,   2 }
}
```

## M_Cofactors(AA)

#### Example:
```povray
#declare MM =
    M_Cofactors(
        array[4][4] {
            {  2,  0,  1,  4 },
            { -4,  2, -2,  0 },
            {  1,  2,  1, -2 },
            {  0, -2, -1, -4 }
        }
    )
;
M_CustomPrint(MM, 3, 0, false)
```
#### Result:
```povray
array[4][4] {
    { -36, -16,  56,  -6 },
    { -12, -12,  32,  -2 },
    { -16, -16,  16,   4 },
    { -28,  -8,  48,   2 }
}
```

## M_Adjoint(AA)

#### Example:
```povray
#declare MM =
    M_Adjoint(
        array[4][4] {
            {  2,  0,  1,  4 },
            { -4,  2, -2,  0 },
            {  1,  2,  1, -2 },
            {  0, -2, -1, -4 }
        }
    )
;
M_CustomPrint(MM, 3, 0, false)
```
#### Result:
```povray
array[4][4] {
    { -36, -12, -16, -28 },
    { -16, -12, -16,  -8 },
    {  56,  32,  16,  48 },
    {  -6,  -2,   4,   2 }
}
```

## M_Inv_SS(AA)

#### Example:
```povray

#declare MM =
    M_Inv_SS(
        array[8][8] {
            {  0.4, -0.2,  0.2,  0.0, -0.8,  0.6, -0.2,  0.2 },
            { -0.2, -0.2,  0.2,  0.2, -0.4, -0.4,  0.0, -0.4 },
            { -0.4,  0.2,  0.6,  0.2,  0.6, -0.4, -0.4,  0.0 },
            {  0.6,  0.0,  0.0,  0.6,  0.4,  0.0, -0.4, -0.2 },
            {  0.0, -1.0,  0.4,  0.0,  0.0, -0.4, -0.6, -0.6 },
            {  0.4, -0.4,  0.8, -0.6,  0.0,  0.0, -1.0,  0.4 },
            {  0.2,  0.6, -0.6,  0.6, -0.4,  0.2, -0.2, -0.4 },
            { -0.6,  0.4, -0.4,  0.4,  0.4, -0.4,  0.4, -0.2 }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[8][8] {
    { -1.097945,  1.066649, -0.612104,  0.995640, -0.799447,  0.025037, -0.190581, -1.397306 },
    { -1.214064,  0.493395,  0.870241, -0.417638, -0.788656, -0.423465,  0.852758, -1.969697 },
    { -0.368644,  0.689372,  1.583355, -0.100147, -0.393249, -1.256583, -0.219287, -2.542088 },
    {  1.804368,  0.208927, -0.208927,  1.087369, -0.018993,  0.389364, -0.636277,  2.407407 },
    { -0.597211, -1.052404,  0.597859,  0.101226,  0.343607, -0.680307, -0.080074, -0.824916 },
    {  0.478287, -2.006820,  1.552275, -0.888803,  0.884918, -1.777173,  0.553829, -1.936027 },
    { -0.533972,  0.746784,  0.162307,  0.229647, -0.563757, -1.170250, -0.704049, -1.498316 },
    {  1.992791,  0.228352, -1.591988,  0.992187, -0.640594,  2.223086, -1.232625,  4.377104 }
}
```

## M_Inv(AA)

#### Example:
```povray
#declare MM =
    M_Inv(
        array[4][4] {
            { -0.328480, -1.611703, -1.551516,  0.884465 },
            {  2.404917, -2.446145,  2.123540, -1.459950 },
            {  1.251583, -2.918587,  0.628225, -0.108170 },
            { -0.621307, -0.679015,  0.731087,  2.723088 }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  3.380183,  3.757772, -5.181502,  0.710966 },
    {  1.047957,  1.283180, -2.058642,  0.265807 },
    { -1.613253, -1.263927,  1.967763, -0.075485 },
    {  1.465666,  1.516686, -2.223857,  0.615992 }
}
```

## M_FromTransformFn(TransformFn)

#### Example:
```povray
#declare MM =
    M_FromTransformFn(
        function {
            transform { }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  1.000000,  0.000000,  0.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000,  1.000000 }
}
```

#### Example:
```povray
#declare TrFn =
    function {
        transform {
            rotate -60*y
            translate <-4,  6, -8>
        }
    }
;
#declare MM = M_FromTransformFn(TrFn);
M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  0.500000,  0.000000, -0.866025, -4.000000 },
    {  0.000000,  1.000000,  0.000000,  6.000000 },
    {  0.866025,  0.000000,  0.500000, -8.000000 },
    {  0.000000,  0.000000,  0.000000,  1.000000 }
}
```

## M_FromTransform(Transform)

#### Example:
```povray
#declare MM =
    M_FromTransform(
        transform {
            scale < 3, -2,  2>
            translate <-4,  6, -8>
        }
    )
;
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    {  3,  0,  0, -4 },
    {  0, -2,  0,  6 },
    {  0,  0,  2, -8 },
    {  0,  0,  0,  1 }
}
```

#### Example:
```povray
#declare Tr =
    transform {
        matrix <
             3,  5, -7,
            -3, -2,  1,
             0,  0,  2,
            -4,  6, -8
        >
    }
#declare MM = M_FromTransform(Tr);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][4] {
    {  3, -3,  0, -4 },
    {  5, -2,  0,  6 },
    { -7,  1,  2, -8 },
    {  0,  0,  0,  1 }
}
```

## M_RowFromPos2D(p0)

#### Example:
```povray
#declare p0 = < 3, -4>;
#declare MM = M_RowFromPos2D(p0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][3] {
    {  3, -4,  1 }
}
```

#### Example:
```povray
#declare MM = M_RowFromPos2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][3] {
    { -5,  2,  1 }
}
```

## M_ColFromPos2D(p0)

#### Example:
```povray
#declare p0 = < 3, -4>;
#declare MM = M_ColFromPos2D(p0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][1] {
    {  3 },
    { -4 },
    {  1 }
}
```

#### Example:
```povray
#declare MM = M_ColFromPos2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][1] {
    { -5 },
    {  2 },
    {  1 }
}
```

## M_RowFromDir2D(v0)

#### Example:
```povray
#declare v0 = < 3, -4>;
#declare MM = M_RowFromDir2D(v0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][3] {
    {  3, -4,  0 }
}
```

#### Example:
```povray
#declare MM = M_RowFromDir2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][3] {
    { -5,  2,  0 }
}
```

## M_ColFromDir2D(v0)

#### Example:
```povray
#declare v0 = < 3, -4>;
#declare MM = M_ColFromDir2D(v0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][1] {
    {  3 },
    { -4 },
    {  0 }
}
```

#### Example:
```povray
#declare MM = M_ColFromDir2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[3][1] {
    { -5 },
    {  2 },
    {  0 }
}
```

## M_RowFromPos3D(p0)

#### Example:
```povray
#declare p0 = < 3, -4,  2>;
#declare MM = M_RowFromPos3D(p0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][4] {
    {  3, -4,  2,  1 }
}
```

#### Example:
```povray
#declare MM = M_RowFromPos3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][4] {
    { -5,  2, -3,  1 }
}
```

## M_ColFromPos3D(p0)

#### Example:
```povray
#declare p0 = < 3, -4,  2>;
#declare MM = M_ColFromPos3D(p0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][1] {
    {  3 },
    { -4 },
    {  2 },
    {  1 }
}
```

#### Example:
```povray
#declare MM = M_ColFromPos3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][1] {
    { -5 },
    {  2 },
    { -3 },
    {  1 }
}
```

## M_RowFromDir3D(v0)

#### Example:
```povray
#declare v0 = < 3, -4,  2>;
#declare MM = M_RowFromDir3D(v0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][4] {
    {  3, -4,  2,  0 }
}
```

#### Example:
```povray
#declare MM = M_RowFromDir3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[1][4] {
    { -5,  2, -3,  0 }
}
```

## M_ColFromDir3D(v0)

#### Example:
```povray
#declare v0 = < 3, -4,  2>;
#declare MM = M_ColFromDir3D(v0);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][1] {
    {  3 },
    { -4 },
    {  2 },
    {  0 }
}
```

#### Example:
```povray
#declare MM = M_ColFromDir3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, false)
```
#### Result:
```povray
array[4][1] {
    { -5 },
    {  2 },
    { -3 },
    {  0 }
}
```

## M_SkewSymFromDir3D(v0)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Pos2D_FromRow(AA, RowNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Pos2D_FromCol(AA, ColNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Dir2D_FromRow(AA, RowNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Dir2D_FromCol(AA, ColNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Pos3D_FromRow(AA, RowNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Pos3D_FromCol(AA, ColNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Dir3D_FromRow(AA, RowNo)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Dir3D_FromCol(AA, ColNo)

#### Example:
```povray
```
#### Result:
```povray
```

