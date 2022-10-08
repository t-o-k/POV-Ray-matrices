# POV-Ray-matrices
POV-Ray v3.7 include file for working with matrices

NB: At the moment this library is Work In Progress, so it is not yet complete and things may suddenly change.

See also https://en.wikipedia.org/wiki/Matrix_(mathematics)

## M_NoOfRows(AA)

Return the number of rows in the matrix AA.

[Example(s)](EXAMPLES.md#m_noofrowsaa)

## M_NoOfCols(AA)

Return the number of columns in the matrix AA.

[Example(s)](EXAMPLES.md#m_noofcolsaa)

## M_CustomStr(AA, Length, Precision, ExtraIndentStr, Compact)

Return the matrix AA (as a 2 dimensional array) in a string. The formatting of each element is defined by the Length and Precision paramenters in the same way that the L and P parameters defines the format in POV-Ray built in str() function. The Compact parameter is boolean and controls if the return string contains minimal white space.

See also http://www.povray.org/documentation/view/3.7.1/232/

[Example(s)](EXAMPLES.md#m_customstraa-length-precision-extraindentstr-compact)

## M_Str(AA)

Return the matrix AA (as a 2 dimensional array) in a string. The elements are printed with platform specific precision.

[Example(s)](EXAMPLES.md#m_straa)

## M_CustomPrint(AA, Length, Precision, ExtraIndentStr, Compact)

Print the matrix AA (as a 2 dimensional array). The formatting of each element is defined by the Length and Precision paramenters in the same way that the L and P parameters defines the format in POV-Ray built in str() function. The Compact parameter is boolean and controls if the matrix is printed with minimal white space. 

See also http://www.povray.org/documentation/view/3.7.1/232/

[Example(s)](EXAMPLES.md#m_customprintaa-length-precision-extraindentstr-compact)

## M_Print(AA)

Print the matrix AA (as a 2 dimensional array). The elements are printed with platform specific precision.

[Example(s)](EXAMPLES.md#m_printaa)

## M_Zeros(NoOfRows, NoOfCols)

Return a matrix with size NoOfRows x NoOfCols, filled with zeros.

[Example(s)](EXAMPLES.md#m_zerosnoofrows-noofcols)

## M_Ones(NoOfRows, NoOfCols)

Return a matrix with size NoOfRows x NoOfCols, filled with ones.

[Example(s)](EXAMPLES.md#m_onesnoofrows-noofcols)

## M_Full(NoOfRows, NoOfCols, Const)

Return a matrix with size NoOfRows x NoOfCols, filled with the number Const.

[Example(s)](EXAMPLES.md#m_fullnoofrows-noofcols-const)

## M_Identity(Size)

Return an identity matrix of size Size x Size with ones on the main diagonal and zeros elsewhere.

See also https://en.wikipedia.org/wiki/Identity_matrix

[Example(s)](EXAMPLES.md#m_identitysize)

## M_Neg(AA)

Return a matrix where the unary minus operator has been applied to the elements of the matrix AA.

[Example(s)](EXAMPLES.md#m_negaa)

## M_Pos(AA)

Return a matrix where the unary plus operator has been applied to the elements of the matrix AA.

[Example(s)](EXAMPLES.md#m_posaa)

## M_Scale(AA, Scale)

Return a matrix where all the elements of the matrix AA has been multipled by the number Scale.

[Example(s)](EXAMPLES.md#m_scaleaa-scale)

## M_Round(AA, N)
[Example(s)](EXAMPLES.md#m_roundaa-n)

## M_ApplyCheckerSigns(AA)

Return a matrix where the unary minus and unary plus operators has been applied to the elements of AA in a checkerboard pattern.

[Example(s)](EXAMPLES.md#m_applycheckersignsaa)

## M_ScaleRow(AA, RowNo, Scale)

Return a matrix with the same elements as the matrix AA, except that all the elements in the row rowNo has been multiplied by the number Scale.

See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-multiplying_transformations

[Example(s)](EXAMPLES.md#m_scalerowaa-rowno-scale)

## M_ScaleCol(AA, ColNo, Scale)

Return a matrix with the same elements as the matrix AA, except that all the elements in the column ColNo has been multiplied by the number Scale.

[Example(s)](EXAMPLES.md#m_scalecolaa-colno-scale)

## M_SwapRows(AA, RowNo, Row_No)

Return a matrix with the same elements as the matrix AA, except that the columns RowNo and Row_No has been swapped.

See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-switching_transformations

[Example(s)](EXAMPLES.md#m_swaprowsaa-rowno-row_no)

## M_SwapCols(AA, ColNo, Col_No)

Return a matrix with the same elements as the matrix AA, except that the columns ColNo and Col_No has been swapped.

[Example(s)](EXAMPLES.md#m_swapcolsaa-colno-col_no)

## M_Add(AA, BB)

Return a matrix that is the entrywise sum of the matrices AA and BB.

See also https://en.wikipedia.org/wiki/Matrix_addition

[Example(s)](EXAMPLES.md#m_addaa-bb)

## M_Sub(AA, BB)

Return a matrix that is the entrywise difference of the matrices AA and BB.

[Example(s)](EXAMPLES.md#m_subaa-bb)

## M_Trace(AA)

Return the sum of all the elements along the main diagonal in the square matrix AA.

See also https://en.wikipedia.org/wiki/Trace_(linear_algebra)

[Example(s)](EXAMPLES.md#m_traceaa)

## M_Transpose(AA)

Returns a matrix that is the transpose of the matrix AA.

See also https://en.wikipedia.org/wiki/Transpose

[Example(s)](EXAMPLES.md#m_transposeaa)

## M_Mult(AA, BB)

Return a matrix that is the product of the matrices AA and BB.

See also https://en.wikipedia.org/wiki/Matrix_multiplication

[Example(s)](EXAMPLES.md#m_multaa-bb)

## M_Gramian(AA)

Return a matrix that is the product of the transpose of the matrix AA and the matrix AA.

See also https://en.wikipedia.org/wiki/Gram_Matrix

[Example(s)](EXAMPLES.md#m_gramianaa)

## M_DelRow(AA, RowNo)

Return a matrix with the same elements as the matrix AA, except that the row RowNo has been removed.

[Example(s)](EXAMPLES.md#m_delrowaa-rowno)

## M_DelCol(AA, ColNo)

Return a matrix with the same elements as the matrix AA, except that the column ColNo has been removed.

[Example(s)](EXAMPLES.md#m_delcolaa-colno)

## M_DelRowAndCol(AA, RowNo, ColNo)

Return a matrix with the same elements as the matrix AA, except that both the row RowNo and column ColNo has been removed.

[Example(s)](EXAMPLES.md#m_delrowandcolaa-rowno-colno)

## M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)
See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-multiplying_transformations and https://en.wikipedia.org/wiki/Elementary_matrix#Row-addition_transformations

[Example(s)](EXAMPLES.md#m_addscaledrowtorowaa-scale-rowno-torowno)

## M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)
[Example(s)](EXAMPLES.md#m_addscaledcoltocolaa-scale-colno-tocolno)

## M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)
[Example(s)](EXAMPLES.md#m_submatrixaa-rowno-noofrows-colno-noofcols)

## M_Stack(AAAA)

Assemble the matrices in the 2-dimensional array AAAA into a single matrix. Matrices in the same column within AAAA must have the same number of columns, and matrices in the same row within AAA must have the same number of rows.

[Example(s)](EXAMPLES.md#m_stackaaaa)

## M_Det_SS(AA)

Return the determinant of the square matrix AA. Use this if AA is large and if many of its elements are zero.

See also https://en.wikipedia.org/wiki/Determinant and https://en.wikipedia.org/wiki/Sparse_matrix

[Example(s)](EXAMPLES.md#m_det_ssaa)

## M_Det(AA)

Return the determinant of the square matrix AA.

See also https://en.wikipedia.org/wiki/Determinant

[Example(s)](EXAMPLES.md#m_detaa)

## M_Minors(AA)
See also https://en.wikipedia.org/wiki/Minor_(linear_algebra)

[Example(s)](EXAMPLES.md#m_minorsaa)

## M_Cofactors(AA)

Return a square matrix formed by all of the cofactors of the square matrix AA.
 
[Example(s)](EXAMPLES.md#m_cofactorsaa)

## M_Adjoint(AA)

Return a square matrix that is the classical adjoint of a the square matrix AA.

See also https://en.wikipedia.org/wiki/Adjugate_matrix

[Example(s)](EXAMPLES.md#m_adjointaa)

## M_Inv_SS(AA)

Return a square matrix that is the inverse of the square matrix AA. Use this if AA is large and if many of its elements are zero.

Also see https://en.wikipedia.org/wiki/Minor_(linear_algebra)#Inverse_of_a_matrix

[Example(s)](EXAMPLES.md#m_inv_ssaa)

## M_Inv(AA)

Return a square matrix that is the inverse of the square matrix AA.

See also https://en.wikipedia.org/wiki/Minor_(linear_algebra)#Inverse_of_a_matrix

[Example(s)](EXAMPLES.md#m_invaa)

## M_PseudoInv(AA)

Return a square matrix that is the pseudoinverse of the matrix AA.

At the moment this library can only calculate the pseudoinverse of matrices which have full rank.

See also https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse

[Example(s)](EXAMPLES.md#m_pseudoinvaa)

## M_FromTransformFn(TransformFn)
[Example(s)](EXAMPLES.md#m_fromtransformfntransformfn)

## M_ToTransformFn(AA)
[Example(s)](EXAMPLES.md#m_totransformfnaa)

## M_FromTransform(Transform)
[Example(s)](EXAMPLES.md#m_fromtransformtransform)

## M_ToTransform(AA)
[Example(s)](EXAMPLES.md#m_totransformaa)

## M_Row_FromPos2D(p0)
Return a matrix with a single row and 3 columns with values from the U, V and W components from the 2D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

[Example(s)](EXAMPLES.md#m_row_frompos2dp0)

## M_Col_FromPos2D(p0)
Return a matrix with a single column and 3 rows with values from the U, V and W components from the 2D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

[Example(s)](EXAMPLES.md#m_col_frompos2dp0)

## M_Row_FromDir2D(v0)
Return a matrix with a single row and 3 columns with values from the U, V and W components from the 2D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

[Example(s)](EXAMPLES.md#m_row_fromdir2dv0)

## M_Col_FromDir2D(v0)
Return a matrix with a single column and 3 rows with values from the U, V and W components from the 2D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

[Example(s)](EXAMPLES.md#m_col_fromdir2dv0)

## M_Row_FromPos3D(p0)
Return a matrix with a single row and 4 columns with values from the X, Y, Z and W components from the 3D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

[Example(s)](EXAMPLES.md#m_row_frompos3dp0)

## M_Col_FromPos3D(p0)
Return a matrix with a single column and 4 rows with values from the X, Y, Z and W components from the 3D position vector p0.

The vector p0 is considered to be a homogeneous vector with it's W component equal to 1.

[Example(s)](EXAMPLES.md#m_col_frompos3dp0)

## M_Row_FromDir3D(v0)
Return a matrix with a single row and 4 columns with values from the X, Y, Z and W components from the 3D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

[Example(s)](EXAMPLES.md#m_row_fromdir3dv0)

## M_Col_FromDir3D(v0)
Return a matrix with a single column and 4 rows with values from the X, Y, Z and W components from the 3D direction vector v0.

The vector v0 is considered to be a homogeneous vector with it's W component equal to 0.

[Example(s)](EXAMPLES.md#m_col_fromdir3dv0)

## M_SkewSym_FromDir3D(v0)
Return a skew symmetric matrix with values from the X, Y and Z components from the 3D direction vector v0.

The vector v0 is considered to be a homogeneous vector. It's W component is not used.

[Example(s)](EXAMPLES.md#m_skewsym_fromdir3dv0)

## M_Pos2D_FromRow(AA, RowNo)
Return a 2D position vector with the component values equal to U/W and V/W.

The values in the 3 columns in row number RowNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

[Example(s)](EXAMPLES.md#m_pos2d_fromrowaa-rowno)

## M_Pos2D_FromCol(AA, ColNo)
Return a 2D position vector with the component values equal to U/W and V/W.

The values in the 3 rows in column number ColNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

[Example(s)](EXAMPLES.md#m_pos2d_fromcolaa-colno)

## M_Dir2D_FromRow(AA, RowNo)
Return a 2D direction vector with the component values U and V.

The values in the 3 columns in row number RowNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

[Example(s)](EXAMPLES.md#m_dir2d_fromrowaa-rowno)

## M_Dir2D_FromCol(AA, ColNo)
Return a 2D direction vector with the component values U and V.

The values in the 3 rows in column number ColNo in the matrix AA are used for U, V and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

[Example(s)](EXAMPLES.md#m_dir2d_fromcolaa-colno)

## M_Pos3D_FromRow(AA, RowNo)
Return a 3D position vector with the component values equal to X/W, Y/Z and Z/W.

The values in the 4 columns in row number RowNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

[Example(s)](EXAMPLES.md#m_pos3d_fromrowaa-rowno)

## M_Pos3D_FromCol(AA, ColNo)
Return a 3D position vector with the component values equal to X/W, Y/Z and Z/W.

The values in the 4 rows in column number ColNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 1.

[Example(s)](EXAMPLES.md#m_pos3d_fromcolaa-colno)

## M_Dir3D_FromRow(AA, RowNo)
Return a 3D direction vector with the component values X, Y and Z.

The values in the 4 columns in row number RowNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

[Example(s)](EXAMPLES.md#m_dir3d_fromrowaa-rowno)

## M_Dir3D_FromCol(AA, ColNo)
Return a 3D direction vector with the component values X, Y and Z.

The values in the 4 rows in column number ColNo in the matrix AA are used for X, Y, Z and W.

The returned vector is considered to be a homogenous vector whose W component equals 0.

[Example(s)](EXAMPLES.md#m_dir3d_fromcolaa-colno)

## M_FromVectors2D(vU, vV, pT)

[Example(s)](EXAMPLES.md#m_fromvectors2dvu-vv-pt)

## M_FromVectors3D(vX, vY, vZ, pT)

[Example(s)](EXAMPLES.md#m_fromvectors3dvx-vy-vz-pt)

## M_Translate2D(pT)

[Example(s)](EXAMPLES.md#m_translate2dpt)

## M_Scale2D(vS)

[Example(s)](EXAMPLES.md#m_scale2dvs)

## M_Rotate2D(Angle)

[Example(s)](EXAMPLES.md#m_rotate2dangle)

## M_Translate3D(pT)

[Example(s)](EXAMPLES.md#m_translate3dpt)

## M_Scale3D(vS)

[Example(s)](EXAMPLES.md#m_scale3dvs)

## M_Rotate3D_AroundX(Angle)

[Example(s)](EXAMPLES.md#m_rotate3d_aroundxangle)

## M_Rotate3D_AroundY(Angle)

[Example(s)](EXAMPLES.md#m_rotate3d_aroundyangle)

## M_Rotate3D_AroundZ(Angle)

[Example(s)](EXAMPLES.md#m_rotate3d_aroundzangle)

## M_Rotate3D_AroundAxis(vAxis, Angle)

[Example(s)](EXAMPLES.md#m_rotate3d_aroundaxisvaxis-angle)

## M_Reorient3D(vFrom, vTo)

[Example(s)](EXAMPLES.md#m_reorient3dvfrom-vto)

