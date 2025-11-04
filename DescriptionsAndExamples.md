# POV-Ray-matrices
POV-Ray include file for working with matrices

Below are short examples illustrating how to use each of the macros in this library.

## M_NoOfRows(AA)
Return the number of rows in the matrix AA.

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
Return the number of columns in the matrix AA.

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
Return the matrix AA (as a 2 dimensional array) in a string. The formatting of each element is defined by the Length and Precision paramenters in the same way that the L and P parameters defines the format in POV-Ray built in str() function. The Compact parameter is boolean and controls if the return string contains minimal white space.

See also http://www.povray.org/documentation/view/3.7.1/232/

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
Return the matrix AA (as a 2 dimensional array) in a string. The elements are printed with platform specific precision.

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
Print the matrix AA (as a 2 dimensional array). The formatting of each element is defined by the Length and Precision paramenters in the same way that the L and P parameters defines the format in POV-Ray built in str() function. The Compact parameter is boolean and controls if the matrix is printed with minimal white space. 

See also http://www.povray.org/documentation/view/3.7.1/232/

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
Print the matrix AA (as a 2 dimensional array). The elements are printed with platform specific precision.

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
Return a matrix with size NoOfRows x NoOfCols, filled with zeros.

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
Return a matrix with size NoOfRows x NoOfCols, filled with ones.

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
Return a matrix with size NoOfRows x NoOfCols, filled with the number Const.

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
Return an identity matrix of size Size x Size with ones on the main diagonal and zeros elsewhere.

See also https://en.wikipedia.org/wiki/Identity_matrix

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
Return a matrix where the unary minus operator has been applied to the elements of the matrix AA.

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
Return a matrix where the unary plus operator has been applied to the elements of the matrix AA.

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
Return a matrix where all the elements of the matrix AA has been multipled by the number Scale.

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
Return a matrix where all elements of matrix AA have been rounded to N decimal places.

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
Return a matrix where the unary minus and unary plus operators has been applied to the elements of AA in a checkerboard pattern.

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
Return a matrix with the same elements as the matrix AA, except that all the elements in the row rowNo has been multiplied by the number Scale.

See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-multiplying_transformations

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
Return a matrix with the same elements as the matrix AA, except that all the elements in the column ColNo has been multiplied by the number Scale.

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
Return a matrix with the same elements as the matrix AA, except that the columns RowNo and Row_No has been swapped.

See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-switching_transformations

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
Return a matrix with the same elements as the matrix AA, except that the columns ColNo and Col_No has been swapped.

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
Return a matrix that is the entrywise sum of the matrices AA and BB.

See also https://en.wikipedia.org/wiki/Matrix_addition

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
Return a matrix that is the entrywise difference of the matrices AA and BB.

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
Return the sum of all the elements along the main diagonal in the square matrix AA.

See also https://en.wikipedia.org/wiki/Trace_(linear_algebra)

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
Returns a matrix that is the transpose of the matrix AA.

See also https://en.wikipedia.org/wiki/Transpose

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
Return a matrix that is the product of the matrices AA and BB.

See also https://en.wikipedia.org/wiki/Matrix_multiplication

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
Return a matrix that is the product of the transpose of the matrix AA and the matrix AA.

See also https://en.wikipedia.org/wiki/Gram_matrix

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
Return a matrix with the same elements as the matrix AA, except that the row RowNo has been removed.

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
Return a matrix with the same elements as the matrix AA, except that the column ColNo has been removed.

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
Return a matrix with the same elements as the matrix AA, except that both the row RowNo and column ColNo has been removed.

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
Return a matrix with the same elements as matrix AA, except that the row RowNo multiplied by the number Scale has been added to the row ToRowNo.

See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-multiplying_transformations and https://en.wikipedia.org/wiki/Elementary_matrix#Row-addition_transformations

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
Return a matrix with the same elements as matrix AA, except that the column ColNo multiplied by the number Scale has been added to the column ToColNo.

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
Return a submatrix extracted from matrix AA, starting at row RowNo and column ColNo, with dimensions NoOfRows × NoOfCols.

See also https://en.wikipedia.org/wiki/Block_matrix

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
Assemble the matrices in the 2-dimensional array AAAA into a single matrix. Matrices in the same column within AAAA must have the same number of columns, and matrices in the same row within AAAA must have the same number of rows.

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
Return the determinant of the square matrix AA. Use this if AA is large and if many of its elements are zero.

See also https://en.wikipedia.org/wiki/Determinant and https://en.wikipedia.org/wiki/Sparse_matrix

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
Return the determinant of the square matrix AA.

