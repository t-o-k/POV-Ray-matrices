# POV-Ray-matrices
POV-Ray include file for working with matrices

NB: At the moment this library is Work In Progress, so it is not yet complete and things may suddenly change.

## M_NoOfRows(AA)
[Example(s)](EXAMPLES.md#m_noofrowsaa)

## M_NoOfCols(AA)
[Example(s)](EXAMPLES.md#m_noofcolsaa)

## M_SizeStr(AA)
[Example(s)](EXAMPLES.md#m_sizestraa)

## M_PrintSize(AA)
[Example(s)](EXAMPLES.md#m_printsizeaa)

## M_CustomStr(AA, Length, Precision, Compact)
[Example(s)](EXAMPLES.md#m_customstraa-length-precision-compact)

## M_Str(AA)
[Example(s)](EXAMPLES.md#m_straa)

## M_CustomPrint(AA, Length, Precision, Compact)
[Example(s)](EXAMPLES.md#m_customprintaa-length-precision-compact)

## M_Print(AA)
[Example(s)](EXAMPLES.md#m_printaa)

## M_Zeros(NoOfRows, NoOfCols)

Return a matrix with given numer of rows and columns, filled with zeros.

[Example(s)](EXAMPLES.md#m_zerosnoofrows-noofcols)

## M_Ones(NoOfRows, NoOfCols)

Return a matrix with given numer of rows and columns, filled with ones.

[Example(s)](EXAMPLES.md#m_onesnoofrows-noofcols)

## M_Full(NoOfRows, NoOfCols, Const)

Return a matrix with given numer of rows and columns, filled with a constant.

[Example(s)](EXAMPLES.md#m_fullnoofrows-noofcols-const)

## M_Identity(Size)
[Example(s)](EXAMPLES.md#m_identitysize)

## M_Neg(AA)
[Example(s)](EXAMPLES.md#m_negaa)

## M_Pos(AA)
[Example(s)](EXAMPLES.md#m_posaa)

## M_Scale(AA, Scale)
[Example(s)](EXAMPLES.md#m_scaleaa-scale)

## M_Round(AA, N)
[Example(s)](EXAMPLES.md#m_roundaa-n)

## M_ApplyCheckerSigns(AA)
[Example(s)](EXAMPLES.md#m_applycheckersignsaa)

## M_ScaleRow(AA, RowNo, Scale)
[Example(s)](EXAMPLES.md#m_scalerowaa-rowno-scale)

## M_ScaleCol(AA, ColNo, Scale)
[Example(s)](EXAMPLES.md#m_scalecolaa-colno-scale)

## M_SwapRows(AA, RowNo, Row_No)
[Example(s)](EXAMPLES.md#m_swaprowsaa-rowno-row_no)

## M_SwapCols(AA, ColNo, Col_No)
[Example(s)](EXAMPLES.md#m_swapcolsaa-colno-col_no)

## M_Add(AA, BB)

Return a matrix that is the sum of matrix AA and matrix BB.

[Example(s)](EXAMPLES.md#m_addaa-bb)

## M_Sub(AA, BB)

Return a matrix that is the difference of matrix AA and matrix BB.

[Example(s)](EXAMPLES.md#m_subaa-bb)

## M_Trace(AA)
[Example(s)](EXAMPLES.md#m_traceaa)

## M_Transpose(AA)
[Example(s)](EXAMPLES.md#m_transposeaa)

## M_Mult(AA, BB)
[Example(s)](EXAMPLES.md#m_multaa-bb)

## M_DelRow(AA, RowNo)
[Example(s)](EXAMPLES.md#m_delrowaa-rowno)

## M_DelCol(AA, ColNo)
[Example(s)](EXAMPLES.md#m_delcolaa-colno)

## M_DelRowAndCol(AA, RowNo, ColNo)
[Example(s)](EXAMPLES.md#m_delrowandcolaa-rowno-colno)

## M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)
[Example(s)](EXAMPLES.md#m_addscaledrowtorowaa-scale-rowno-torowno)

## M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)
[Example(s)](EXAMPLES.md#m_addscaledcoltocolaa-scale-colno-tocolno)

## M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)
[Example(s)](EXAMPLES.md#m_submatrixaa-rowno-noofrows-colno-noofcols)

## M_Stack(AAAA)
[Example(s)](EXAMPLES.md#m_stackaaaa)

## M_Det_SS(AA)
[Example(s)](EXAMPLES.md#m_det_ssaa)

## M_Det(AA)
[Example(s)](EXAMPLES.md#m_detaa)

## M_Minors(AA)
[Example(s)](EXAMPLES.md#m_minorsaa)

## M_Cofactors(AA)
[Example(s)](EXAMPLES.md#m_cofactorsaa)

## M_Adjoint(AA)
[Example(s)](EXAMPLES.md#m_adjointaa)

## M_Inv_SS(AA)
[Example(s)](EXAMPLES.md#m_inv_ssaa)

## M_Inv(AA)

Return a matrix that is the inverse of matrix AA.

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

