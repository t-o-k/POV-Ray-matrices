# POV-Ray-matrices
POV-Ray include file for working with matrices

Below are short examples illustrating how to use each of the macros in this library.

## M_NoOfRows(AA)

[Description](README.md#m_noofrowsaa)

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

[Description](README.md#m_noofcolsaa)

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

## M_CustomStr(AA, Length, Precision, ExtraIndentStr, Compact)

[Description](README.md#m_customstraa-length-precision-extraindentstr-compact)

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.2,  4.0,  5.0,  4.0 },
            { -4.9,  7.2, -2.0, -0.5 },
            {  1.0,  3.0,  1.1,  0.0 }
        },
        0, -1, "", false
    )
#debug S
```
#### Result:
```povray
array[3][4] {
    {  2.200000,  4.000000,  5.000000,  4.000000 },
    { -4.900000,  7.200000, -2.000000, -0.500000 },
    {  1.000000,  3.000000,  1.100000,  0.000000 }
}
```

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.2,  4.0,  5.0,  4.0 },
            { -4.9,  7.2, -2.0, -0.5 },
            {  1.0,  3.0,  1.1,  0.0 }
        },
        2, 0, "    ", false
    )
#debug S
```
#### Result:
```povray
    array[3][4] {
        {  2,  4,  5,  4 },
        { -5,  7, -2, -1 },
        {  1,  3,  1,  0 }
    }
```

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[3][4] {
            {  2.2,  4.0,  5.0,  4.0 },
            { -4.9,  7.2, -2.0, -0.5 },
            {  1.0,  3.0,  1.1,  0.0 }
        },
        0, 1, "", true
    )
#debug S
```
#### Result:
```povray
array[3][4]{{2.2,4.0,5.0,4.0},{-4.9,7.2,-2.0,-0.5},{1.0,3.0,1.1,0.0}}
```

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[3][3] {
            {  2,  4,  5 },
            { -5,  7, -2 },
            {  1,  3,  1 }
        },
        7, 3, "//  ", false
    )
#debug S
```
#### Result:
```povray
//  array[3][3] {
//      {   2.000,   4.000,   5.000 },
//      {  -5.000,   7.000,  -2.000 },
//      {   1.000,   3.000,   1.000 }
//  }
```

#### Example:
```povray
#declare S =
    M_CustomStr(
        array[2][2] {
            {  2,  4 },
            { -4,  7 },
        },
        0, 2, "    ", true
    )
#debug S
```
#### Result:
```povray
    array[2][2]{{2.00,4.00},{-4.00,7.00}}
```

## M_Str(AA)

