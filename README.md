# POV-Ray-matrices
POV-Ray v3.7 include file with macros for working with matrices

All rotation matrices created with this library maintain consistency with POV-Ray's left-handed coordinate system convention.

NB: At the moment this library is Work In Progress, so it is not yet complete and things may suddenly change.

See also https://en.wikipedia.org/wiki/Matrix_(mathematics)

## Image created with one of the examples:

### Fit circle to points
[Source code](MoreExamples/FitCircleToPoints.pov)\
![Fit circle to points image](MoreExamples/FitCircleToPoints.png)

## Links to descriptions and examples:

### [M_NoOfRows(AA)](DescriptionsAndExamples.md#m_noofrowsaa)

### [M_NoOfCols(AA)](DescriptionsAndExamples.md#m_noofcolsaa)

### [M_CustomStr(AA, Length, Precision, ExtraIndentStr, Compact)](DescriptionsAndExamples.md#m_customstraa-length-precision-extraindentstr-compact)

### [M_Str(AA)](DescriptionsAndExamples.md#m_straa)

### [M_CustomPrint(AA, Length, Precision, ExtraIndentStr, Compact)](DescriptionsAndExamples.md#m_customprintaa-length-precision-extraindentstr-compact)

### [M_Print(AA)](DescriptionsAndExamples.md#m_printaa)

### [M_Zeros(NoOfRows, NoOfCols)](DescriptionsAndExamples.md#m_zerosnoofrows-noofcols)

### [M_Ones(NoOfRows, NoOfCols)](DescriptionsAndExamples.md#m_onesnoofrows-noofcols)

### [M_Full(NoOfRows, NoOfCols, Const)](DescriptionsAndExamples.md#m_fullnoofrows-noofcols-const)

### [M_Identity(Size)](DescriptionsAndExamples.md#m_identitysize)

### [M_Neg(AA)](DescriptionsAndExamples.md#m_negaa)

### [M_Pos(AA)](DescriptionsAndExamples.md#m_posaa)

### [M_Scale(AA, Scale)](DescriptionsAndExamples.md#m_scaleaa-scale)

### [M_Round(AA, N)](DescriptionsAndExamples.md#m_roundaa-n)

### [M_ApplyCheckerSigns(AA)](DescriptionsAndExamples.md#m_applycheckersignsaa)

### [M_ScaleRow(AA, RowNo, Scale)](DescriptionsAndExamples.md#m_scalerowaa-rowno-scale)

### [M_ScaleCol(AA, ColNo, Scale)](DescriptionsAndExamples.md#m_scalecolaa-colno-scale)

### [M_SwapRows(AA, RowNo, Row_No)](DescriptionsAndExamples.md#m_swaprowsaa-rowno-row_no)

### [M_SwapCols(AA, ColNo, Col_No)](DescriptionsAndExamples.md#m_swapcolsaa-colno-col_no)

### [M_Add(AA, BB)](DescriptionsAndExamples.md#m_addaa-bb)

### [M_Sub(AA, BB)](DescriptionsAndExamples.md#m_subaa-bb)

### [M_Trace(AA)](DescriptionsAndExamples.md#m_traceaa)

### [M_Transpose(AA)](DescriptionsAndExamples.md#m_transposeaa)

### [M_Mult(AA, BB)](DescriptionsAndExamples.md#m_multaa-bb)

### [M_Gramian(AA)](DescriptionsAndExamples.md#m_gramianaa)

### [M_DelRow(AA, RowNo)](DescriptionsAndExamples.md#m_delrowaa-rowno)

### [M_DelCol(AA, ColNo)](DescriptionsAndExamples.md#m_delcolaa-colno)

### [M_DelRowAndCol(AA, RowNo, ColNo)](DescriptionsAndExamples.md#m_delrowandcolaa-rowno-colno)

### [M_AddScaledRowToRow(AA, Scale, RowNo, ToRowNo)](DescriptionsAndExamples.md#m_addscaledrowtorowaa-scale-rowno-torowno)

### [M_AddScaledColToCol(AA, Scale, ColNo, ToColNo)](DescriptionsAndExamples.md#m_addscaledcoltocolaa-scale-colno-tocolno)

### [M_SubMatrix(AA, RowNo, NoOfRows, ColNo, NoOfCols)](DescriptionsAndExamples.md#m_submatrixaa-rowno-noofrows-colno-noofcols)

### [M_Stack(AAAA)](DescriptionsAndExamples.md#m_stackaaaa)

### [M_Det_SS(AA)](DescriptionsAndExamples.md#m_det_ssaa)

### [M_Det(AA)](DescriptionsAndExamples.md#m_detaa)

### [M_Minors(AA)](DescriptionsAndExamples.md#m_minorsaa)

### [M_Cofactors(AA)](DescriptionsAndExamples.md#m_cofactorsaa)