See also https://en.wikipedia.org/wiki/Determinant

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
Return a square matrix formed by all the minors of the square matrix AA.

See also https://en.wikipedia.org/wiki/Minor_(linear_algebra)

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
Return a square matrix formed by all of the cofactors of the square matrix AA.

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
Return a square matrix that is the classical adjoint of a the square matrix AA.

See also https://en.wikipedia.org/wiki/Adjugate_matrix

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
Return a square matrix that is the inverse of the square matrix AA. Use this if AA is large and if many of its elements are zero.

Also see https://en.wikipedia.org/wiki/Minor_(linear_algebra)#Inverse_of_a_matrix

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
Return a square matrix that is the inverse of the square matrix AA.

See also https://en.wikipedia.org/wiki/Minor_(linear_algebra)#Inverse_of_a_matrix

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
Return a square matrix that is the pseudoinverse of the matrix AA.

At the moment this library can only calculate the pseudoinverse of matrices that have full rank.

See also https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse

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
Return a 4x4 matrix created from the matrix inherent in the transform function TransformFn().

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
    {  0.500000,  0.000000,  0.866025,  0.000000 },
    {  0.000000,  1.000000,  0.000000,  0.000000 },
    { -0.866025,  0.000000,  0.500000,  0.000000 },
    { -4.000000,  6.000000, -8.000000,  1.000000 }
}
```

## M_ToTransformFn(AA)
Return a transform function created from the 4x4 matrix AA.

#### Example:
```povray
```
#### Result:
```povray
```

## M_FromTransform(Transform)
Return a 4x4 matrix created from the matrix inherent in the transform Transform.

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

#### Example:
```povray
#declare MM =
    M_FromTransform(
        transform { }
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

## M_ToTransform(AA)
Return a transform created from the 4x4 matrix AA.

#### Example:
```povray
```
#### Result:
```povray
```

## M_Row_FromPos2D(p0)
Return a matrix with a single row and 3 columns with values from the U, V and W components from the 2D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates
 
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
Return a matrix with a single column and 3 rows with values from the U, V and W components from the 2D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a matrix with a single row and 3 columns with values from the U, V and W components from the 2D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a matrix with a single column and 3 rows with values from the U, V and W components from the 2D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a matrix with a single row and 4 columns with values from the X, Y, Z and W components from the 3D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a matrix with a single column and 4 rows with values from the X, Y, Z and W components from the 3D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a matrix with a single row and 4 columns with values from the X, Y, Z and W components from the 3D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a matrix with a single column and 4 rows with values from the X, Y, Z and W components from the 3D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a skew symmetric matrix with values from the X, Y and Z components from the 3D direction vector v0.

The vector v0 is considered to be a homogeneous vector. It's W component is not used.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 2D position vector with the component values equal to U/W and V/W.

The values in the 3 columns in row number RowNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 2D position vector with the component values equal to U/W and V/W.

The values in the 3 rows in column number ColNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 2D direction vector with the component values U and V.

The values in the 3 columns in row number RowNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 2D direction vector with the component values U and V.

The values in the 3 rows in column number ColNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 3D position vector with the component values equal to X/W, Y/Z and Z/W.

The values in the 4 columns in row number RowNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 3D position vector with the component values equal to X/W, Y/Z and Z/W.

The values in the 4 rows in column number ColNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 3D direction vector with the component values X, Y and Z.

The values in the 4 columns in row number RowNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 3D direction vector with the component values X, Y and Z.

The values in the 4 rows in column number ColNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

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
Return a 3x3 matrix created from the 2D vectors vU, vV and pT, used as row vectors. Vu and vV are considered to be homogenous direction vectors whose W components equal 0, while pT is considered to be a homogenous position vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

#### Example:
```povray
#declare MM =
    M_FromRowVectors2D(
        < -1,  -2>,
        < -3,  -4>,
        < -5,  -6>
    )
;

M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[3][3] {
    { -1, -2,  0 },
    { -3, -4,  0 },
    { -5, -6,  1 }
}
```

## M_FromColVectors2D(vU, vV, pT)
Return a 3x3 matrix created from the 2D vectors vU, vV and pT, used as column vectors. Vu and vV are considered to be homogenous direction vectors whose W components equal 0, while pT is considered to be a homogenous position vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

#### Example:
```povray
#declare MM =
    M_FromColVectors2D(
        < -1,  -2>,
        < -3,  -4>,
        < -5,  -6>
    )
;

M_CustomPrint(MM, 2, 0, "", false)
```
#### Result:
```povray
array[3][3] {
    { -1, -3, -5 },
    { -2, -4, -6 },
    {  0,  0,  1 }
}
```

## M_FromRowVectors3D(vX, vY, vZ, pT)
Return a 4x4 matrix created from the 3D vectors vX, vY, vZ and pT, used as row vectors. vX, vY and vZ are considered to be homogenous direction vectors whose W components equal 0, while pT is considered to be a homogenous position vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

#### Example:
```povray
#declare MM =
    M_FromRowVectors3D(
        < -1,  -2,  -3>,
        < -4,  -5,  -6>,
        < -7,  -8,  -9>,
        <-10, -11, -12>
    )
;

M_CustomPrint(MM, 3, 0, "", false)
```

#### Result:
```povray
array[4][4] {
    {  -1,  -2,  -3,   0 },
    {  -4,  -5,  -6,   0 },
    {  -7,  -8,  -9,   0 },
    { -10, -11, -12,   1 }
}
```

## M_FromColVectors3D(vX, vY, vZ, pT)
Return a 4x4 matrix created from the 3D vectors vX, vY, vZ and pT, used as column vectors. vX, vY and vZ are considered to be homogenous direction vectors whose W components equal 0, while pT is considered to be a homogenous position vector whose W component equals 1.

See also https://en.wikipedia.org/wiki/Homogeneous_coordinates

#### Example:
```povray
#declare MM =
    M_FromColVectors3D(
        < -1,  -2,  -3>,
        < -4,  -5,  -6>,
        < -7,  -8,  -9>,
        <-10, -11, -12>
    )
;

M_CustomPrint(MM, 3, 0, "", false)
```
#### Result:
```povray
array[4][4] {
    {  -1,  -4,  -7, -10 },
    {  -2,  -5,  -8, -11 },
    {  -3,  -6,  -9, -12 },
    {   0,   0,   0,   1 }
}
```

## M_Translate2D(pT)
Return a 3×3 transformation matrix for translating in 2D space by the position vector pT.

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
Return a 3×3 transformation matrix for scaling in 2D space by the scaling vector vS.

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
Return a 3×3 transformation matrix for rotating in 2D space by the angle Angle in radians.

See also https://en.wikipedia.org/wiki/Rotation_matrix

#### Example:
```povray
```
#### Result:
```povray
```

## M_Translate3D(pT)
Return a 4×4 transformation matrix for translating in 3D space by the position vector pT.

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
Return a 4×4 transformation matrix for scaling in 3D space by the scaling vector vS

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
Return a 4×4 rotation matrix for rotating around the X-axis. The angle Angle must be in radians.

See also https://en.wikipedia.org/wiki/Rotation_matrix

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
Return a 4×4 rotation matrix for rotating around the Y-axis. The angle Angle must be in radians.

See also https://en.wikipedia.org/wiki/Rotation_matrix

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
Return a 4×4 rotation matrix for rotating around the Z-axis. The angle Angle must be in radians.

See also https://en.wikipedia.org/wiki/Rotation_matrix

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
Return a 4×4 rotation matrix for rotating around an arbitrary 3D axis vAxis. The angle Angle must be in radians.

See also https://en.wikipedia.org/wiki/Rotation_matrix and https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula

#### Example:
```povray
#declare MM =
    M_Rotate3D_AroundAxis(
        <+1,  0,  -1>,
        -pi/2
    )
;

M_Print(MM)
```
#### Result:
```povray
array[4][4] {  
    {  0.500000,  0.707107, -0.500000,  0.000000 },  
    { -0.707107,  0.000000, -0.707107,  0.000000 },  
    { -0.500000,  0.707107,  0.500000,  0.000000 },  
    {  0.000000,  0.000000,  0.000000,  1.000000 }  
}
```

## M_Reorient3D(vFrom, vTo)
Return a 4×4 rotation matrix that rotates the 3D direction vector vFrom to align with the 3D direction vector vTo.

This is useful for aligning objects 3D space.

See also https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula

#### Example:
```povray
#declare MM =
    M_Reorient3D(
        <+1,  0, +1>,
        < 0, +1,  0>
    )
;

M_Print(MM)
```
#### Result:
```povray
array[4][4] {  
    {  0.500000,  0.707107, -0.500000,  0.000000 },  
    { -0.707107,  0.000000, -0.707107,  0.000000 },  
    { -0.500000,  0.707107,  0.500000,  0.000000 },  
    {  0.000000,  0.000000,  0.000000,  1.000000 }  
}
```
