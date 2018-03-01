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
%define BREPMAT2DDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=BREPMAT2DDOCSTRING) BRepMAT2d

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i


%include BRepMAT2d_headers.i


%pythoncode {
def register_handle(handle, base_object):
    """
    Inserts the handle into the base object to
    prevent memory corruption in certain cases
    """
    try:
        if base_object.IsKind("Standard_Transient"):
            base_object.thisHandle = handle
            base_object.thisown = False
    except:
        pass
};

/* typedefs */
/* end typedefs declaration */

/* templates */
%template(BRepMAT2d_DataMapOfBasicEltShape) NCollection_DataMap <Handle_MAT_BasicElt , TopoDS_Shape , TColStd_MapTransientHasher>;
%template(BRepMAT2d_DataMapOfShapeSequenceOfBasicElt) NCollection_DataMap <TopoDS_Shape , MAT_SequenceOfBasicElt , TopTools_ShapeMapHasher>;
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor BRepMAT2d_BisectingLocus;
class BRepMAT2d_BisectingLocus {
	public:
		%feature("compactdefaultargs") BRepMAT2d_BisectingLocus;
		%feature("autodoc", "	:rtype: None
") BRepMAT2d_BisectingLocus;
		 BRepMAT2d_BisectingLocus ();
		%feature("compactdefaultargs") Compute;
		%feature("autodoc", "	* Computation of the Bisector_Locus in a set of Lines defined in <anExplo>. The bisecting locus are computed on the side <aSide> from the line <LineIndex> in <anExplo>.

	:param anExplo:
	:type anExplo: BRepMAT2d_Explorer &
	:param LineIndex: default value is 1
	:type LineIndex: int
	:param aSide: default value is MAT_Left
	:type aSide: MAT_Side
	:param aJoinType: default value is GeomAbs_Arc
	:type aJoinType: GeomAbs_JoinType
	:param IsOpenResult: default value is Standard_False
	:type IsOpenResult: bool
	:rtype: None
") Compute;
		void Compute (BRepMAT2d_Explorer & anExplo,const Standard_Integer LineIndex = 1,const MAT_Side aSide = MAT_Left,const GeomAbs_JoinType aJoinType = GeomAbs_Arc,const Standard_Boolean IsOpenResult = Standard_False);
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "	* Returns True if Compute has succeeded.

	:rtype: bool
") IsDone;
		Standard_Boolean IsDone ();
		%feature("compactdefaultargs") Graph;
		%feature("autodoc", "	* Returns <theGraph> of <self>.

	:rtype: Handle_MAT_Graph
") Graph;
		Handle_MAT_Graph Graph ();
		%feature("compactdefaultargs") NumberOfContours;
		%feature("autodoc", "	* Returns the number of contours.

	:rtype: int
") NumberOfContours;
		Standard_Integer NumberOfContours ();
		%feature("compactdefaultargs") NumberOfElts;
		%feature("autodoc", "	* Returns the number of BasicElts on the line <IndLine>.

	:param IndLine:
	:type IndLine: int
	:rtype: int
") NumberOfElts;
		Standard_Integer NumberOfElts (const Standard_Integer IndLine);
		%feature("compactdefaultargs") NumberOfSections;
		%feature("autodoc", "	* Returns the number of sections of a curve. this curve is the Indexth curve in the IndLineth contour given by anExplo.

	:param IndLine:
	:type IndLine: int
	:param Index:
	:type Index: int
	:rtype: int
") NumberOfSections;
		Standard_Integer NumberOfSections (const Standard_Integer IndLine,const Standard_Integer Index);
		%feature("compactdefaultargs") BasicElt;
		%feature("autodoc", "	* Returns the BasicElts located at the position <Index> on the contour designed by <IndLine>. Remark: the BasicElts on a contour are sorted.

	:param IndLine:
	:type IndLine: int
	:param Index:
	:type Index: int
	:rtype: Handle_MAT_BasicElt
") BasicElt;
		Handle_MAT_BasicElt BasicElt (const Standard_Integer IndLine,const Standard_Integer Index);
		%feature("compactdefaultargs") GeomElt;
		%feature("autodoc", "	* Returns the geometry linked to the <BasicElt>.

	:param aBasicElt:
	:type aBasicElt: Handle_MAT_BasicElt &
	:rtype: Handle_Geom2d_Geometry
") GeomElt;
		Handle_Geom2d_Geometry GeomElt (const Handle_MAT_BasicElt & aBasicElt);
		%feature("compactdefaultargs") GeomElt;
		%feature("autodoc", "	* Returns the geometry of type <gp> linked to the <Node>.

	:param aNode:
	:type aNode: Handle_MAT_Node &
	:rtype: gp_Pnt2d
") GeomElt;
		gp_Pnt2d GeomElt (const Handle_MAT_Node & aNode);
		%feature("compactdefaultargs") GeomBis;
		%feature("autodoc", "	* Returns the geometry of type <Bissec> linked to the arc <ARC>. <Reverse> is False when the FirstNode of <anArc> correspond to the first point of geometry.

	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:param Reverse:
	:type Reverse: bool
	:rtype: Bisector_Bisec
") GeomBis;
		Bisector_Bisec GeomBis (const Handle_MAT_Arc & anArc,Standard_Boolean &OutValue);
};


%extend BRepMAT2d_BisectingLocus {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BRepMAT2d_Explorer;
class BRepMAT2d_Explorer {
	public:
		%feature("compactdefaultargs") BRepMAT2d_Explorer;
		%feature("autodoc", "	:rtype: None
") BRepMAT2d_Explorer;
		 BRepMAT2d_Explorer ();
		%feature("compactdefaultargs") BRepMAT2d_Explorer;
		%feature("autodoc", "	:param aFace:
	:type aFace: TopoDS_Face &
	:rtype: None
") BRepMAT2d_Explorer;
		 BRepMAT2d_Explorer (const TopoDS_Face & aFace);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	* Clear the contents of <self>.

	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param aFace:
	:type aFace: TopoDS_Face &
	:rtype: None
") Perform;
		void Perform (const TopoDS_Face & aFace);
		%feature("compactdefaultargs") NumberOfContours;
		%feature("autodoc", "	* Returns the Number of contours.

	:rtype: int
") NumberOfContours;
		Standard_Integer NumberOfContours ();
		%feature("compactdefaultargs") NumberOfCurves;
		%feature("autodoc", "	* Returns the Number of Curves in the Contour number <IndexContour>.

	:param IndexContour:
	:type IndexContour: int
	:rtype: int
") NumberOfCurves;
		Standard_Integer NumberOfCurves (const Standard_Integer IndexContour);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialisation of an Iterator on the curves of the Contour number <IndexContour>.

	:param IndexContour:
	:type IndexContour: int
	:rtype: None
") Init;
		void Init (const Standard_Integer IndexContour);
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	* Return False if there is no more curves on the Contour initialised by the method Init.

	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	* Move to the next curve of the current Contour.

	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	* Returns the current curve on the current Contour.

	:rtype: Handle_Geom2d_Curve
") Value;
		Handle_Geom2d_Curve Value ();
		%feature("compactdefaultargs") Shape;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Shape;
		TopoDS_Shape Shape ();
		%feature("compactdefaultargs") Contour;
		%feature("autodoc", "	:param IndexContour:
	:type IndexContour: int
	:rtype: TColGeom2d_SequenceOfCurve
") Contour;
		const TColGeom2d_SequenceOfCurve & Contour (const Standard_Integer IndexContour);
		%feature("compactdefaultargs") IsModified;
		%feature("autodoc", "	:param aShape:
	:type aShape: TopoDS_Shape &
	:rtype: bool
") IsModified;
		Standard_Boolean IsModified (const TopoDS_Shape & aShape);
		%feature("compactdefaultargs") ModifiedShape;
		%feature("autodoc", "	* If the shape is not modified, returns the shape itself.

	:param aShape:
	:type aShape: TopoDS_Shape &
	:rtype: TopoDS_Shape
") ModifiedShape;
		TopoDS_Shape ModifiedShape (const TopoDS_Shape & aShape);
		%feature("compactdefaultargs") GetIsClosed;
		%feature("autodoc", "	:rtype: TColStd_SequenceOfBoolean
") GetIsClosed;
		const TColStd_SequenceOfBoolean & GetIsClosed ();
};


%extend BRepMAT2d_Explorer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BRepMAT2d_LinkTopoBilo;
class BRepMAT2d_LinkTopoBilo {
	public:
		%feature("compactdefaultargs") BRepMAT2d_LinkTopoBilo;
		%feature("autodoc", "	:rtype: None
") BRepMAT2d_LinkTopoBilo;
		 BRepMAT2d_LinkTopoBilo ();
		%feature("compactdefaultargs") BRepMAT2d_LinkTopoBilo;
		%feature("autodoc", "	* Constructs the links Between S and BiLo. //! raises if <S> is not a face.

	:param Explo:
	:type Explo: BRepMAT2d_Explorer &
	:param BiLo:
	:type BiLo: BRepMAT2d_BisectingLocus &
	:rtype: None
") BRepMAT2d_LinkTopoBilo;
		 BRepMAT2d_LinkTopoBilo (const BRepMAT2d_Explorer & Explo,const BRepMAT2d_BisectingLocus & BiLo);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Constructs the links Between S and BiLo. //! raises if <S> is not a face or a wire.

	:param Explo:
	:type Explo: BRepMAT2d_Explorer &
	:param BiLo:
	:type BiLo: BRepMAT2d_BisectingLocus &
	:rtype: None
") Perform;
		void Perform (const BRepMAT2d_Explorer & Explo,const BRepMAT2d_BisectingLocus & BiLo);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialise the Iterator on <S> <S> is an edge or a vertex of the initial wire or face. raises if <S> is not an edge or a vertex.

	:param S:
	:type S: TopoDS_Shape &
	:rtype: None
") Init;
		void Init (const TopoDS_Shape & S);
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	* Returns True if there is a current BasicElt.

	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	* Proceed to the next BasicElt.

	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	* Returns the current BasicElt.

	:rtype: Handle_MAT_BasicElt
") Value;
		Handle_MAT_BasicElt Value ();
		%feature("compactdefaultargs") GeneratingShape;
		%feature("autodoc", "	* Returns the Shape linked to <aBE>.

	:param aBE:
	:type aBE: Handle_MAT_BasicElt &
	:rtype: TopoDS_Shape
") GeneratingShape;
		TopoDS_Shape GeneratingShape (const Handle_MAT_BasicElt & aBE);
};


%extend BRepMAT2d_LinkTopoBilo {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