### [M_Adjoint(AA)](DescriptionsAndExamples.md#m_adjointaa)

### [M_Inv_SS(AA)](DescriptionsAndExamples.md#m_inv_ssaa)

### [M_Inv(AA)](DescriptionsAndExamples.md#m_invaa)

### [M_PseudoInv(AA)](DescriptionsAndExamples.md#m_pseudoinvaa)

### [M_FromTransformFn(TransformFn)](DescriptionsAndExamples.md#m_fromtransformfntransformfn)

### [M_ToTransformFn(AA)](DescriptionsAndExamples.md#m_totransformfnaa)

### [M_FromTransform(Transform)](DescriptionsAndExamples.md#m_fromtransformtransform)

### [M_ToTransform(AA)](DescriptionsAndExamples.md#m_totransformaa)

### [M_Row_FromPos2D(p0)](DescriptionsAndExamples.md#m_row_frompos2dp0)

### [M_Col_FromPos2D(p0)](DescriptionsAndExamples.md#m_col_frompos2dp0)

### [M_Row_FromDir2D(v0)](DescriptionsAndExamples.md#m_row_fromdir2dv0)

### [M_Col_FromDir2D(v0)](DescriptionsAndExamples.md#m_col_fromdir2dv0)

### [M_Row_FromPos3D(p0)](DescriptionsAndExamples.md#m_row_frompos3dp0)

### [M_Col_FromPos3D(p0)](DescriptionsAndExamples.md#m_col_frompos3dp0)

### [M_Row_FromDir3D(v0)](DescriptionsAndExamples.md#m_row_fromdir3dv0)

### [M_Col_FromDir3D(v0)](DescriptionsAndExamples.md#m_col_fromdir3dv0)

### [M_SkewSym_FromDir3D(v0)](DescriptionsAndExamples.md#m_skewsym_fromdir3dv0)

### [M_Pos2D_FromRow(AA, RowNo)](DescriptionsAndExamples.md#m_pos2d_fromrowaa-rowno)

### [M_Pos2D_FromCol(AA, ColNo)](DescriptionsAndExamples.md#m_pos2d_fromcolaa-colno)

### [M_Dir2D_FromRow(AA, RowNo)](DescriptionsAndExamples.md#m_dir2d_fromrowaa-rowno)

### [M_Dir2D_FromCol(AA, ColNo)](DescriptionsAndExamples.md#m_dir2d_fromcolaa-colno)

### [M_Pos3D_FromRow(AA, RowNo)](DescriptionsAndExamples.md#m_pos3d_fromrowaa-rowno)

### [M_Pos3D_FromCol(AA, ColNo)](DescriptionsAndExamples.md#m_pos3d_fromcolaa-colno)

### [M_Dir3D_FromRow(AA, RowNo)](DescriptionsAndExamples.md#m_dir3d_fromrowaa-rowno)

### [M_Dir3D_FromCol(AA, ColNo)](DescriptionsAndExamples.md#m_dir3d_fromcolaa-colno)

### [M_FromRowVectors2D(vU, vV, pT)](DescriptionsAndExamples.md#m_fromrowvectors2dvu-vv-pt)

### [M_FromColVectors2D(vU, vV, pT)](DescriptionsAndExamples.md#m_fromcolvectors2dvu-vv-pt)

### [M_FromRowVectors3D(vX, vY, vZ, pT)](DescriptionsAndExamples.md#m_fromrowvectors3dvx-vy-vz-pt)

### [M_FromColVectors3D(vX, vY, vZ, pT)](DescriptionsAndExamples.md#m_fromcolvectors3dvx-vy-vz-pt)

### [M_Translate2D(pT)](DescriptionsAndExamples.md#m_translate2dpt)

### [M_Scale2D(vS)](DescriptionsAndExamples.md#m_scale2dvs)

### [M_Rotate2D(Angle)](DescriptionsAndExamples.md#m_rotate2dangle)

### [M_Translate3D(pT)](DescriptionsAndExamples.md#m_translate3dpt)

### [M_Scale3D(vS)](DescriptionsAndExamples.md#m_scale3dvs)

### [M_Rotate3D_AroundX(Angle)](DescriptionsAndExamples.md#m_rotate3d_aroundxangle)

### [M_Rotate3D_AroundY(Angle)](DescriptionsAndExamples.md#m_rotate3d_aroundyangle)

### [M_Rotate3D_AroundZ(Angle)](DescriptionsAndExamples.md#m_rotate3d_aroundzangle)

### [M_Rotate3D_AroundAxis(vAxis, Angle)](DescriptionsAndExamples.md#m_rotate3d_aroundaxisvaxis-angle)

## [M_Reorient3D(vFrom, vTo)](DescriptionsAndExamples.md#m_reorient3dvfrom-vto)
