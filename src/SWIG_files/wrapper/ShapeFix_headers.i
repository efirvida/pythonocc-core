/*
Copyright 2008-2018 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{
#include<ShapeFix_Shell.hxx>
#include<ShapeFix_DataMapOfShapeBox2d.hxx>
#include<ShapeFix_SplitTool.hxx>
#include<ShapeFix_Shape.hxx>
#include<ShapeFix_Root.hxx>
#include<ShapeFix_Wireframe.hxx>
#include<ShapeFix_Solid.hxx>
#include<ShapeFix_FaceConnect.hxx>
#include<ShapeFix_ComposeShell.hxx>
#include<ShapeFix_EdgeProjAux.hxx>
#include<ShapeFix_WireSegment.hxx>
#include<ShapeFix_ShapeTolerance.hxx>
#include<ShapeFix_Face.hxx>
#include<ShapeFix_Wire.hxx>
#include<ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d.hxx>
#include<ShapeFix_Edge.hxx>
#include<ShapeFix_FixSmallFace.hxx>
#include<ShapeFix_FixSmallSolid.hxx>
#include<ShapeFix_SequenceOfWireSegment.hxx>
#include<ShapeFix_EdgeConnect.hxx>
#include<ShapeFix_IntersectionTool.hxx>
#include<ShapeFix_WireVertex.hxx>
#include<ShapeFix_FreeBounds.hxx>
#include<ShapeFix_SplitCommonVertex.hxx>
#include<ShapeFix.hxx>
#include<Standard.hxx>
#include<Standard_Byte.hxx>
#include<Standard_GUID.hxx>
#include<Standard_MultiplyDefined.hxx>
#include<Standard_Persistent.hxx>
#include<Standard_PCharacter.hxx>
#include<Standard_ImmutableObject.hxx>
#include<Standard_PErrorHandler.hxx>
#include<Standard_ExtCharacter.hxx>
#include<Standard_CString.hxx>
#include<Standard_NumericError.hxx>
#include<Standard_UUID.hxx>
#include<Standard_Assert.hxx>
#include<Standard_IStream.hxx>
#include<Standard_Macro.hxx>
#include<Standard_SStream.hxx>
#include<Standard_Integer.hxx>
#include<Standard_AbortiveTransaction.hxx>
#include<Standard_DomainError.hxx>
#include<Standard_NullValue.hxx>
#include<Standard_Underflow.hxx>
#include<Standard_PrimitiveTypes.hxx>
#include<Standard_Address.hxx>
#include<Standard_DimensionError.hxx>
#include<Standard_Time.hxx>
#include<Standard_OutOfRange.hxx>
#include<Standard_Stream.hxx>
#include<Standard_HandlerStatus.hxx>
#include<Standard_PExtCharacter.hxx>
#include<Standard_Overflow.hxx>
#include<Standard_NotImplemented.hxx>
#include<Standard_OStream.hxx>
#include<Standard_MMgrOpt.hxx>
#include<Standard_Size.hxx>
#include<Standard_ShortReal.hxx>
#include<Standard_Transient.hxx>
#include<Standard_Mutex.hxx>
#include<Standard_Atomic.hxx>
#include<Standard_Boolean.hxx>
#include<Standard_DefineException.hxx>
#include<Standard_math.hxx>
#include<Standard_Failure.hxx>
#include<Standard_MMgrRaw.hxx>
#include<Standard_ArrayStreamBuffer.hxx>
#include<Standard_DefineHandle.hxx>
#include<Standard_PByte.hxx>
#include<Standard_TypeMismatch.hxx>
#include<Standard_Version.hxx>
#include<Standard_LicenseNotFound.hxx>
#include<Standard_NoMoreObject.hxx>
#include<Standard_ExtString.hxx>
#include<Standard_NegativeValue.hxx>
#include<Standard_Type.hxx>
#include<Standard_Handle.hxx>
#include<Standard_MMgrTBBalloc.hxx>
#include<Standard_JmpBuf.hxx>
#include<Standard_ProgramError.hxx>
#include<Standard_NullObject.hxx>
#include<Standard_DefineAlloc.hxx>
#include<Standard_DivideByZero.hxx>
#include<Standard_TypeDef.hxx>
#include<Standard_DimensionMismatch.hxx>
#include<Standard_RangeError.hxx>
#include<Standard_OutOfMemory.hxx>
#include<Standard_ThreadId.hxx>
#include<Standard_MMgrRoot.hxx>
#include<Standard_ErrorHandler.hxx>
#include<Standard_NoSuchObject.hxx>
#include<Standard_TooManyUsers.hxx>
#include<Standard_LicenseError.hxx>
#include<Standard_Character.hxx>
#include<Standard_Real.hxx>
#include<Standard_ConstructionError.hxx>
#include<Standard_values.h>
#include<NCollection_Array1.hxx>
#include<NCollection_AccAllocator.hxx>
#include<NCollection_UtfString.hxx>
#include<NCollection_DefineHArray1.hxx>
#include<NCollection_Lerp.hxx>
#include<NCollection_DefineArray2.hxx>
#include<NCollection_DefineList.hxx>
#include<NCollection_DefineIndexedMap.hxx>
#include<NCollection_WinHeapAllocator.hxx>
#include<NCollection_Mat4.hxx>
#include<NCollection_AlignedAllocator.hxx>
#include<NCollection_DefineVector.hxx>
#include<NCollection_TypeDef.hxx>
#include<NCollection_LocalArray.hxx>
#include<NCollection_Comparator.hxx>
#include<NCollection_DefineMap.hxx>
#include<NCollection_HArray2.hxx>
#include<NCollection_TListNode.hxx>
#include<NCollection_DefineAlloc.hxx>
#include<NCollection_ListNode.hxx>
#include<NCollection_DefineDoubleMap.hxx>
#include<NCollection_DefineDataMap.hxx>
#include<NCollection_Vector.hxx>
#include<NCollection_UtfIterator.hxx>
#include<NCollection_DefineSequence.hxx>
#include<NCollection_HSequence.hxx>
#include<NCollection_Vec3.hxx>
#include<NCollection_UBTree.hxx>
#include<NCollection_DefineHArray2.hxx>
#include<NCollection_Vec4.hxx>
#include<NCollection_Handle.hxx>
#include<NCollection_CellFilter.hxx>
#include<NCollection_HArray1.hxx>
#include<NCollection_BaseList.hxx>
#include<NCollection_SparseArray.hxx>
#include<NCollection_DefineArray1.hxx>
#include<NCollection_BaseVector.hxx>
#include<NCollection_IncAllocator.hxx>
#include<NCollection_BaseAllocator.hxx>
#include<NCollection_SparseArrayBase.hxx>
#include<NCollection_Vec2.hxx>
#include<NCollection_List.hxx>
#include<NCollection_TListIterator.hxx>
#include<NCollection_BaseMap.hxx>
#include<NCollection_Buffer.hxx>
#include<NCollection_StdAllocator.hxx>
#include<NCollection_DefineHSequence.hxx>
#include<NCollection_UBTreeFiller.hxx>
#include<NCollection_DefineIndexedDataMap.hxx>
#include<NCollection_DefaultHasher.hxx>
#include<NCollection_String.hxx>
#include<NCollection_Sequence.hxx>
#include<NCollection_Array2.hxx>
#include<NCollection_Shared.hxx>
#include<NCollection_HeapAllocator.hxx>
#include<TopoDS.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDS_TVertex.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDS_LockedShape.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_AlertWithShape.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_Wire.hxx>
#include<Message.hxx>
#include<Message_Msg.hxx>
#include<Message_Status.hxx>
#include<Message_Gravity.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_Report.hxx>
#include<Message_Alert.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_ExecStatus.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_Algorithm.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_MsgFile.hxx>
#include<Message_Printer.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Messenger.hxx>
#include<Message_StatusType.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_HArrayOfMsg.hxx>
#include<Message_ListOfAlert.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<ShapeExtend.hxx>
#include<ShapeExtend_WireData.hxx>
#include<ShapeExtend_DataMapOfTransientListOfMsg.hxx>
#include<ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg.hxx>
#include<ShapeExtend_CompositeSurface.hxx>
#include<ShapeExtend_DataMapOfShapeListOfMsg.hxx>
#include<ShapeExtend_ComplexCurve.hxx>
#include<ShapeExtend_Status.hxx>
#include<ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg.hxx>
#include<ShapeExtend_Explorer.hxx>
#include<ShapeExtend_Parametrisation.hxx>
#include<ShapeExtend_MsgRegistrator.hxx>
#include<ShapeExtend_BasicMsgRegistrator.hxx>
#include<ShapeBuild.hxx>
#include<ShapeBuild_Vertex.hxx>
#include<ShapeBuild_ReShape.hxx>
#include<ShapeBuild_Edge.hxx>
#include<ShapeConstruct.hxx>
#include<ShapeConstruct_ProjectCurveOnSurface.hxx>
#include<ShapeConstruct_MakeTriangulation.hxx>
#include<ShapeConstruct_Curve.hxx>
#include<Geom_Line.hxx>
#include<Geom_BSplineSurface.hxx>
#include<Geom_OffsetCurve.hxx>
#include<Geom_SweptSurface.hxx>
#include<Geom_Axis1Placement.hxx>
#include<Geom_ElementarySurface.hxx>
#include<Geom_UndefinedValue.hxx>
#include<Geom_OsculatingSurface.hxx>
#include<Geom_Surface.hxx>
#include<Geom_BoundedSurface.hxx>
#include<Geom_Transformation.hxx>
#include<Geom_SequenceOfBSplineSurface.hxx>
#include<Geom_AxisPlacement.hxx>
#include<Geom_Conic.hxx>
#include<Geom_SurfaceOfLinearExtrusion.hxx>
#include<Geom_OffsetSurface.hxx>
#include<Geom_BezierSurface.hxx>
#include<Geom_Vector.hxx>
#include<Geom_VectorWithMagnitude.hxx>
#include<Geom_SphericalSurface.hxx>
#include<Geom_TrimmedCurve.hxx>
#include<Geom_BSplineCurve.hxx>
#include<Geom_BoundedCurve.hxx>
#include<Geom_Point.hxx>
#include<Geom_Geometry.hxx>
#include<Geom_ConicalSurface.hxx>
#include<Geom_RectangularTrimmedSurface.hxx>
#include<Geom_Ellipse.hxx>
#include<Geom_HSequenceOfBSplineSurface.hxx>
#include<Geom_CylindricalSurface.hxx>
#include<Geom_Curve.hxx>
#include<Geom_Parabola.hxx>
#include<Geom_UndefinedDerivative.hxx>
#include<Geom_CartesianPoint.hxx>
#include<Geom_SurfaceOfRevolution.hxx>
#include<Geom_Plane.hxx>
#include<Geom_Axis2Placement.hxx>
#include<Geom_Direction.hxx>
#include<Geom_BezierCurve.hxx>
#include<Geom_ToroidalSurface.hxx>
#include<Geom_Circle.hxx>
#include<Geom_Hyperbola.hxx>
#include<TopLoc_MapOfLocation.hxx>
#include<TopLoc_MapIteratorOfMapOfLocation.hxx>
#include<TopLoc_Datum3D.hxx>
#include<TopLoc_ItemLocation.hxx>
#include<TopLoc_IndexedMapOfLocation.hxx>
#include<TopLoc_MapLocationHasher.hxx>
#include<TopLoc_Location.hxx>
#include<TopLoc_SListNodeOfItemLocation.hxx>
#include<TopLoc_SListOfItemLocation.hxx>
#include<ShapeAnalysis.hxx>
#include<ShapeAnalysis_FreeBounds.hxx>
#include<ShapeAnalysis_Edge.hxx>
#include<ShapeAnalysis_SequenceOfFreeBounds.hxx>
#include<ShapeAnalysis_DataMapOfShapeListOfReal.hxx>
#include<ShapeAnalysis_FreeBoundData.hxx>
#include<ShapeAnalysis_Shell.hxx>
#include<ShapeAnalysis_ShapeTolerance.hxx>
#include<ShapeAnalysis_Geom.hxx>
#include<ShapeAnalysis_TransferParametersProj.hxx>
#include<ShapeAnalysis_CheckSmallFace.hxx>
#include<ShapeAnalysis_BoxBndTree.hxx>
#include<ShapeAnalysis_WireVertex.hxx>
#include<ShapeAnalysis_HSequenceOfFreeBounds.hxx>
#include<ShapeAnalysis_FreeBoundsProperties.hxx>
#include<ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal.hxx>
#include<ShapeAnalysis_Wire.hxx>
#include<ShapeAnalysis_WireOrder.hxx>
#include<ShapeAnalysis_Curve.hxx>
#include<ShapeAnalysis_Surface.hxx>
#include<ShapeAnalysis_ShapeContents.hxx>
#include<ShapeAnalysis_TransferParameters.hxx>
#include<Geom2d_AxisPlacement.hxx>
#include<Geom2d_Direction.hxx>
#include<Geom2d_Ellipse.hxx>
#include<Geom2d_Circle.hxx>
#include<Geom2d_BSplineCurve.hxx>
#include<Geom2d_BoundedCurve.hxx>
#include<Geom2d_BezierCurve.hxx>
#include<Geom2d_UndefinedValue.hxx>
#include<Geom2d_Parabola.hxx>
#include<Geom2d_Line.hxx>
#include<Geom2d_Hyperbola.hxx>
#include<Geom2d_OffsetCurve.hxx>
#include<Geom2d_Point.hxx>
#include<Geom2d_Curve.hxx>
#include<Geom2d_CartesianPoint.hxx>
#include<Geom2d_Conic.hxx>
#include<Geom2d_VectorWithMagnitude.hxx>
#include<Geom2d_Transformation.hxx>
#include<Geom2d_Vector.hxx>
#include<Geom2d_UndefinedDerivative.hxx>
#include<Geom2d_TrimmedCurve.hxx>
#include<Geom2d_Geometry.hxx>
#include<TopAbs.hxx>
#include<TopAbs_Orientation.hxx>
#include<TopAbs_ShapeEnum.hxx>
#include<TopAbs_State.hxx>
#include<TopTools.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_LocationSetPtr.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_MutexForShapeProvider.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfShapeReal.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeAddress.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_DataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TColGeom_HSequenceOfBoundedCurve.hxx>
#include<TColGeom_HArray1OfSurface.hxx>
#include<TColGeom_Array2OfBezierSurface.hxx>
#include<TColGeom_Array1OfBezierCurve.hxx>
#include<TColGeom_Array1OfSurface.hxx>
#include<TColGeom_HArray1OfBezierCurve.hxx>
#include<TColGeom_Array2OfSurface.hxx>
#include<TColGeom_HArray1OfBSplineCurve.hxx>
#include<TColGeom_HArray1OfCurve.hxx>
#include<TColGeom_HSequenceOfCurve.hxx>
#include<TColGeom_SequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceOfSurface.hxx>
#include<TColGeom_HArray2OfSurface.hxx>
#include<TColGeom_Array1OfCurve.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<TColGeom_Array1OfBSplineCurve.hxx>
#include<BRep_ListOfPointRepresentation.hxx>
#include<BRep_CurveOnClosedSurface.hxx>
#include<BRep_PolygonOnSurface.hxx>
#include<BRep_PolygonOnClosedTriangulation.hxx>
#include<BRep_PointsOnSurface.hxx>
#include<BRep_CurveOnSurface.hxx>
#include<BRep_ListIteratorOfListOfPointRepresentation.hxx>
#include<BRep_PolygonOnClosedSurface.hxx>
#include<BRep_GCurve.hxx>
#include<BRep_PointOnSurface.hxx>
#include<BRep_CurveOn2Surfaces.hxx>
#include<BRep_PointOnCurve.hxx>
#include<BRep_ListOfCurveRepresentation.hxx>
#include<BRep_CurveRepresentation.hxx>
#include<BRep_Curve3D.hxx>
#include<BRep_PointRepresentation.hxx>
#include<BRep_Builder.hxx>
#include<BRep_Polygon3D.hxx>
#include<BRep_PointOnCurveOnSurface.hxx>
#include<BRep_TVertex.hxx>
#include<BRep_ListIteratorOfListOfCurveRepresentation.hxx>
#include<BRep_PolygonOnTriangulation.hxx>
#include<BRep_TEdge.hxx>
#include<BRep_TFace.hxx>
#include<BRep_Tool.hxx>
#include<TShort_SequenceOfShortReal.hxx>
#include<TShort_HArray1OfShortReal.hxx>
#include<TShort_HArray2OfShortReal.hxx>
#include<TShort_Array2OfShortReal.hxx>
#include<TShort_HSequenceOfShortReal.hxx>
#include<TShort_Array1OfShortReal.hxx>
#include<Adaptor3d_HVertex.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_HSurface.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_HSurfaceTool.hxx>
#include<Adaptor3d_TopolTool.hxx>
#include<Adaptor3d_HCurve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Adaptor3d_IsoCurve.hxx>
#include<Adaptor3d_HCurveOnSurface.hxx>
#include<Adaptor3d_HIsoCurve.hxx>
#include<Adaptor3d_InterFunc.hxx>
#include<Adaptor3d_CurvePtr.hxx>
#include<Adaptor3d_SurfacePtr.hxx>
#include<Adaptor3d_CurveOnSurfacePtr.hxx>
#include<Poly.hxx>
#include<Poly_CoherentLink.hxx>
#include<Poly_CoherentNode.hxx>
#include<Poly_CoherentTriPtr.hxx>
#include<Poly_Triangle.hxx>
#include<Poly_Polygon2D.hxx>
#include<Poly_MakeLoops.hxx>
#include<Poly_ListOfTriangulation.hxx>
#include<Poly_Polygon3D.hxx>
#include<Poly_Array1OfTriangle.hxx>
#include<Poly_PolygonOnTriangulation.hxx>
#include<Poly_HArray1OfTriangle.hxx>
#include<Poly_CoherentTriangulation.hxx>
#include<Poly_CoherentTriangle.hxx>
#include<Poly_Triangulation.hxx>
#include<Poly_Connect.hxx>
#include<BRepTools.hxx>
#include<BRepTools_DataMapIteratorOfMapOfVertexPnt2d.hxx>
#include<BRepTools_WireExplorer.hxx>
#include<BRepTools_NurbsConvertModification.hxx>
#include<BRepTools_History.hxx>
#include<BRepTools_ShapeSet.hxx>
#include<BRepTools_Substitution.hxx>
#include<BRepTools_Modifier.hxx>
#include<BRepTools_TrsfModification.hxx>
#include<BRepTools_GTrsfModification.hxx>
#include<BRepTools_MapOfVertexPnt2d.hxx>
#include<BRepTools_Quilt.hxx>
#include<BRepTools_ReShape.hxx>
#include<BRepTools_Modification.hxx>
#include<Adaptor2d_Curve2dPtr.hxx>
#include<Adaptor2d_HCurve2d.hxx>
#include<Adaptor2d_HOffsetCurve.hxx>
#include<Adaptor2d_Line2d.hxx>
#include<Adaptor2d_OffsetCurve.hxx>
#include<Adaptor2d_Curve2d.hxx>
#include<Adaptor2d_HLine2d.hxx>
#include<IntRes2d_Domain.hxx>
#include<IntRes2d_Position.hxx>
#include<IntRes2d_Situation.hxx>
#include<IntRes2d_IntersectionSegment.hxx>
#include<IntRes2d_Transition.hxx>
#include<IntRes2d_SequenceOfIntersectionSegment.hxx>
#include<IntRes2d_SequenceOfIntersectionPoint.hxx>
#include<IntRes2d_IntersectionPoint.hxx>
#include<IntRes2d_TypeTrans.hxx>
#include<IntRes2d_Intersection.hxx>
#include<BRepBuilderAPI.hxx>
#include<BRepBuilderAPI_Sewing.hxx>
#include<BRepBuilderAPI_Collect.hxx>
#include<BRepBuilderAPI_ShapeModification.hxx>
#include<BRepBuilderAPI_MakeFace.hxx>
#include<BRepBuilderAPI_WireError.hxx>
#include<BRepBuilderAPI_FindPlane.hxx>
#include<BRepBuilderAPI_Command.hxx>
#include<BRepBuilderAPI_MakeEdge2d.hxx>
#include<BRepBuilderAPI_EdgeError.hxx>
#include<BRepBuilderAPI_MakeShape.hxx>
#include<BRepBuilderAPI_GTransform.hxx>
#include<BRepBuilderAPI_PipeError.hxx>
#include<BRepBuilderAPI_Copy.hxx>
#include<BRepBuilderAPI_ModifyShape.hxx>
#include<BRepBuilderAPI_TransitionMode.hxx>
#include<BRepBuilderAPI_MakeVertex.hxx>
#include<BRepBuilderAPI_MakePolygon.hxx>
#include<BRepBuilderAPI_MakeWire.hxx>
#include<BRepBuilderAPI_NurbsConvert.hxx>
#include<BRepBuilderAPI_FaceError.hxx>
#include<BRepBuilderAPI_ShellError.hxx>
#include<BRepBuilderAPI_Transform.hxx>
#include<BRepBuilderAPI_MakeSolid.hxx>
#include<BRepBuilderAPI_FastSewing.hxx>
#include<BRepBuilderAPI_VertexInspector.hxx>
#include<BRepBuilderAPI_CellFilter.hxx>
#include<BRepBuilderAPI_BndBoxTreeSelector.hxx>
#include<BRepBuilderAPI_MakeShell.hxx>
#include<BRepBuilderAPI_MakeEdge.hxx>
#include<GeomAdaptor.hxx>
#include<GeomAdaptor_GHCurve.hxx>
#include<GeomAdaptor_HSurfaceOfLinearExtrusion.hxx>
#include<GeomAdaptor_SurfaceOfLinearExtrusion.hxx>
#include<GeomAdaptor_Curve.hxx>
#include<GeomAdaptor_Surface.hxx>
#include<GeomAdaptor_HSurfaceOfRevolution.hxx>
#include<GeomAdaptor_SurfaceOfRevolution.hxx>
#include<GeomAdaptor_HCurve.hxx>
#include<GeomAdaptor_HSurface.hxx>
#include<GeomAdaptor_GHSurface.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_SequenceOfAx1.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_SequenceOfArray1OfPnt2d.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_DataMapOfIntegerTransient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_SequenceOfAddress.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_Array1OfByte.hxx>
#include<TColStd_ListOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_SequenceOfBoolean.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_DataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_IndexedDataMapOfStringString.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_MapIteratorOfMapOfAsciiString.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfAsciiString.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_MapOfAsciiString.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_DataMapOfStringInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_HArray1OfByte.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_DataMapOfAsciiStringInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<TCollection.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_Side.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_AsciiString.hxx>
#include<Storage.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_RootData.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_Root.hxx>
#include<Storage_PType.hxx>
#include<Storage_Error.hxx>
#include<Storage_Schema.hxx>
#include<Storage_PArray.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_Macros.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_Position.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_Data.hxx>
%};
%import Standard.i
%import NCollection.i
%import TopoDS.i
%import Message.i
%import ShapeExtend.i
%import ShapeBuild.i
%import ShapeConstruct.i
%import Geom.i
%import TopLoc.i
%import ShapeAnalysis.i
%import Geom2d.i
%import TopAbs.i
%import TopTools.i
