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
%define XCAFDOCDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=XCAFDOCDOCSTRING) XCAFDoc

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


%include XCAFDoc_headers.i


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
typedef TCollection_AsciiString XCAFDoc_PartId;
/* end typedefs declaration */

/* templates */
%template(XCAFDoc_DataMapOfShapeLabel) NCollection_DataMap <TopoDS_Shape , TDF_Label , TopTools_ShapeMapHasher>;
%template(XCAFDoc_GraphNodeSequence) NCollection_Sequence <Handle_XCAFDoc_GraphNode>;
/* end templates declaration */

/* public enums */
enum XCAFDoc_ColorType {
	XCAFDoc_ColorGen = 0,
	XCAFDoc_ColorSurf = 1,
	XCAFDoc_ColorCurv = 2,
};

/* end public enums declaration */

%rename(xcafdoc) XCAFDoc;
class XCAFDoc {
	public:
		%feature("compactdefaultargs") AssemblyGUID;
		%feature("autodoc", "	* class for containing GraphNodes. Returns GUID for UAttribute identifying assembly

	:rtype: Standard_GUID
") AssemblyGUID;
		static Standard_GUID AssemblyGUID ();
		%feature("compactdefaultargs") ShapeRefGUID;
		%feature("autodoc", "	* Returns GUID for TreeNode representing assembly link

	:rtype: Standard_GUID
") ShapeRefGUID;
		static Standard_GUID ShapeRefGUID ();
		%feature("compactdefaultargs") ColorRefGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of colors

	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: Standard_GUID
") ColorRefGUID;
		static Standard_GUID ColorRefGUID (const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") DimTolRefGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of DGT

	:rtype: Standard_GUID
") DimTolRefGUID;
		static Standard_GUID DimTolRefGUID ();
		%feature("compactdefaultargs") DimensionRefFirstGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of Dimension

	:rtype: Standard_GUID
") DimensionRefFirstGUID;
		static Standard_GUID DimensionRefFirstGUID ();
		%feature("compactdefaultargs") DimensionRefSecondGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of Dimension

	:rtype: Standard_GUID
") DimensionRefSecondGUID;
		static Standard_GUID DimensionRefSecondGUID ();
		%feature("compactdefaultargs") GeomToleranceRefGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of GeomTolerance

	:rtype: Standard_GUID
") GeomToleranceRefGUID;
		static Standard_GUID GeomToleranceRefGUID ();
		%feature("compactdefaultargs") DatumRefGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of datum

	:rtype: Standard_GUID
") DatumRefGUID;
		static Standard_GUID DatumRefGUID ();
		%feature("compactdefaultargs") DatumTolRefGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing connections Datum-Toler

	:rtype: Standard_GUID
") DatumTolRefGUID;
		static Standard_GUID DatumTolRefGUID ();
		%feature("compactdefaultargs") LayerRefGUID;
		%feature("autodoc", "	:rtype: Standard_GUID
") LayerRefGUID;
		static Standard_GUID LayerRefGUID ();
		%feature("compactdefaultargs") MaterialRefGUID;
		%feature("autodoc", "	:rtype: Standard_GUID
") MaterialRefGUID;
		static Standard_GUID MaterialRefGUID ();
		%feature("compactdefaultargs") NoteRefGUID;
		%feature("autodoc", "	* Return GUIDs for representing notes

	:rtype: Standard_GUID
") NoteRefGUID;
		static Standard_GUID NoteRefGUID ();
		%feature("compactdefaultargs") InvisibleGUID;
		%feature("autodoc", "	:rtype: Standard_GUID
") InvisibleGUID;
		static Standard_GUID InvisibleGUID ();
		%feature("compactdefaultargs") ExternRefGUID;
		%feature("autodoc", "	* Returns GUID for UAttribute identifying external reference on no-step file

	:rtype: Standard_GUID
") ExternRefGUID;
		static Standard_GUID ExternRefGUID ();
		%feature("compactdefaultargs") SHUORefGUID;
		%feature("autodoc", "	* Returns GUID for UAttribute identifying specified higher usage occurrence

	:rtype: Standard_GUID
") SHUORefGUID;
		static Standard_GUID SHUORefGUID ();
		%feature("compactdefaultargs") ViewRefGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of View

	:rtype: Standard_GUID
") ViewRefGUID;
		static Standard_GUID ViewRefGUID ();
		%feature("compactdefaultargs") ViewRefShapeGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of View

	:rtype: Standard_GUID
") ViewRefShapeGUID;
		static Standard_GUID ViewRefShapeGUID ();
		%feature("compactdefaultargs") ViewRefGDTGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of View

	:rtype: Standard_GUID
") ViewRefGDTGUID;
		static Standard_GUID ViewRefGDTGUID ();
		%feature("compactdefaultargs") ViewRefPlaneGUID;
		%feature("autodoc", "	* Return GUIDs for TreeNode representing specified types of View

	:rtype: Standard_GUID
") ViewRefPlaneGUID;
		static Standard_GUID ViewRefPlaneGUID ();
		%feature("compactdefaultargs") ViewRefNoteGUID;
		%feature("autodoc", "	* Return GUIDs for GraphNode representing specified types of View

	:rtype: Standard_GUID
") ViewRefNoteGUID;
		static Standard_GUID ViewRefNoteGUID ();
		%feature("compactdefaultargs") ViewRefAnnotationGUID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ViewRefAnnotationGUID;
		static Standard_GUID ViewRefAnnotationGUID ();
		%feature("compactdefaultargs") LockGUID;
		%feature("autodoc", "	* Returns GUID for UAttribute identifying lock flag

	:rtype: Standard_GUID
") LockGUID;
		static Standard_GUID LockGUID ();
};


%extend XCAFDoc {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Area;
class XCAFDoc_Area : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Area;
		%feature("autodoc", "	* class methods =============

	:rtype: None
") XCAFDoc_Area;
		 XCAFDoc_Area ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Sets a value of volume

	:param vol:
	:type vol: float
	:rtype: None
") Set;
		void Set (const Standard_Real vol);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Find, or create, an Area attribute and set its value

	:param label:
	:type label: TDF_Label &
	:param area:
	:type area: float
	:rtype: Handle_XCAFDoc_Area
") Set;
		static Handle_XCAFDoc_Area Set (const TDF_Label & label,const Standard_Real area);
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	:rtype: float
") Get;
		Standard_Real Get ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Returns volume of area as argument and succes status returns false if no such attribute at the <label>

	:param label:
	:type label: TDF_Label &
	:param area:
	:type area: float &
	:rtype: bool
") Get;
		static Standard_Boolean Get (const TDF_Label & label,Standard_Real &OutValue);
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_Area {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Area(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Area::Handle_XCAFDoc_Area %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Area;
class Handle_XCAFDoc_Area : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Area();
        Handle_XCAFDoc_Area(const Handle_XCAFDoc_Area &aHandle);
        Handle_XCAFDoc_Area(const XCAFDoc_Area *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Area DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Area {
    XCAFDoc_Area* _get_reference() {
    return (XCAFDoc_Area*)$self->get();
    }
};

%extend Handle_XCAFDoc_Area {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Area {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_AssemblyItemId;
class XCAFDoc_AssemblyItemId {
	public:
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemId;
		%feature("autodoc", "	* Constructs an empty item ID.

	:rtype: None
") XCAFDoc_AssemblyItemId;
		 XCAFDoc_AssemblyItemId ();
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemId;
		%feature("autodoc", "	* Constructs an item ID from a list of strings, where every string is a label entry. \param [in] thePath - list of label entries.

	:param thePath:
	:type thePath: TColStd_ListOfAsciiString &
	:rtype: None
") XCAFDoc_AssemblyItemId;
		 XCAFDoc_AssemblyItemId (const TColStd_ListOfAsciiString & thePath);
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemId;
		%feature("autodoc", "	* Constructs an item ID from a formatted path, where label entries are separated by '/' symbol. \param [in] theString - formatted full path.

	:param theString:
	:type theString: TCollection_AsciiString &
	:rtype: None
") XCAFDoc_AssemblyItemId;
		 XCAFDoc_AssemblyItemId (const TCollection_AsciiString & theString);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initializes the item ID from a list of strings, where every string is a label entry. \param [in] thePath - list of label entries.

	:param thePath:
	:type thePath: TColStd_ListOfAsciiString &
	:rtype: None
") Init;
		void Init (const TColStd_ListOfAsciiString & thePath);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initializes the item ID from a formatted path, where label entries are separated by '/' symbol. \param [in] theString - formatted full path.

	:param theString:
	:type theString: TCollection_AsciiString &
	:rtype: None
") Init;
		void Init (const TCollection_AsciiString & theString);
		%feature("compactdefaultargs") IsNull;
		%feature("autodoc", "	* Returns true if the full path is empty, otherwise - false.

	:rtype: bool
") IsNull;
		Standard_Boolean IsNull ();
		%feature("compactdefaultargs") Nullify;
		%feature("autodoc", "	* Clears the full path.

	:rtype: None
") Nullify;
		void Nullify ();
		%feature("compactdefaultargs") IsChild;
		%feature("autodoc", "	* Checks if this item is a child of the given item. \param [in] theOther - potentially ancestor item. eturn true if the item is a child of theOther item, otherwise - false.

	:param theOther:
	:type theOther: XCAFDoc_AssemblyItemId &
	:rtype: bool
") IsChild;
		Standard_Boolean IsChild (const XCAFDoc_AssemblyItemId & theOther);
		%feature("compactdefaultargs") IsDirectChild;
		%feature("autodoc", "	* Checks if this item is a direct child of the given item. \param [in] theOther - potentially parent item. eturn true if the item is a direct child of theOther item, otherwise - false.

	:param theOther:
	:type theOther: XCAFDoc_AssemblyItemId &
	:rtype: bool
") IsDirectChild;
		Standard_Boolean IsDirectChild (const XCAFDoc_AssemblyItemId & theOther);
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "	* Checks for item IDs equality. \param [in] theOther - the item ID to check equality with. eturn true if this ID is equal to theOther, otherwise - false.

	:param theOther:
	:type theOther: XCAFDoc_AssemblyItemId &
	:rtype: bool
") IsEqual;
		Standard_Boolean IsEqual (const XCAFDoc_AssemblyItemId & theOther);
		%feature("compactdefaultargs") GetPath;
		%feature("autodoc", "	* Returns the full path as a list of label entries.

	:rtype: TColStd_ListOfAsciiString
") GetPath;
		const TColStd_ListOfAsciiString & GetPath ();
		%feature("compactdefaultargs") ToString;
		%feature("autodoc", "	* Returns the full pass as a formatted string.

	:rtype: TCollection_AsciiString
") ToString;
		TCollection_AsciiString ToString ();
};


%extend XCAFDoc_AssemblyItemId {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_AssemblyItemRef;
class XCAFDoc_AssemblyItemRef : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Finds a reference attribute on the given label and returns it, if it is found

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") Get;
		static Handle_XCAFDoc_AssemblyItemRef Get (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* @name Set reference attribute functions. @{ Create --if not exist-- a reference to an assembly item. \param [in] theLabel - label to add the attribute. \param [in] theItemId - assembly item ID. eturn A handle to the attribute instance.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") Set;
		static Handle_XCAFDoc_AssemblyItemRef Set (const TDF_Label & theLabel,const XCAFDoc_AssemblyItemId & theItemId);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- a reference to an assembly item's label attribute. \param [in] theLabel - label to add the attribute. \param [in] theItemId - assembly item ID. \param [in] theGUID - assembly item's label attribute ID. eturn A handle to the attribute instance.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") Set;
		static Handle_XCAFDoc_AssemblyItemRef Set (const TDF_Label & theLabel,const XCAFDoc_AssemblyItemId & theItemId,const Standard_GUID & theGUID);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- a reference to an assembly item's subshape. \param [in] theLabel - label to add the attribute. \param [in] theItemId - assembly item ID. \param [in] theShapeIndex - assembly item's subshape index. eturn A handle to the attribute instance.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theShapeIndex:
	:type theShapeIndex: int
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") Set;
		static Handle_XCAFDoc_AssemblyItemRef Set (const TDF_Label & theLabel,const XCAFDoc_AssemblyItemId & theItemId,const Standard_Integer theShapeIndex);
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemRef;
		%feature("autodoc", "	* @} Creates an empty reference attribute.

	:rtype: None
") XCAFDoc_AssemblyItemRef;
		 XCAFDoc_AssemblyItemRef ();
		%feature("compactdefaultargs") IsOrphan;
		%feature("autodoc", "	* Checks if the reference points to a really existing item in XDE document.

	:rtype: bool
") IsOrphan;
		Standard_Boolean IsOrphan ();
		%feature("compactdefaultargs") HasExtraRef;
		%feature("autodoc", "	* @name Extra reference functions. @{ Checks if the reference points on an item's shapeindex or attribute.

	:rtype: bool
") HasExtraRef;
		Standard_Boolean HasExtraRef ();
		%feature("compactdefaultargs") IsGUID;
		%feature("autodoc", "	* Checks is the reference points to an item's attribute.

	:rtype: bool
") IsGUID;
		Standard_Boolean IsGUID ();
		%feature("compactdefaultargs") IsSubshapeIndex;
		%feature("autodoc", "	* Checks is the reference points to an item's subshape.

	:rtype: bool
") IsSubshapeIndex;
		Standard_Boolean IsSubshapeIndex ();
		%feature("compactdefaultargs") GetGUID;
		%feature("autodoc", "	* Returns the assembly item's attribute that the reference points to. If the reference doesn't point to an attribute, returns an empty GUID.

	:rtype: Standard_GUID
") GetGUID;
		Standard_GUID GetGUID ();
		%feature("compactdefaultargs") GetSubshapeIndex;
		%feature("autodoc", "	* Returns the assembly item's subshape that the reference points to. If the reference doesn't point to a subshape, returns 0.

	:rtype: int
") GetSubshapeIndex;
		Standard_Integer GetSubshapeIndex ();
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	* @} Returns the assembly item ID that the reference points to.

	:rtype: XCAFDoc_AssemblyItemId
") GetItem;
		const XCAFDoc_AssemblyItemId & GetItem ();
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	* @name Set reference data functions. @{ Sets the assembly item ID that the reference points to. Extra reference data --if any-- will be cleared.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:rtype: None
") SetItem;
		void SetItem (const XCAFDoc_AssemblyItemId & theItemId);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	* Sets the assembly item ID from a list of label entries that the reference points to. Extra reference data --if any-- will be cleared.

	:param thePath:
	:type thePath: TColStd_ListOfAsciiString &
	:rtype: None
") SetItem;
		void SetItem (const TColStd_ListOfAsciiString & thePath);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	* Sets the assembly item ID from a formatted path that the reference points to. Extra reference data --if any-- will be cleared.

	:param theString:
	:type theString: TCollection_AsciiString &
	:rtype: None
") SetItem;
		void SetItem (const TCollection_AsciiString & theString);
		%feature("compactdefaultargs") SetGUID;
		%feature("autodoc", "	* Sets the assembly item's label attribute that the reference points to. The base assembly item will not change.

	:param theAttrGUID:
	:type theAttrGUID: Standard_GUID &
	:rtype: None
") SetGUID;
		void SetGUID (const Standard_GUID & theAttrGUID);
		%feature("compactdefaultargs") SetSubshapeIndex;
		%feature("autodoc", "	* Sets the assembly item's subshape that the reference points to. The base assembly item will not change.

	:param theShapeIndex:
	:type theShapeIndex: int
	:rtype: None
") SetSubshapeIndex;
		void SetSubshapeIndex (Standard_Integer theShapeIndex);
		%feature("compactdefaultargs") ClearExtraRef;
		%feature("autodoc", "	* @} Reverts the reference to empty state.

	:rtype: None
") ClearExtraRef;
		void ClearExtraRef ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param theAttrFrom:
	:type theAttrFrom: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & theAttrFrom);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theAttrInto:
	:type theAttrInto: Handle_TDF_Attribute &
	:param theRT:
	:type theRT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theAttrInto,const Handle_TDF_RelocationTable & theRT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_AssemblyItemRef {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_AssemblyItemRef(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_AssemblyItemRef::Handle_XCAFDoc_AssemblyItemRef %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_AssemblyItemRef;
class Handle_XCAFDoc_AssemblyItemRef : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_AssemblyItemRef();
        Handle_XCAFDoc_AssemblyItemRef(const Handle_XCAFDoc_AssemblyItemRef &aHandle);
        Handle_XCAFDoc_AssemblyItemRef(const XCAFDoc_AssemblyItemRef *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_AssemblyItemRef DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_AssemblyItemRef {
    XCAFDoc_AssemblyItemRef* _get_reference() {
    return (XCAFDoc_AssemblyItemRef*)$self->get();
    }
};

%extend Handle_XCAFDoc_AssemblyItemRef {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_AssemblyItemRef {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Centroid;
class XCAFDoc_Centroid : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Centroid;
		%feature("autodoc", "	* class methods =============

	:rtype: None
") XCAFDoc_Centroid;
		 XCAFDoc_Centroid ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Find, or create, a Location attribute and set it's value the Location attribute is returned. Location methods ===============

	:param label:
	:type label: TDF_Label &
	:param pnt:
	:type pnt: gp_Pnt
	:rtype: Handle_XCAFDoc_Centroid
") Set;
		static Handle_XCAFDoc_Centroid Set (const TDF_Label & label,const gp_Pnt & pnt);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param pnt:
	:type pnt: gp_Pnt
	:rtype: None
") Set;
		void Set (const gp_Pnt & pnt);
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	:rtype: gp_Pnt
") Get;
		gp_Pnt Get ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Returns point as argument returns false if no such attribute at the <label>

	:param label:
	:type label: TDF_Label &
	:param pnt:
	:type pnt: gp_Pnt
	:rtype: bool
") Get;
		static Standard_Boolean Get (const TDF_Label & label,gp_Pnt & pnt);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_Centroid {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Centroid(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Centroid::Handle_XCAFDoc_Centroid %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Centroid;
class Handle_XCAFDoc_Centroid : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Centroid();
        Handle_XCAFDoc_Centroid(const Handle_XCAFDoc_Centroid &aHandle);
        Handle_XCAFDoc_Centroid(const XCAFDoc_Centroid *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Centroid DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Centroid {
    XCAFDoc_Centroid* _get_reference() {
    return (XCAFDoc_Centroid*)$self->get();
    }
};

%extend Handle_XCAFDoc_Centroid {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Centroid {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_ClippingPlaneTool;
class XCAFDoc_ClippingPlaneTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_ClippingPlaneTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_ClippingPlaneTool;
		 XCAFDoc_ClippingPlaneTool ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Creates --if not exist-- ClippingPlaneTool.

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_ClippingPlaneTool
") Set;
		static Handle_XCAFDoc_ClippingPlaneTool Set (const TDF_Label & theLabel);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* returns the label under which ClippingPlanes are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") IsClippingPlane;
		%feature("autodoc", "	* Returns True if label belongs to a ClippingPlane table and is a ClippingPlane definition

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: bool
") IsClippingPlane;
		Standard_Boolean IsClippingPlane (const TDF_Label & theLabel);
		%feature("compactdefaultargs") GetClippingPlane;
		%feature("autodoc", "	* Returns ClippingPlane defined by label lab Returns False if the label is not in ClippingPlane table or does not define a ClippingPlane

	:param theLabel:
	:type theLabel: TDF_Label &
	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: TCollection_ExtendedString &
	:param theCapping:
	:type theCapping: bool
	:rtype: bool
") GetClippingPlane;
		Standard_Boolean GetClippingPlane (const TDF_Label & theLabel,gp_Pln & thePlane,TCollection_ExtendedString & theName,Standard_Boolean &OutValue);
		%feature("compactdefaultargs") GetClippingPlane;
		%feature("autodoc", "	* Returns ClippingPlane defined by label lab Returns False if the label is not in ClippingPlane table or does not define a ClippingPlane

	:param theLabel:
	:type theLabel: TDF_Label &
	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theCapping:
	:type theCapping: bool
	:rtype: bool
") GetClippingPlane;
		Standard_Boolean GetClippingPlane (const TDF_Label & theLabel,gp_Pln & thePlane,Handle_TCollection_HAsciiString & theName,Standard_Boolean &OutValue);
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "	* Adds a clipping plane definition to a ClippingPlane table and returns its label --returns existing label if the same clipping plane is already defined--

	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: TCollection_ExtendedString
	:param theCapping:
	:type theCapping: bool
	:rtype: TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane (const gp_Pln thePlane,const TCollection_ExtendedString theName,const Standard_Boolean theCapping);
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "	* Adds a clipping plane definition to a ClippingPlane table and returns its label --returns existing label if the same clipping plane is already defined--

	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theCapping:
	:type theCapping: bool
	:rtype: TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane (const gp_Pln thePlane,const Handle_TCollection_HAsciiString & theName,const Standard_Boolean theCapping);
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "	* Adds a clipping plane definition to a ClippingPlane table and returns its label --returns existing label if the same clipping plane is already defined--

	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: TCollection_ExtendedString
	:rtype: TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane (const gp_Pln thePlane,const TCollection_ExtendedString theName);
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "	* Adds a clipping plane definition to a ClippingPlane table and returns its label --returns existing label if the same clipping plane is already defined--

	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:rtype: TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane (const gp_Pln thePlane,const Handle_TCollection_HAsciiString & theName);
		%feature("compactdefaultargs") RemoveClippingPlane;
		%feature("autodoc", "	* Removes clipping plane from the ClippingPlane table Return false and do nothing if clipping plane is referenced in at least one View

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: bool
") RemoveClippingPlane;
		Standard_Boolean RemoveClippingPlane (const TDF_Label & theLabel);
		%feature("compactdefaultargs") GetClippingPlanes;
		%feature("autodoc", "	* Returns a sequence of clipping planes currently stored in the ClippingPlane table

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetClippingPlanes;
		void GetClippingPlanes (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") UpdateClippingPlane;
		%feature("autodoc", "	* Sets new value of plane and name to the given clipping plane label or do nothing, if the given label is not a clipping plane label

	:param theLabelL:
	:type theLabelL: TDF_Label &
	:param thePlane:
	:type thePlane: gp_Pln
	:param theName:
	:type theName: TCollection_ExtendedString
	:rtype: None
") UpdateClippingPlane;
		void UpdateClippingPlane (const TDF_Label & theLabelL,const gp_Pln thePlane,const TCollection_ExtendedString theName);
		%feature("compactdefaultargs") SetCapping;
		%feature("autodoc", "	* Set new value of capping for given clipping plane label

	:param theClippingPlaneL:
	:type theClippingPlaneL: TDF_Label &
	:param theCapping:
	:type theCapping: bool
	:rtype: None
") SetCapping;
		void SetCapping (const TDF_Label & theClippingPlaneL,const Standard_Boolean theCapping);
		%feature("compactdefaultargs") GetCapping;
		%feature("autodoc", "	* Get capping value for given clipping plane label Return capping value

	:param theClippingPlaneL:
	:type theClippingPlaneL: TDF_Label &
	:rtype: bool
") GetCapping;
		Standard_Boolean GetCapping (const TDF_Label & theClippingPlaneL);
		%feature("compactdefaultargs") GetCapping;
		%feature("autodoc", "	* Get capping value for given clipping plane label Return true if Label is valid abd capping is exist.

	:param theClippingPlaneL:
	:type theClippingPlaneL: TDF_Label &
	:param theCapping:
	:type theCapping: bool
	:rtype: bool
") GetCapping;
		Standard_Boolean GetCapping (const TDF_Label & theClippingPlaneL,Standard_Boolean &OutValue);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_ClippingPlaneTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_ClippingPlaneTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_ClippingPlaneTool::Handle_XCAFDoc_ClippingPlaneTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_ClippingPlaneTool;
class Handle_XCAFDoc_ClippingPlaneTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_ClippingPlaneTool();
        Handle_XCAFDoc_ClippingPlaneTool(const Handle_XCAFDoc_ClippingPlaneTool &aHandle);
        Handle_XCAFDoc_ClippingPlaneTool(const XCAFDoc_ClippingPlaneTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_ClippingPlaneTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_ClippingPlaneTool {
    XCAFDoc_ClippingPlaneTool* _get_reference() {
    return (XCAFDoc_ClippingPlaneTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_ClippingPlaneTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_ClippingPlaneTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Color;
class XCAFDoc_Color : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Color;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_Color;
		 XCAFDoc_Color ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param label:
	:type label: TDF_Label &
	:param C:
	:type C: Quantity_Color &
	:rtype: Handle_XCAFDoc_Color
") Set;
		static Handle_XCAFDoc_Color Set (const TDF_Label & label,const Quantity_Color & C);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param label:
	:type label: TDF_Label &
	:param C:
	:type C: Quantity_ColorRGBA &
	:rtype: Handle_XCAFDoc_Color
") Set;
		static Handle_XCAFDoc_Color Set (const TDF_Label & label,const Quantity_ColorRGBA & C);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param label:
	:type label: TDF_Label &
	:param C:
	:type C: Quantity_NameOfColor
	:rtype: Handle_XCAFDoc_Color
") Set;
		static Handle_XCAFDoc_Color Set (const TDF_Label & label,const Quantity_NameOfColor C);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Find, or create, a Color attribute and set it's value the Color attribute is returned.

	:param label:
	:type label: TDF_Label &
	:param R:
	:type R: float
	:param G:
	:type G: float
	:param B:
	:type B: float
	:param alpha: default value is 1.0
	:type alpha: float
	:rtype: Handle_XCAFDoc_Color
") Set;
		static Handle_XCAFDoc_Color Set (const TDF_Label & label,const Standard_Real R,const Standard_Real G,const Standard_Real B,const Standard_Real alpha = 1.0);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param C:
	:type C: Quantity_Color &
	:rtype: None
") Set;
		void Set (const Quantity_Color & C);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param C:
	:type C: Quantity_ColorRGBA &
	:rtype: None
") Set;
		void Set (const Quantity_ColorRGBA & C);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param C:
	:type C: Quantity_NameOfColor
	:rtype: None
") Set;
		void Set (const Quantity_NameOfColor C);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param R:
	:type R: float
	:param G:
	:type G: float
	:param B:
	:type B: float
	:param alpha: default value is 1.0
	:type alpha: float
	:rtype: None
") Set;
		void Set (const Standard_Real R,const Standard_Real G,const Standard_Real B,const Standard_Real alpha = 1.0);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	:rtype: Quantity_Color
") GetColor;
		const Quantity_Color & GetColor ();
		%feature("compactdefaultargs") GetColorRGBA;
		%feature("autodoc", "	:rtype: Quantity_ColorRGBA
") GetColorRGBA;
		const Quantity_ColorRGBA & GetColorRGBA ();
		%feature("compactdefaultargs") GetNOC;
		%feature("autodoc", "	:rtype: Quantity_NameOfColor
") GetNOC;
		Quantity_NameOfColor GetNOC ();
		%feature("compactdefaultargs") GetRGB;
		%feature("autodoc", "	:param R:
	:type R: float &
	:param G:
	:type G: float &
	:param B:
	:type B: float &
	:rtype: None
") GetRGB;
		void GetRGB (Standard_Real &OutValue,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("compactdefaultargs") GetAlpha;
		%feature("autodoc", "	:rtype: Standard_ShortReal
") GetAlpha;
		Standard_ShortReal GetAlpha ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_Color {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Color(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Color::Handle_XCAFDoc_Color %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Color;
class Handle_XCAFDoc_Color : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Color();
        Handle_XCAFDoc_Color(const Handle_XCAFDoc_Color &aHandle);
        Handle_XCAFDoc_Color(const XCAFDoc_Color *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Color DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Color {
    XCAFDoc_Color* _get_reference() {
    return (XCAFDoc_Color*)$self->get();
    }
};

%extend Handle_XCAFDoc_Color {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Color {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_ColorTool;
class XCAFDoc_ColorTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_ColorTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_ColorTool;
		 XCAFDoc_ColorTool ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Creates --if not exist-- ColorTool.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_ColorTool
") Set;
		static Handle_XCAFDoc_ColorTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* returns the label under which colors are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "	* Returns internal XCAFDoc_ShapeTool tool

	:rtype: Handle_XCAFDoc_ShapeTool
") ShapeTool;
		Handle_XCAFDoc_ShapeTool ShapeTool ();
		%feature("compactdefaultargs") IsColor;
		%feature("autodoc", "	* Returns True if label belongs to a colortable and is a color definition

	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") IsColor;
		Standard_Boolean IsColor (const TDF_Label & lab);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns color defined by label lab Returns False if the label is not in colortable or does not define a color

	:param lab:
	:type lab: TDF_Label &
	:param col:
	:type col: Quantity_Color &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TDF_Label & lab,Quantity_Color & col);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns color defined by label lab Returns False if the label is not in colortable or does not define a color

	:param lab:
	:type lab: TDF_Label &
	:param col:
	:type col: Quantity_ColorRGBA &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TDF_Label & lab,Quantity_ColorRGBA & col);
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "	* Finds a color definition in a colortable and returns its label if found Returns False if color is not found in colortable

	:param col:
	:type col: Quantity_Color &
	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") FindColor;
		Standard_Boolean FindColor (const Quantity_Color & col,TDF_Label & lab);
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "	* Finds a color definition in a colortable and returns its label if found Returns False if color is not found in colortable

	:param col:
	:type col: Quantity_ColorRGBA &
	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") FindColor;
		Standard_Boolean FindColor (const Quantity_ColorRGBA & col,TDF_Label & lab);
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "	* Finds a color definition in a colortable and returns its label if found --or Null label else--

	:param col:
	:type col: Quantity_Color &
	:rtype: TDF_Label
") FindColor;
		TDF_Label FindColor (const Quantity_Color & col);
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "	* Finds a color definition in a colortable and returns its label if found --or Null label else--

	:param col:
	:type col: Quantity_ColorRGBA &
	:rtype: TDF_Label
") FindColor;
		TDF_Label FindColor (const Quantity_ColorRGBA & col);
		%feature("compactdefaultargs") AddColor;
		%feature("autodoc", "	* Adds a color definition to a colortable and returns its label --returns existing label if the same color is already defined--

	:param col:
	:type col: Quantity_Color &
	:rtype: TDF_Label
") AddColor;
		TDF_Label AddColor (const Quantity_Color & col);
		%feature("compactdefaultargs") AddColor;
		%feature("autodoc", "	* Adds a color definition to a colortable and returns its label --returns existing label if the same color is already defined--

	:param col:
	:type col: Quantity_ColorRGBA &
	:rtype: TDF_Label
") AddColor;
		TDF_Label AddColor (const Quantity_ColorRGBA & col);
		%feature("compactdefaultargs") RemoveColor;
		%feature("autodoc", "	* Removes color from the colortable

	:param lab:
	:type lab: TDF_Label &
	:rtype: None
") RemoveColor;
		void RemoveColor (const TDF_Label & lab);
		%feature("compactdefaultargs") GetColors;
		%feature("autodoc", "	* Returns a sequence of colors currently stored in the colortable

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetColors;
		void GetColors (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "	* Sets a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color defined by <colorL>. Color of shape is defined following way in dependance with type of color. If type of color is XCAFDoc_ColorGen - then this color defines default color for surfaces and curves. If for shape color with types XCAFDoc_ColorSurf or XCAFDoc_ColorCurv is specified then such color overrides generic color.

	:param L:
	:type L: TDF_Label &
	:param colorL:
	:type colorL: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: None
") SetColor;
		void SetColor (const TDF_Label & L,const TDF_Label & colorL,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "	* Sets a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color <Color> in the colortable Adds a color as necessary

	:param L:
	:type L: TDF_Label &
	:param Color:
	:type Color: Quantity_Color &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: None
") SetColor;
		void SetColor (const TDF_Label & L,const Quantity_Color & Color,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "	* Sets a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color <Color> in the colortable Adds a color as necessary

	:param L:
	:type L: TDF_Label &
	:param Color:
	:type Color: Quantity_ColorRGBA &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: None
") SetColor;
		void SetColor (const TDF_Label & L,const Quantity_ColorRGBA & Color,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") UnSetColor;
		%feature("autodoc", "	* Removes a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color

	:param L:
	:type L: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: None
") UnSetColor;
		void UnSetColor (const TDF_Label & L,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "	* Returns True if label <L> has a color assignment of the type <type>

	:param L:
	:type L: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: bool
") IsSet;
		Standard_Boolean IsSet (const TDF_Label & L,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns label with color assigned to <L> as <type> Returns False if no such color is assigned

	:param L:
	:type L: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:param colorL:
	:type colorL: TDF_Label &
	:rtype: bool
") GetColor;
		static Standard_Boolean GetColor (const TDF_Label & L,const XCAFDoc_ColorType type,TDF_Label & colorL);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns color assigned to <L> as <type> Returns False if no such color is assigned

	:param L:
	:type L: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_Color &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TDF_Label & L,const XCAFDoc_ColorType type,Quantity_Color & color);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns color assigned to <L> as <type> Returns False if no such color is assigned

	:param L:
	:type L: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_ColorRGBA &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TDF_Label & L,const XCAFDoc_ColorType type,Quantity_ColorRGBA & color);
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "	* Sets a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color defined by <colorL> Returns False if cannot find a label for shape S

	:param S:
	:type S: TopoDS_Shape &
	:param colorL:
	:type colorL: TDF_Label &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: bool
") SetColor;
		Standard_Boolean SetColor (const TopoDS_Shape & S,const TDF_Label & colorL,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "	* Sets a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color <Color> in the colortable Adds a color as necessary Returns False if cannot find a label for shape S

	:param S:
	:type S: TopoDS_Shape &
	:param Color:
	:type Color: Quantity_Color &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: bool
") SetColor;
		Standard_Boolean SetColor (const TopoDS_Shape & S,const Quantity_Color & Color,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "	* Sets a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color <Color> in the colortable Adds a color as necessary Returns False if cannot find a label for shape S

	:param S:
	:type S: TopoDS_Shape &
	:param Color:
	:type Color: Quantity_ColorRGBA &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: bool
") SetColor;
		Standard_Boolean SetColor (const TopoDS_Shape & S,const Quantity_ColorRGBA & Color,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") UnSetColor;
		%feature("autodoc", "	* Removes a link with GUID defined by <type> --see XCAFDoc::ColorRefGUID------ from label <L> to color Returns True if such link existed

	:param S:
	:type S: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: bool
") UnSetColor;
		Standard_Boolean UnSetColor (const TopoDS_Shape & S,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "	* Returns True if label <L> has a color assignment of the type <type>

	:param S:
	:type S: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:rtype: bool
") IsSet;
		Standard_Boolean IsSet (const TopoDS_Shape & S,const XCAFDoc_ColorType type);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns label with color assigned to <L> as <type> Returns False if no such color is assigned

	:param S:
	:type S: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param colorL:
	:type colorL: TDF_Label &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TopoDS_Shape & S,const XCAFDoc_ColorType type,TDF_Label & colorL);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns color assigned to <L> as <type> Returns False if no such color is assigned

	:param S:
	:type S: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_Color &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TopoDS_Shape & S,const XCAFDoc_ColorType type,Quantity_Color & color);
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "	* Returns color assigned to <L> as <type> Returns False if no such color is assigned

	:param S:
	:type S: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_ColorRGBA &
	:rtype: bool
") GetColor;
		Standard_Boolean GetColor (const TopoDS_Shape & S,const XCAFDoc_ColorType type,Quantity_ColorRGBA & color);
		%feature("compactdefaultargs") IsVisible;
		%feature("autodoc", "	* Return True if object on this label is visible, False if invisible.

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsVisible;
		Standard_Boolean IsVisible (const TDF_Label & L);
		%feature("compactdefaultargs") SetVisibility;
		%feature("autodoc", "	* Set the visibility of object on label. Do nothing if there no any object. Set UAttribute with corresponding GUID.

	:param shapeLabel:
	:type shapeLabel: TDF_Label &
	:param isvisible: default value is Standard_True
	:type isvisible: bool
	:rtype: None
") SetVisibility;
		void SetVisibility (const TDF_Label & shapeLabel,const Standard_Boolean isvisible = Standard_True);
		%feature("compactdefaultargs") SetInstanceColor;
		%feature("autodoc", "	* Sets the color of component that styled with SHUO structure Returns False if no sush component found NOTE: create SHUO structeure if it is necessary and if <isCreateSHUO>

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_Color &
	:param isCreateSHUO: default value is Standard_True
	:type isCreateSHUO: bool
	:rtype: bool
") SetInstanceColor;
		Standard_Boolean SetInstanceColor (const TopoDS_Shape & theShape,const XCAFDoc_ColorType type,const Quantity_Color & color,const Standard_Boolean isCreateSHUO = Standard_True);
		%feature("compactdefaultargs") SetInstanceColor;
		%feature("autodoc", "	* Sets the color of component that styled with SHUO structure Returns False if no sush component found NOTE: create SHUO structeure if it is necessary and if <isCreateSHUO>

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_ColorRGBA &
	:param isCreateSHUO: default value is Standard_True
	:type isCreateSHUO: bool
	:rtype: bool
") SetInstanceColor;
		Standard_Boolean SetInstanceColor (const TopoDS_Shape & theShape,const XCAFDoc_ColorType type,const Quantity_ColorRGBA & color,const Standard_Boolean isCreateSHUO = Standard_True);
		%feature("compactdefaultargs") GetInstanceColor;
		%feature("autodoc", "	* Gets the color of component that styled with SHUO structure Returns False if no sush component or color type

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_Color &
	:rtype: bool
") GetInstanceColor;
		Standard_Boolean GetInstanceColor (const TopoDS_Shape & theShape,const XCAFDoc_ColorType type,Quantity_Color & color);
		%feature("compactdefaultargs") GetInstanceColor;
		%feature("autodoc", "	* Gets the color of component that styled with SHUO structure Returns False if no sush component or color type

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param type:
	:type type: XCAFDoc_ColorType
	:param color:
	:type color: Quantity_ColorRGBA &
	:rtype: bool
") GetInstanceColor;
		Standard_Boolean GetInstanceColor (const TopoDS_Shape & theShape,const XCAFDoc_ColorType type,Quantity_ColorRGBA & color);
		%feature("compactdefaultargs") IsInstanceVisible;
		%feature("autodoc", "	* Gets the visibility status of component that styled with SHUO structure Returns False if no sush component

	:param theShape:
	:type theShape: TopoDS_Shape &
	:rtype: bool
") IsInstanceVisible;
		Standard_Boolean IsInstanceVisible (const TopoDS_Shape & theShape);
		%feature("compactdefaultargs") ReverseChainsOfTreeNodes;
		%feature("autodoc", "	* Reverses order in chains of TreeNodes --from Last to First-- under each Color Label since we became to use function ::Prepend---- instead of ::Append---- in method SetColor---- for acceleration

	:rtype: bool
") ReverseChainsOfTreeNodes;
		Standard_Boolean ReverseChainsOfTreeNodes ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_ColorTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_ColorTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_ColorTool::Handle_XCAFDoc_ColorTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_ColorTool;
class Handle_XCAFDoc_ColorTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_ColorTool();
        Handle_XCAFDoc_ColorTool(const Handle_XCAFDoc_ColorTool &aHandle);
        Handle_XCAFDoc_ColorTool(const XCAFDoc_ColorTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_ColorTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_ColorTool {
    XCAFDoc_ColorTool* _get_reference() {
    return (XCAFDoc_ColorTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_ColorTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_ColorTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Datum;
class XCAFDoc_Datum : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Datum;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_Datum;
		 XCAFDoc_Datum ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param label:
	:type label: TDF_Label &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param anIdentification:
	:type anIdentification: Handle_TCollection_HAsciiString &
	:rtype: Handle_XCAFDoc_Datum
") Set;
		static Handle_XCAFDoc_Datum Set (const TDF_Label & label,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_TCollection_HAsciiString & anIdentification);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_Datum
") Set;
		static Handle_XCAFDoc_Datum Set (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param anIdentification:
	:type anIdentification: Handle_TCollection_HAsciiString &
	:rtype: None
") Set;
		void Set (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_TCollection_HAsciiString & anIdentification);
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetName;
		Handle_TCollection_HAsciiString GetName ();
		%feature("compactdefaultargs") GetDescription;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetDescription;
		Handle_TCollection_HAsciiString GetDescription ();
		%feature("compactdefaultargs") GetIdentification;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetIdentification;
		Handle_TCollection_HAsciiString GetIdentification ();
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "	:rtype: Handle_XCAFDimTolObjects_DatumObject
") GetObject;
		Handle_XCAFDimTolObjects_DatumObject GetObject ();
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "	:param theObject:
	:type theObject: Handle_XCAFDimTolObjects_DatumObject &
	:rtype: None
") SetObject;
		void SetObject (const Handle_XCAFDimTolObjects_DatumObject & theObject);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_Datum {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Datum(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Datum::Handle_XCAFDoc_Datum %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Datum;
class Handle_XCAFDoc_Datum : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Datum();
        Handle_XCAFDoc_Datum(const Handle_XCAFDoc_Datum &aHandle);
        Handle_XCAFDoc_Datum(const XCAFDoc_Datum *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Datum DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Datum {
    XCAFDoc_Datum* _get_reference() {
    return (XCAFDoc_Datum*)$self->get();
    }
};

%extend Handle_XCAFDoc_Datum {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Datum {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_DimTol;
class XCAFDoc_DimTol : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_DimTol;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_DimTol;
		 XCAFDoc_DimTol ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param label:
	:type label: TDF_Label &
	:param kind:
	:type kind: int
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: Handle_XCAFDoc_DimTol
") Set;
		static Handle_XCAFDoc_DimTol Set (const TDF_Label & label,const Standard_Integer kind,const Handle_TColStd_HArray1OfReal & aVal,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param kind:
	:type kind: int
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") Set;
		void Set (const Standard_Integer kind,const Handle_TColStd_HArray1OfReal & aVal,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") GetKind;
		%feature("autodoc", "	:rtype: int
") GetKind;
		Standard_Integer GetKind ();
		%feature("compactdefaultargs") GetVal;
		%feature("autodoc", "	:rtype: Handle_TColStd_HArray1OfReal
") GetVal;
		Handle_TColStd_HArray1OfReal GetVal ();
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetName;
		Handle_TCollection_HAsciiString GetName ();
		%feature("compactdefaultargs") GetDescription;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetDescription;
		Handle_TCollection_HAsciiString GetDescription ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_DimTol {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_DimTol(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_DimTol::Handle_XCAFDoc_DimTol %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_DimTol;
class Handle_XCAFDoc_DimTol : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_DimTol();
        Handle_XCAFDoc_DimTol(const Handle_XCAFDoc_DimTol &aHandle);
        Handle_XCAFDoc_DimTol(const XCAFDoc_DimTol *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_DimTol DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_DimTol {
    XCAFDoc_DimTol* _get_reference() {
    return (XCAFDoc_DimTol*)$self->get();
    }
};

%extend Handle_XCAFDoc_DimTol {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_DimTol {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_DimTolTool;
class XCAFDoc_DimTolTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_DimTolTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_DimTolTool;
		 XCAFDoc_DimTolTool ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Creates --if not exist-- DimTolTool.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_DimTolTool
") Set;
		static Handle_XCAFDoc_DimTolTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* returns the label under which colors are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "	* Returns internal XCAFDoc_ShapeTool tool

	:rtype: Handle_XCAFDoc_ShapeTool
") ShapeTool;
		Handle_XCAFDoc_ShapeTool ShapeTool ();
		%feature("compactdefaultargs") IsDimension;
		%feature("autodoc", "	* Returns True if label belongs to a dimtoltable and is a Dimension definition

	:param theLab:
	:type theLab: TDF_Label &
	:rtype: bool
") IsDimension;
		Standard_Boolean IsDimension (const TDF_Label & theLab);
		%feature("compactdefaultargs") GetDimensionLabels;
		%feature("autodoc", "	* Returns a sequence of Dimensions labels currently stored in the DGTtable

	:param theLabels:
	:type theLabels: TDF_LabelSequence &
	:rtype: None
") GetDimensionLabels;
		void GetDimensionLabels (TDF_LabelSequence & theLabels);
		%feature("compactdefaultargs") SetDimension;
		%feature("autodoc", "	* Sets a link with GUID

	:param theFirstLS:
	:type theFirstLS: TDF_LabelSequence &
	:param theSecondLS:
	:type theSecondLS: TDF_LabelSequence &
	:param theDimTolL:
	:type theDimTolL: TDF_Label &
	:rtype: None
") SetDimension;
		void SetDimension (const TDF_LabelSequence & theFirstLS,const TDF_LabelSequence & theSecondLS,const TDF_Label & theDimTolL);
		%feature("compactdefaultargs") SetDimension;
		%feature("autodoc", "	* Sets a link with GUID

	:param theFirstL:
	:type theFirstL: TDF_Label &
	:param theSecondL:
	:type theSecondL: TDF_Label &
	:param theDimTolL:
	:type theDimTolL: TDF_Label &
	:rtype: None
") SetDimension;
		void SetDimension (const TDF_Label & theFirstL,const TDF_Label & theSecondL,const TDF_Label & theDimTolL);
		%feature("compactdefaultargs") SetDimension;
		%feature("autodoc", "	* Sets a link with GUID

	:param theL:
	:type theL: TDF_Label &
	:param theDimTolL:
	:type theDimTolL: TDF_Label &
	:rtype: None
") SetDimension;
		void SetDimension (const TDF_Label & theL,const TDF_Label & theDimTolL);
		%feature("compactdefaultargs") GetRefDimensionLabels;
		%feature("autodoc", "	* Returns all Dimension labels defined for label ShapeL

	:param theShapeL:
	:type theShapeL: TDF_Label &
	:param theDimensions:
	:type theDimensions: TDF_LabelSequence &
	:rtype: bool
") GetRefDimensionLabels;
		Standard_Boolean GetRefDimensionLabels (const TDF_Label & theShapeL,TDF_LabelSequence & theDimensions);
		%feature("compactdefaultargs") AddDimension;
		%feature("autodoc", "	* Adds a dimension definition to a DGTtable and returns its label

	:rtype: TDF_Label
") AddDimension;
		TDF_Label AddDimension ();
		%feature("compactdefaultargs") IsGeomTolerance;
		%feature("autodoc", "	* Returns True if label belongs to a dimtoltable and is a DimTol definition

	:param theLab:
	:type theLab: TDF_Label &
	:rtype: bool
") IsGeomTolerance;
		Standard_Boolean IsGeomTolerance (const TDF_Label & theLab);
		%feature("compactdefaultargs") GetGeomToleranceLabels;
		%feature("autodoc", "	* Returns a sequence of Tolerance labels currently stored in the DGTtable

	:param theLabels:
	:type theLabels: TDF_LabelSequence &
	:rtype: None
") GetGeomToleranceLabels;
		void GetGeomToleranceLabels (TDF_LabelSequence & theLabels);
		%feature("compactdefaultargs") SetGeomTolerance;
		%feature("autodoc", "	* Sets a link with GUID

	:param theL:
	:type theL: TDF_Label &
	:param theDimTolL:
	:type theDimTolL: TDF_Label &
	:rtype: None
") SetGeomTolerance;
		void SetGeomTolerance (const TDF_Label & theL,const TDF_Label & theDimTolL);
		%feature("compactdefaultargs") SetGeomTolerance;
		%feature("autodoc", "	* Sets a link with GUID

	:param theL:
	:type theL: TDF_LabelSequence &
	:param theDimTolL:
	:type theDimTolL: TDF_Label &
	:rtype: None
") SetGeomTolerance;
		void SetGeomTolerance (const TDF_LabelSequence & theL,const TDF_Label & theDimTolL);
		%feature("compactdefaultargs") GetRefGeomToleranceLabels;
		%feature("autodoc", "	* Returns all GeomTolerance labels defined for label ShapeL

	:param theShapeL:
	:type theShapeL: TDF_Label &
	:param theDimTols:
	:type theDimTols: TDF_LabelSequence &
	:rtype: bool
") GetRefGeomToleranceLabels;
		Standard_Boolean GetRefGeomToleranceLabels (const TDF_Label & theShapeL,TDF_LabelSequence & theDimTols);
		%feature("compactdefaultargs") AddGeomTolerance;
		%feature("autodoc", "	* Adds a GeomTolerance definition to a DGTtable and returns its label

	:rtype: TDF_Label
") AddGeomTolerance;
		TDF_Label AddGeomTolerance ();
		%feature("compactdefaultargs") IsDimTol;
		%feature("autodoc", "	* Returns True if label belongs to a dimtoltable and is a DimTol definition

	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") IsDimTol;
		Standard_Boolean IsDimTol (const TDF_Label & lab);
		%feature("compactdefaultargs") GetDimTolLabels;
		%feature("autodoc", "	* Returns a sequence of D&GTs currently stored in the DGTtable

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetDimTolLabels;
		void GetDimTolLabels (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") FindDimTol;
		%feature("autodoc", "	* Finds a dimtol definition in a DGTtable and returns its label if found Returns False if dimtol is not found in DGTtable

	:param kind:
	:type kind: int
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") FindDimTol;
		Standard_Boolean FindDimTol (const Standard_Integer kind,const Handle_TColStd_HArray1OfReal & aVal,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,TDF_Label & lab);
		%feature("compactdefaultargs") FindDimTol;
		%feature("autodoc", "	* Finds a dimtol definition in a DGTtable and returns its label if found --or Null label else--

	:param kind:
	:type kind: int
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: TDF_Label
") FindDimTol;
		TDF_Label FindDimTol (const Standard_Integer kind,const Handle_TColStd_HArray1OfReal & aVal,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") AddDimTol;
		%feature("autodoc", "	* Adds a dimtol definition to a DGTtable and returns its label

	:param kind:
	:type kind: int
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: TDF_Label
") AddDimTol;
		TDF_Label AddDimTol (const Standard_Integer kind,const Handle_TColStd_HArray1OfReal & aVal,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") SetDimTol;
		%feature("autodoc", "	* Sets a link with GUID

	:param L:
	:type L: TDF_Label &
	:param DimTolL:
	:type DimTolL: TDF_Label &
	:rtype: None
") SetDimTol;
		void SetDimTol (const TDF_Label & L,const TDF_Label & DimTolL);
		%feature("compactdefaultargs") SetDimTol;
		%feature("autodoc", "	* Sets a link with GUID Adds a DimTol as necessary

	:param L:
	:type L: TDF_Label &
	:param kind:
	:type kind: int
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: TDF_Label
") SetDimTol;
		TDF_Label SetDimTol (const TDF_Label & L,const Standard_Integer kind,const Handle_TColStd_HArray1OfReal & aVal,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") GetRefShapeLabel;
		%feature("autodoc", "	* Returns ShapeL defined for label DimTolL Returns False if the DimTolL is not in DGTtable

	:param DimTolL:
	:type DimTolL: TDF_Label &
	:param ShapeLFirst:
	:type ShapeLFirst: TDF_LabelSequence &
	:param ShapeLSecond:
	:type ShapeLSecond: TDF_LabelSequence &
	:rtype: bool
") GetRefShapeLabel;
		Standard_Boolean GetRefShapeLabel (const TDF_Label & DimTolL,TDF_LabelSequence & ShapeLFirst,TDF_LabelSequence & ShapeLSecond);
		%feature("compactdefaultargs") GetRefDGTLabels;
		%feature("autodoc", "	* Returns all DimTol labels defined for label ShapeL

	:param ShapeL:
	:type ShapeL: TDF_Label &
	:param DimTols:
	:type DimTols: TDF_LabelSequence &
	:rtype: bool
") GetRefDGTLabels;
		Standard_Boolean GetRefDGTLabels (const TDF_Label & ShapeL,TDF_LabelSequence & DimTols);
		%feature("compactdefaultargs") GetDimTol;
		%feature("autodoc", "	* Returns dimtol assigned to <DimTolL> Returns False if no such dimtol is assigned

	:param DimTolL:
	:type DimTolL: TDF_Label &
	:param kind:
	:type kind: int &
	:param aVal:
	:type aVal: Handle_TColStd_HArray1OfReal &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: bool
") GetDimTol;
		Standard_Boolean GetDimTol (const TDF_Label & DimTolL,Standard_Integer &OutValue,Handle_TColStd_HArray1OfReal & aVal,Handle_TCollection_HAsciiString & aName,Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") IsDatum;
		%feature("autodoc", "	* Returns True if label belongs to a dimtoltable and is a Datum definition

	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") IsDatum;
		Standard_Boolean IsDatum (const TDF_Label & lab);
		%feature("compactdefaultargs") GetDatumLabels;
		%feature("autodoc", "	* Returns a sequence of Datumss currently stored in the DGTtable

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetDatumLabels;
		void GetDatumLabels (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") FindDatum;
		%feature("autodoc", "	* Finds a datum and returns its label if found

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param anIdentification:
	:type anIdentification: Handle_TCollection_HAsciiString &
	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") FindDatum;
		Standard_Boolean FindDatum (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_TCollection_HAsciiString & anIdentification,TDF_Label & lab);
		%feature("compactdefaultargs") AddDatum;
		%feature("autodoc", "	* Adds a datum definition to a DGTtable and returns its label

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param anIdentification:
	:type anIdentification: Handle_TCollection_HAsciiString &
	:rtype: TDF_Label
") AddDatum;
		TDF_Label AddDatum (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_TCollection_HAsciiString & anIdentification);
		%feature("compactdefaultargs") AddDatum;
		%feature("autodoc", "	* Adds a datum definition to a DGTtable and returns its label

	:rtype: TDF_Label
") AddDatum;
		TDF_Label AddDatum ();
		%feature("compactdefaultargs") SetDatum;
		%feature("autodoc", "	* Sets a link with GUID

	:param theShapeLabels:
	:type theShapeLabels: TDF_LabelSequence &
	:param theDatumL:
	:type theDatumL: TDF_Label &
	:rtype: None
") SetDatum;
		void SetDatum (const TDF_LabelSequence & theShapeLabels,const TDF_Label & theDatumL);
		%feature("compactdefaultargs") SetDatumToGeomTol;
		%feature("autodoc", "	* Sets a link with GUID for Datum Sets connection between Datum and Tolerance

	:param theL:
	:type theL: TDF_Label &
	:param theTolerL:
	:type theTolerL: TDF_Label &
	:rtype: None
") SetDatumToGeomTol;
		void SetDatumToGeomTol (const TDF_Label & theL,const TDF_Label & theTolerL);
		%feature("compactdefaultargs") SetDatum;
		%feature("autodoc", "	* Sets a link with GUID for Datum Adds a Datum as necessary Sets connection between Datum and Tolerance

	:param L:
	:type L: TDF_Label &
	:param TolerL:
	:type TolerL: TDF_Label &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param anIdentification:
	:type anIdentification: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDatum;
		void SetDatum (const TDF_Label & L,const TDF_Label & TolerL,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_TCollection_HAsciiString & anIdentification);
		%feature("compactdefaultargs") GetDatum;
		%feature("autodoc", "	* Returns datum assigned to <DatumL> Returns False if no such datum is assigned

	:param DatumL:
	:type DatumL: TDF_Label &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param anIdentification:
	:type anIdentification: Handle_TCollection_HAsciiString &
	:rtype: bool
") GetDatum;
		Standard_Boolean GetDatum (const TDF_Label & DatumL,Handle_TCollection_HAsciiString & aName,Handle_TCollection_HAsciiString & aDescription,Handle_TCollection_HAsciiString & anIdentification);
		%feature("compactdefaultargs") GetDatumOfTolerLabels;
		%feature("autodoc", "	* Returns all Datum labels defined for label DimTolL

	:param DimTolL:
	:type DimTolL: TDF_Label &
	:param Datums:
	:type Datums: TDF_LabelSequence &
	:rtype: bool
") GetDatumOfTolerLabels;
		Standard_Boolean GetDatumOfTolerLabels (const TDF_Label & DimTolL,TDF_LabelSequence & Datums);
		%feature("compactdefaultargs") GetDatumWithObjectOfTolerLabels;
		%feature("autodoc", "	* Returns all Datum labels with XCAFDimTolObjects_DatumObject defined for label DimTolL

	:param DimTolL:
	:type DimTolL: TDF_Label &
	:param Datums:
	:type Datums: TDF_LabelSequence &
	:rtype: bool
") GetDatumWithObjectOfTolerLabels;
		Standard_Boolean GetDatumWithObjectOfTolerLabels (const TDF_Label & DimTolL,TDF_LabelSequence & Datums);
		%feature("compactdefaultargs") GetTolerOfDatumLabels;
		%feature("autodoc", "	* Returns all GeomToleranses labels defined for label DatumL

	:param theDatumL:
	:type theDatumL: TDF_Label &
	:param theTols:
	:type theTols: TDF_LabelSequence &
	:rtype: bool
") GetTolerOfDatumLabels;
		Standard_Boolean GetTolerOfDatumLabels (const TDF_Label & theDatumL,TDF_LabelSequence & theTols);
		%feature("compactdefaultargs") GetRefDatumLabel;
		%feature("autodoc", "	* Returns Datum label defined for label ShapeL

	:param theShapeL:
	:type theShapeL: TDF_Label &
	:param theDatum:
	:type theDatum: TDF_LabelSequence &
	:rtype: bool
") GetRefDatumLabel;
		Standard_Boolean GetRefDatumLabel (const TDF_Label & theShapeL,TDF_LabelSequence & theDatum);
		%feature("compactdefaultargs") IsLocked;
		%feature("autodoc", "	* Returns true if the given GDT is marked as locked

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: bool
") IsLocked;
		Standard_Boolean IsLocked (const TDF_Label & theViewL);
		%feature("compactdefaultargs") Lock;
		%feature("autodoc", "	* Mark the given GDT as locked

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") Lock;
		void Lock (const TDF_Label & theViewL);
		%feature("compactdefaultargs") Unlock;
		%feature("autodoc", "	* Unlock the given GDT

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") Unlock;
		void Unlock (const TDF_Label & theViewL);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_DimTolTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_DimTolTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_DimTolTool::Handle_XCAFDoc_DimTolTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_DimTolTool;
class Handle_XCAFDoc_DimTolTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_DimTolTool();
        Handle_XCAFDoc_DimTolTool(const Handle_XCAFDoc_DimTolTool &aHandle);
        Handle_XCAFDoc_DimTolTool(const XCAFDoc_DimTolTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_DimTolTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_DimTolTool {
    XCAFDoc_DimTolTool* _get_reference() {
    return (XCAFDoc_DimTolTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_DimTolTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_DimTolTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Dimension;
class XCAFDoc_Dimension : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Dimension;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_Dimension;
		 XCAFDoc_Dimension ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_Dimension
") Set;
		static Handle_XCAFDoc_Dimension Set (const TDF_Label & theLabel);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "	:param theDimensionObject:
	:type theDimensionObject: Handle_XCAFDimTolObjects_DimensionObject &
	:rtype: None
") SetObject;
		void SetObject (const Handle_XCAFDimTolObjects_DimensionObject & theDimensionObject);
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "	:rtype: Handle_XCAFDimTolObjects_DimensionObject
") GetObject;
		Handle_XCAFDimTolObjects_DimensionObject GetObject ();
};


%extend XCAFDoc_Dimension {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Dimension(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Dimension::Handle_XCAFDoc_Dimension %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Dimension;
class Handle_XCAFDoc_Dimension : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Dimension();
        Handle_XCAFDoc_Dimension(const Handle_XCAFDoc_Dimension &aHandle);
        Handle_XCAFDoc_Dimension(const XCAFDoc_Dimension *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Dimension DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Dimension {
    XCAFDoc_Dimension* _get_reference() {
    return (XCAFDoc_Dimension*)$self->get();
    }
};

%extend Handle_XCAFDoc_Dimension {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Dimension {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_DocumentTool;
class XCAFDoc_DocumentTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- DocumentTool attribute on 0.1 label if <IsAcces> is true, else on <L> label. This label will be returned by DocLabel----; If the attribute is already set it won't be reset on <L> even if <IsAcces> is false. ColorTool and ShapeTool attributes are also set by this method.

	:param L:
	:type L: TDF_Label &
	:param IsAcces: default value is Standard_True
	:type IsAcces: bool
	:rtype: Handle_XCAFDoc_DocumentTool
") Set;
		static Handle_XCAFDoc_DocumentTool Set (const TDF_Label & L,const Standard_Boolean IsAcces = Standard_True);
		%feature("compactdefaultargs") IsXCAFDocument;
		%feature("autodoc", "	:param Doc:
	:type Doc: Handle_TDocStd_Document &
	:rtype: bool
") IsXCAFDocument;
		static Standard_Boolean IsXCAFDocument (const Handle_TDocStd_Document & Doc);
		%feature("compactdefaultargs") DocLabel;
		%feature("autodoc", "	* Returns label where the DocumentTool attribute is or 0.1 if DocumentTool is not yet set.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") DocLabel;
		static TDF_Label DocLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") ShapesLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 1.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") ShapesLabel;
		static TDF_Label ShapesLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") ColorsLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 2.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") ColorsLabel;
		static TDF_Label ColorsLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") LayersLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 3.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") LayersLabel;
		static TDF_Label LayersLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") DGTsLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 4.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") DGTsLabel;
		static TDF_Label DGTsLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") MaterialsLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 5.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") MaterialsLabel;
		static TDF_Label MaterialsLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") ViewsLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 7.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") ViewsLabel;
		static TDF_Label ViewsLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") ClippingPlanesLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 8.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") ClippingPlanesLabel;
		static TDF_Label ClippingPlanesLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") NotesLabel;
		%feature("autodoc", "	* Returns sub-label of DocLabel---- with tag 9.

	:param acces:
	:type acces: TDF_Label &
	:rtype: TDF_Label
") NotesLabel;
		static TDF_Label NotesLabel (const TDF_Label & acces);
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "	* Creates --if it does not exist-- ShapeTool attribute on ShapesLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_ShapeTool
") ShapeTool;
		static Handle_XCAFDoc_ShapeTool ShapeTool (const TDF_Label & acces);
		%feature("compactdefaultargs") ColorTool;
		%feature("autodoc", "	* Creates --if it does not exist-- ColorTool attribute on ColorsLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_ColorTool
") ColorTool;
		static Handle_XCAFDoc_ColorTool ColorTool (const TDF_Label & acces);
		%feature("compactdefaultargs") LayerTool;
		%feature("autodoc", "	* Creates --if it does not exist-- LayerTool attribute on LayersLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_LayerTool
") LayerTool;
		static Handle_XCAFDoc_LayerTool LayerTool (const TDF_Label & acces);
		%feature("compactdefaultargs") DimTolTool;
		%feature("autodoc", "	* Creates --if it does not exist-- DimTolTool attribute on DGTsLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_DimTolTool
") DimTolTool;
		static Handle_XCAFDoc_DimTolTool DimTolTool (const TDF_Label & acces);
		%feature("compactdefaultargs") MaterialTool;
		%feature("autodoc", "	* Creates --if it does not exist-- DimTolTool attribute on DGTsLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_MaterialTool
") MaterialTool;
		static Handle_XCAFDoc_MaterialTool MaterialTool (const TDF_Label & acces);
		%feature("compactdefaultargs") ViewTool;
		%feature("autodoc", "	* Creates --if it does not exist-- ViewTool attribute on ViewsLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_ViewTool
") ViewTool;
		static Handle_XCAFDoc_ViewTool ViewTool (const TDF_Label & acces);
		%feature("compactdefaultargs") ClippingPlaneTool;
		%feature("autodoc", "	* Creates --if it does not exist-- ClippingPlaneTool attribute on ClippingPlanesLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_ClippingPlaneTool
") ClippingPlaneTool;
		static Handle_XCAFDoc_ClippingPlaneTool ClippingPlaneTool (const TDF_Label & acces);
		%feature("compactdefaultargs") NotesTool;
		%feature("autodoc", "	* Creates --if it does not exist-- NotesTool attribute on NotesLabel----.

	:param acces:
	:type acces: TDF_Label &
	:rtype: Handle_XCAFDoc_NotesTool
") NotesTool;
		static Handle_XCAFDoc_NotesTool NotesTool (const TDF_Label & acces);
		%feature("compactdefaultargs") XCAFDoc_DocumentTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_DocumentTool;
		 XCAFDoc_DocumentTool ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* to be called when reading this attribute from file

	:rtype: None
") Init;
		void Init ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_DocumentTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_DocumentTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_DocumentTool::Handle_XCAFDoc_DocumentTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_DocumentTool;
class Handle_XCAFDoc_DocumentTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_DocumentTool();
        Handle_XCAFDoc_DocumentTool(const Handle_XCAFDoc_DocumentTool &aHandle);
        Handle_XCAFDoc_DocumentTool(const XCAFDoc_DocumentTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_DocumentTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_DocumentTool {
    XCAFDoc_DocumentTool* _get_reference() {
    return (XCAFDoc_DocumentTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_DocumentTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_DocumentTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
class XCAFDoc_Editor {
	public:
		%feature("compactdefaultargs") Expand;
		%feature("autodoc", "	* Convert Shape--compound-- to assembly

	:param Doc:
	:type Doc: TDF_Label &
	:param Shape:
	:type Shape: TDF_Label &
	:param recursively: default value is Standard_True
	:type recursively: bool
	:rtype: bool
") Expand;
		static Standard_Boolean Expand (const TDF_Label & Doc,const TDF_Label & Shape,const Standard_Boolean recursively = Standard_True);
		%feature("compactdefaultargs") Expand;
		%feature("autodoc", "	* Convert all compounds in Doc to assembly

	:param Doc:
	:type Doc: TDF_Label &
	:param recursively: default value is Standard_True
	:type recursively: bool
	:rtype: bool
") Expand;
		static Standard_Boolean Expand (const TDF_Label & Doc,const Standard_Boolean recursively = Standard_True);
};


%extend XCAFDoc_Editor {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_GeomTolerance;
class XCAFDoc_GeomTolerance : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_GeomTolerance;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_GeomTolerance;
		 XCAFDoc_GeomTolerance ();
		%feature("compactdefaultargs") XCAFDoc_GeomTolerance;
		%feature("autodoc", "	:param theObj:
	:type theObj: Handle_XCAFDoc_GeomTolerance &
	:rtype: None
") XCAFDoc_GeomTolerance;
		 XCAFDoc_GeomTolerance (const Handle_XCAFDoc_GeomTolerance & theObj);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_GeomTolerance
") Set;
		static Handle_XCAFDoc_GeomTolerance Set (const TDF_Label & theLabel);
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "	:param theObject:
	:type theObject: Handle_XCAFDimTolObjects_GeomToleranceObject &
	:rtype: None
") SetObject;
		void SetObject (const Handle_XCAFDimTolObjects_GeomToleranceObject & theObject);
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "	:rtype: Handle_XCAFDimTolObjects_GeomToleranceObject
") GetObject;
		Handle_XCAFDimTolObjects_GeomToleranceObject GetObject ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_GeomTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_GeomTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_GeomTolerance::Handle_XCAFDoc_GeomTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_GeomTolerance;
class Handle_XCAFDoc_GeomTolerance : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_GeomTolerance();
        Handle_XCAFDoc_GeomTolerance(const Handle_XCAFDoc_GeomTolerance &aHandle);
        Handle_XCAFDoc_GeomTolerance(const XCAFDoc_GeomTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_GeomTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_GeomTolerance {
    XCAFDoc_GeomTolerance* _get_reference() {
    return (XCAFDoc_GeomTolerance*)$self->get();
    }
};

%extend Handle_XCAFDoc_GeomTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_GeomTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_GraphNode;
class XCAFDoc_GraphNode : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	* class methods working on the node =================================== Shortcut to search a Graph node attribute with default GraphID. Returns true if found.

	:param L:
	:type L: TDF_Label &
	:param G:
	:type G: Handle_XCAFDoc_GraphNode &
	:rtype: bool
") Find;
		static Standard_Boolean Find (const TDF_Label & L,Handle_XCAFDoc_GraphNode & G);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Finds or Creates a GraphNode attribute on the label <L> with the default Graph ID, returned by the method <GetDefaultGraphID>. Returns the created/found GraphNode attribute.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_GraphNode
") Set;
		static Handle_XCAFDoc_GraphNode Set (const TDF_Label & L);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Finds or Creates a GraphNode attribute on the label <L>, with an explicit tree ID. <ExplicitGraphID> is the ID returned by <TDF_Attribute::ID> method. Returns the found/created GraphNode attribute.

	:param L:
	:type L: TDF_Label &
	:param ExplicitGraphID:
	:type ExplicitGraphID: Standard_GUID &
	:rtype: Handle_XCAFDoc_GraphNode
") Set;
		static Handle_XCAFDoc_GraphNode Set (const TDF_Label & L,const Standard_GUID & ExplicitGraphID);
		%feature("compactdefaultargs") GetDefaultGraphID;
		%feature("autodoc", "	* returns a default Graph ID. this ID is used by the <Set> method without explicit tree ID. Instance methods: ================

	:rtype: Standard_GUID
") GetDefaultGraphID;
		static const Standard_GUID & GetDefaultGraphID ();
		%feature("compactdefaultargs") XCAFDoc_GraphNode;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_GraphNode;
		 XCAFDoc_GraphNode ();
		%feature("compactdefaultargs") SetGraphID;
		%feature("autodoc", "	:param explicitID:
	:type explicitID: Standard_GUID &
	:rtype: None
") SetGraphID;
		void SetGraphID (const Standard_GUID & explicitID);
		%feature("compactdefaultargs") SetFather;
		%feature("autodoc", "	* Set GraphNode <F> as father of me and returns index of <F> in Sequence that containing Fathers GraphNodes. return index of <F> from GraphNodeSequnece

	:param F:
	:type F: Handle_XCAFDoc_GraphNode &
	:rtype: int
") SetFather;
		Standard_Integer SetFather (const Handle_XCAFDoc_GraphNode & F);
		%feature("compactdefaultargs") SetChild;
		%feature("autodoc", "	* Set GraphNode <Ch> as child of me and returns index of <Ch> in Sequence that containing Children GraphNodes. return index of <Ch> from GraphNodeSequnece

	:param Ch:
	:type Ch: Handle_XCAFDoc_GraphNode &
	:rtype: int
") SetChild;
		Standard_Integer SetChild (const Handle_XCAFDoc_GraphNode & Ch);
		%feature("compactdefaultargs") UnSetFather;
		%feature("autodoc", "	* Remove <F> from Fathers GraphNodeSequence. and remove link between father and child.

	:param F:
	:type F: Handle_XCAFDoc_GraphNode &
	:rtype: None
") UnSetFather;
		void UnSetFather (const Handle_XCAFDoc_GraphNode & F);
		%feature("compactdefaultargs") UnSetFather;
		%feature("autodoc", "	* Remove Father GraphNode by index from Fathers GraphNodeSequence. and remove link between father and child.

	:param Findex:
	:type Findex: int
	:rtype: None
") UnSetFather;
		void UnSetFather (const Standard_Integer Findex);
		%feature("compactdefaultargs") UnSetChild;
		%feature("autodoc", "	* Remove <Ch> from GraphNodeSequence. and remove link between father and child.

	:param Ch:
	:type Ch: Handle_XCAFDoc_GraphNode &
	:rtype: None
") UnSetChild;
		void UnSetChild (const Handle_XCAFDoc_GraphNode & Ch);
		%feature("compactdefaultargs") UnSetChild;
		%feature("autodoc", "	* Remove Child GraphNode by index from Children GraphNodeSequence. and remove link between father and child.

	:param Chindex:
	:type Chindex: int
	:rtype: None
") UnSetChild;
		void UnSetChild (const Standard_Integer Chindex);
		%feature("compactdefaultargs") GetFather;
		%feature("autodoc", "	* Return GraphNode by index from GraphNodeSequence.

	:param Findex:
	:type Findex: int
	:rtype: Handle_XCAFDoc_GraphNode
") GetFather;
		Handle_XCAFDoc_GraphNode GetFather (const Standard_Integer Findex);
		%feature("compactdefaultargs") GetChild;
		%feature("autodoc", "	* Return GraphNode by index from GraphNodeSequence.

	:param Chindex:
	:type Chindex: int
	:rtype: Handle_XCAFDoc_GraphNode
") GetChild;
		Handle_XCAFDoc_GraphNode GetChild (const Standard_Integer Chindex);
		%feature("compactdefaultargs") FatherIndex;
		%feature("autodoc", "	* Return index of <F>, or zero if there is no such Graphnode.

	:param F:
	:type F: Handle_XCAFDoc_GraphNode &
	:rtype: int
") FatherIndex;
		Standard_Integer FatherIndex (const Handle_XCAFDoc_GraphNode & F);
		%feature("compactdefaultargs") ChildIndex;
		%feature("autodoc", "	* Return index of <Ch>, or zero if there is no such Graphnode.

	:param Ch:
	:type Ch: Handle_XCAFDoc_GraphNode &
	:rtype: int
") ChildIndex;
		Standard_Integer ChildIndex (const Handle_XCAFDoc_GraphNode & Ch);
		%feature("compactdefaultargs") IsFather;
		%feature("autodoc", "	* returns True if <self> is father of <Ch>.

	:param Ch:
	:type Ch: Handle_XCAFDoc_GraphNode &
	:rtype: bool
") IsFather;
		Standard_Boolean IsFather (const Handle_XCAFDoc_GraphNode & Ch);
		%feature("compactdefaultargs") IsChild;
		%feature("autodoc", "	* returns True if <self> is child of <F>.

	:param F:
	:type F: Handle_XCAFDoc_GraphNode &
	:rtype: bool
") IsChild;
		Standard_Boolean IsChild (const Handle_XCAFDoc_GraphNode & F);
		%feature("compactdefaultargs") NbFathers;
		%feature("autodoc", "	* return Number of Fathers GraphNodes.

	:rtype: int
") NbFathers;
		Standard_Integer NbFathers ();
		%feature("compactdefaultargs") NbChildren;
		%feature("autodoc", "	* return Number of Childrens GraphNodes. Implementation of Attribute methods: ===================================

	:rtype: int
") NbChildren;
		Standard_Integer NbChildren ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	* Returns the Graph ID --default or explicit one depending onthe Set method used--.

	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: void
") Restore;
		virtual void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") References;
		%feature("autodoc", "	:param aDataSet:
	:type aDataSet: Handle_TDF_DataSet &
	:rtype: void
") References;
		virtual void References (const Handle_TDF_DataSet & aDataSet);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        		%feature("compactdefaultargs") BeforeForget;
		%feature("autodoc", "	:rtype: void
") BeforeForget;
		virtual void BeforeForget ();
};


%extend XCAFDoc_GraphNode {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_GraphNode(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_GraphNode::Handle_XCAFDoc_GraphNode %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_GraphNode;
class Handle_XCAFDoc_GraphNode : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_GraphNode();
        Handle_XCAFDoc_GraphNode(const Handle_XCAFDoc_GraphNode &aHandle);
        Handle_XCAFDoc_GraphNode(const XCAFDoc_GraphNode *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_GraphNode DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_GraphNode {
    XCAFDoc_GraphNode* _get_reference() {
    return (XCAFDoc_GraphNode*)$self->get();
    }
};

%extend Handle_XCAFDoc_GraphNode {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_GraphNode {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_LayerTool;
class XCAFDoc_LayerTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_LayerTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_LayerTool;
		 XCAFDoc_LayerTool ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Creates --if not exist-- LayerTool.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_LayerTool
") Set;
		static Handle_XCAFDoc_LayerTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* returns the label under which Layers are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "	* Returns internal XCAFDoc_ShapeTool tool

	:rtype: Handle_XCAFDoc_ShapeTool
") ShapeTool;
		Handle_XCAFDoc_ShapeTool ShapeTool ();
		%feature("compactdefaultargs") IsLayer;
		%feature("autodoc", "	* Returns True if label belongs to a Layertable and is a Layer definition

	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") IsLayer;
		Standard_Boolean IsLayer (const TDF_Label & lab);
		%feature("compactdefaultargs") GetLayer;
		%feature("autodoc", "	* Returns Layer defined by label lab Returns False if the label is not in Layertable or does not define a Layer

	:param lab:
	:type lab: TDF_Label &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: bool
") GetLayer;
		Standard_Boolean GetLayer (const TDF_Label & lab,TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") FindLayer;
		%feature("autodoc", "	* Finds a Layer definition in a Layertable and returns its label if found Returns False if Layer is not found in Layertable

	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") FindLayer;
		Standard_Boolean FindLayer (const TCollection_ExtendedString & aLayer,TDF_Label & lab);
		%feature("compactdefaultargs") FindLayer;
		%feature("autodoc", "	* Finds a Layer definition in a Layertable and returns its label if found --or Null label else--

	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: TDF_Label
") FindLayer;
		TDF_Label FindLayer (const TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") AddLayer;
		%feature("autodoc", "	* Adds a Layer definition to a Layertable and returns its label --returns existing label if the same Layer is already defined--

	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: TDF_Label
") AddLayer;
		TDF_Label AddLayer (const TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") RemoveLayer;
		%feature("autodoc", "	* Removes Layer from the Layertable

	:param lab:
	:type lab: TDF_Label &
	:rtype: None
") RemoveLayer;
		void RemoveLayer (const TDF_Label & lab);
		%feature("compactdefaultargs") GetLayerLabels;
		%feature("autodoc", "	* Returns a sequence of Layers currently stored in the Layertable

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetLayerLabels;
		void GetLayerLabels (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "	* Sets a link from label <L> to Layer defined by <LayerL> optional parametr <shapeInOneLayer> show could shape be in number of layers or only in one.

	:param L:
	:type L: TDF_Label &
	:param LayerL:
	:type LayerL: TDF_Label &
	:param shapeInOneLayer: default value is Standard_False
	:type shapeInOneLayer: bool
	:rtype: None
") SetLayer;
		void SetLayer (const TDF_Label & L,const TDF_Label & LayerL,const Standard_Boolean shapeInOneLayer = Standard_False);
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "	* Sets a link from label <L> to Layer <aLayer> in the Layertable Adds a Layer as necessary optional parametr <shapeInOneLayer> show could shape be in number of layers or only in one.

	:param L:
	:type L: TDF_Label &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:param shapeInOneLayer: default value is Standard_False
	:type shapeInOneLayer: bool
	:rtype: None
") SetLayer;
		void SetLayer (const TDF_Label & L,const TCollection_ExtendedString & aLayer,const Standard_Boolean shapeInOneLayer = Standard_False);
		%feature("compactdefaultargs") UnSetLayers;
		%feature("autodoc", "	* Removes a link from label <L> to all layers

	:param L:
	:type L: TDF_Label &
	:rtype: None
") UnSetLayers;
		void UnSetLayers (const TDF_Label & L);
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "	* Remove link from label <L> and Layer <aLayer>. returns False if no such layer.

	:param L:
	:type L: TDF_Label &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer (const TDF_Label & L,const TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "	* Remove link from label <L> and Layer <aLayerL>. returns False if <aLayerL> is not a layer label.

	:param L:
	:type L: TDF_Label &
	:param aLayerL:
	:type aLayerL: TDF_Label &
	:rtype: bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer (const TDF_Label & L,const TDF_Label & aLayerL);
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "	* Returns True if label <L> has a Layer assosiated with the <aLayer>.

	:param L:
	:type L: TDF_Label &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: bool
") IsSet;
		Standard_Boolean IsSet (const TDF_Label & L,const TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "	* Returns True if label <L> has a Layer assosiated with the <aLayerL> label.

	:param L:
	:type L: TDF_Label &
	:param aLayerL:
	:type aLayerL: TDF_Label &
	:rtype: bool
") IsSet;
		Standard_Boolean IsSet (const TDF_Label & L,const TDF_Label & aLayerL);
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "	* Return sequence of strings <aLayerS> that assosiated with label <L>.

	:param L:
	:type L: TDF_Label &
	:param aLayerS:
	:type aLayerS: Handle_TColStd_HSequenceOfExtendedString &
	:rtype: bool
") GetLayers;
		Standard_Boolean GetLayers (const TDF_Label & L,Handle_TColStd_HSequenceOfExtendedString & aLayerS);
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "	* Return sequence of labels <aLayerSL> that assosiated with label <L>.

	:param L:
	:type L: TDF_Label &
	:param aLayerLS:
	:type aLayerLS: TDF_LabelSequence &
	:rtype: bool
") GetLayers;
		Standard_Boolean GetLayers (const TDF_Label & L,TDF_LabelSequence & aLayerLS);
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "	* Return sequence of strings that assosiated with label <L>.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_TColStd_HSequenceOfExtendedString
") GetLayers;
		Handle_TColStd_HSequenceOfExtendedString GetLayers (const TDF_Label & L);
		%feature("compactdefaultargs") GetShapesOfLayer;
		%feature("autodoc", "	* Return sequanese of shape labels that assigned with layers to <ShLabels>.

	:param layerL:
	:type layerL: TDF_Label &
	:param ShLabels:
	:type ShLabels: TDF_LabelSequence &
	:rtype: None
") GetShapesOfLayer;
		void GetShapesOfLayer (const TDF_Label & layerL,TDF_LabelSequence & ShLabels);
		%feature("compactdefaultargs") IsVisible;
		%feature("autodoc", "	* Return True if layer is visible, False if invisible.

	:param layerL:
	:type layerL: TDF_Label &
	:rtype: bool
") IsVisible;
		Standard_Boolean IsVisible (const TDF_Label & layerL);
		%feature("compactdefaultargs") SetVisibility;
		%feature("autodoc", "	* Set the visibility of layer. If layer is invisible when on it's layer will set UAttribute with corresponding GUID.

	:param layerL:
	:type layerL: TDF_Label &
	:param isvisible: default value is Standard_True
	:type isvisible: bool
	:rtype: None
") SetVisibility;
		void SetVisibility (const TDF_Label & layerL,const Standard_Boolean isvisible = Standard_True);
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "	* Sets a link from label that containig shape <Sh> with layer that situated at label <LayerL>. optional parametr <shapeInOneLayer> show could shape be in number of layers or only in one. return False if no such shape <Sh> or label <LayerL>

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param LayerL:
	:type LayerL: TDF_Label &
	:param shapeInOneLayer: default value is Standard_False
	:type shapeInOneLayer: bool
	:rtype: bool
") SetLayer;
		Standard_Boolean SetLayer (const TopoDS_Shape & Sh,const TDF_Label & LayerL,const Standard_Boolean shapeInOneLayer = Standard_False);
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "	* Sets a link from label that containig shape <Sh> with layer <aLayer>. Add <aLayer> to LayerTable if nessesery. optional parametr <shapeInOneLayer> show could shape be in number of layers or only in one. return False if no such shape <Sh>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:param shapeInOneLayer: default value is Standard_False
	:type shapeInOneLayer: bool
	:rtype: bool
") SetLayer;
		Standard_Boolean SetLayer (const TopoDS_Shape & Sh,const TCollection_ExtendedString & aLayer,const Standard_Boolean shapeInOneLayer = Standard_False);
		%feature("compactdefaultargs") UnSetLayers;
		%feature("autodoc", "	* Remove link between shape <Sh> and all Layers at LayerTable. return False if no such shape <Sh> in XCAF Document.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:rtype: bool
") UnSetLayers;
		Standard_Boolean UnSetLayers (const TopoDS_Shape & Sh);
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "	* Remove link between shape <Sh> and layer <aLayer>. returns False if no such layer <aLayer> or shape <Sh>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer (const TopoDS_Shape & Sh,const TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "	* Remove link between shape <Sh> and layer <aLayerL>. returns False if no such layer <aLayerL> or shape <Sh>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayerL:
	:type aLayerL: TDF_Label &
	:rtype: bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer (const TopoDS_Shape & Sh,const TDF_Label & aLayerL);
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "	* Returns True if shape <Sh> has a Layer assosiated with the <aLayer>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayer:
	:type aLayer: TCollection_ExtendedString &
	:rtype: bool
") IsSet;
		Standard_Boolean IsSet (const TopoDS_Shape & Sh,const TCollection_ExtendedString & aLayer);
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "	* Returns True if shape <Sh> has a Layer assosiated with the <aLayerL>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayerL:
	:type aLayerL: TDF_Label &
	:rtype: bool
") IsSet;
		Standard_Boolean IsSet (const TopoDS_Shape & Sh,const TDF_Label & aLayerL);
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "	* Return sequence of strings <aLayerS> that assosiated with shape <Sh>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayerS:
	:type aLayerS: Handle_TColStd_HSequenceOfExtendedString &
	:rtype: bool
") GetLayers;
		Standard_Boolean GetLayers (const TopoDS_Shape & Sh,Handle_TColStd_HSequenceOfExtendedString & aLayerS);
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "	* Return sequence of labels <aLayerLS> that assosiated with shape <Sh>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param aLayerLS:
	:type aLayerLS: TDF_LabelSequence &
	:rtype: bool
") GetLayers;
		Standard_Boolean GetLayers (const TopoDS_Shape & Sh,TDF_LabelSequence & aLayerLS);
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "	* Return sequence of strings that assosiated with shape <Sh>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:rtype: Handle_TColStd_HSequenceOfExtendedString
") GetLayers;
		Handle_TColStd_HSequenceOfExtendedString GetLayers (const TopoDS_Shape & Sh);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_LayerTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_LayerTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_LayerTool::Handle_XCAFDoc_LayerTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_LayerTool;
class Handle_XCAFDoc_LayerTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_LayerTool();
        Handle_XCAFDoc_LayerTool(const Handle_XCAFDoc_LayerTool &aHandle);
        Handle_XCAFDoc_LayerTool(const XCAFDoc_LayerTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_LayerTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_LayerTool {
    XCAFDoc_LayerTool* _get_reference() {
    return (XCAFDoc_LayerTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_LayerTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_LayerTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Location;
class XCAFDoc_Location : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Location;
		%feature("autodoc", "	* class methods =============

	:rtype: None
") XCAFDoc_Location;
		 XCAFDoc_Location ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Find, or create, a Location attribute and set it's value the Location attribute is returned. Location methods ===============

	:param label:
	:type label: TDF_Label &
	:param Loc:
	:type Loc: TopLoc_Location &
	:rtype: Handle_XCAFDoc_Location
") Set;
		static Handle_XCAFDoc_Location Set (const TDF_Label & label,const TopLoc_Location & Loc);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param Loc:
	:type Loc: TopLoc_Location &
	:rtype: None
") Set;
		void Set (const TopLoc_Location & Loc);
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Returns True if there is a reference on the same label

	:rtype: TopLoc_Location
") Get;
		const TopLoc_Location & Get ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_Location {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Location(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Location::Handle_XCAFDoc_Location %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Location;
class Handle_XCAFDoc_Location : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Location();
        Handle_XCAFDoc_Location(const Handle_XCAFDoc_Location &aHandle);
        Handle_XCAFDoc_Location(const XCAFDoc_Location *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Location DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Location {
    XCAFDoc_Location* _get_reference() {
    return (XCAFDoc_Location*)$self->get();
    }
};

%extend Handle_XCAFDoc_Location {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Location {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Material;
class XCAFDoc_Material : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Material;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_Material;
		 XCAFDoc_Material ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param label:
	:type label: TDF_Label &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aDensity:
	:type aDensity: float
	:param aDensName:
	:type aDensName: Handle_TCollection_HAsciiString &
	:param aDensValType:
	:type aDensValType: Handle_TCollection_HAsciiString &
	:rtype: Handle_XCAFDoc_Material
") Set;
		static Handle_XCAFDoc_Material Set (const TDF_Label & label,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Standard_Real aDensity,const Handle_TCollection_HAsciiString & aDensName,const Handle_TCollection_HAsciiString & aDensValType);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aDensity:
	:type aDensity: float
	:param aDensName:
	:type aDensName: Handle_TCollection_HAsciiString &
	:param aDensValType:
	:type aDensValType: Handle_TCollection_HAsciiString &
	:rtype: None
") Set;
		void Set (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Standard_Real aDensity,const Handle_TCollection_HAsciiString & aDensName,const Handle_TCollection_HAsciiString & aDensValType);
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetName;
		Handle_TCollection_HAsciiString GetName ();
		%feature("compactdefaultargs") GetDescription;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetDescription;
		Handle_TCollection_HAsciiString GetDescription ();
		%feature("compactdefaultargs") GetDensity;
		%feature("autodoc", "	:rtype: float
") GetDensity;
		Standard_Real GetDensity ();
		%feature("compactdefaultargs") GetDensName;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetDensName;
		Handle_TCollection_HAsciiString GetDensName ();
		%feature("compactdefaultargs") GetDensValType;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetDensValType;
		Handle_TCollection_HAsciiString GetDensValType ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_Material {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Material(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Material::Handle_XCAFDoc_Material %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Material;
class Handle_XCAFDoc_Material : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Material();
        Handle_XCAFDoc_Material(const Handle_XCAFDoc_Material &aHandle);
        Handle_XCAFDoc_Material(const XCAFDoc_Material *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Material DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Material {
    XCAFDoc_Material* _get_reference() {
    return (XCAFDoc_Material*)$self->get();
    }
};

%extend Handle_XCAFDoc_Material {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Material {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_MaterialTool;
class XCAFDoc_MaterialTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_MaterialTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_MaterialTool;
		 XCAFDoc_MaterialTool ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Creates --if not exist-- MaterialTool.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_MaterialTool
") Set;
		static Handle_XCAFDoc_MaterialTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* returns the label under which colors are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "	* Returns internal XCAFDoc_ShapeTool tool

	:rtype: Handle_XCAFDoc_ShapeTool
") ShapeTool;
		Handle_XCAFDoc_ShapeTool ShapeTool ();
		%feature("compactdefaultargs") IsMaterial;
		%feature("autodoc", "	* Returns True if label belongs to a material table and is a Material definition

	:param lab:
	:type lab: TDF_Label &
	:rtype: bool
") IsMaterial;
		Standard_Boolean IsMaterial (const TDF_Label & lab);
		%feature("compactdefaultargs") GetMaterialLabels;
		%feature("autodoc", "	* Returns a sequence of materials currently stored in the material table

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetMaterialLabels;
		void GetMaterialLabels (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") AddMaterial;
		%feature("autodoc", "	* Adds a Material definition to a table and returns its label

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aDensity:
	:type aDensity: float
	:param aDensName:
	:type aDensName: Handle_TCollection_HAsciiString &
	:param aDensValType:
	:type aDensValType: Handle_TCollection_HAsciiString &
	:rtype: TDF_Label
") AddMaterial;
		TDF_Label AddMaterial (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Standard_Real aDensity,const Handle_TCollection_HAsciiString & aDensName,const Handle_TCollection_HAsciiString & aDensValType);
		%feature("compactdefaultargs") SetMaterial;
		%feature("autodoc", "	* Sets a link with GUID

	:param L:
	:type L: TDF_Label &
	:param MatL:
	:type MatL: TDF_Label &
	:rtype: None
") SetMaterial;
		void SetMaterial (const TDF_Label & L,const TDF_Label & MatL);
		%feature("compactdefaultargs") SetMaterial;
		%feature("autodoc", "	* Sets a link with GUID Adds a Material as necessary

	:param L:
	:type L: TDF_Label &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aDensity:
	:type aDensity: float
	:param aDensName:
	:type aDensName: Handle_TCollection_HAsciiString &
	:param aDensValType:
	:type aDensValType: Handle_TCollection_HAsciiString &
	:rtype: None
") SetMaterial;
		void SetMaterial (const TDF_Label & L,const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Standard_Real aDensity,const Handle_TCollection_HAsciiString & aDensName,const Handle_TCollection_HAsciiString & aDensValType);
		%feature("compactdefaultargs") GetMaterial;
		%feature("autodoc", "	* Returns Material assigned to <MatL> Returns False if no such Material is assigned

	:param MatL:
	:type MatL: TDF_Label &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aDensity:
	:type aDensity: float &
	:param aDensName:
	:type aDensName: Handle_TCollection_HAsciiString &
	:param aDensValType:
	:type aDensValType: Handle_TCollection_HAsciiString &
	:rtype: bool
") GetMaterial;
		Standard_Boolean GetMaterial (const TDF_Label & MatL,Handle_TCollection_HAsciiString & aName,Handle_TCollection_HAsciiString & aDescription,Standard_Real &OutValue,Handle_TCollection_HAsciiString & aDensName,Handle_TCollection_HAsciiString & aDensValType);
		%feature("compactdefaultargs") GetDensityForShape;
		%feature("autodoc", "	* Find referred material and return density from it if no material --> return 0

	:param ShapeL:
	:type ShapeL: TDF_Label &
	:rtype: float
") GetDensityForShape;
		static Standard_Real GetDensityForShape (const TDF_Label & ShapeL);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_MaterialTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_MaterialTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_MaterialTool::Handle_XCAFDoc_MaterialTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_MaterialTool;
class Handle_XCAFDoc_MaterialTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_MaterialTool();
        Handle_XCAFDoc_MaterialTool(const Handle_XCAFDoc_MaterialTool &aHandle);
        Handle_XCAFDoc_MaterialTool(const XCAFDoc_MaterialTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_MaterialTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_MaterialTool {
    XCAFDoc_MaterialTool* _get_reference() {
    return (XCAFDoc_MaterialTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_MaterialTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_MaterialTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Note;
class XCAFDoc_Note : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") IsMine;
		%feature("autodoc", "	* Checks if the given label represents a note.

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: bool
") IsMine;
		static Standard_Boolean IsMine (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Finds a reference attribute on the given label and returns it, if it is found

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_Note
") Get;
		static Handle_XCAFDoc_Note Get (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Sets the user name and the timestamp of the note. \param [in] theUserName - the user associated with the note. \param [in] theTimeStamp - timestamp of the note. eturn A handle to the attribute instance.

	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:rtype: None
") Set;
		void Set (const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp);
		%feature("compactdefaultargs") UserName;
		%feature("autodoc", "	* Returns the user name, who created the note.

	:rtype: TCollection_ExtendedString
") UserName;
		const TCollection_ExtendedString & UserName ();
		%feature("compactdefaultargs") TimeStamp;
		%feature("autodoc", "	* Returns the timestamp of the note.

	:rtype: TCollection_ExtendedString
") TimeStamp;
		const TCollection_ExtendedString & TimeStamp ();
		%feature("compactdefaultargs") IsOrphan;
		%feature("autodoc", "	* Checks if the note isn't linked to annotated items.

	:rtype: bool
") IsOrphan;
		Standard_Boolean IsOrphan ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param theAttrFrom:
	:type theAttrFrom: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & theAttrFrom);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theAttrInto:
	:type theAttrInto: Handle_TDF_Attribute &
	:param theRT:
	:type theRT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theAttrInto,const Handle_TDF_RelocationTable & theRT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_Note {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Note(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Note::Handle_XCAFDoc_Note %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Note;
class Handle_XCAFDoc_Note : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Note();
        Handle_XCAFDoc_Note(const Handle_XCAFDoc_Note &aHandle);
        Handle_XCAFDoc_Note(const XCAFDoc_Note *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Note DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Note {
    XCAFDoc_Note* _get_reference() {
    return (XCAFDoc_Note*)$self->get();
    }
};

%extend Handle_XCAFDoc_Note {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Note {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_NotesTool;
class XCAFDoc_NotesTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- a notes tool from XCAFDoc on theLabel.

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_NotesTool
") Set;
		static Handle_XCAFDoc_NotesTool Set (const TDF_Label & theLabel);
		%feature("compactdefaultargs") XCAFDoc_NotesTool;
		%feature("autodoc", "	* Creates an empty notes tool.

	:rtype: None
") XCAFDoc_NotesTool;
		 XCAFDoc_NotesTool ();
		%feature("compactdefaultargs") GetNotesLabel;
		%feature("autodoc", "	* Returns the label of the notes hive.

	:rtype: TDF_Label
") GetNotesLabel;
		TDF_Label GetNotesLabel ();
		%feature("compactdefaultargs") GetAnnotatedItemsLabel;
		%feature("autodoc", "	* Returns the label of the annotated items hive.

	:rtype: TDF_Label
") GetAnnotatedItemsLabel;
		TDF_Label GetAnnotatedItemsLabel ();
		%feature("compactdefaultargs") NbNotes;
		%feature("autodoc", "	* Returns the number of labels in the notes hive.

	:rtype: int
") NbNotes;
		Standard_Integer NbNotes ();
		%feature("compactdefaultargs") NbAnnotatedItems;
		%feature("autodoc", "	* Returns the number of labels in the annotated items hive.

	:rtype: int
") NbAnnotatedItems;
		Standard_Integer NbAnnotatedItems ();
		%feature("compactdefaultargs") GetNotes;
		%feature("autodoc", "	* Returns all labels from the notes hive. The label sequence isn't cleared beforehand. \param [out] theNoteLabels - sequence of labels.

	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: None
") GetNotes;
		void GetNotes (TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") GetAnnotatedItems;
		%feature("autodoc", "	* Returns all labels from the annotated items hive. The label sequence isn't cleared beforehand. \param [out] theNoteLabels - sequence of labels.

	:param theLabels:
	:type theLabels: TDF_LabelSequence &
	:rtype: None
") GetAnnotatedItems;
		void GetAnnotatedItems (TDF_LabelSequence & theLabels);
		%feature("compactdefaultargs") IsAnnotatedItem;
		%feature("autodoc", "	* Checks if the given assembly item is annotated. \param [in] theItemId - assembly item ID. eturn true if the item is annotated, otherwise - false.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:rtype: bool
") IsAnnotatedItem;
		Standard_Boolean IsAnnotatedItem (const XCAFDoc_AssemblyItemId & theItemId);
		%feature("compactdefaultargs") IsAnnotatedItem;
		%feature("autodoc", "	* Checks if the given labeled item is annotated. \param [in] theItemLabel - item label. eturn true if the item is annotated, otherwise - false.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:rtype: bool
") IsAnnotatedItem;
		Standard_Boolean IsAnnotatedItem (const TDF_Label & theItemLabel);
		%feature("compactdefaultargs") FindAnnotatedItem;
		%feature("autodoc", "	* @name Find annotated item functions @{ Finds a label of the given assembly item ID in the annotated items hive. \param [in] theItemId - assembly item ID. eturn annotated item label if it is found, otherwise - null label.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:rtype: TDF_Label
") FindAnnotatedItem;
		TDF_Label FindAnnotatedItem (const XCAFDoc_AssemblyItemId & theItemId);
		%feature("compactdefaultargs") FindAnnotatedItem;
		%feature("autodoc", "	* Finds a label of the given labeled item in the annotated items hive. \param [in] theItemLabel - item label. eturn annotated item label if it is found, otherwise - null label.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:rtype: TDF_Label
") FindAnnotatedItem;
		TDF_Label FindAnnotatedItem (const TDF_Label & theItemLabel);
		%feature("compactdefaultargs") FindAnnotatedItemAttr;
		%feature("autodoc", "	* Finds a label of the given assembly item's attribute in the annotated items hive. \param [in] theItemId - assembly item ID. \param [in] theGUID - assembly item's attribute GUID. eturn annotated item label if it is found, otherwise - null label.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: TDF_Label
") FindAnnotatedItemAttr;
		TDF_Label FindAnnotatedItemAttr (const XCAFDoc_AssemblyItemId & theItemId,const Standard_GUID & theGUID);
		%feature("compactdefaultargs") FindAnnotatedItemAttr;
		%feature("autodoc", "	* Finds a label of the given labeled item's attribute in the annotated items hive. \param [in] theItemLabel - item label. \param [in] theGUID - item's attribute GUID. eturn annotated item label if it is found, otherwise - null label.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: TDF_Label
") FindAnnotatedItemAttr;
		TDF_Label FindAnnotatedItemAttr (const TDF_Label & theItemLabel,const Standard_GUID & theGUID);
		%feature("compactdefaultargs") FindAnnotatedItemSubshape;
		%feature("autodoc", "	* Finds a label of the given assembly item's subshape in the annotated items hive. \param [in] theItemId - assembly item ID. \param [in] theSubshapeIndex - assembly item's subshape index. eturn annotated item label if it is found, otherwise - null label.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:rtype: TDF_Label
") FindAnnotatedItemSubshape;
		TDF_Label FindAnnotatedItemSubshape (const XCAFDoc_AssemblyItemId & theItemId,Standard_Integer theSubshapeIndex);
		%feature("compactdefaultargs") FindAnnotatedItemSubshape;
		%feature("autodoc", "	* Finds a label of the given labeled item's subshape in the annotated items hive. \param [in] theItemLabel - item label. \param [in] theSubshapeIndex - labeled item's subshape index. eturn annotated item label if it is found, otherwise - null label.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:rtype: TDF_Label
") FindAnnotatedItemSubshape;
		TDF_Label FindAnnotatedItemSubshape (const TDF_Label & theItemLabel,Standard_Integer theSubshapeIndex);
		%feature("compactdefaultargs") CreateComment;
		%feature("autodoc", "	* @} @name Note creation functions @{ Create a new comment note. Creates a new label under the notes hive and attaches ef XCAFDoc_NoteComment attribute --derived ftom ef XCAFDoc_Note--. \param [in] theUserName - the user associated with the note. \param [in] theTimeStamp - timestamp of the note. \param [in] theComment - textual comment. eturn a handle to the base note attribute.

	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theComment:
	:type theComment: TCollection_ExtendedString &
	:rtype: Handle_XCAFDoc_Note
") CreateComment;
		Handle_XCAFDoc_Note CreateComment (const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theComment);
		%feature("compactdefaultargs") CreateBalloon;
		%feature("autodoc", "	* Create a new 'balloon' note. Creates a new label under the notes hive and attaches ef XCAFDoc_NoteBalloon attribute --derived ftom ef XCAFDoc_Note--. \param [in] theUserName - the user associated with the note. \param [in] theTimeStamp - timestamp of the note. \param [in] theComment - textual comment. eturn a handle to the base note attribute.

	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theComment:
	:type theComment: TCollection_ExtendedString &
	:rtype: Handle_XCAFDoc_Note
") CreateBalloon;
		Handle_XCAFDoc_Note CreateBalloon (const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theComment);
		%feature("compactdefaultargs") CreateBinData;
		%feature("autodoc", "	* Create a new note with data loaded from a binary file. Creates a new label under the notes hive and attaches ef XCAFDoc_NoteComment attribute --derived ftom ef XCAFDoc_Note--. \param [in] theUserName - the user associated with the note. \param [in] theTimeStamp - timestamp of the note. \param [in] theTitle - file title. \param [in] theMIMEtype - MIME type of the file. \param [in] theFile - input binary file. eturn a handle to the base note attribute.

	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theTitle:
	:type theTitle: TCollection_ExtendedString &
	:param theMIMEtype:
	:type theMIMEtype: TCollection_AsciiString &
	:param theFile:
	:type theFile: OSD_File &
	:rtype: Handle_XCAFDoc_Note
") CreateBinData;
		Handle_XCAFDoc_Note CreateBinData (const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theTitle,const TCollection_AsciiString & theMIMEtype,OSD_File & theFile);
		%feature("compactdefaultargs") CreateBinData;
		%feature("autodoc", "	* Create a new note with data loaded from a byte data array. Creates a new label under the notes hive and attaches ef XCAFDoc_NoteComment attribute --derived ftom ef XCAFDoc_Note--. \param [in] theUserName - the user associated with the note. \param [in] theTimeStamp - timestamp of the note. \param [in] theTitle - data title. \param [in] theMIMEtype - MIME type of the file. \param [in] theData - byte data array. eturn a handle to the base note attribute.

	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theTitle:
	:type theTitle: TCollection_ExtendedString &
	:param theMIMEtype:
	:type theMIMEtype: TCollection_AsciiString &
	:param theData:
	:type theData: Handle_TColStd_HArray1OfByte &
	:rtype: Handle_XCAFDoc_Note
") CreateBinData;
		Handle_XCAFDoc_Note CreateBinData (const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theTitle,const TCollection_AsciiString & theMIMEtype,const Handle_TColStd_HArray1OfByte & theData);
		%feature("compactdefaultargs") GetNotes;
		%feature("autodoc", "	* @} @name Get notes from annotated items functions @{ Gets all note labels of the assembly item. Notes linked to item's subshapes or attributes aren't taken into account. The label sequence isn't cleared beforehand. \param [in] theItemId - assembly item ID. \param [out] theNoteLabels - sequence of labels. eturn number of added labels.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: int
") GetNotes;
		Standard_Integer GetNotes (const XCAFDoc_AssemblyItemId & theItemId,TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") GetNotes;
		%feature("autodoc", "	* Gets all note labels of the labeled item. Notes linked to item's attributes aren't taken into account. The label sequence isn't cleared beforehand. \param [in] theItemLabel - item label. \param [out] theNoteLabels - sequence of labels. eturn number of added labels.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: int
") GetNotes;
		Standard_Integer GetNotes (const TDF_Label & theItemLabel,TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") GetAttrNotes;
		%feature("autodoc", "	* Gets all note labels of the assembly item's attribute. Notes linked to the item itself or to item's subshapes aren't taken into account. The label sequence isn't cleared beforehand. \param [in] theItemId - assembly item ID. \param [in] theGUID - assembly item's attribute GUID. \param [out] theNoteLabels - sequence of labels. eturn number of added labels.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: int
") GetAttrNotes;
		Standard_Integer GetAttrNotes (const XCAFDoc_AssemblyItemId & theItemId,const Standard_GUID & theGUID,TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") GetAttrNotes;
		%feature("autodoc", "	* Gets all note labels of the labeled item's attribute. Notes linked to the item itself or to item's subshapes aren't taken into account. The label sequence isn't cleared beforehand. \param [in] theItemLabel - item label. \param [in] theGUID - item's attribute GUID. \param [out] theNoteLabels - sequence of labels. eturn number of added labels.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: int
") GetAttrNotes;
		Standard_Integer GetAttrNotes (const TDF_Label & theItemLabel,const Standard_GUID & theGUID,TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") GetSubshapeNotes;
		%feature("autodoc", "	* Gets all note labels of the annotated item. Notes linked to the item itself or to item's attributes taken into account. The label sequence isn't cleared beforehand. \param [in] theItemId - assembly item ID. \param [in] theSubshapeIndex - assembly item's subshape index. \param [out] theNoteLabels - sequence of labels. eturn number of added labels.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: int
") GetSubshapeNotes;
		Standard_Integer GetSubshapeNotes (const XCAFDoc_AssemblyItemId & theItemId,Standard_Integer theSubshapeIndex,TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") AddNote;
		%feature("autodoc", "	* @} @name Annotation functions @{ Adds the given note to the assembly item. \param [in] theNoteLabel - note label. \param [in] theItemId - assembly item ID. eturn a handle to the assembly reference attribute.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") AddNote;
		Handle_XCAFDoc_AssemblyItemRef AddNote (const TDF_Label & theNoteLabel,const XCAFDoc_AssemblyItemId & theItemId);
		%feature("compactdefaultargs") AddNote;
		%feature("autodoc", "	* Adds the given note to the labeled item. \param [in] theNoteLabel - note label. \param [in] theItemLabel - item label. eturn a handle to the assembly reference attribute.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") AddNote;
		Handle_XCAFDoc_AssemblyItemRef AddNote (const TDF_Label & theNoteLabel,const TDF_Label & theItemLabel);
		%feature("compactdefaultargs") AddNoteToAttr;
		%feature("autodoc", "	* Adds the given note to the assembly item's attribute. \param [in] theNoteLabel - note label. \param [in] theItemId - assembly item ID. \param [in] theGUID - assembly item's attribute GUID. eturn a handle to the assembly reference attribute.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") AddNoteToAttr;
		Handle_XCAFDoc_AssemblyItemRef AddNoteToAttr (const TDF_Label & theNoteLabel,const XCAFDoc_AssemblyItemId & theItemId,const Standard_GUID & theGUID);
		%feature("compactdefaultargs") AddNoteToAttr;
		%feature("autodoc", "	* Adds the given note to the labeled item's attribute. \param [in] theNoteLabel - note label. \param [in] theItemLabel - item label. \param [in] theGUID - assembly item's attribute GUID. eturn a handle to the assembly reference attribute.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") AddNoteToAttr;
		Handle_XCAFDoc_AssemblyItemRef AddNoteToAttr (const TDF_Label & theNoteLabel,const TDF_Label & theItemLabel,const Standard_GUID & theGUID);
		%feature("compactdefaultargs") AddNoteToSubshape;
		%feature("autodoc", "	* Adds the given note to the assembly item's subshape. \param [in] theNoteLabel - note label. \param [in] theItemId - assembly item ID. \param [in] theSubshapeIndex - assembly item's subshape index. eturn a handle to the assembly reference attribute.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") AddNoteToSubshape;
		Handle_XCAFDoc_AssemblyItemRef AddNoteToSubshape (const TDF_Label & theNoteLabel,const XCAFDoc_AssemblyItemId & theItemId,Standard_Integer theSubshapeIndex);
		%feature("compactdefaultargs") AddNoteToSubshape;
		%feature("autodoc", "	* Adds the given note to the labeled item's subshape. \param [in] theNoteLabel - note label. \param [in] theItemLabel - item label. \param [in] theSubshapeIndex - assembly item's subshape index. eturn a handle to the assembly reference attribute.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:rtype: Handle_XCAFDoc_AssemblyItemRef
") AddNoteToSubshape;
		Handle_XCAFDoc_AssemblyItemRef AddNoteToSubshape (const TDF_Label & theNoteLabel,const TDF_Label & theItemLabel,Standard_Integer theSubshapeIndex);
		%feature("compactdefaultargs") RemoveNote;
		%feature("autodoc", "	* @} @name Remove annotation functions @{ Removes the given note from the assembly item. \param [in] theNoteLabel - note label. \param [in] theItemId - assembly item ID. \param [in] theDelIfOrphan - deletes the note from the notes hive  if there are no more assembly items  linked with the note. eturn true if the note is removed, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveNote;
		Standard_Boolean RemoveNote (const TDF_Label & theNoteLabel,const XCAFDoc_AssemblyItemId & theItemId,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveNote;
		%feature("autodoc", "	* Removes the given note from the labeled item. \param [in] theNoteLabel - note label. \param [in] theItemLabel - item label. \param [in] theDelIfOrphan - deletes the note from the notes hive  if there are no more labeled items  linked with the note. eturn true if the note is removed, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveNote;
		Standard_Boolean RemoveNote (const TDF_Label & theNoteLabel,const TDF_Label & theItemLabel,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveSubshapeNote;
		%feature("autodoc", "	* Removes the given note from the assembly item's subshape. \param [in] theNoteLabel - note label. \param [in] theItemId - assembly item ID. \param [in] theSubshapeIndex - assembly item's subshape index. \param [in] theDelIfOrphan - deletes the note from the notes hive  if there are no more assembly item's  subshape linked with the note. eturn true if the note is removed, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveSubshapeNote;
		Standard_Boolean RemoveSubshapeNote (const TDF_Label & theNoteLabel,const XCAFDoc_AssemblyItemId & theItemId,Standard_Integer theSubshapeIndex,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveSubshapeNote;
		%feature("autodoc", "	* Removes the given note from the labeled item's subshape. \param [in] theNoteLabel - note label. \param [in] theItemLabel - item label. \param [in] theSubshapeIndex - labeled item's subshape index. \param [in] theDelIfOrphan - deletes the note from the notes hive  if there are no more assembly item's  subshape linked with the note. eturn true if the note is removed, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveSubshapeNote;
		Standard_Boolean RemoveSubshapeNote (const TDF_Label & theNoteLabel,const TDF_Label & theItemLabel,Standard_Integer theSubshapeIndex,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAttrNote;
		%feature("autodoc", "	* Removes a note from the assembly item's attribute. \param [in] theNoteLabel - note label. \param [in] theItemId - assembly item ID. \param [in] theGUID - assembly item's attribute GUID. \param [in] theDelIfOrphan - deletes the note from the notes hive  if there are no more assembly item's  attribute linked with the note. eturn true if the note is removed, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAttrNote;
		Standard_Boolean RemoveAttrNote (const TDF_Label & theNoteLabel,const XCAFDoc_AssemblyItemId & theItemId,const Standard_GUID & theGUID,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAttrNote;
		%feature("autodoc", "	* Removes a note from the labeled item's attribute. \param [in] theNoteLabel - note label. \param [in] theItemLabel - item label. \param [in] theGUID - labeled item's attribute GUID. \param [in] theDelIfOrphan - deletes the note from the notes hive  if there are no more assembly item's  attribute linked with the note. eturn true if the note is removed, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAttrNote;
		Standard_Boolean RemoveAttrNote (const TDF_Label & theNoteLabel,const TDF_Label & theItemLabel,const Standard_GUID & theGUID,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAllNotes;
		%feature("autodoc", "	* Removes all notes from the assembly item. \param [in] theItemId - assembly item ID. \param [in] theDelIfOrphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAllNotes;
		Standard_Boolean RemoveAllNotes (const XCAFDoc_AssemblyItemId & theItemId,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAllNotes;
		%feature("autodoc", "	* Removes all notes from the labeled item. \param [in] theItemLabel - item label. \param [in] theDelIfOrphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAllNotes;
		Standard_Boolean RemoveAllNotes (const TDF_Label & theItemLabel,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAllSubshapeNotes;
		%feature("autodoc", "	* Removes all notes from the assembly item's subshape. \param [in] theItemId - assembly item ID. \param [in] theSubshapeIndex - assembly item's subshape index. \param [in] theDelIfOrphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theSubshapeIndex:
	:type theSubshapeIndex: int
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAllSubshapeNotes;
		Standard_Boolean RemoveAllSubshapeNotes (const XCAFDoc_AssemblyItemId & theItemId,Standard_Integer theSubshapeIndex,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAllAttrNotes;
		%feature("autodoc", "	* Removes all notes from the assembly item's attribute. \param [in] theItemId - assembly item ID. \param [in] theGUID - assembly item's attribute GUID. \param [in] theDelIfOrphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

	:param theItemId:
	:type theItemId: XCAFDoc_AssemblyItemId &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAllAttrNotes;
		Standard_Boolean RemoveAllAttrNotes (const XCAFDoc_AssemblyItemId & theItemId,const Standard_GUID & theGUID,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") RemoveAllAttrNotes;
		%feature("autodoc", "	* Removes all notes from the labeled item's attribute. \param [in] theItemLabel - item label. \param [in] theGUID - labeled item's attribute GUID. \param [in] theDelIfOrphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

	:param theItemLabel:
	:type theItemLabel: TDF_Label &
	:param theGUID:
	:type theGUID: Standard_GUID &
	:param theDelIfOrphan: default value is Standard_False
	:type theDelIfOrphan: bool
	:rtype: bool
") RemoveAllAttrNotes;
		Standard_Boolean RemoveAllAttrNotes (const TDF_Label & theItemLabel,const Standard_GUID & theGUID,Standard_Boolean theDelIfOrphan = Standard_False);
		%feature("compactdefaultargs") DeleteNote;
		%feature("autodoc", "	* @} @name Delete note functions @{ Deletes the given note. Removes all links with items annotated by the note. \param [in] theNoteLabel - note label. eturn true if the note is deleted, otherwise - false.

	:param theNoteLabel:
	:type theNoteLabel: TDF_Label &
	:rtype: bool
") DeleteNote;
		Standard_Boolean DeleteNote (const TDF_Label & theNoteLabel);
		%feature("compactdefaultargs") DeleteNotes;
		%feature("autodoc", "	* Deletes the given notes. Removes all links with items annotated by the notes. \param [in] theNoteLabels - note label sequence. eturn number of deleted notes.

	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: int
") DeleteNotes;
		Standard_Integer DeleteNotes (TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") DeleteAllNotes;
		%feature("autodoc", "	* Deletes all notes. Clears all annotations. eturn number of deleted notes.

	:rtype: int
") DeleteAllNotes;
		Standard_Integer DeleteAllNotes ();
		%feature("compactdefaultargs") NbOrphanNotes;
		%feature("autodoc", "	* @} @name Orphan annotated items functions @{ Returns number of notes that aren't linked to annotated items.

	:rtype: int
") NbOrphanNotes;
		Standard_Integer NbOrphanNotes ();
		%feature("compactdefaultargs") GetOrphanNotes;
		%feature("autodoc", "	* Returns note labels that aren't linked to annotated items. The label sequence isn't cleared beforehand. \param [out] theNoteLabels - sequence of labels.

	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: None
") GetOrphanNotes;
		void GetOrphanNotes (TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") DeleteOrphanNotes;
		%feature("autodoc", "	* Deletes all notes that aren't linked to annotated items. eturn number of deleted notes.

	:rtype: int
") DeleteOrphanNotes;
		Standard_Integer DeleteOrphanNotes ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	* @}

	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param theAttrFrom:
	:type theAttrFrom: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & theAttrFrom);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theAttrInto:
	:type theAttrInto: Handle_TDF_Attribute &
	:param theRT:
	:type theRT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theAttrInto,const Handle_TDF_RelocationTable & theRT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_NotesTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_NotesTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_NotesTool::Handle_XCAFDoc_NotesTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_NotesTool;
class Handle_XCAFDoc_NotesTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_NotesTool();
        Handle_XCAFDoc_NotesTool(const Handle_XCAFDoc_NotesTool &aHandle);
        Handle_XCAFDoc_NotesTool(const XCAFDoc_NotesTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_NotesTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_NotesTool {
    XCAFDoc_NotesTool* _get_reference() {
    return (XCAFDoc_NotesTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_NotesTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_NotesTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_ShapeMapTool;
class XCAFDoc_ShapeMapTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- ShapeTool from XCAFDoc on <L>.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_ShapeMapTool
") Set;
		static Handle_XCAFDoc_ShapeMapTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") XCAFDoc_ShapeMapTool;
		%feature("autodoc", "	* Creates an empty tool

	:rtype: None
") XCAFDoc_ShapeMapTool;
		 XCAFDoc_ShapeMapTool ();
		%feature("compactdefaultargs") IsSubShape;
		%feature("autodoc", "	* Checks whether shape <sub> is subshape of shape stored on label shapeL

	:param sub:
	:type sub: TopoDS_Shape &
	:rtype: bool
") IsSubShape;
		Standard_Boolean IsSubShape (const TopoDS_Shape & sub);
		%feature("compactdefaultargs") SetShape;
		%feature("autodoc", "	* Sets representation --TopoDS_Shape-- for top-level shape

	:param S:
	:type S: TopoDS_Shape &
	:rtype: None
") SetShape;
		void SetShape (const TopoDS_Shape & S);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
		%feature("compactdefaultargs") GetMap;
		%feature("autodoc", "	:rtype: TopTools_IndexedMapOfShape
") GetMap;
		const TopTools_IndexedMapOfShape & GetMap ();
};


%extend XCAFDoc_ShapeMapTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_ShapeMapTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_ShapeMapTool::Handle_XCAFDoc_ShapeMapTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_ShapeMapTool;
class Handle_XCAFDoc_ShapeMapTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_ShapeMapTool();
        Handle_XCAFDoc_ShapeMapTool(const Handle_XCAFDoc_ShapeMapTool &aHandle);
        Handle_XCAFDoc_ShapeMapTool(const XCAFDoc_ShapeMapTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_ShapeMapTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_ShapeMapTool {
    XCAFDoc_ShapeMapTool* _get_reference() {
    return (XCAFDoc_ShapeMapTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_ShapeMapTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_ShapeMapTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_ShapeTool;
class XCAFDoc_ShapeTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- ShapeTool from XCAFDoc on <L>.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_ShapeTool
") Set;
		static Handle_XCAFDoc_ShapeTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") XCAFDoc_ShapeTool;
		%feature("autodoc", "	* Creates an empty tool Creates a tool to work with a document <Doc> Attaches to label XCAFDoc::LabelShapes----

	:rtype: None
") XCAFDoc_ShapeTool;
		 XCAFDoc_ShapeTool ();
		%feature("compactdefaultargs") IsTopLevel;
		%feature("autodoc", "	* Returns True if the label is a label of top-level shape, as opposed to component of assembly or subshape

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsTopLevel;
		Standard_Boolean IsTopLevel (const TDF_Label & L);
		%feature("compactdefaultargs") IsFree;
		%feature("autodoc", "	* Returns True if the label is not used by any assembly, i.e. contains sublabels which are assembly components This is relevant only if IsShape---- is True --There is no Father TreeNode on this <L>--

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsFree;
		static Standard_Boolean IsFree (const TDF_Label & L);
		%feature("compactdefaultargs") IsShape;
		%feature("autodoc", "	* Returns True if the label represents a shape --simple shape, assembly or reference--

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsShape;
		static Standard_Boolean IsShape (const TDF_Label & L);
		%feature("compactdefaultargs") IsSimpleShape;
		%feature("autodoc", "	* Returns True if the label is a label of simple shape

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsSimpleShape;
		static Standard_Boolean IsSimpleShape (const TDF_Label & L);
		%feature("compactdefaultargs") IsReference;
		%feature("autodoc", "	* Return true if <L> is a located instance of other shape i.e. reference

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsReference;
		static Standard_Boolean IsReference (const TDF_Label & L);
		%feature("compactdefaultargs") IsAssembly;
		%feature("autodoc", "	* Returns True if the label is a label of assembly, i.e. contains sublabels which are assembly components This is relevant only if IsShape---- is True

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsAssembly;
		static Standard_Boolean IsAssembly (const TDF_Label & L);
		%feature("compactdefaultargs") IsComponent;
		%feature("autodoc", "	* Return true if <L> is reference serving as component of assembly

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsComponent;
		static Standard_Boolean IsComponent (const TDF_Label & L);
		%feature("compactdefaultargs") IsCompound;
		%feature("autodoc", "	* Returns True if the label is a label of compound, i.e. contains some sublabels This is relevant only if IsShape---- is True

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsCompound;
		static Standard_Boolean IsCompound (const TDF_Label & L);
		%feature("compactdefaultargs") IsSubShape;
		%feature("autodoc", "	* Return true if <L> is subshape of the top-level shape

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsSubShape;
		static Standard_Boolean IsSubShape (const TDF_Label & L);
		%feature("compactdefaultargs") IsSubShape;
		%feature("autodoc", "	* Checks whether shape <sub> is subshape of shape stored on label shapeL

	:param shapeL:
	:type shapeL: TDF_Label &
	:param sub:
	:type sub: TopoDS_Shape &
	:rtype: bool
") IsSubShape;
		Standard_Boolean IsSubShape (const TDF_Label & shapeL,const TopoDS_Shape & sub);
		%feature("compactdefaultargs") SearchUsingMap;
		%feature("autodoc", "	:param S:
	:type S: TopoDS_Shape &
	:param L:
	:type L: TDF_Label &
	:param findWithoutLoc:
	:type findWithoutLoc: bool
	:param findSubshape:
	:type findSubshape: bool
	:rtype: bool
") SearchUsingMap;
		Standard_Boolean SearchUsingMap (const TopoDS_Shape & S,TDF_Label & L,const Standard_Boolean findWithoutLoc,const Standard_Boolean findSubshape);
		%feature("compactdefaultargs") Search;
		%feature("autodoc", "	* General tool to find a --sub-- shape in the document * If findInstance is True, and S has a non-null location, first tries to find the shape among the top-level shapes with this location * If not found, and findComponent is True, tries to find the shape among the components of assemblies * If not found, tries to find the shape without location among top-level shapes * If not found and findSubshape is True, tries to find a shape as a subshape of top-level simple shapes Returns False if nothing is found

	:param S:
	:type S: TopoDS_Shape &
	:param L:
	:type L: TDF_Label &
	:param findInstance: default value is Standard_True
	:type findInstance: bool
	:param findComponent: default value is Standard_True
	:type findComponent: bool
	:param findSubshape: default value is Standard_True
	:type findSubshape: bool
	:rtype: bool
") Search;
		Standard_Boolean Search (const TopoDS_Shape & S,TDF_Label & L,const Standard_Boolean findInstance = Standard_True,const Standard_Boolean findComponent = Standard_True,const Standard_Boolean findSubshape = Standard_True);
		%feature("compactdefaultargs") FindShape;
		%feature("autodoc", "	* Returns the label corresponding to shape S --searches among top-level shapes, not including subcomponents of assemblies-- If findInstance is False --default--, searches for the non-located shape --i.e. among original shapes-- If findInstance is True, searches for the shape with the same location, including shape instances Return True if <S> is found.

	:param S:
	:type S: TopoDS_Shape &
	:param L:
	:type L: TDF_Label &
	:param findInstance: default value is Standard_False
	:type findInstance: bool
	:rtype: bool
") FindShape;
		Standard_Boolean FindShape (const TopoDS_Shape & S,TDF_Label & L,const Standard_Boolean findInstance = Standard_False);
		%feature("compactdefaultargs") FindShape;
		%feature("autodoc", "	* Does the same as previous method Returns Null label if not found

	:param S:
	:type S: TopoDS_Shape &
	:param findInstance: default value is Standard_False
	:type findInstance: bool
	:rtype: TDF_Label
") FindShape;
		TDF_Label FindShape (const TopoDS_Shape & S,const Standard_Boolean findInstance = Standard_False);
		%feature("compactdefaultargs") GetShape;
		%feature("autodoc", "	* To get TopoDS_Shape from shape's label For component, returns new shape with correct location Returns False if label does not contain shape

	:param L:
	:type L: TDF_Label &
	:param S:
	:type S: TopoDS_Shape &
	:rtype: bool
") GetShape;
		static Standard_Boolean GetShape (const TDF_Label & L,TopoDS_Shape & S);
		%feature("compactdefaultargs") GetShape;
		%feature("autodoc", "	* To get TopoDS_Shape from shape's label For component, returns new shape with correct location Returns Null shape if label does not contain shape

	:param L:
	:type L: TDF_Label &
	:rtype: TopoDS_Shape
") GetShape;
		static TopoDS_Shape GetShape (const TDF_Label & L);
		%feature("compactdefaultargs") NewShape;
		%feature("autodoc", "	* Creates new --empty-- top-level shape. Initially it holds empty TopoDS_Compound

	:rtype: TDF_Label
") NewShape;
		TDF_Label NewShape ();
		%feature("compactdefaultargs") SetShape;
		%feature("autodoc", "	* Sets representation --TopoDS_Shape-- for top-level shape.

	:param L:
	:type L: TDF_Label &
	:param S:
	:type S: TopoDS_Shape &
	:rtype: None
") SetShape;
		void SetShape (const TDF_Label & L,const TopoDS_Shape & S);
		%feature("compactdefaultargs") AddShape;
		%feature("autodoc", "	* Adds a new top-level --creates and returns a new label-- If makeAssembly is True, treats TopAbs_COMPOUND shapes as assemblies --creates assembly structure--. NOTE: <makePrepare> replace components without location in assmebly by located components to avoid some problems. If AutoNaming---- is True then automatically attaches names.

	:param S:
	:type S: TopoDS_Shape &
	:param makeAssembly: default value is Standard_True
	:type makeAssembly: bool
	:param makePrepare: default value is Standard_True
	:type makePrepare: bool
	:rtype: TDF_Label
") AddShape;
		TDF_Label AddShape (const TopoDS_Shape & S,const Standard_Boolean makeAssembly = Standard_True,const Standard_Boolean makePrepare = Standard_True);
		%feature("compactdefaultargs") RemoveShape;
		%feature("autodoc", "	* Removes shape --whole label and all its sublabels-- If removeCompletely is true, removes complete shape If removeCompletely is false, removes instance--location-- only Returns False --and does nothing-- if shape is not free or is not top-level shape

	:param L:
	:type L: TDF_Label &
	:param removeCompletely: default value is Standard_True
	:type removeCompletely: bool
	:rtype: bool
") RemoveShape;
		Standard_Boolean RemoveShape (const TDF_Label & L,const Standard_Boolean removeCompletely = Standard_True);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* set hasComponents into false

	:rtype: None
") Init;
		void Init ();
		%feature("compactdefaultargs") SetAutoNaming;
		%feature("autodoc", "	* Sets auto-naming mode to <V>. If True then for added shapes, links, assemblies and SHUO's, the TDataStd_Name attribute is automatically added. For shapes it contains a shape type --e.g. 'SOLID', 'SHELL', etc--; for links it has a form '=>[0:1:1:2]' --where a tag is a label containing a shape without a location--; for assemblies it is 'ASSEMBLY', and 'SHUO' for SHUO's. This setting is global; it cannot be made a member function as it is used by static methods as well. By default, auto-naming is enabled. See also AutoNaming----.

	:param V:
	:type V: bool
	:rtype: void
") SetAutoNaming;
		static void SetAutoNaming (const Standard_Boolean V);
		%feature("compactdefaultargs") AutoNaming;
		%feature("autodoc", "	* Returns current auto-naming mode. See SetAutoNaming---- for description.

	:rtype: bool
") AutoNaming;
		static Standard_Boolean AutoNaming ();
		%feature("compactdefaultargs") ComputeShapes;
		%feature("autodoc", "	* recursive

	:param L:
	:type L: TDF_Label &
	:rtype: None
") ComputeShapes;
		void ComputeShapes (const TDF_Label & L);
		%feature("compactdefaultargs") ComputeSimpleShapes;
		%feature("autodoc", "	* Compute a sequence of simple shapes

	:rtype: None
") ComputeSimpleShapes;
		void ComputeSimpleShapes ();
		%feature("compactdefaultargs") GetShapes;
		%feature("autodoc", "	* Returns a sequence of all top-level shapes

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: None
") GetShapes;
		void GetShapes (TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") GetFreeShapes;
		%feature("autodoc", "	* Returns a sequence of all top-level shapes which are free --i.e. not referred by any other--

	:param FreeLabels:
	:type FreeLabels: TDF_LabelSequence &
	:rtype: None
") GetFreeShapes;
		void GetFreeShapes (TDF_LabelSequence & FreeLabels);
		%feature("compactdefaultargs") GetUsers;
		%feature("autodoc", "	* Returns list of labels which refer shape L as component Returns number of users --0 if shape is free--

	:param L:
	:type L: TDF_Label &
	:param Labels:
	:type Labels: TDF_LabelSequence &
	:param getsubchilds: default value is Standard_False
	:type getsubchilds: bool
	:rtype: int
") GetUsers;
		static Standard_Integer GetUsers (const TDF_Label & L,TDF_LabelSequence & Labels,const Standard_Boolean getsubchilds = Standard_False);
		%feature("compactdefaultargs") GetLocation;
		%feature("autodoc", "	* Returns location of instance

	:param L:
	:type L: TDF_Label &
	:rtype: TopLoc_Location
") GetLocation;
		static TopLoc_Location GetLocation (const TDF_Label & L);
		%feature("compactdefaultargs") GetReferredShape;
		%feature("autodoc", "	* Returns label which corresponds to a shape referred by L Returns False if label is not reference

	:param L:
	:type L: TDF_Label &
	:param Label:
	:type Label: TDF_Label &
	:rtype: bool
") GetReferredShape;
		static Standard_Boolean GetReferredShape (const TDF_Label & L,TDF_Label & Label);
		%feature("compactdefaultargs") NbComponents;
		%feature("autodoc", "	* Returns number of Assembles components

	:param L:
	:type L: TDF_Label &
	:param getsubchilds: default value is Standard_False
	:type getsubchilds: bool
	:rtype: int
") NbComponents;
		static Standard_Integer NbComponents (const TDF_Label & L,const Standard_Boolean getsubchilds = Standard_False);
		%feature("compactdefaultargs") GetComponents;
		%feature("autodoc", "	* Returns list of components of assembly Returns False if label is not assembly

	:param L:
	:type L: TDF_Label &
	:param Labels:
	:type Labels: TDF_LabelSequence &
	:param getsubchilds: default value is Standard_False
	:type getsubchilds: bool
	:rtype: bool
") GetComponents;
		static Standard_Boolean GetComponents (const TDF_Label & L,TDF_LabelSequence & Labels,const Standard_Boolean getsubchilds = Standard_False);
		%feature("compactdefaultargs") AddComponent;
		%feature("autodoc", "	* Adds a component given by its label and location to the assembly Note: assembly must be IsAssembly---- or IsSimpleShape----

	:param assembly:
	:type assembly: TDF_Label &
	:param comp:
	:type comp: TDF_Label &
	:param Loc:
	:type Loc: TopLoc_Location &
	:rtype: TDF_Label
") AddComponent;
		TDF_Label AddComponent (const TDF_Label & assembly,const TDF_Label & comp,const TopLoc_Location & Loc);
		%feature("compactdefaultargs") AddComponent;
		%feature("autodoc", "	* Adds a shape --located-- as a component to the assembly If necessary, creates an additional top-level shape for component and return the Label of component. If expand is True and component is Compound, it will be created as assembly also Note: assembly must be IsAssembly---- or IsSimpleShape----

	:param assembly:
	:type assembly: TDF_Label &
	:param comp:
	:type comp: TopoDS_Shape &
	:param expand: default value is Standard_False
	:type expand: bool
	:rtype: TDF_Label
") AddComponent;
		TDF_Label AddComponent (const TDF_Label & assembly,const TopoDS_Shape & comp,const Standard_Boolean expand = Standard_False);
		%feature("compactdefaultargs") RemoveComponent;
		%feature("autodoc", "	* Removes a component from its assembly

	:param comp:
	:type comp: TDF_Label &
	:rtype: None
") RemoveComponent;
		void RemoveComponent (const TDF_Label & comp);
		%feature("compactdefaultargs") UpdateAssemblies;
		%feature("autodoc", "	* Top-down update for all assembly compounds stored in the document.

	:rtype: None
") UpdateAssemblies;
		void UpdateAssemblies ();
		%feature("compactdefaultargs") FindSubShape;
		%feature("autodoc", "	* Finds a label for subshape <sub> of shape stored on label shapeL Returns Null label if it is not found

	:param shapeL:
	:type shapeL: TDF_Label &
	:param sub:
	:type sub: TopoDS_Shape &
	:param L:
	:type L: TDF_Label &
	:rtype: bool
") FindSubShape;
		Standard_Boolean FindSubShape (const TDF_Label & shapeL,const TopoDS_Shape & sub,TDF_Label & L);
		%feature("compactdefaultargs") AddSubShape;
		%feature("autodoc", "	* Adds a label for subshape <sub> of shape stored on label shapeL Returns Null label if it is not subshape

	:param shapeL:
	:type shapeL: TDF_Label &
	:param sub:
	:type sub: TopoDS_Shape &
	:rtype: TDF_Label
") AddSubShape;
		TDF_Label AddSubShape (const TDF_Label & shapeL,const TopoDS_Shape & sub);
		%feature("compactdefaultargs") FindMainShapeUsingMap;
		%feature("autodoc", "	:param sub:
	:type sub: TopoDS_Shape &
	:rtype: TDF_Label
") FindMainShapeUsingMap;
		TDF_Label FindMainShapeUsingMap (const TopoDS_Shape & sub);
		%feature("compactdefaultargs") FindMainShape;
		%feature("autodoc", "	* Performs a search among top-level shapes to find the shape containing <sub> as subshape Checks only simple shapes, and returns the first found label --which should be the only one for valid model--

	:param sub:
	:type sub: TopoDS_Shape &
	:rtype: TDF_Label
") FindMainShape;
		TDF_Label FindMainShape (const TopoDS_Shape & sub);
		%feature("compactdefaultargs") GetSubShapes;
		%feature("autodoc", "	* Returns list of labels identifying subshapes of the given shape Returns False if no subshapes are placed on that label

	:param L:
	:type L: TDF_Label &
	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: bool
") GetSubShapes;
		static Standard_Boolean GetSubShapes (const TDF_Label & L,TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* returns the label under which shapes are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param theDumpLog:
	:type theDumpLog: Standard_OStream &
	:param deep:
	:type deep: bool
	:rtype: Standard_OStream
") Dump;
		Standard_OStream & Dump (Standard_OStream & theDumpLog,const Standard_Boolean deep);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        		%feature("compactdefaultargs") DumpShape;
		%feature("autodoc", "	* Print to ostream <theDumpLog> type of shape found on <L> label and the entry of <L>, with <level> tabs before. If <deep>, print also TShape and Location addresses

	:param theDumpLog:
	:type theDumpLog: Standard_OStream &
	:param L:
	:type L: TDF_Label &
	:param level: default value is 0
	:type level: int
	:param deep: default value is Standard_False
	:type deep: bool
	:rtype: void
") DumpShape;
		static void DumpShape (Standard_OStream & theDumpLog,const TDF_Label & L,const Standard_Integer level = 0,const Standard_Boolean deep = Standard_False);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
		%feature("compactdefaultargs") IsExternRef;
		%feature("autodoc", "	* Returns True if the label is a label of external references, i.e. there are some reference on the no-step files, which are described in document only their names

	:param L:
	:type L: TDF_Label &
	:rtype: bool
") IsExternRef;
		static Standard_Boolean IsExternRef (const TDF_Label & L);
		%feature("compactdefaultargs") SetExternRefs;
		%feature("autodoc", "	* Sets the names of references on the no-step files

	:param SHAS:
	:type SHAS: TColStd_SequenceOfHAsciiString &
	:rtype: TDF_Label
") SetExternRefs;
		TDF_Label SetExternRefs (const TColStd_SequenceOfHAsciiString & SHAS);
		%feature("compactdefaultargs") SetExternRefs;
		%feature("autodoc", "	* Sets the names of references on the no-step files

	:param L:
	:type L: TDF_Label &
	:param SHAS:
	:type SHAS: TColStd_SequenceOfHAsciiString &
	:rtype: None
") SetExternRefs;
		void SetExternRefs (const TDF_Label & L,const TColStd_SequenceOfHAsciiString & SHAS);
		%feature("compactdefaultargs") GetExternRefs;
		%feature("autodoc", "	* Gets the names of references on the no-step files

	:param L:
	:type L: TDF_Label &
	:param SHAS:
	:type SHAS: TColStd_SequenceOfHAsciiString &
	:rtype: void
") GetExternRefs;
		static void GetExternRefs (const TDF_Label & L,TColStd_SequenceOfHAsciiString & SHAS);
		%feature("compactdefaultargs") SetSHUO;
		%feature("autodoc", "	* Sets the SHUO structure between upper_usage and next_usage create multy-level --if number of labels > 2-- SHUO from first to last Initialise out <MainSHUOAttr> by main upper_usage SHUO attribute. Returns False if some of labels in not component label

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:param MainSHUOAttr:
	:type MainSHUOAttr: Handle_XCAFDoc_GraphNode &
	:rtype: bool
") SetSHUO;
		Standard_Boolean SetSHUO (const TDF_LabelSequence & Labels,Handle_XCAFDoc_GraphNode & MainSHUOAttr);
		%feature("compactdefaultargs") GetSHUO;
		%feature("autodoc", "	* Returns founded SHUO GraphNode attribute <aSHUOAttr> Returns false in other case

	:param SHUOLabel:
	:type SHUOLabel: TDF_Label &
	:param aSHUOAttr:
	:type aSHUOAttr: Handle_XCAFDoc_GraphNode &
	:rtype: bool
") GetSHUO;
		static Standard_Boolean GetSHUO (const TDF_Label & SHUOLabel,Handle_XCAFDoc_GraphNode & aSHUOAttr);
		%feature("compactdefaultargs") GetAllComponentSHUO;
		%feature("autodoc", "	* Returns founded SHUO GraphNodes of indicated component Returns false in other case

	:param CompLabel:
	:type CompLabel: TDF_Label &
	:param SHUOAttrs:
	:type SHUOAttrs: TDF_AttributeSequence &
	:rtype: bool
") GetAllComponentSHUO;
		static Standard_Boolean GetAllComponentSHUO (const TDF_Label & CompLabel,TDF_AttributeSequence & SHUOAttrs);
		%feature("compactdefaultargs") GetSHUOUpperUsage;
		%feature("autodoc", "	* Returns the sequence of labels of SHUO attributes, which is upper_usage for this next_usage SHUO attribute --that indicated by label-- NOTE: returns upper_usages only on one level --not recurse-- NOTE: do not clear the sequence before filling

	:param NextUsageL:
	:type NextUsageL: TDF_Label &
	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: bool
") GetSHUOUpperUsage;
		static Standard_Boolean GetSHUOUpperUsage (const TDF_Label & NextUsageL,TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") GetSHUONextUsage;
		%feature("autodoc", "	* Returns the sequence of labels of SHUO attributes, which is next_usage for this upper_usage SHUO attribute --that indicated by label-- NOTE: returns next_usages only on one level --not recurse-- NOTE: do not clear the sequence before filling

	:param UpperUsageL:
	:type UpperUsageL: TDF_Label &
	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: bool
") GetSHUONextUsage;
		static Standard_Boolean GetSHUONextUsage (const TDF_Label & UpperUsageL,TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") RemoveSHUO;
		%feature("autodoc", "	* Remove SHUO from component sublabel, remove all dependencies on other SHUO. Returns False if cannot remove SHUO dependencies. NOTE: remove any styles that associated with this SHUO.

	:param SHUOLabel:
	:type SHUOLabel: TDF_Label &
	:rtype: bool
") RemoveSHUO;
		Standard_Boolean RemoveSHUO (const TDF_Label & SHUOLabel);
		%feature("compactdefaultargs") FindComponent;
		%feature("autodoc", "	* Serach the path of labels in the document, that corresponds the component from any assembly Try to search the sequence of labels with location that produce this shape as component of any assembly NOTE: Clear sequence of labels before filling

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param Labels:
	:type Labels: TDF_LabelSequence &
	:rtype: bool
") FindComponent;
		Standard_Boolean FindComponent (const TopoDS_Shape & theShape,TDF_LabelSequence & Labels);
		%feature("compactdefaultargs") GetSHUOInstance;
		%feature("autodoc", "	* Search for the component shape that styled by shuo Returns null shape if no any shape is found.

	:param theSHUO:
	:type theSHUO: Handle_XCAFDoc_GraphNode &
	:rtype: TopoDS_Shape
") GetSHUOInstance;
		TopoDS_Shape GetSHUOInstance (const Handle_XCAFDoc_GraphNode & theSHUO);
		%feature("compactdefaultargs") SetInstanceSHUO;
		%feature("autodoc", "	* Search for the component shape by labelks path and set SHUO structure for founded label structure Returns null attribute if no component in any assembly found.

	:param theShape:
	:type theShape: TopoDS_Shape &
	:rtype: Handle_XCAFDoc_GraphNode
") SetInstanceSHUO;
		Handle_XCAFDoc_GraphNode SetInstanceSHUO (const TopoDS_Shape & theShape);
		%feature("compactdefaultargs") GetAllSHUOInstances;
		%feature("autodoc", "	* Seaching for component shapes that styled by shuo Returns empty sequence of shape if no any shape is found.

	:param theSHUO:
	:type theSHUO: Handle_XCAFDoc_GraphNode &
	:param theSHUOShapeSeq:
	:type theSHUOShapeSeq: TopTools_SequenceOfShape &
	:rtype: bool
") GetAllSHUOInstances;
		Standard_Boolean GetAllSHUOInstances (const Handle_XCAFDoc_GraphNode & theSHUO,TopTools_SequenceOfShape & theSHUOShapeSeq);
		%feature("compactdefaultargs") FindSHUO;
		%feature("autodoc", "	* Searchs the SHUO by labels of components from upper_usage componet to next_usage Returns null attribute if no SHUO found

	:param Labels:
	:type Labels: TDF_LabelSequence &
	:param theSHUOAttr:
	:type theSHUOAttr: Handle_XCAFDoc_GraphNode &
	:rtype: bool
") FindSHUO;
		static Standard_Boolean FindSHUO (const TDF_LabelSequence & Labels,Handle_XCAFDoc_GraphNode & theSHUOAttr);
		%feature("compactdefaultargs") Expand;
		%feature("autodoc", "	* Convert Shape --compound-- to assembly

	:param Shape:
	:type Shape: TDF_Label &
	:rtype: bool
") Expand;
		Standard_Boolean Expand (const TDF_Label & Shape);
		%feature("compactdefaultargs") makeSubShape;
		%feature("autodoc", "	* Make subshape for Part from Shape

	:param Part:
	:type Part: TDF_Label &
	:param Shape:
	:type Shape: TopoDS_Shape &
	:rtype: None
") makeSubShape;
		void makeSubShape (const TDF_Label & Part,const TopoDS_Shape & Shape);
};


%extend XCAFDoc_ShapeTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_ShapeTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_ShapeTool::Handle_XCAFDoc_ShapeTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_ShapeTool;
class Handle_XCAFDoc_ShapeTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_ShapeTool();
        Handle_XCAFDoc_ShapeTool(const Handle_XCAFDoc_ShapeTool &aHandle);
        Handle_XCAFDoc_ShapeTool(const XCAFDoc_ShapeTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_ShapeTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_ShapeTool {
    XCAFDoc_ShapeTool* _get_reference() {
    return (XCAFDoc_ShapeTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_ShapeTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_ShapeTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_View;
class XCAFDoc_View : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_View;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_View;
		 XCAFDoc_View ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_View
") Set;
		static Handle_XCAFDoc_View Set (const TDF_Label & theLabel);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "	:param theViewObject:
	:type theViewObject: Handle_XCAFView_Object &
	:rtype: None
") SetObject;
		void SetObject (const Handle_XCAFView_Object & theViewObject);
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "	:rtype: Handle_XCAFView_Object
") GetObject;
		Handle_XCAFView_Object GetObject ();
};


%extend XCAFDoc_View {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_View(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_View::Handle_XCAFDoc_View %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_View;
class Handle_XCAFDoc_View : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_View();
        Handle_XCAFDoc_View(const Handle_XCAFDoc_View &aHandle);
        Handle_XCAFDoc_View(const XCAFDoc_View *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_View DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_View {
    XCAFDoc_View* _get_reference() {
    return (XCAFDoc_View*)$self->get();
    }
};

%extend Handle_XCAFDoc_View {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_View {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_ViewTool;
class XCAFDoc_ViewTool : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_ViewTool;
		%feature("autodoc", "	:rtype: None
") XCAFDoc_ViewTool;
		 XCAFDoc_ViewTool ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Creates --if not exist-- ViewTool.

	:param L:
	:type L: TDF_Label &
	:rtype: Handle_XCAFDoc_ViewTool
") Set;
		static Handle_XCAFDoc_ViewTool Set (const TDF_Label & L);
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "	* Returns the label under which Views are stored

	:rtype: TDF_Label
") BaseLabel;
		TDF_Label BaseLabel ();
		%feature("compactdefaultargs") IsView;
		%feature("autodoc", "	* Returns True if label belongs to a View table and is a View definition

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: bool
") IsView;
		Standard_Boolean IsView (const TDF_Label & theLabel);
		%feature("compactdefaultargs") GetViewLabels;
		%feature("autodoc", "	* Returns a sequence of View labels currently stored in the View table

	:param theLabels:
	:type theLabels: TDF_LabelSequence &
	:rtype: None
") GetViewLabels;
		void GetViewLabels (TDF_LabelSequence & theLabels);
		%feature("compactdefaultargs") SetView;
		%feature("autodoc", "	* Sets a link with GUID

	:param theShapes:
	:type theShapes: TDF_LabelSequence &
	:param theGDTs:
	:type theGDTs: TDF_LabelSequence &
	:param theClippingPlanes:
	:type theClippingPlanes: TDF_LabelSequence &
	:param theNotes:
	:type theNotes: TDF_LabelSequence &
	:param theAnnotations:
	:type theAnnotations: TDF_LabelSequence &
	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") SetView;
		void SetView (const TDF_LabelSequence & theShapes,const TDF_LabelSequence & theGDTs,const TDF_LabelSequence & theClippingPlanes,const TDF_LabelSequence & theNotes,const TDF_LabelSequence & theAnnotations,const TDF_Label & theViewL);
		%feature("compactdefaultargs") SetView;
		%feature("autodoc", "	* Sets a link with GUID

	:param theShapes:
	:type theShapes: TDF_LabelSequence &
	:param theGDTs:
	:type theGDTs: TDF_LabelSequence &
	:param theClippingPlanes:
	:type theClippingPlanes: TDF_LabelSequence &
	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") SetView;
		void SetView (const TDF_LabelSequence & theShapes,const TDF_LabelSequence & theGDTs,const TDF_LabelSequence & theClippingPlanes,const TDF_Label & theViewL);
		%feature("compactdefaultargs") SetView;
		%feature("autodoc", "	* Sets a link with GUID

	:param theShapes:
	:type theShapes: TDF_LabelSequence &
	:param theGDTs:
	:type theGDTs: TDF_LabelSequence &
	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") SetView;
		void SetView (const TDF_LabelSequence & theShapes,const TDF_LabelSequence & theGDTs,const TDF_Label & theViewL);
		%feature("compactdefaultargs") SetClippingPlanes;
		%feature("autodoc", "	* Set Clipping planes to given View

	:param theClippingPlaneLabels:
	:type theClippingPlaneLabels: TDF_LabelSequence &
	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") SetClippingPlanes;
		void SetClippingPlanes (const TDF_LabelSequence & theClippingPlaneLabels,const TDF_Label & theViewL);
		%feature("compactdefaultargs") RemoveView;
		%feature("autodoc", "	* Remove View

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") RemoveView;
		void RemoveView (const TDF_Label & theViewL);
		%feature("compactdefaultargs") GetViewLabelsForShape;
		%feature("autodoc", "	* Returns all View labels defined for label ShapeL

	:param theShapeL:
	:type theShapeL: TDF_Label &
	:param theViews:
	:type theViews: TDF_LabelSequence &
	:rtype: bool
") GetViewLabelsForShape;
		Standard_Boolean GetViewLabelsForShape (const TDF_Label & theShapeL,TDF_LabelSequence & theViews);
		%feature("compactdefaultargs") GetViewLabelsForGDT;
		%feature("autodoc", "	* Returns all View labels defined for label GDTL

	:param theGDTL:
	:type theGDTL: TDF_Label &
	:param theViews:
	:type theViews: TDF_LabelSequence &
	:rtype: bool
") GetViewLabelsForGDT;
		Standard_Boolean GetViewLabelsForGDT (const TDF_Label & theGDTL,TDF_LabelSequence & theViews);
		%feature("compactdefaultargs") GetViewLabelsForClippingPlane;
		%feature("autodoc", "	* Returns all View labels defined for label ClippingPlaneL

	:param theClippingPlaneL:
	:type theClippingPlaneL: TDF_Label &
	:param theViews:
	:type theViews: TDF_LabelSequence &
	:rtype: bool
") GetViewLabelsForClippingPlane;
		Standard_Boolean GetViewLabelsForClippingPlane (const TDF_Label & theClippingPlaneL,TDF_LabelSequence & theViews);
		%feature("compactdefaultargs") GetViewLabelsForNote;
		%feature("autodoc", "	* Returns all View labels defined for label NoteL

	:param theNoteL:
	:type theNoteL: TDF_Label &
	:param theViews:
	:type theViews: TDF_LabelSequence &
	:rtype: bool
") GetViewLabelsForNote;
		Standard_Boolean GetViewLabelsForNote (const TDF_Label & theNoteL,TDF_LabelSequence & theViews);
		%feature("compactdefaultargs") GetViewLabelsForAnnotation;
		%feature("autodoc", "	* Returns all View labels defined for label AnnotationL

	:param theAnnotationL:
	:type theAnnotationL: TDF_Label &
	:param theViews:
	:type theViews: TDF_LabelSequence &
	:rtype: bool
") GetViewLabelsForAnnotation;
		Standard_Boolean GetViewLabelsForAnnotation (const TDF_Label & theAnnotationL,TDF_LabelSequence & theViews);
		%feature("compactdefaultargs") AddView;
		%feature("autodoc", "	* Adds a view definition to a View table and returns its label

	:rtype: TDF_Label
") AddView;
		TDF_Label AddView ();
		%feature("compactdefaultargs") GetRefShapeLabel;
		%feature("autodoc", "	* Returns shape labels defined for label theViewL Returns False if the theViewL is not in View table

	:param theViewL:
	:type theViewL: TDF_Label &
	:param theShapeLabels:
	:type theShapeLabels: TDF_LabelSequence &
	:rtype: bool
") GetRefShapeLabel;
		Standard_Boolean GetRefShapeLabel (const TDF_Label & theViewL,TDF_LabelSequence & theShapeLabels);
		%feature("compactdefaultargs") GetRefGDTLabel;
		%feature("autodoc", "	* Returns GDT labels defined for label theViewL Returns False if the theViewL is not in View table

	:param theViewL:
	:type theViewL: TDF_Label &
	:param theGDTLabels:
	:type theGDTLabels: TDF_LabelSequence &
	:rtype: bool
") GetRefGDTLabel;
		Standard_Boolean GetRefGDTLabel (const TDF_Label & theViewL,TDF_LabelSequence & theGDTLabels);
		%feature("compactdefaultargs") GetRefClippingPlaneLabel;
		%feature("autodoc", "	* Returns ClippingPlane labels defined for label theViewL Returns False if the theViewL is not in View table

	:param theViewL:
	:type theViewL: TDF_Label &
	:param theClippingPlaneLabels:
	:type theClippingPlaneLabels: TDF_LabelSequence &
	:rtype: bool
") GetRefClippingPlaneLabel;
		Standard_Boolean GetRefClippingPlaneLabel (const TDF_Label & theViewL,TDF_LabelSequence & theClippingPlaneLabels);
		%feature("compactdefaultargs") GetRefNoteLabel;
		%feature("autodoc", "	* Returns Notes labels defined for label theViewL Returns False if the theViewL is not in View table

	:param theViewL:
	:type theViewL: TDF_Label &
	:param theNoteLabels:
	:type theNoteLabels: TDF_LabelSequence &
	:rtype: bool
") GetRefNoteLabel;
		Standard_Boolean GetRefNoteLabel (const TDF_Label & theViewL,TDF_LabelSequence & theNoteLabels);
		%feature("compactdefaultargs") GetRefAnnotationLabel;
		%feature("autodoc", "	* Returns Annotation labels defined for label theViewL Returns False if the theViewL is not in View table

	:param theViewL:
	:type theViewL: TDF_Label &
	:param theAnnotationLabels:
	:type theAnnotationLabels: TDF_LabelSequence &
	:rtype: bool
") GetRefAnnotationLabel;
		Standard_Boolean GetRefAnnotationLabel (const TDF_Label & theViewL,TDF_LabelSequence & theAnnotationLabels);
		%feature("compactdefaultargs") IsLocked;
		%feature("autodoc", "	* Returns true if the given View is marked as locked

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: bool
") IsLocked;
		Standard_Boolean IsLocked (const TDF_Label & theViewL);
		%feature("compactdefaultargs") Lock;
		%feature("autodoc", "	* Mark the given View as locked

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") Lock;
		void Lock (const TDF_Label & theViewL);
		%feature("compactdefaultargs") Unlock;
		%feature("autodoc", "	* Unlock the given View

	:param theViewL:
	:type theViewL: TDF_Label &
	:rtype: None
") Unlock;
		void Unlock (const TDF_Label & theViewL);
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param with:
	:type with: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & with);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param into:
	:type into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & into,const Handle_TDF_RelocationTable & RT);
};


%extend XCAFDoc_ViewTool {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_ViewTool(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_ViewTool::Handle_XCAFDoc_ViewTool %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_ViewTool;
class Handle_XCAFDoc_ViewTool : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_ViewTool();
        Handle_XCAFDoc_ViewTool(const Handle_XCAFDoc_ViewTool &aHandle);
        Handle_XCAFDoc_ViewTool(const XCAFDoc_ViewTool *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_ViewTool DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_ViewTool {
    XCAFDoc_ViewTool* _get_reference() {
    return (XCAFDoc_ViewTool*)$self->get();
    }
};

%extend Handle_XCAFDoc_ViewTool {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_ViewTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_Volume;
class XCAFDoc_Volume : public TDF_Attribute {
	public:
		%feature("compactdefaultargs") XCAFDoc_Volume;
		%feature("autodoc", "	* class methods =============

	:rtype: None
") XCAFDoc_Volume;
		 XCAFDoc_Volume ();
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Sets a value of volume

	:param vol:
	:type vol: float
	:rtype: None
") Set;
		void Set (const Standard_Real vol);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Find, or create, an Volume attribute and set its value

	:param label:
	:type label: TDF_Label &
	:param vol:
	:type vol: float
	:rtype: Handle_XCAFDoc_Volume
") Set;
		static Handle_XCAFDoc_Volume Set (const TDF_Label & label,const Standard_Real vol);
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	:rtype: float
") Get;
		Standard_Real Get ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Returns volume as argument returns false if no such attribute at the <label>

	:param label:
	:type label: TDF_Label &
	:param vol:
	:type vol: float &
	:rtype: bool
") Get;
		static Standard_Boolean Get (const TDF_Label & label,Standard_Real &OutValue);
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param With:
	:type With: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & With);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Into:
	:type Into: Handle_TDF_Attribute &
	:param RT:
	:type RT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Into,const Handle_TDF_RelocationTable & RT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_Volume {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_Volume(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_Volume::Handle_XCAFDoc_Volume %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_Volume;
class Handle_XCAFDoc_Volume : public Handle_TDF_Attribute {

    public:
        // constructors
        Handle_XCAFDoc_Volume();
        Handle_XCAFDoc_Volume(const Handle_XCAFDoc_Volume &aHandle);
        Handle_XCAFDoc_Volume(const XCAFDoc_Volume *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_Volume DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_Volume {
    XCAFDoc_Volume* _get_reference() {
    return (XCAFDoc_Volume*)$self->get();
    }
};

%extend Handle_XCAFDoc_Volume {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_Volume {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_NoteBinData;
class XCAFDoc_NoteBinData : public XCAFDoc_Note {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Finds a binary data attribute on the given label and returns it, if it is found

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_NoteBinData
") Get;
		static Handle_XCAFDoc_NoteBinData Get (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* @name Set attribute functions. @{ Create --if not exist-- a binary note with data loaded from a binary file. \param [in] theLabel - label to add the attribute. \param [in] theUserName - the name of the user, who created the note. \param [in] theTimeStamp - creation timestamp of the note. \param [in] theTitle - file title. \param [in] theMIMEtype - MIME type of the file. \param [in] theFile - input binary file. eturn A handle to the attribute instance.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theTitle:
	:type theTitle: TCollection_ExtendedString &
	:param theMIMEtype:
	:type theMIMEtype: TCollection_AsciiString &
	:param theFile:
	:type theFile: OSD_File &
	:rtype: Handle_XCAFDoc_NoteBinData
") Set;
		static Handle_XCAFDoc_NoteBinData Set (const TDF_Label & theLabel,const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theTitle,const TCollection_AsciiString & theMIMEtype,OSD_File & theFile);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- a binary note byte data array. \param [in] theLabel - label to add the attribute. \param [in] theUserName - the name of the user, who created the note. \param [in] theTimeStamp - creation timestamp of the note. \param [in] theTitle - data title. \param [in] theMIMEtype - MIME type of data. \param [in] theData - byte data array. eturn A handle to the attribute instance.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theTitle:
	:type theTitle: TCollection_ExtendedString &
	:param theMIMEtype:
	:type theMIMEtype: TCollection_AsciiString &
	:param theData:
	:type theData: Handle_TColStd_HArray1OfByte &
	:rtype: Handle_XCAFDoc_NoteBinData
") Set;
		static Handle_XCAFDoc_NoteBinData Set (const TDF_Label & theLabel,const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theTitle,const TCollection_AsciiString & theMIMEtype,const Handle_TColStd_HArray1OfByte & theData);
		%feature("compactdefaultargs") XCAFDoc_NoteBinData;
		%feature("autodoc", "	* @} Creates an empty binary data note.

	:rtype: None
") XCAFDoc_NoteBinData;
		 XCAFDoc_NoteBinData ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* @name Set attribute data functions. @{ Sets title, MIME type and data from a binary file. \param [in] theTitle - file title. \param [in] theMIMEtype - MIME type of the file. \param [in] theFile - input binary file.

	:param theTitle:
	:type theTitle: TCollection_ExtendedString &
	:param theMIMEtype:
	:type theMIMEtype: TCollection_AsciiString &
	:param theFile:
	:type theFile: OSD_File &
	:rtype: bool
") Set;
		Standard_Boolean Set (const TCollection_ExtendedString & theTitle,const TCollection_AsciiString & theMIMEtype,OSD_File & theFile);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Sets title, MIME type and data from a byte array. \param [in] theTitle - data title. \param [in] theMIMEtype - MIME type of data. \param [in] theData - byte data array.

	:param theTitle:
	:type theTitle: TCollection_ExtendedString &
	:param theMIMEtype:
	:type theMIMEtype: TCollection_AsciiString &
	:param theData:
	:type theData: Handle_TColStd_HArray1OfByte &
	:rtype: None
") Set;
		void Set (const TCollection_ExtendedString & theTitle,const TCollection_AsciiString & theMIMEtype,const Handle_TColStd_HArray1OfByte & theData);
		%feature("compactdefaultargs") Title;
		%feature("autodoc", "	* @} Returns the note title.

	:rtype: TCollection_ExtendedString
") Title;
		const TCollection_ExtendedString & Title ();
		%feature("compactdefaultargs") MIMEtype;
		%feature("autodoc", "	* Returns data MIME type.

	:rtype: TCollection_AsciiString
") MIMEtype;
		const TCollection_AsciiString & MIMEtype ();
		%feature("compactdefaultargs") Size;
		%feature("autodoc", "	* Size of data in bytes.

	:rtype: int
") Size;
		Standard_Integer Size ();
		%feature("compactdefaultargs") Data;
		%feature("autodoc", "	* Returns byte data array.

	:rtype: Handle_TColStd_HArray1OfByte
") Data;
		Handle_TColStd_HArray1OfByte Data ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param theAttrFrom:
	:type theAttrFrom: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & theAttrFrom);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theAttrInto:
	:type theAttrInto: Handle_TDF_Attribute &
	:param theRT:
	:type theRT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theAttrInto,const Handle_TDF_RelocationTable & theRT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_NoteBinData {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_NoteBinData(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_NoteBinData::Handle_XCAFDoc_NoteBinData %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_NoteBinData;
class Handle_XCAFDoc_NoteBinData : public Handle_XCAFDoc_Note {

    public:
        // constructors
        Handle_XCAFDoc_NoteBinData();
        Handle_XCAFDoc_NoteBinData(const Handle_XCAFDoc_NoteBinData &aHandle);
        Handle_XCAFDoc_NoteBinData(const XCAFDoc_NoteBinData *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_NoteBinData DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_NoteBinData {
    XCAFDoc_NoteBinData* _get_reference() {
    return (XCAFDoc_NoteBinData*)$self->get();
    }
};

%extend Handle_XCAFDoc_NoteBinData {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_NoteBinData {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_NoteComment;
class XCAFDoc_NoteComment : public XCAFDoc_Note {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Finds a reference attribute on the given label and returns it, if it is found

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_NoteComment
") Get;
		static Handle_XCAFDoc_NoteComment Get (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- a comment note on the given label. \param [in] theLabel - note label. \param [in] theUserName - the name of the user, who created the note. \param [in] theTimeStamp - creation timestamp of the note. \param [in] theComment - comment text.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theComment:
	:type theComment: TCollection_ExtendedString &
	:rtype: Handle_XCAFDoc_NoteComment
") Set;
		static Handle_XCAFDoc_NoteComment Set (const TDF_Label & theLabel,const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theComment);
		%feature("compactdefaultargs") XCAFDoc_NoteComment;
		%feature("autodoc", "	* Creates an empty comment note.

	:rtype: None
") XCAFDoc_NoteComment;
		 XCAFDoc_NoteComment ();
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Sets the comment text.

	:param theComment:
	:type theComment: TCollection_ExtendedString &
	:rtype: None
") Set;
		void Set (const TCollection_ExtendedString & theComment);
		%feature("compactdefaultargs") Comment;
		%feature("autodoc", "	* Returns the comment text.

	:rtype: TCollection_ExtendedString
") Comment;
		const TCollection_ExtendedString & Comment ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "	:param theAttrFrom:
	:type theAttrFrom: Handle_TDF_Attribute &
	:rtype: None
") Restore;
		void Restore (const Handle_TDF_Attribute & theAttrFrom);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theAttrInto:
	:type theAttrInto: Handle_TDF_Attribute &
	:param theRT:
	:type theRT: Handle_TDF_RelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theAttrInto,const Handle_TDF_RelocationTable & theRT);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        };


%extend XCAFDoc_NoteComment {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_NoteComment(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_NoteComment::Handle_XCAFDoc_NoteComment %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_NoteComment;
class Handle_XCAFDoc_NoteComment : public Handle_XCAFDoc_Note {

    public:
        // constructors
        Handle_XCAFDoc_NoteComment();
        Handle_XCAFDoc_NoteComment(const Handle_XCAFDoc_NoteComment &aHandle);
        Handle_XCAFDoc_NoteComment(const XCAFDoc_NoteComment *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_NoteComment DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_NoteComment {
    XCAFDoc_NoteComment* _get_reference() {
    return (XCAFDoc_NoteComment*)$self->get();
    }
};

%extend Handle_XCAFDoc_NoteComment {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_NoteComment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XCAFDoc_NoteBalloon;
class XCAFDoc_NoteBalloon : public XCAFDoc_NoteComment {
	public:
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "	* Finds a reference attribute on the given label and returns it, if it is found

	:param theLabel:
	:type theLabel: TDF_Label &
	:rtype: Handle_XCAFDoc_NoteBalloon
") Get;
		static Handle_XCAFDoc_NoteBalloon Get (const TDF_Label & theLabel);
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "	* Create --if not exist-- a comment note on the given label. \param [in] theLabel - note label. \param [in] theUserName - the name of the user, who created the note. \param [in] theTimeStamp - creation timestamp of the note. \param [in] theComment - comment text.

	:param theLabel:
	:type theLabel: TDF_Label &
	:param theUserName:
	:type theUserName: TCollection_ExtendedString &
	:param theTimeStamp:
	:type theTimeStamp: TCollection_ExtendedString &
	:param theComment:
	:type theComment: TCollection_ExtendedString &
	:rtype: Handle_XCAFDoc_NoteBalloon
") Set;
		static Handle_XCAFDoc_NoteBalloon Set (const TDF_Label & theLabel,const TCollection_ExtendedString & theUserName,const TCollection_ExtendedString & theTimeStamp,const TCollection_ExtendedString & theComment);
		%feature("compactdefaultargs") XCAFDoc_NoteBalloon;
		%feature("autodoc", "	* Creates an empty comment note.

	:rtype: None
") XCAFDoc_NoteBalloon;
		 XCAFDoc_NoteBalloon ();
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "	:rtype: Standard_GUID
") ID;
		const Standard_GUID & ID ();
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
};


%extend XCAFDoc_NoteBalloon {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XCAFDoc_NoteBalloon(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XCAFDoc_NoteBalloon::Handle_XCAFDoc_NoteBalloon %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XCAFDoc_NoteBalloon;
class Handle_XCAFDoc_NoteBalloon : public Handle_XCAFDoc_NoteComment {

    public:
        // constructors
        Handle_XCAFDoc_NoteBalloon();
        Handle_XCAFDoc_NoteBalloon(const Handle_XCAFDoc_NoteBalloon &aHandle);
        Handle_XCAFDoc_NoteBalloon(const XCAFDoc_NoteBalloon *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFDoc_NoteBalloon DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XCAFDoc_NoteBalloon {
    XCAFDoc_NoteBalloon* _get_reference() {
    return (XCAFDoc_NoteBalloon*)$self->get();
    }
};

%extend Handle_XCAFDoc_NoteBalloon {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XCAFDoc_NoteBalloon {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
