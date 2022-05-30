# POV-Ray-matrices
POV-Ray include file for working with matrices

NB: At the moment this library is Work In Progress, so it is not yet complete and things may suddenly change.

See also https://en.wikipedia.org/wiki/Matrix_(mathematics)

## M_NoOfRows(AA)

Return the number of rows in the matrix AA.

[Example(s)](EXAMPLES.md#m_noofrowsaa)

## M_NoOfCols(AA)

Return the number of columns in the matrix AA.

[Example(s)](EXAMPLES.md#m_noofcolsaa)

## M_SizeStr(AA)
[Example(s)](EXAMPLES.md#m_sizestraa)

## M_PrintSize(AA)
[Example(s)](EXAMPLES.md#m_printsizeaa)

## M_CustomStr(AA, Length, Precision, Compact)

Return the matrix AA (as a 2 dimensional array) in a string. The formatting of each element is defined by the Length an Precision paramenters in the same way that the L and P parameters defines the format in POV-Ray built in str() function. The Compact parameter is boolean and controls if the return string contains minimal white space.

See also http://www.povray.org/documentation/view/3.7.1/232/

[Example(s)](EXAMPLES.md#m_customstraa-length-precision-compact)

## M_Str(AA)

Return the matrix AA (as a 2 dimensional array) in a string. The elements are printed with platform specific precision.

[Example(s)](EXAMPLES.md#m_straa)

## M_CustomPrint(AA, Length, Precision, Compact)

Print the matrix AA (as a 2 dimensional array). The formatting of each element is defined by the Length an Precision paramenters in the same way that the L and P parameters defines the format in POV-Ray built in str() function. The Compact parameter is boolean and controls if the matrix is printed with minimal white space. 

See also http://www.povray.org/documentation/view/3.7.1/232/

[Example(s)](EXAMPLES.md#m_customprintaa-length-precision-compact)

## M_Print(AA)

Print the matrix AA (as a 2 dimensional array). The elements are printed with platform specific precision.

[Example(s)](EXAMPLES.md#m_printaa)

## M_Zeros(NoOfRows, NoOfCols)

Return a matrix with given numer of size NoOfRows x NoOfCols, filled with zeros.

[Example(s)](EXAMPLES.md#m_zerosnoofrows-noofcols)

## M_Ones(NoOfRows, NoOfCols)

Return a matrix with given numer of size NoOfRows x NoOfCols, filled with ones.

[Example(s)](EXAMPLES.md#m_onesnoofrows-noofcols)

## M_Full(NoOfRows, NoOfCols, Const)

Return a matrix with given numer of size NoOfRows x NoOfCols, filled with the number Const.

[Example(s)](EXAMPLES.md#m_fullnoofrows-noofcols-const)

## M_Identity(Size)

Return an identity matrix of size Size x Size square matrix with ones on the main diagonal and zeros elsewhere.

See also https://en.wikipedia.org/wiki/Identity_matrix

[Example(s)](EXAMPLES.md#m_identitysize)

## M_Neg(AA)

Return a matrix where the unary minus operator has been applied to alle the elements of the matrix AA.

[Example(s)](EXAMPLES.md#m_negaa)

## M_Pos(AA)

Return a matrix where the unary plus operator has been applied to alle the elements of the matrix AA.

[Example(s)](EXAMPLES.md#m_posaa)

## M_Scale(AA, Scale)

Return a matrix where all the elements of the matrix AA has been multipled by the number Scale.

[Example(s)](EXAMPLES.md#m_scaleaa-scale)

## M_Round(AA, N)
[Example(s)](EXAMPLES.md#m_roundaa-n)

## M_ApplyCheckerSigns(AA)
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

Return the sum of alle the elements alon the main diagonal in the matrix AA.

[Example(s)](EXAMPLES.md#m_traceaa)

## M_Transpose(AA)

Returns a matrix that is the transpose of the matrix AA.

See also https://en.wikipedia.org/wiki/Transpose

[Example(s)](EXAMPLES.md#m_transposeaa)

## M_Mult(AA, BB)

Return a matrix that is the product of the matrices AA and BB.

See also https://en.wikipedia.org/wiki/Matrix_multiplication

[Example(s)](EXAMPLES.md#m_multaa-bb)

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
[Example(s)](EXAMPLES.md#m_addscaledrowtorowaa-scale-rowno-torowno)

See also https://en.wikipedia.org/wiki/Elementary_matrix#Row-multiplying_transformations and https://en.wikipedia.org/wiki/Elementary_matrix#Row-addition_transformations

## M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)
[Example(s)](EXAMPLES.md#m_addscaledcoltocolaa-scale-colno-tocolno)

## M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)
[Example(s)](EXAMPLES.md#m_submatrixaa-rowno-noofrows-colno-noofcols)

## M_Stack(AAAA)
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
[Example(s)](EXAMPLES.md#m_minorsaa)

See also https://en.wikipedia.org/wiki/Minor_(linear_algebra)

## M_Cofactors(AA)

Return a matrix formed by all of the cofactors of the square matrix AA.
 
[Example(s)](EXAMPLES.md#m_cofactorsaa)

## M_Adjoint(AA)

Return a matrix that is the classical adjoint of a the square matrix AA.

See also https://en.wikipedia.org/wiki/Adjugate_matrix

[Example(s)](EXAMPLES.md#m_adjointaa)

## M_Inv_SS(AA)

Return a matrix that is the inverse of the square matrix AA. Use this if AA is large and if many of its elements are zero.

Also see https://en.wikipedia.org/wiki/Minor_(linear_algebra)#Inverse_of_a_matrix

[Example(s)](EXAMPLES.md#m_inv_ssaa)

## M_Inv(AA)

Return a matrix that is the inverse of the square matrix AA

See also https://en.wikipedia.org/wiki/Minor_(linear_algebra)#Inverse_of_a_matrix

[Example(s)](EXAMPLES.md#m_invaa)

## M_FromTransformFn(TransformFn)
[Example(s)](EXAMPLES.md#m_fromtransformfntransformfn)

## M_FromTransform(Transform)
[Example(s)](EXAMPLES.md#m_fromtransformtransform)

## M_RowFromPos2D(p0)
[Example(s)](EXAMPLES.md#m_rowfrompos2dp0)

## M_ColFromPos2D(p0)
[Example(s)](EXAMPLES.md#m_colfrompos2dp0)

## M_RowFromDir2D(v0)
[Example(s)](EXAMPLES.md#m_rowfromdir2dv0)

## M_ColFromDir2D(v0)
[Example(s)](EXAMPLES.md#m_colfromdir2dv0)

## M_RowFromPos3D(p0)
[Example(s)](EXAMPLES.md#m_rowfrompos3dp0)

## M_ColFromPos3D(p0)
[Example(s)](EXAMPLES.md#m_colfrompos3dp0)

## M_RowFromDir3D(v0)
[Example(s)](EXAMPLES.md#m_rowfromdir3dv0)

## M_ColFromDir3D(v0)
[Example(s)](EXAMPLES.md#m_colfromdir3dv0)

## M_SkewSymFromDir3D(v0)
[Example(s)](EXAMPLES.md#m_skewsymfromdir3dv0)

## M_Pos2D_FromRow(AA, RowNo)
[Example(s)](EXAMPLES.md#m_pos2d_fromrowaa-rowno)

## M_Pos2D_FromCol(AA, ColNo)
[Example(s)](EXAMPLES.md#m_pos2d_fromcolaa-colno)

## M_Dir2D_FromRow(AA, RowNo)
[Example(s)](EXAMPLES.md#m_dir2d_fromrowaa-rowno)

## M_Dir2D_FromCol(AA, ColNo)
[Example(s)](EXAMPLES.md#m_dir2d_fromcolaa-colno)

## M_Pos3D_FromRow(AA, RowNo)
[Example(s)](EXAMPLES.md#m_pos3d_fromrowaa-rowno)

## M_Pos3D_FromCol(AA, ColNo)
[Example(s)](EXAMPLES.md#m_pos3d_fromcolaa-colno)

## M_Dir3D_FromRow(AA, RowNo)
[Example(s)](EXAMPLES.md#m_dir3d_fromrowaa-rowno)

## M_Dir3D_FromCol(AA, ColNo)
[Example(s)](EXAMPLES.md#m_dir3d_fromcolaa-colno)