[Description](README.md#m_straa)

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

## M_CustomPrint(AA, Length, Precision, ExtraIndentStr, Compact)

[Description](README.md#m_customprintaa-length-precision-extraindentstr-compact)

#### Example:
```povray
M_CustomPrint(
    array[3][4] {
        {  2.2,  4.0,  5.0,  4.0 },
        { -4.9,  7.2, -2.0, -0.5 },
        {  1.0,  3.0,  1.1,  0.0 }
    },
    5, 2, "", false
)
```
#### Result:
```povray
array[3][4] {
    {  2.20,  4.00,  5.00,  4.00 },
    { -4.90,  7.20, -2.00, -0.50 },
    {  1.00,  3.00,  1.10,  0.00 }
}
```

#### Example:
```povray
M_CustomPrint(
    array[3][4] {
        {  2.2,  4.0,  5.0,  4.0 },
        { -4.9,  7.2, -2.0, -0.5 },
        {  1.0,  3.0,  1.1,  0.0 }
    },
    2, 0, "    ", false
)
```
#### Result:
```povray
    array[3][4] {
        {  2,  4,  5,  4 },
        { -5,  7, -2, -1 },
        {  1,  3,  1,  0 }
    }
```

#### Example:
```povray
M_CustomPrint(
    array[3][4] {
        {  2.2,  4.0,  5.0,  4.0 },
        { -4.9,  7.2, -2.0, -0.5 },
        {  1.0,  3.0,  1.1,  0.0 }
    },
    0, 1, "", true
)
```
#### Result:
```povray
array[3][4]{{2.2,4.0,5.0,4.0},{-4.9,7.2,-2.0,-0.5},{1.0,3.0,1.1,0.0}}
```

#### Example:
```povray
M_CustomPrint(
    array[3][3] {
        {  2,  4,  5 },
        { -5,  7, -2 },
        {  1,  3,  1 }
    },
    3, 0, "//  ", false
)
```
#### Result:
```povray
//  array[3][3] {
//      {   2,   4,   5 },
//      {  -5,   7,  -2 },
//      {   1,   3,   1 }
//  }
```

#### Example:
```povray
M_CustomPrint(
    array[2][2] {
        {  2,  4 },
        { -4,  7 },
    },
    0, 0, "    ", true
)
```
#### Result:
```povray
    array[2][2]{{2,4},{-4,7}}
```

## M_Print(AA)

[Description](README.md#m_printaa)

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

## M_Zeros(NoOfRows, NoOfCols)

[Description](README.md#m_zerosnoofrows-noofcols)

#### Example:
```povray
#declare MM = M_Zeros(4, 3);
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

## M_Ones(NoOfRows, NoOfCols)

[Description](README.md#m_onesnoofrows-noofcols)

#### Example:
```povray
#declare MM = M_Ones(3, 4);
M_Print(MM)
```
#### Result:
```povray
array[3][4] {
    {  1.000000,  1.000000,  1.000000,  1.000000 },
    {  1.000000,  1.000000,  1.000000,  1.000000 },
    {  1.000000,  1.000000,  1.000000,  1.000000 }
}
```

## M_Full(NoOfRows, NoOfCols, Const)

[Description](README.md#m_fullnoofrows-noofcols-const)

#### Example:
```povray
#declare MM = M_Full(4, 3, -pi);
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

[Description](README.md#m_fullnoofrows-noofcols-const)

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

[Description](README.md#m_negaa)

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
M_CustomPrint(MM, 4, 1, "", false)
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

[Description](README.md#m_posaa)

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
M_CustomPrint(MM, 4, 1, "", false)
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

[Description](README.md#m_scaleaa-scale)

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

[Description](README.md#m_roundaa-n)

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
M_CustomPrint(MM, 9, 4, "", false)
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
M_CustomPrint(MM, 9, 4, "", false)
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

[Description](README.md#m_applycheckersignsaa)


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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_scalerowaa-rowno-scale)

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
M_CustomPrint(MM, 4, 0, "", false)
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

[Description](README.md#m_scalecolaa-colno-scale)

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
M_CustomPrint(MM, 4, 0, "", false)
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

[Description](README.md#m_swaprowsaa-rowno-row_no)

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
M_CustomPrint(MM, 3, 0, "", false)
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

[Description](README.md#m_swapcolsaa-colno-col_no)

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
M_CustomPrint(MM, 3, 0, "", false)
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

[Description](README.md#m_addaa-bb)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_subaa-bb)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_traceaa)

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

[Description](README.md#m_transposeaa)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_multaa-bb)

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
M_CustomPrint(MM, 5, 2, "", false)
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
M_CustomPrint(MM, 5, 2, "", false)
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

## M_Gramian(AA)

[Description](README.md#m_gramianaa)

#### Example:
```povray
#declare MM =
    M_Gramian(
        array[2][3] {
            { -3,  2,  1 },
            {  4, -1,  0 }
        }
    )
;
M_CustomPrint(MM, 3, 0, "", false)
```
#### Result:
```povray
array[3][3] {
    {  25, -10,  -3 },
    { -10,   5,   2 },
    {  -3,   2,   1 }
}
```

#### Example:
```povray
#declare MM =
    M_Gramian(
        array[3][1] {
            {  2 },
            { -1 },
            {  3 }
        }
    )
;
M_CustomPrint(MM, 3, 0, "", false)
```
#### Result:
```povray
array[1][1] {
    {  14 }
}
```

## M_DelRow(AA, RowNo)

[Description](README.md#m_delrowaa-rowno)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_delcolaa-colno)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_delrowandcolaa-rowno-colno)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_addscaledrowtorowaa-scale-rowno-torowno)

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
M_CustomPrint(MM, 2, 0, "", false)
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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_addscaledcoltocolaa-scale-colno-tocolno)

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
M_CustomPrint(MM, 2, 0, "", false)
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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_submatrixaa-rowno-noofrows-colno-noofcols)

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
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_stackaaaa)

#### Example:
```povray
#declare CC =
    array[3][4] {
        { 00, 01, 02, 03 },
        { 10, 11, 12, 13 },
        { 20, 21, 22, 23 }
    }
;
#declare DD =
    array[3][2] {
        { 04, 05 },
        { 14, 15 },
        { 24, 25 }
    }
;
#declare EE =
    array[1][4] {
        { 30, 31, 32, 33 }
    }
;
#declare FF =
    array[1][2] {
        { 34, 35 }
    }
;
#declare MM =
    M_Stack(
        array[2][2] {
            { CC, DD },
            { EE, FF }
        }
    )
;
M_CustomPrint(MM, 2, 0, "", false)
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

[Description](README.md#m_det_ssaa)

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

#### Example:
```povray
#declare R =
    M_Det_SS(
        array[8][8] {
            {  0,  4, -2,  0, -8,  0,  0,  2 },
            {  0, -2,  2,  0,  0,  0,  0,  0 },
            { -4,  0,  0,  2,  6,  0, -4,  0 },
            {  0,  0, -6,  0, -6,  0,  0, -2 },
            {  2,  0,  4,  8,  0, -4, -6,  0 },
            {  0, -4,  8,  0,  2,  0,  0,  4 },
            {  2,  6,  0,  6, -4,  2,  0,  0 },
            {  0,  4,  0,  0,  4,  0,  0, -2 }
        }
    )
;
#debug str(R, 0, -1)
```
#### Result:
```povray
0.000000
```

## M_Det(AA)

[Description](README.md#m_detaa)

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

#### Example:
```povray
#declare R =
    M_Det(
        array[3][3] {
            { -0.4,  1.7, -1.5 },
            {  3.3, -2.4,  2.1 },
            {  1.2, -5.1,  4.5 }
        }
    )
;
#debug str(R, 0, -1)
```
#### Result:
```povray
0.000000
```

## M_Minors(AA)

[Description](README.md#m_minorsaa)

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
M_CustomPrint(MM, 3, 0, "", false)
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

[Description](README.md#m_cofactorsaa)

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
M_CustomPrint(MM, 3, 0, "", false)
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

[Description](README.md#m_adjointaa)

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
M_CustomPrint(MM, 3, 0, "", false)
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

[Description](README.md#m_inv_ssaa)

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

#### Example:
```povray
#declare MM =
    M_Inv_SS(
        array[8][8] {
            {  0,  4, -2,  0, -8,  0,  0,  2 },
            {  0, -2,  2,  0,  0,  0,  0,  0 },
            { -4,  0,  0,  2,  6,  0, -4,  0 },
            {  0,  0, -6,  0, -6,  0,  0, -2 },
            {  2,  0,  4,  8,  0, -4, -6,  0 },
            {  0, -4,  8,  0,  2,  0,  0,  4 },
            {  2,  6,  0,  6, -4,  2,  0,  0 },
            {  0,  4,  0,  0,  4,  0,  0, -2 }
        }
    )
;
```
#### Result:
```
...Error:... Singular matrix. Not invertible.
```

## M_Inv(AA)

[Description](README.md#m_invaa)

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

#### Example:
```povray
#declare MM =
    M_Inv(
        array[3][3] {
            { -0.4,  1.7, -1.5 },
            {  3.3, -2.4,  2.1 },
            {  1.2, -5.1,  4.5 }
        }
    )
;
```
#### Result:
```
...Error:... Singular matrix. Not invertible.
```

#### Example:
```povray
#declare CC =
    array[4][4] {
        { -0.328480, -1.611703, -1.551516,  0.884465 },
        {  2.404917, -2.446145,  2.123540, -1.459950 },
        {  1.251583, -2.918587,  0.628225, -0.108170 },
        { -0.621307, -0.679015,  0.731087,  2.723088 }
    }
;
#declare MM = M_Mult(M_Inv(CC), CC);
M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  1.000000, -0.000000, -0.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000, -0.000000 },
    { -0.000000,  0.000000,  1.000000, -0.000000 },
    { -0.000000,  0.000000, -0.000000,  1.000000 }
}
```

## M_PseudoInv(AA)

[Description](README.md#m_pseudoinvaa)

#### Example:
```povray
#declare MM =
    M_PseudoInv(
        array[3][2] {
            { -3,  1 },
            {  4, -2 },
            { -5,  3 }
        }
    )
;
M_Print(MM)
```
#### Result:
```povray
array[2][3] {
    { -0.666667,  0.166667,  0.333333 },
    { -1.166667,  0.166667,  0.833333 }
}
```

#### Example:
```povray
#declare CC =
    array[3][2] {
        { -3,  1 },
        {  4, -2 },
        { -5,  3 }
    }
;
#declare MM = M_Mult(M_PseudoInv(CC), CC);
M_Print(MM)
```
#### Result:
```povray
array[2][2] {
    {  1.000000, -0.000000 },
    { -0.000000,  1.000000 }
}
```

## M_FromTransformFn(TransformFn)

[Description](README.md#m_fromtransformfntransformfn)

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

## M_ToTransformFn(AA)

[Description](README.md#m_totransformfnaa)

#### Example:
```povray
```
#### Result:
```povray
```

## M_FromTransform(Transform)

[Description](README.md#m_fromtransformtransform)


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
M_CustomPrint(MM, 2, 0, "", false)
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
M_CustomPrint(MM, 2, 0, "", false)
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

## M_ToTransform(AA)

[Description](README.md#m_totransformaa)


#### Example:
```povray
```
#### Result:
```povray
```

## M_Row_FromPos2D(p0)

[Description](README.md#m_row_frompos2dp0)
 
#### Example:
```povray
#declare p0 = < 3, -4>;
#declare MM = M_Row_FromPos2D(p0);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][3] {
    {  3, -4,  1 }
}
```

#### Example:
```povray
#declare MM = M_Row_FromPos2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][3] {
    { -5,  2,  1 }
}
```

## M_Col_FromPos2D(p0)

[Description](README.md#m_col_frompos2dp0)

#### Example:
```povray
#declare p0 = < 3, -4>;
#declare MM = M_Col_FromPos2D(p0);
M_CustomPrint(MM, 2, 0, "", false)
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
#declare MM = M_Col_FromPos2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[3][1] {
    { -5 },
    {  2 },
    {  1 }
}
```

## M_Row_FromDir2D(v0)

[Description](README.md#m_row_fromdir2dv0)

#### Example:
```povray
#declare v0 = < 3, -4>;
#declare MM = M_Row_FromDir2D(v0);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][3] {
    {  3, -4,  0 }
}
```

#### Example:
```povray
#declare MM = M_Row_FromDir2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][3] {
    { -5,  2,  0 }
}
```

## M_Col_FromDir2D(v0)

[Description](README.md#m_col_fromdir2dv0)

#### Example:
```povray
#declare v0 = < 3, -4>;
#declare MM = M_Col_FromDir2D(v0);
M_CustomPrint(MM, 2, 0, "", false)
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
#declare MM = M_Col_FromDir2D(-5*u +2*v);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[3][1] {
    { -5 },
    {  2 },
    {  0 }
}
```

## M_Row_FromPos3D(p0)

[Description](README.md#m_row_frompos3dp0)

#### Example:
```povray
#declare p0 = < 3, -4,  2>;
#declare MM = M_Row_FromPos3D(p0);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][4] {
    {  3, -4,  2,  1 }
}
```

#### Example:
```povray
#declare MM = M_Row_FromPos3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][4] {
    { -5,  2, -3,  1 }
}
```

## M_Col_FromPos3D(p0)

[Description](README.md#m_col_frompos3dp0)

#### Example:
```povray
#declare p0 = < 3, -4,  2>;
#declare MM = M_Col_FromPos3D(p0);
M_CustomPrint(MM, 2, 0, "", false)
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
#declare MM = M_Col_FromPos3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, "", false)
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

## M_Row_FromDir3D(v0)

[Description](README.md#m_row_fromdir3dv0)

#### Example:
```povray
#declare v0 = < 3, -4,  2>;
#declare MM = M_Row_FromDir3D(v0);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][4] {
    {  3, -4,  2,  0 }
}
```

#### Example:
```povray
#declare MM = M_Row_FromDir3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[1][4] {
    { -5,  2, -3,  0 }
}
```

## M_Col_FromDir3D(v0)

[Description](README.md#m_col_fromdir3dv0)

#### Example:
```povray
#declare v0 = < 3, -4,  2>;
#declare MM = M_Col_FromDir3D(v0);
M_CustomPrint(MM, 2, 0, "", false)
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
#declare MM = M_Col_FromDir3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, "", false)
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

## M_SkewSym_FromDir3D(v0)

[Description](README.md#m_skewsym_fromdir3dv0)

#### Example:
```povray
#declare v0 = < 3, -4,  2>;
#declare MM = M_SkewSym_FromDir3D(v0);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[4][4] {
    {  0, -2, -4,  0 },
    {  2,  0, -3,  0 },
    {  4,  3,  0,  0 },
    {  0,  0,  0,  1 }
}
```

#### Example:
```povray
#declare MM = M_SkewSym_FromDir3D(-5*x +2*y -3*z);
M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[4][4] {
    {  0,  3,  2,  0 },
    { -3,  0,  5,  0 },
    { -2, -5,  0,  0 },
    {  0,  0,  0,  1 }
}
```

## M_Pos2D_FromRow(AA, RowNo)

[Description](README.md#m_pos2d_fromrowaa-rowno)

#### Example:
```povray
#declare p0 =
    M_Pos2D_FromRow(
        array[3][3] {
            { -5,  5,  1 },
            {  4, -6, -2 },
            { -3,  4,  0 }
        },
        0
    )
;
#debug concat("<", vstr(2, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-5.0,  5.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos2D_FromRow(
        array[3][3] {
            { -5,  5,  1 },
            {  4, -6, -2 },
            { -3,  4,  0 }
        },
        1
    )
;
#debug concat("<", vstr(2, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-2.0,  3.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos2D_FromRow(
        array[3][3] {
            { -5,  5,  1 },
            {  4, -6, -2 },
            { -3,  4,  0 }
        },
        2
    )
;
```
#### Result:
```
...Error:... W is 0. Not possible to convert to 2D position vector.
```

## M_Pos2D_FromCol(AA, ColNo)

[Description](README.md#m_pos2d_fromcolaa-colno)

#### Example:
```povray
#declare p0 =
    M_Pos2D_FromCol(
        array[3][3] {
            { -5,  4, -3 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        0
    )
;
#debug concat("<", vstr(2, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-5.0,  5.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos2D_FromCol(
        array[3][3] {
            { -5,  4, -3 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        1
    )
;
#debug concat("<", vstr(2, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-2.0,  3.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos2D_FromCol(
        array[3][3] {
            { -5,  4, -3 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        2
    )
;
```
#### Result:
```
...Error:... W is 0. Not possible to convert to 2D position vector.
```

## M_Dir2D_FromRow(AA, RowNo)

[Description](README.md#m_dir2d_fromrowaa-rowno)

#### Example:
```povray
#declare v0 =
    M_Dir2D_FromRow(
        array[3][3] {
            { -5,  5,  1 },
            {  4, -6, -2 },
            { -3,  4,  0 }
        },
        2
    )
;
#debug concat("<", vstr(2, v0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-3.0,  4.0>
```

#### Example:
```povray
#declare v0 =
    M_Dir2D_FromRow(
        array[3][3] {
            { -5,  5,  1 },
            {  4, -6, -2 },
            { -3,  4,  0 }
        },
        1
    )
;
```
#### Result:
```
...Error:... W is not 0. Not possible to convert to 2D direction vector.
```

## M_Dir2D_FromCol(AA, ColNo)

[Description](README.md#m_dir2d_fromcolaa-colno)

#### Example:
```povray
#declare v0 =
    M_Dir2D_FromCol(
        array[3][3] {
            { -5,  4, -3 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        2
    )
;
#debug concat("<", vstr(2, v0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-3.0,  4.0>
```

#### Example:
```povray
#declare v0 =
    M_Dir2D_FromCol(
        array[3][3] {
            { -5,  4, -3 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        1
    )
;
```
#### Result:
```
...Error:... W is not 0. Not possible to convert to 2D direction vector.
```

## M_Pos3D_FromRow(AA, RowNo)

[Description](README.md#m_pos3d_fromrowaa-rowno)

#### Example:
```povray
#declare p0 =
    M_Pos3D_FromRow(
        array[3][4] {
            { -5, -3,  5,  1 },
            {  4,  0, -6, -2 },
            { -3,  6,  4,  0 }
        },
        0
    )
;
#debug concat("<", vstr(3, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-5.0, -3.0,  5.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos3D_FromRow(
        array[3][4] {
            { -5, -3,  5,  1 },
            {  4,  0, -6, -2 },
            { -3,  6,  4,  0 }
        },
        1
    )
;
#debug concat("<", vstr(3, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-2.0, -0.0,  3.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos3D_FromRow(
        array[3][4] {
            { -5, -3,  5,  1 },
            {  4,  0, -6, -2 },
            { -3,  6,  4,  0 }
        },
        2
    )
;
```
#### Result:
```
...Error:... W is 0. Not possible to convert to 3D position vector.
```

## M_Pos3D_FromCol(AA, ColNo)

[Description](README.md#m_pos3d_fromcolaa-colno)

#### Example:
```povray
#declare p0 =
    M_Pos3D_FromCol(
        array[4][3] {
            { -5,  4, -3 },
            { -3,  0,  6 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        0
    )
;
#debug concat("<", vstr(3, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-5.0, -3.0,  5.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos3D_FromCol(
        array[4][3] {
            { -5,  4, -3 },
            { -3,  0,  6 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        1
    )
;
#debug concat("<", vstr(3, p0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-2.0, -0.0,  3.0>
```

#### Example:
```povray
#declare p0 =
    M_Pos3D_FromCol(
        array[4][3] {
            { -5,  4, -3 },
            { -3,  0,  6 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        2
    )
;
```
#### Result:
```
...Error:... W is 0. Not possible to convert to 3D position vector.
```

## M_Dir3D_FromRow(AA, RowNo)

[Description](README.md#m_dir3d_fromrowaa-rowno)

#### Example:
```povray
#declare v0 =
    M_Dir3D_FromRow(
        array[3][4] {
            { -5, -3,  5,  1 },
            {  4,  0, -6, -2 },
            { -3,  6,  4,  0 }
        },
        2
    )
;
#debug concat("<", vstr(3, v0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-3.0,  6.0,  4.0>
```

#### Example:
```povray
#declare v0 =
    M_Dir3D_FromRow(
        array[3][4] {
            { -5, -3,  5,  1 },
            {  4,  0, -6, -2 },
            { -3,  6,  4,  0 }
        },
        1
    )
;
```
#### Result:
```
...Error:... W is not 0. Not possible to convert to 3D direction vector.
```

## M_Dir3D_FromCol(AA, ColNo)

[Description](README.md#m_dir3d_fromcolaa-colno)

#### Example:
```povray
#declare v0 =
    M_Dir3D_FromCol(
        array[4][3] {
            { -5,  4, -3 },
            { -3,  0,  6 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        2
    )
;
#debug concat("<", vstr(3, v0, ", ", 4, 1), ">")
```
#### Result:
```povray
<-3.0,  6.0,  4.0>
```

#### Example:
```povray
#declare v0 =
    M_Dir3D_FromCol(
        array[4][3] {
            { -5,  4, -3 },
            { -3,  0,  6 },
            {  5, -6,  4 },
            {  1, -2,  0 }
        },
        1
    )
;
```
#### Result:
```
...Error:... W is not 0. Not possible to convert to 3D direction vector.
```

## M_FromRowVectors2D(vU, vV, pT)

[Description](README.md#m_fromrowvectors2dvu-vv-pt)

#### Example:
```povray
```
#### Result:
```povray
```

## M_FromRowVectors3D(vX, vY, vZ, pT)

[Description](README.md#m_fromrowvectors3dvx-vy-vz-pt)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Translate2D(pT)

[Description](README.md#m_translate2dpt)

#### Example:
```povray
#declare MM = M_Translate2D(<-2,  3>);

M_Print(MM)
```
#### Result:
```povray
array[3][3] {
    {  1.000000,  0.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000 },
    { -2.000000,  3.000000,  1.000000 }
}
```

## M_Scale2D(vS)

[Description](README.md#m_scale2dvs)

#### Example:
```povray
#declare MM = M_Scale2D(< 0.5, -2.0>);

M_Print(MM)
```
#### Result:
```povray
array[3][3] {
    {  0.500000,  0.000000,  0.000000 },
    {  0.000000, -2.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000 }
}
```

## M_Rotate2D(Angle)

[Description](README.md#m_rotate2dangle)

#### Example:
```povray
```
#### Result:
```povray
```

## M_Translate3D(pT)

[Description](README.md#m_translate3dpt)

#### Example:
```povray
#declare MM = M_Translate3D(< 2, -3,  5>);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  1.000000,  0.000000,  0.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000,  0.000000 },
    {  2.000000, -3.000000,  5.000000,  1.000000 }
}
```

## M_Scale3D(vS)

[Description](README.md#m_scale3dvs)

#### Example:
```povray
#declare MM = M_Scale3D(< 2.0,  0.5, -3.0>);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  2.000000,  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.500000,  0.000000,  0.000000 },
    {  0.000000,  0.000000, -3.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000,  1.000000 }
}
```

## M_Rotate3D_AroundX(Angle)

[Description](README.md#m_rotate3d_aroundxangle)

#### Example:
```povray
#declare MM = M_Rotate3D_AroundX(pi/2);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  1.000000,  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000,  0.000000 },
    {  0.000000, -1.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000,  1.000000 }
}
```

## M_Rotate3D_AroundY(Angle)

[Description](README.md#m_rotate3d_aroundyangle)

#### Example:
```povray
#declare MM = M_Rotate3D_AroundY(pi/2);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  0.000000,  0.000000, -1.000000,  0.000000 },
    {  0.000000,  1.000000,  0.000000,  0.000000 },
    {  1.000000,  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000,  1.000000 }
}
```

## M_Rotate3D_AroundZ(Angle)

[Description](README.md#m_rotate3d_aroundzangle)

#### Example:
```povray
#declare MM = M_Rotate3D_AroundZ(pi/2);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {
    {  0.000000,  1.000000,  0.000000,  0.000000 },
    { -1.000000,  0.000000,  0.000000,  0.000000 },
    {  0.000000,  0.000000,  1.000000,  0.000000 },
    {  0.000000,  0.000000,  0.000000,  1.000000 }
}
```

## M_Rotate3D_AroundAxis(vAxis, Angle)

[Description](README.md#m_rotate3d_aroundaxisvaxis-angle)

#### Example:
```povray
#declare MM = M_Rotate3D_AroundAxis(< 1,  0,  1>, -pi/4);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {  
    {  0.853553, -0.500000,  0.146447,  0.000000 },  
    {  0.500000,  0.707107, -0.500000,  0.000000 },  
    {  0.146447,  0.500000,  0.853553,  0.000000 },  
    {  0.000000,  0.000000,  0.000000,  1.000000 }  
}
```

## M_Reorient3D(vFrom, vTo)

[Description](README.md#m_reorient3dvfrom-vto)

#### Example:
```povray
#declare MM = M_Reorient3D(<-1,  1, -1>, < 0, -1,  0>);

M_Print(MM)
```
#### Result:
```povray
array[4][4] {  
    {  0.211325,  0.577350, -0.788675,  0.000000 },  
    { -0.577350, -0.577350, -0.577350,  0.000000 },  
    { -0.788675,  0.577350,  0.211325,  0.000000 },  
    {  0.000000,  0.000000,  0.000000,  1.000000 }  
}
```
