[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_3 = [ `anonymous_interface_3 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _AnnotatedTextEdit = [ `AnnotatedTextEdit | `TextEdit ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CallHierarchyIncomingCall = [ `CallHierarchyIncomingCall ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CallHierarchyItem = [ `CallHierarchyItem ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CallHierarchyOutgoingCall = [ `CallHierarchyOutgoingCall ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ChangeAnnotation = [ `ChangeAnnotation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ChangeAnnotationIdentifier = string

    and _CodeAction = [ `CodeAction ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CodeActionContext = [ `CodeActionContext ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CodeActionKind = string

    and _CodeDescription = [ `CodeDescription ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CodeLens = [ `CodeLens ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Color = [ `Color ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ColorInformation = [ `ColorInformation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ColorPresentation = [ `ColorPresentation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Command = [ `Command ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CompletionItem = [ `CompletionItem ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CompletionItemKind =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       | `L_n_3 [@js 3]
       | `L_n_4 [@js 4]
       | `L_n_5 [@js 5]
       | `L_n_6 [@js 6]
       | `L_n_7 [@js 7]
       | `L_n_8 [@js 8]
       | `L_n_9 [@js 9]
       | `L_n_10 [@js 10]
       | `L_n_11 [@js 11]
       | `L_n_12 [@js 12]
       | `L_n_13 [@js 13]
       | `L_n_14 [@js 14]
       | `L_n_15 [@js 15]
       | `L_n_16 [@js 16]
       | `L_n_17 [@js 17]
       | `L_n_18 [@js 18]
       | `L_n_19 [@js 19]
       | `L_n_20 [@js 20]
       | `L_n_21 [@js 21]
       | `L_n_22 [@js 22]
       | `L_n_23 [@js 23]
       | `L_n_24 [@js 24]
       | `L_n_25 [@js 25]
       ]
      [@js.enum])

    and _CompletionItemLabelDetails = [ `CompletionItemLabelDetails ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CompletionItemTag = ([ `L_n_1 [@js 1] ][@js.enum])

    and _CompletionList = [ `CompletionList ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CreateFile = [ `CreateFile | `ResourceOperation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CreateFileOptions = [ `CreateFileOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Declaration = (_Location, _Location) or_array

    and _DeclarationLink = _LocationLink

    and _Definition = (_Location, _Location) or_array

    and _DefinitionLink = _LocationLink

    and _DeleteFile = [ `DeleteFile | `ResourceOperation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DeleteFileOptions = [ `DeleteFileOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Diagnostic = [ `Diagnostic ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticRelatedInformation = [ `DiagnosticRelatedInformation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticSeverity =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       | `L_n_3 [@js 3]
       | `L_n_4 [@js 4]
       ]
      [@js.enum])

    and _DiagnosticTag =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       ]
      [@js.enum])

    and _DocumentHighlight = [ `DocumentHighlight ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentHighlightKind =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       | `L_n_3 [@js 3]
       ]
      [@js.enum])

    and _DocumentLink = [ `DocumentLink ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentSymbol = [ `DocumentSymbol ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentUri = string

    and _FoldingRange = [ `FoldingRange ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FoldingRangeKind =
      ([ `Comment [@js "comment"]
       | `Imports [@js "imports"]
       | `Region [@js "region"]
       ]
      [@js.enum])

    and _FoldingRangeKind_Comment = ([ `Comment [@js "comment"] ][@js.enum])

    and _FoldingRangeKind_Imports = ([ `Imports [@js "imports"] ][@js.enum])

    and _FoldingRangeKind_Region = ([ `Region [@js "region"] ][@js.enum])

    and _FormattingOptions = [ `FormattingOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Hover = [ `Hover ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _InsertReplaceEdit = [ `InsertReplaceEdit ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _InsertTextFormat =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       ]
      [@js.enum])

    and _InsertTextMode =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       ]
      [@js.enum])

    and _Location = [ `Location ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LocationLink = [ `LocationLink ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MarkedString = anonymous_interface_0 or_string

    and _MarkupContent = [ `MarkupContent ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MarkupKind =
      ([ `L_s19_markdown [@js "markdown"]
       | `L_s27_plaintext [@js "plaintext"]
       ]
      [@js.enum])

    and _OptionalVersionedTextDocumentIdentifier =
      [ `OptionalVersionedTextDocumentIdentifier | `TextDocumentIdentifier ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ParameterInformation = [ `ParameterInformation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Position = [ `Position ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Range = [ `Range ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ReferenceContext = [ `ReferenceContext ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _RenameFile = [ `RenameFile | `ResourceOperation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _RenameFileOptions = [ `RenameFileOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ResourceOperation = [ `ResourceOperation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SelectionRange = [ `SelectionRange ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokenModifiers =
      ([ `declaration [@js "declaration"]
       | `definition [@js "definition"]
       | `readonly [@js "readonly"]
       | `static [@js "static"]
       | `deprecated [@js "deprecated"]
       | `abstract [@js "abstract"]
       | `async [@js "async"]
       | `modification [@js "modification"]
       | `documentation [@js "documentation"]
       | `defaultLibrary [@js "defaultLibrary"]
       ]
      [@js.enum])

    and _SemanticTokenModifiers_declaration =
      ([ `declaration [@js "declaration"] ][@js.enum])

    and _SemanticTokenModifiers_definition =
      ([ `definition [@js "definition"] ][@js.enum])

    and _SemanticTokenModifiers_readonly =
      ([ `readonly [@js "readonly"] ][@js.enum])

    and _SemanticTokenModifiers_static = ([ `static [@js "static"] ][@js.enum])

    and _SemanticTokenModifiers_deprecated =
      ([ `deprecated [@js "deprecated"] ][@js.enum])

    and _SemanticTokenModifiers_abstract =
      ([ `abstract [@js "abstract"] ][@js.enum])

    and _SemanticTokenModifiers_async = ([ `async [@js "async"] ][@js.enum])

    and _SemanticTokenModifiers_modification =
      ([ `modification [@js "modification"] ][@js.enum])

    and _SemanticTokenModifiers_documentation =
      ([ `documentation [@js "documentation"] ][@js.enum])

    and _SemanticTokenModifiers_defaultLibrary =
      ([ `defaultLibrary [@js "defaultLibrary"] ][@js.enum])

    and _SemanticTokenTypes =
      ([ `namespace [@js "namespace"]
       | `type_ [@js "type"]
       | `class_ [@js "class"]
       | `enum [@js "enum"]
       | `interface [@js "interface"]
       | `struct_ [@js "struct"]
       | `typeParameter [@js "typeParameter"]
       | `parameter [@js "parameter"]
       | `variable [@js "variable"]
       | `property [@js "property"]
       | `enumMember [@js "enumMember"]
       | `event [@js "event"]
       | `function_ [@js "function"]
       | `method_ [@js "method"]
       | `macro [@js "macro"]
       | `keyword [@js "keyword"]
       | `modifier [@js "modifier"]
       | `comment [@js "comment"]
       | `string [@js "string"]
       | `number [@js "number"]
       | `regexp [@js "regexp"]
       | `operator [@js "operator"]
       ]
      [@js.enum])

    and _SemanticTokenTypes_namespace =
      ([ `namespace [@js "namespace"] ][@js.enum])

    and _SemanticTokenTypes_type = ([ `type_ [@js "type"] ][@js.enum])

    and _SemanticTokenTypes_class = ([ `class_ [@js "class"] ][@js.enum])

    and _SemanticTokenTypes_enum = ([ `enum [@js "enum"] ][@js.enum])

    and _SemanticTokenTypes_interface =
      ([ `interface [@js "interface"] ][@js.enum])

    and _SemanticTokenTypes_struct = ([ `struct_ [@js "struct"] ][@js.enum])

    and _SemanticTokenTypes_typeParameter =
      ([ `typeParameter [@js "typeParameter"] ][@js.enum])

    and _SemanticTokenTypes_parameter =
      ([ `parameter [@js "parameter"] ][@js.enum])

    and _SemanticTokenTypes_variable =
      ([ `variable [@js "variable"] ][@js.enum])

    and _SemanticTokenTypes_property =
      ([ `property [@js "property"] ][@js.enum])

    and _SemanticTokenTypes_enumMember =
      ([ `enumMember [@js "enumMember"] ][@js.enum])

    and _SemanticTokenTypes_event = ([ `event [@js "event"] ][@js.enum])

    and _SemanticTokenTypes_function =
      ([ `function_ [@js "function"] ][@js.enum])

    and _SemanticTokenTypes_method = ([ `method_ [@js "method"] ][@js.enum])

    and _SemanticTokenTypes_macro = ([ `macro [@js "macro"] ][@js.enum])

    and _SemanticTokenTypes_keyword = ([ `keyword [@js "keyword"] ][@js.enum])

    and _SemanticTokenTypes_modifier =
      ([ `modifier [@js "modifier"] ][@js.enum])

    and _SemanticTokenTypes_comment = ([ `comment [@js "comment"] ][@js.enum])

    and _SemanticTokenTypes_string = ([ `string [@js "string"] ][@js.enum])

    and _SemanticTokenTypes_number = ([ `number [@js "number"] ][@js.enum])

    and _SemanticTokenTypes_regexp = ([ `regexp [@js "regexp"] ][@js.enum])

    and _SemanticTokenTypes_operator =
      ([ `operator [@js "operator"] ][@js.enum])

    and _SemanticTokens = [ `SemanticTokens ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokensDelta = [ `SemanticTokensDelta ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokensEdit = [ `SemanticTokensEdit ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokensLegend = [ `SemanticTokensLegend ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SignatureHelp = [ `SignatureHelp ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SignatureInformation = [ `SignatureInformation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SymbolInformation = [ `SymbolInformation ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SymbolKind =
      ([ `L_n_1 [@js 1]
       | `L_n_2 [@js 2]
       | `L_n_3 [@js 3]
       | `L_n_4 [@js 4]
       | `L_n_5 [@js 5]
       | `L_n_6 [@js 6]
       | `L_n_7 [@js 7]
       | `L_n_8 [@js 8]
       | `L_n_9 [@js 9]
       | `L_n_10 [@js 10]
       | `L_n_11 [@js 11]
       | `L_n_12 [@js 12]
       | `L_n_13 [@js 13]
       | `L_n_14 [@js 14]
       | `L_n_15 [@js 15]
       | `L_n_16 [@js 16]
       | `L_n_17 [@js 17]
       | `L_n_18 [@js 18]
       | `L_n_19 [@js 19]
       | `L_n_20 [@js 20]
       | `L_n_21 [@js 21]
       | `L_n_22 [@js 22]
       | `L_n_23 [@js 23]
       | `L_n_24 [@js 24]
       | `L_n_25 [@js 25]
       | `L_n_26 [@js 26]
       ]
      [@js.enum])

    and _SymbolTag = ([ `L_n_1 [@js 1] ][@js.enum])

    and _TextDocument = [ `TextDocument ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TextDocumentEdit = [ `TextDocumentEdit ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TextDocumentIdentifier = [ `TextDocumentIdentifier ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TextDocumentItem = [ `TextDocumentItem ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TextEdit = [ `TextEdit ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TextEditChange = [ `TextEditChange ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _URI = string

    and _VersionedTextDocumentIdentifier =
      [ `VersionedTextDocumentIdentifier | `TextDocumentIdentifier ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceChange = [ `WorkspaceChange ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceEdit = [ `WorkspaceEdit ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and decimal = float

    and integer = float

    and uinteger = float
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_language : t -> string [@@js.get "language"]

  val set_language : t -> string -> unit [@@js.set "language"]

  val get_value : t -> string [@@js.get "value"]

  val set_value : t -> string -> unit [@@js.set "value"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_reason : t -> string [@@js.get "reason"]

  val set_reason : t -> string -> unit [@@js.set "reason"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> _ChangeAnnotation [@@js.index_get]

  val set : t -> string -> _ChangeAnnotation -> unit [@@js.index_set]
end

module AnonymousInterface3 : sig
  type t = anonymous_interface_3

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> _TextEdit list [@@js.index_get]

  val set : t -> string -> _TextEdit list -> unit [@@js.index_set]
end

module DocumentUri : sig
  type t = _DocumentUri

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module URI : sig
  type t = _URI

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Integer : sig
  type t = integer

  val t_to_js : t -> Ojs.t

  val mIN_VALUE : (* FIXME: unknown type *) any [@@js.global "MIN_VALUE"]

  val mAX_VALUE : float [@@js.global "MAX_VALUE"]
end
[@@js.scope "integer"]

module Uinteger : sig
  type t = uinteger

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val mIN_VALUE : float [@@js.global "MIN_VALUE"]

  val mAX_VALUE : float [@@js.global "MAX_VALUE"]
end
[@@js.scope "uinteger"]

module Decimal : sig
  type t = decimal

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Position : sig
  type t = _Position

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_line : t -> uinteger [@@js.get "line"]

  val set_line : t -> uinteger -> unit [@@js.set "line"]

  val get_character : t -> uinteger [@@js.get "character"]

  val set_character : t -> uinteger -> unit [@@js.set "character"]

  val create_ : line:uinteger -> character:uinteger -> _Position
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Position"]

module Range : sig
  type t = _Range

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_start : t -> _Position [@@js.get "start"]

  val set_start : t -> _Position -> unit [@@js.set "start"]

  val get_end : t -> _Position [@@js.get "end"]

  val set_end : t -> _Position -> unit [@@js.set "end"]

  val create_ : start:_Position -> end_:_Position -> _Range
    [@@js.global "create"]

  val create_
    :  startLine:uinteger
    -> startCharacter:uinteger
    -> endLine:uinteger
    -> endCharacter:uinteger
    -> _Range
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Range"]

module Location : sig
  type t = _Location

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val set_uri : t -> _DocumentUri -> unit [@@js.set "uri"]

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val create_ : uri:_DocumentUri -> range:_Range -> _Location
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Location"]

module LocationLink : sig
  type t = _LocationLink

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_originSelectionRange : t -> _Range [@@js.get "originSelectionRange"]

  val set_originSelectionRange : t -> _Range -> unit
    [@@js.set "originSelectionRange"]

  val get_targetUri : t -> _DocumentUri [@@js.get "targetUri"]

  val set_targetUri : t -> _DocumentUri -> unit [@@js.set "targetUri"]

  val get_targetRange : t -> _Range [@@js.get "targetRange"]

  val set_targetRange : t -> _Range -> unit [@@js.set "targetRange"]

  val get_targetSelectionRange : t -> _Range [@@js.get "targetSelectionRange"]

  val set_targetSelectionRange : t -> _Range -> unit
    [@@js.set "targetSelectionRange"]

  val create_
    :  targetUri:_DocumentUri
    -> targetRange:_Range
    -> targetSelectionRange:_Range
    -> ?originSelectionRange:_Range
    -> unit
    -> _LocationLink
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "LocationLink"]

module Color : sig
  type t = _Color

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_red : t -> decimal [@@js.get "red"]

  val get_green : t -> decimal [@@js.get "green"]

  val get_blue : t -> decimal [@@js.get "blue"]

  val get_alpha : t -> decimal [@@js.get "alpha"]

  val create_
    :  red:decimal
    -> green:decimal
    -> blue:decimal
    -> alpha:decimal
    -> _Color
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Color"]

module ColorInformation : sig
  type t = _ColorInformation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_color : t -> _Color [@@js.get "color"]

  val set_color : t -> _Color -> unit [@@js.set "color"]

  val create_ : range:_Range -> color:_Color -> _ColorInformation
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ColorInformation"]

module ColorPresentation : sig
  type t = _ColorPresentation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_textEdit : t -> _TextEdit [@@js.get "textEdit"]

  val set_textEdit : t -> _TextEdit -> unit [@@js.set "textEdit"]

  val get_additionalTextEdits : t -> _TextEdit list
    [@@js.get "additionalTextEdits"]

  val set_additionalTextEdits : t -> _TextEdit list -> unit
    [@@js.set "additionalTextEdits"]

  val create_
    :  label:string
    -> ?textEdit:_TextEdit
    -> ?additionalTextEdits:_TextEdit list
    -> unit
    -> _ColorPresentation
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ColorPresentation"]

module FoldingRangeKind : sig
  type t = _FoldingRangeKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FoldingRange : sig
  type t = _FoldingRange

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_startLine : t -> uinteger [@@js.get "startLine"]

  val set_startLine : t -> uinteger -> unit [@@js.set "startLine"]

  val get_startCharacter : t -> uinteger [@@js.get "startCharacter"]

  val set_startCharacter : t -> uinteger -> unit [@@js.set "startCharacter"]

  val get_endLine : t -> uinteger [@@js.get "endLine"]

  val set_endLine : t -> uinteger -> unit [@@js.set "endLine"]

  val get_endCharacter : t -> uinteger [@@js.get "endCharacter"]

  val set_endCharacter : t -> uinteger -> unit [@@js.set "endCharacter"]

  val get_kind : t -> string [@@js.get "kind"]

  val set_kind : t -> string -> unit [@@js.set "kind"]

  val create_
    :  startLine:uinteger
    -> endLine:uinteger
    -> ?startCharacter:uinteger
    -> ?endCharacter:uinteger
    -> ?kind:string
    -> unit
    -> _FoldingRange
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "FoldingRange"]

module DiagnosticRelatedInformation : sig
  type t = _DiagnosticRelatedInformation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_location : t -> _Location [@@js.get "location"]

  val set_location : t -> _Location -> unit [@@js.set "location"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val create_
    :  location:_Location
    -> message:string
    -> _DiagnosticRelatedInformation
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DiagnosticRelatedInformation"]

module DiagnosticSeverity : sig
  type t = _DiagnosticSeverity

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Error"]

  val warning : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Warning"]

  val information : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "Information"]

  val hint : ([ `L_n_4 [@js 4] ][@js.enum]) [@@js.global "Hint"]
end
[@@js.scope "DiagnosticSeverity"]

module DiagnosticTag : sig
  type t = _DiagnosticTag

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val unnecessary : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Unnecessary"]

  val deprecated : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Deprecated"]
end
[@@js.scope "DiagnosticTag"]

module CodeDescription : sig
  type t = _CodeDescription

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_href : t -> _URI [@@js.get "href"]

  val set_href : t -> _URI -> unit [@@js.set "href"]

  val is : value:_CodeDescription or_null_or_undefined -> bool
    [@@js.global "is"]
end
[@@js.scope "CodeDescription"]

module Diagnostic : sig
  type t = _Diagnostic

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_severity : t -> _DiagnosticSeverity [@@js.get "severity"]

  val set_severity : t -> _DiagnosticSeverity -> unit [@@js.set "severity"]

  val get_code : t -> integer or_string [@@js.get "code"]

  val set_code : t -> integer or_string -> unit [@@js.set "code"]

  val get_codeDescription : t -> _CodeDescription [@@js.get "codeDescription"]

  val set_codeDescription : t -> _CodeDescription -> unit
    [@@js.set "codeDescription"]

  val get_source : t -> string [@@js.get "source"]

  val set_source : t -> string -> unit [@@js.set "source"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_tags : t -> _DiagnosticTag list [@@js.get "tags"]

  val set_tags : t -> _DiagnosticTag list -> unit [@@js.set "tags"]

  val get_relatedInformation : t -> _DiagnosticRelatedInformation list
    [@@js.get "relatedInformation"]

  val set_relatedInformation : t -> _DiagnosticRelatedInformation list -> unit
    [@@js.set "relatedInformation"]

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]

  val create_
    :  range:_Range
    -> message:string
    -> ?severity:_DiagnosticSeverity
    -> ?code:integer or_string
    -> ?source:string
    -> ?relatedInformation:_DiagnosticRelatedInformation list
    -> unit
    -> _Diagnostic
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Diagnostic"]

module Command : sig
  type t = _Command

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_title : t -> string [@@js.get "title"]

  val set_title : t -> string -> unit [@@js.set "title"]

  val get_command : t -> string [@@js.get "command"]

  val set_command : t -> string -> unit [@@js.set "command"]

  val get_arguments : t -> any list [@@js.get "arguments"]

  val set_arguments : t -> any list -> unit [@@js.set "arguments"]

  val create_
    :  title:string
    -> command:string
    -> args:(any list[@js.variadic])
    -> _Command
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Command"]

module TextEdit : sig
  type t = _TextEdit

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_newText : t -> string [@@js.get "newText"]

  val set_newText : t -> string -> unit [@@js.set "newText"]

  val replace : range:_Range -> newText:string -> _TextEdit
    [@@js.global "replace"]

  val insert : position:_Position -> newText:string -> _TextEdit
    [@@js.global "insert"]

  val del : range:_Range -> _TextEdit [@@js.global "del"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextEdit"]

module ChangeAnnotation : sig
  type t = _ChangeAnnotation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_needsConfirmation : t -> bool [@@js.get "needsConfirmation"]

  val set_needsConfirmation : t -> bool -> unit [@@js.set "needsConfirmation"]

  val get_description : t -> string [@@js.get "description"]

  val set_description : t -> string -> unit [@@js.set "description"]

  val create_
    :  label:string
    -> ?needsConfirmation:bool
    -> ?description:string
    -> unit
    -> _ChangeAnnotation
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ChangeAnnotation"]

module ChangeAnnotationIdentifier : sig
  type t = _ChangeAnnotationIdentifier

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ChangeAnnotationIdentifier"]

module AnnotatedTextEdit : sig
  type t = _AnnotatedTextEdit

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_annotationId : t -> _ChangeAnnotationIdentifier
    [@@js.get "annotationId"]

  val set_annotationId : t -> _ChangeAnnotationIdentifier -> unit
    [@@js.set "annotationId"]

  val cast : t -> _TextEdit [@@js.cast]

  val replace
    :  range:_Range
    -> newText:string
    -> annotation:_ChangeAnnotationIdentifier
    -> _AnnotatedTextEdit
    [@@js.global "replace"]

  val insert
    :  position:_Position
    -> newText:string
    -> annotation:_ChangeAnnotationIdentifier
    -> _AnnotatedTextEdit
    [@@js.global "insert"]

  val del
    :  range:_Range
    -> annotation:_ChangeAnnotationIdentifier
    -> _AnnotatedTextEdit
    [@@js.global "del"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "AnnotatedTextEdit"]

module TextDocumentEdit : sig
  type t = _TextDocumentEdit

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> _OptionalVersionedTextDocumentIdentifier
    [@@js.get "textDocument"]

  val set_textDocument : t -> _OptionalVersionedTextDocumentIdentifier -> unit
    [@@js.set "textDocument"]

  val get_edits : t -> (_AnnotatedTextEdit, _TextEdit) union2 list
    [@@js.get "edits"]

  val set_edits : t -> (_AnnotatedTextEdit, _TextEdit) union2 list -> unit
    [@@js.set "edits"]

  val create_
    :  textDocument:_OptionalVersionedTextDocumentIdentifier
    -> edits:(_AnnotatedTextEdit, _TextEdit) union2 list
    -> _TextDocumentEdit
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentEdit"]

module ResourceOperation : sig
  type t = _ResourceOperation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> string [@@js.get "kind"]

  val set_kind : t -> string -> unit [@@js.set "kind"]

  val get_annotationId : t -> _ChangeAnnotationIdentifier
    [@@js.get "annotationId"]

  val set_annotationId : t -> _ChangeAnnotationIdentifier -> unit
    [@@js.set "annotationId"]
end
[@@js.scope "ResourceOperation"]

module CreateFileOptions : sig
  type t = _CreateFileOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_overwrite : t -> bool [@@js.get "overwrite"]

  val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]

  val get_ignoreIfExists : t -> bool [@@js.get "ignoreIfExists"]

  val set_ignoreIfExists : t -> bool -> unit [@@js.set "ignoreIfExists"]
end
[@@js.scope "CreateFileOptions"]

module CreateFile : sig
  type t = _CreateFile

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s4_create [@js "create"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s4_create ][@js.enum]) -> unit [@@js.set "kind"]

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val set_uri : t -> _DocumentUri -> unit [@@js.set "uri"]

  val get_options : t -> _CreateFileOptions [@@js.get "options"]

  val set_options : t -> _CreateFileOptions -> unit [@@js.set "options"]

  val cast : t -> _ResourceOperation [@@js.cast]

  val create_
    :  uri:_DocumentUri
    -> ?options:_CreateFileOptions
    -> ?annotation:_ChangeAnnotationIdentifier
    -> unit
    -> _CreateFile
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CreateFile"]

module RenameFileOptions : sig
  type t = _RenameFileOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_overwrite : t -> bool [@@js.get "overwrite"]

  val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]

  val get_ignoreIfExists : t -> bool [@@js.get "ignoreIfExists"]

  val set_ignoreIfExists : t -> bool -> unit [@@js.set "ignoreIfExists"]
end
[@@js.scope "RenameFileOptions"]

module RenameFile : sig
  type t = _RenameFile

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s32_rename [@js "rename"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s32_rename ][@js.enum]) -> unit [@@js.set "kind"]

  val get_oldUri : t -> _DocumentUri [@@js.get "oldUri"]

  val set_oldUri : t -> _DocumentUri -> unit [@@js.set "oldUri"]

  val get_newUri : t -> _DocumentUri [@@js.get "newUri"]

  val set_newUri : t -> _DocumentUri -> unit [@@js.set "newUri"]

  val get_options : t -> _RenameFileOptions [@@js.get "options"]

  val set_options : t -> _RenameFileOptions -> unit [@@js.set "options"]

  val cast : t -> _ResourceOperation [@@js.cast]

  val create_
    :  oldUri:_DocumentUri
    -> newUri:_DocumentUri
    -> ?options:_RenameFileOptions
    -> ?annotation:_ChangeAnnotationIdentifier
    -> unit
    -> _RenameFile
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "RenameFile"]

module DeleteFileOptions : sig
  type t = _DeleteFileOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_recursive : t -> bool [@@js.get "recursive"]

  val set_recursive : t -> bool -> unit [@@js.set "recursive"]

  val get_ignoreIfNotExists : t -> bool [@@js.get "ignoreIfNotExists"]

  val set_ignoreIfNotExists : t -> bool -> unit [@@js.set "ignoreIfNotExists"]
end
[@@js.scope "DeleteFileOptions"]

module DeleteFile : sig
  type t = _DeleteFile

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s8_delete [@js "delete"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s8_delete ][@js.enum]) -> unit [@@js.set "kind"]

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val set_uri : t -> _DocumentUri -> unit [@@js.set "uri"]

  val get_options : t -> _DeleteFileOptions [@@js.get "options"]

  val set_options : t -> _DeleteFileOptions -> unit [@@js.set "options"]

  val cast : t -> _ResourceOperation [@@js.cast]

  val create_
    :  uri:_DocumentUri
    -> ?options:_DeleteFileOptions
    -> ?annotation:_ChangeAnnotationIdentifier
    -> unit
    -> _DeleteFile
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DeleteFile"]

module WorkspaceEdit : sig
  type t = _WorkspaceEdit

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_changes : t -> anonymous_interface_3 [@@js.get "changes"]

  val set_changes : t -> anonymous_interface_3 -> unit [@@js.set "changes"]

  val get_documentChanges
    :  t
    -> ( ([ `U_s4_create of _CreateFile [@js "create"]
          | `U_s8_delete of _DeleteFile [@js "delete"]
          | `U_s32_rename of _RenameFile [@js "rename"]
          ]
         [@js.union on_field "kind"])
       , _TextDocumentEdit )
       or_
       list
    [@@js.get "documentChanges"]

  val set_documentChanges
    :  t
    -> ( ([ `U_s4_create of _CreateFile
          | `U_s8_delete of _DeleteFile
          | `U_s32_rename of _RenameFile
          ]
         [@js.union on_field "kind"])
       , _TextDocumentEdit )
       or_
       list
    -> unit
    [@@js.set "documentChanges"]

  val get_changeAnnotations : t -> anonymous_interface_2
    [@@js.get "changeAnnotations"]

  val set_changeAnnotations : t -> anonymous_interface_2 -> unit
    [@@js.set "changeAnnotations"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "WorkspaceEdit"]

module TextEditChange : sig
  type t = _TextEditChange

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val all : t -> (_AnnotatedTextEdit, _TextEdit) union2 list [@@js.call "all"]

  val clear : t -> unit [@@js.call "clear"]

  val add : t -> edit:(_AnnotatedTextEdit, _TextEdit) union2 -> unit
    [@@js.call "add"]

  val insert : t -> position:_Position -> newText:string -> unit
    [@@js.call "insert"]

  val insert'
    :  t
    -> position:_Position
    -> newText:string
    -> annotation:(_ChangeAnnotation, _ChangeAnnotationIdentifier) union2
    -> _ChangeAnnotationIdentifier
    [@@js.call "insert"]

  val replace : t -> range:_Range -> newText:string -> unit
    [@@js.call "replace"]

  val replace'
    :  t
    -> range:_Range
    -> newText:string
    -> ?annotation:(_ChangeAnnotation, _ChangeAnnotationIdentifier) union2
    -> unit
    -> _ChangeAnnotationIdentifier
    [@@js.call "replace"]

  val delete : t -> range:_Range -> unit [@@js.call "delete"]

  val delete'
    :  t
    -> range:_Range
    -> ?annotation:(_ChangeAnnotation, _ChangeAnnotationIdentifier) union2
    -> unit
    -> _ChangeAnnotationIdentifier
    [@@js.call "delete"]
end
[@@js.scope "TextEditChange"]

module WorkspaceChange : sig
  type t = _WorkspaceChange

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__workspaceEdit : t -> (* FIXME: unknown type *) any
    [@@js.get "_workspaceEdit"]

  val set__workspaceEdit : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_workspaceEdit"]

  val get__textEditChanges : t -> (* FIXME: unknown type *) any
    [@@js.get "_textEditChanges"]

  val set__textEditChanges : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_textEditChanges"]

  val get__changeAnnotations : t -> (* FIXME: unknown type *) any
    [@@js.get "_changeAnnotations"]

  val set__changeAnnotations : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_changeAnnotations"]

  val create : ?workspaceEdit:_WorkspaceEdit -> unit -> t [@@js.create]

  val get_edit : t -> _WorkspaceEdit [@@js.get "edit"]

  val getTextEditChange
    :  t
    -> textDocument:_OptionalVersionedTextDocumentIdentifier
    -> _TextEditChange
    [@@js.call "getTextEditChange"]

  val getTextEditChange' : t -> uri:_DocumentUri -> _TextEditChange
    [@@js.call "getTextEditChange"]

  val get_initDocumentChanges : t -> (* FIXME: unknown type *) any
    [@@js.get "initDocumentChanges"]

  val set_initDocumentChanges : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initDocumentChanges"]

  val get_initChanges : t -> (* FIXME: unknown type *) any
    [@@js.get "initChanges"]

  val set_initChanges : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initChanges"]

  val createFile
    :  t
    -> uri:_DocumentUri
    -> ?options:_CreateFileOptions
    -> unit
    -> unit
    [@@js.call "createFile"]

  val createFile'
    :  t
    -> uri:_DocumentUri
    -> annotation:(_ChangeAnnotation, _ChangeAnnotationIdentifier) union2
    -> ?options:_CreateFileOptions
    -> unit
    -> _ChangeAnnotationIdentifier
    [@@js.call "createFile"]

  val renameFile
    :  t
    -> oldUri:_DocumentUri
    -> newUri:_DocumentUri
    -> ?options:_RenameFileOptions
    -> unit
    -> unit
    [@@js.call "renameFile"]

  val renameFile'
    :  t
    -> oldUri:_DocumentUri
    -> newUri:_DocumentUri
    -> ?annotation:(_ChangeAnnotation, _ChangeAnnotationIdentifier) union2
    -> ?options:_RenameFileOptions
    -> unit
    -> _ChangeAnnotationIdentifier
    [@@js.call "renameFile"]

  val deleteFile
    :  t
    -> uri:_DocumentUri
    -> ?options:_DeleteFileOptions
    -> unit
    -> unit
    [@@js.call "deleteFile"]

  val deleteFile'
    :  t
    -> uri:_DocumentUri
    -> annotation:(_ChangeAnnotation, _ChangeAnnotationIdentifier) union2
    -> ?options:_DeleteFileOptions
    -> unit
    -> _ChangeAnnotationIdentifier
    [@@js.call "deleteFile"]
end
[@@js.scope "WorkspaceChange"]

module TextDocumentIdentifier : sig
  type t = _TextDocumentIdentifier

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val set_uri : t -> _DocumentUri -> unit [@@js.set "uri"]

  val create_ : uri:_DocumentUri -> _TextDocumentIdentifier
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentIdentifier"]

module VersionedTextDocumentIdentifier : sig
  type t = _VersionedTextDocumentIdentifier

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_version : t -> integer [@@js.get "version"]

  val set_version : t -> integer -> unit [@@js.set "version"]

  val cast : t -> _TextDocumentIdentifier [@@js.cast]

  val create_
    :  uri:_DocumentUri
    -> version:integer
    -> _VersionedTextDocumentIdentifier
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "VersionedTextDocumentIdentifier"]

module OptionalVersionedTextDocumentIdentifier : sig
  type t = _OptionalVersionedTextDocumentIdentifier

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_version : t -> integer or_null [@@js.get "version"]

  val set_version : t -> integer or_null -> unit [@@js.set "version"]

  val cast : t -> _TextDocumentIdentifier [@@js.cast]

  val create_
    :  uri:_DocumentUri
    -> version:integer or_null
    -> _OptionalVersionedTextDocumentIdentifier
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "OptionalVersionedTextDocumentIdentifier"]

module TextDocumentItem : sig
  type t = _TextDocumentItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val set_uri : t -> _DocumentUri -> unit [@@js.set "uri"]

  val get_languageId : t -> string [@@js.get "languageId"]

  val set_languageId : t -> string -> unit [@@js.set "languageId"]

  val get_version : t -> integer [@@js.get "version"]

  val set_version : t -> integer -> unit [@@js.set "version"]

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]

  val create_
    :  uri:_DocumentUri
    -> languageId:string
    -> version:integer
    -> text:string
    -> _TextDocumentItem
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentItem"]

module MarkupKind : sig
  type t = _MarkupKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val plainText : ([ `L_s27_plaintext [@js "plaintext"] ][@js.enum])
    [@@js.global "PlainText"]

  val markdown : ([ `L_s19_markdown [@js "markdown"] ][@js.enum])
    [@@js.global "Markdown"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MarkupKind"]

module MarkupContent : sig
  type t = _MarkupContent

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> _MarkupKind [@@js.get "kind"]

  val set_kind : t -> _MarkupKind -> unit [@@js.set "kind"]

  val get_value : t -> string [@@js.get "value"]

  val set_value : t -> string -> unit [@@js.set "value"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MarkupContent"]

module CompletionItemKind : sig
  type t = _CompletionItemKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val text : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Text"]

  val method_ : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Method"]

  val function_ : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "Function"]

  val constructor : ([ `L_n_4 [@js 4] ][@js.enum]) [@@js.global "Constructor"]

  val field : ([ `L_n_5 [@js 5] ][@js.enum]) [@@js.global "Field"]

  val variable : ([ `L_n_6 [@js 6] ][@js.enum]) [@@js.global "Variable"]

  val class_ : ([ `L_n_7 [@js 7] ][@js.enum]) [@@js.global "Class"]

  val interface : ([ `L_n_8 [@js 8] ][@js.enum]) [@@js.global "Interface"]

  val module_ : ([ `L_n_9 [@js 9] ][@js.enum]) [@@js.global "Module"]

  val property : ([ `L_n_10 [@js 10] ][@js.enum]) [@@js.global "Property"]

  val unit : ([ `L_n_11 [@js 11] ][@js.enum]) [@@js.global "Unit"]

  val value : ([ `L_n_12 [@js 12] ][@js.enum]) [@@js.global "Value"]

  val enum : ([ `L_n_13 [@js 13] ][@js.enum]) [@@js.global "Enum"]

  val keyword : ([ `L_n_14 [@js 14] ][@js.enum]) [@@js.global "Keyword"]

  val snippet : ([ `L_n_15 [@js 15] ][@js.enum]) [@@js.global "Snippet"]

  val color : ([ `L_n_16 [@js 16] ][@js.enum]) [@@js.global "Color"]

  val file : ([ `L_n_17 [@js 17] ][@js.enum]) [@@js.global "File"]

  val reference : ([ `L_n_18 [@js 18] ][@js.enum]) [@@js.global "Reference"]

  val folder : ([ `L_n_19 [@js 19] ][@js.enum]) [@@js.global "Folder"]

  val enumMember : ([ `L_n_20 [@js 20] ][@js.enum]) [@@js.global "EnumMember"]

  val constant : ([ `L_n_21 [@js 21] ][@js.enum]) [@@js.global "Constant"]

  val struct_ : ([ `L_n_22 [@js 22] ][@js.enum]) [@@js.global "Struct"]

  val event : ([ `L_n_23 [@js 23] ][@js.enum]) [@@js.global "Event"]

  val operator : ([ `L_n_24 [@js 24] ][@js.enum]) [@@js.global "Operator"]

  val typeParameter : ([ `L_n_25 [@js 25] ][@js.enum])
    [@@js.global "TypeParameter"]
end
[@@js.scope "CompletionItemKind"]

module InsertTextFormat : sig
  type t = _InsertTextFormat

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val plainText : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "PlainText"]

  val snippet : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Snippet"]
end
[@@js.scope "InsertTextFormat"]

module CompletionItemTag : sig
  type t = _CompletionItemTag

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val deprecated : float [@@js.global "Deprecated"]
end
[@@js.scope "CompletionItemTag"]

module InsertReplaceEdit : sig
  type t = _InsertReplaceEdit

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_newText : t -> string [@@js.get "newText"]

  val set_newText : t -> string -> unit [@@js.set "newText"]

  val get_insert : t -> _Range [@@js.get "insert"]

  val set_insert : t -> _Range -> unit [@@js.set "insert"]

  val get_replace : t -> _Range [@@js.get "replace"]

  val set_replace : t -> _Range -> unit [@@js.set "replace"]

  val create_
    :  newText:string
    -> insert:_Range
    -> replace:_Range
    -> _InsertReplaceEdit
    [@@js.global "create"]

  val is : value:(_InsertReplaceEdit, _TextEdit) union2 -> bool
    [@@js.global "is"]
end
[@@js.scope "InsertReplaceEdit"]

module InsertTextMode : sig
  type t = _InsertTextMode

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val asIs : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "asIs"]

  val adjustIndentation : ([ `L_n_2 [@js 2] ][@js.enum])
    [@@js.global "adjustIndentation"]
end
[@@js.scope "InsertTextMode"]

module CompletionItemLabelDetails : sig
  type t = _CompletionItemLabelDetails

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_parameters : t -> string [@@js.get "parameters"]

  val set_parameters : t -> string -> unit [@@js.set "parameters"]

  val get_qualifier : t -> string [@@js.get "qualifier"]

  val set_qualifier : t -> string -> unit [@@js.set "qualifier"]

  val get_type : t -> string [@@js.get "type"]

  val set_type : t -> string -> unit [@@js.set "type"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CompletionItemLabelDetails"]

module CompletionItem : sig
  type t = _CompletionItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_labelDetails : t -> _CompletionItemLabelDetails
    [@@js.get "labelDetails"]

  val set_labelDetails : t -> _CompletionItemLabelDetails -> unit
    [@@js.set "labelDetails"]

  val get_kind : t -> _CompletionItemKind [@@js.get "kind"]

  val set_kind : t -> _CompletionItemKind -> unit [@@js.set "kind"]

  val get_tags : t -> _CompletionItemTag list [@@js.get "tags"]

  val set_tags : t -> _CompletionItemTag list -> unit [@@js.set "tags"]

  val get_detail : t -> string [@@js.get "detail"]

  val set_detail : t -> string -> unit [@@js.set "detail"]

  val get_documentation : t -> _MarkupContent or_string
    [@@js.get "documentation"]

  val set_documentation : t -> _MarkupContent or_string -> unit
    [@@js.set "documentation"]

  val get_deprecated : t -> bool [@@js.get "deprecated"]

  val set_deprecated : t -> bool -> unit [@@js.set "deprecated"]

  val get_preselect : t -> bool [@@js.get "preselect"]

  val set_preselect : t -> bool -> unit [@@js.set "preselect"]

  val get_sortText : t -> string [@@js.get "sortText"]

  val set_sortText : t -> string -> unit [@@js.set "sortText"]

  val get_filterText : t -> string [@@js.get "filterText"]

  val set_filterText : t -> string -> unit [@@js.set "filterText"]

  val get_insertText : t -> string [@@js.get "insertText"]

  val set_insertText : t -> string -> unit [@@js.set "insertText"]

  val get_insertTextFormat : t -> _InsertTextFormat
    [@@js.get "insertTextFormat"]

  val set_insertTextFormat : t -> _InsertTextFormat -> unit
    [@@js.set "insertTextFormat"]

  val get_insertTextMode : t -> _InsertTextMode [@@js.get "insertTextMode"]

  val set_insertTextMode : t -> _InsertTextMode -> unit
    [@@js.set "insertTextMode"]

  val get_textEdit : t -> (_InsertReplaceEdit, _TextEdit) union2
    [@@js.get "textEdit"]

  val set_textEdit : t -> (_InsertReplaceEdit, _TextEdit) union2 -> unit
    [@@js.set "textEdit"]

  val get_additionalTextEdits : t -> _TextEdit list
    [@@js.get "additionalTextEdits"]

  val set_additionalTextEdits : t -> _TextEdit list -> unit
    [@@js.set "additionalTextEdits"]

  val get_commitCharacters : t -> string list [@@js.get "commitCharacters"]

  val set_commitCharacters : t -> string list -> unit
    [@@js.set "commitCharacters"]

  val get_command : t -> _Command [@@js.get "command"]

  val set_command : t -> _Command -> unit [@@js.set "command"]

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create_ : label:string -> _CompletionItem [@@js.global "create"]
end
[@@js.scope "CompletionItem"]

module CompletionList : sig
  type t = _CompletionList

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_isIncomplete : t -> bool [@@js.get "isIncomplete"]

  val set_isIncomplete : t -> bool -> unit [@@js.set "isIncomplete"]

  val get_items : t -> _CompletionItem list [@@js.get "items"]

  val set_items : t -> _CompletionItem list -> unit [@@js.set "items"]

  val create_
    :  ?items:_CompletionItem list
    -> ?isIncomplete:bool
    -> unit
    -> _CompletionList
    [@@js.global "create"]
end
[@@js.scope "CompletionList"]

module MarkedString : sig
  type t = _MarkedString

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fromPlainText : plainText:string -> string [@@js.global "fromPlainText"]

  val is : value:any -> bool [@@js.global "is"]
end

module Hover : sig
  type t = _Hover

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_contents
    :  t
    -> ((_MarkedString, _MarkupContent) union2, _MarkedString) or_array
    [@@js.get "contents"]

  val set_contents
    :  t
    -> ((_MarkedString, _MarkupContent) union2, _MarkedString) or_array
    -> unit
    [@@js.set "contents"]

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Hover"]

module ParameterInformation : sig
  type t = _ParameterInformation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> (uinteger * uinteger) or_string [@@js.get "label"]

  val set_label : t -> (uinteger * uinteger) or_string -> unit
    [@@js.set "label"]

  val get_documentation : t -> _MarkupContent or_string
    [@@js.get "documentation"]

  val set_documentation : t -> _MarkupContent or_string -> unit
    [@@js.set "documentation"]

  val create_
    :  label:(uinteger * uinteger) or_string
    -> ?documentation:string
    -> unit
    -> _ParameterInformation
    [@@js.global "create"]
end
[@@js.scope "ParameterInformation"]

module SignatureInformation : sig
  type t = _SignatureInformation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_documentation : t -> _MarkupContent or_string
    [@@js.get "documentation"]

  val set_documentation : t -> _MarkupContent or_string -> unit
    [@@js.set "documentation"]

  val get_parameters : t -> _ParameterInformation list [@@js.get "parameters"]

  val set_parameters : t -> _ParameterInformation list -> unit
    [@@js.set "parameters"]

  val get_activeParameter : t -> uinteger [@@js.get "activeParameter"]

  val set_activeParameter : t -> uinteger -> unit [@@js.set "activeParameter"]

  val create_
    :  label:string
    -> ?documentation:string
    -> parameters:(_ParameterInformation list[@js.variadic])
    -> _SignatureInformation
    [@@js.global "create"]
end
[@@js.scope "SignatureInformation"]

module SignatureHelp : sig
  type t = _SignatureHelp

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_signatures : t -> _SignatureInformation list [@@js.get "signatures"]

  val set_signatures : t -> _SignatureInformation list -> unit
    [@@js.set "signatures"]

  val get_activeSignature : t -> uinteger or_null [@@js.get "activeSignature"]

  val set_activeSignature : t -> uinteger or_null -> unit
    [@@js.set "activeSignature"]

  val get_activeParameter : t -> uinteger or_null [@@js.get "activeParameter"]

  val set_activeParameter : t -> uinteger or_null -> unit
    [@@js.set "activeParameter"]
end
[@@js.scope "SignatureHelp"]

module Definition : sig
  type t = _Definition

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DefinitionLink : sig
  type t = _DefinitionLink

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Declaration : sig
  type t = _Declaration

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DeclarationLink : sig
  type t = _DeclarationLink

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ReferenceContext : sig
  type t = _ReferenceContext

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_includeDeclaration : t -> bool [@@js.get "includeDeclaration"]

  val set_includeDeclaration : t -> bool -> unit [@@js.set "includeDeclaration"]
end
[@@js.scope "ReferenceContext"]

module DocumentHighlightKind : sig
  type t = _DocumentHighlightKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val text : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Text"]

  val read : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Read"]

  val write : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "Write"]
end
[@@js.scope "DocumentHighlightKind"]

module DocumentHighlight : sig
  type t = _DocumentHighlight

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_kind : t -> _DocumentHighlightKind [@@js.get "kind"]

  val set_kind : t -> _DocumentHighlightKind -> unit [@@js.set "kind"]

  val create_
    :  range:_Range
    -> ?kind:_DocumentHighlightKind
    -> unit
    -> _DocumentHighlight
    [@@js.global "create"]
end
[@@js.scope "DocumentHighlight"]

module SymbolKind : sig
  type t = _SymbolKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val file : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "File"]

  val module_ : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Module"]

  val namespace : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "Namespace"]

  val package : ([ `L_n_4 [@js 4] ][@js.enum]) [@@js.global "Package"]

  val class_ : ([ `L_n_5 [@js 5] ][@js.enum]) [@@js.global "Class"]

  val method_ : ([ `L_n_6 [@js 6] ][@js.enum]) [@@js.global "Method"]

  val property : ([ `L_n_7 [@js 7] ][@js.enum]) [@@js.global "Property"]

  val field : ([ `L_n_8 [@js 8] ][@js.enum]) [@@js.global "Field"]

  val constructor : ([ `L_n_9 [@js 9] ][@js.enum]) [@@js.global "Constructor"]

  val enum : ([ `L_n_10 [@js 10] ][@js.enum]) [@@js.global "Enum"]

  val interface : ([ `L_n_11 [@js 11] ][@js.enum]) [@@js.global "Interface"]

  val function_ : ([ `L_n_12 [@js 12] ][@js.enum]) [@@js.global "Function"]

  val variable : ([ `L_n_13 [@js 13] ][@js.enum]) [@@js.global "Variable"]

  val constant : ([ `L_n_14 [@js 14] ][@js.enum]) [@@js.global "Constant"]

  val string : ([ `L_n_15 [@js 15] ][@js.enum]) [@@js.global "String"]

  val number : ([ `L_n_16 [@js 16] ][@js.enum]) [@@js.global "Number"]

  val boolean : ([ `L_n_17 [@js 17] ][@js.enum]) [@@js.global "Boolean"]

  val array : ([ `L_n_18 [@js 18] ][@js.enum]) [@@js.global "Array"]

  val object_ : ([ `L_n_19 [@js 19] ][@js.enum]) [@@js.global "Object"]

  val key : ([ `L_n_20 [@js 20] ][@js.enum]) [@@js.global "Key"]

  val null : ([ `L_n_21 [@js 21] ][@js.enum]) [@@js.global "Null"]

  val enumMember : ([ `L_n_22 [@js 22] ][@js.enum]) [@@js.global "EnumMember"]

  val struct_ : ([ `L_n_23 [@js 23] ][@js.enum]) [@@js.global "Struct"]

  val event : ([ `L_n_24 [@js 24] ][@js.enum]) [@@js.global "Event"]

  val operator : ([ `L_n_25 [@js 25] ][@js.enum]) [@@js.global "Operator"]

  val typeParameter : ([ `L_n_26 [@js 26] ][@js.enum])
    [@@js.global "TypeParameter"]
end
[@@js.scope "SymbolKind"]

module SymbolTag : sig
  type t = _SymbolTag

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val deprecated : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Deprecated"]
end
[@@js.scope "SymbolTag"]

module SymbolInformation : sig
  type t = _SymbolInformation

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_kind : t -> _SymbolKind [@@js.get "kind"]

  val set_kind : t -> _SymbolKind -> unit [@@js.set "kind"]

  val get_tags : t -> _SymbolTag list [@@js.get "tags"]

  val set_tags : t -> _SymbolTag list -> unit [@@js.set "tags"]

  val get_deprecated : t -> bool [@@js.get "deprecated"]

  val set_deprecated : t -> bool -> unit [@@js.set "deprecated"]

  val get_location : t -> _Location [@@js.get "location"]

  val set_location : t -> _Location -> unit [@@js.set "location"]

  val get_containerName : t -> string [@@js.get "containerName"]

  val set_containerName : t -> string -> unit [@@js.set "containerName"]

  val create_
    :  name:string
    -> kind:_SymbolKind
    -> range:_Range
    -> ?uri:string
    -> ?containerName:string
    -> unit
    -> _SymbolInformation
    [@@js.global "create"]
end
[@@js.scope "SymbolInformation"]

module DocumentSymbol : sig
  type t = _DocumentSymbol

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_detail : t -> string [@@js.get "detail"]

  val set_detail : t -> string -> unit [@@js.set "detail"]

  val get_kind : t -> _SymbolKind [@@js.get "kind"]

  val set_kind : t -> _SymbolKind -> unit [@@js.set "kind"]

  val get_tags : t -> _SymbolTag list [@@js.get "tags"]

  val set_tags : t -> _SymbolTag list -> unit [@@js.set "tags"]

  val get_deprecated : t -> bool [@@js.get "deprecated"]

  val set_deprecated : t -> bool -> unit [@@js.set "deprecated"]

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_selectionRange : t -> _Range [@@js.get "selectionRange"]

  val set_selectionRange : t -> _Range -> unit [@@js.set "selectionRange"]

  val get_children : t -> t list [@@js.get "children"]

  val set_children : t -> t list -> unit [@@js.set "children"]

  val create_
    :  name:string
    -> detail:string or_undefined
    -> kind:_SymbolKind
    -> range:_Range
    -> selectionRange:_Range
    -> ?children:_DocumentSymbol list
    -> unit
    -> _DocumentSymbol
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DocumentSymbol"]

module CodeActionKind : sig
  type t = _CodeActionKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val empty : _CodeActionKind [@@js.global "Empty"]

  val quickFix : _CodeActionKind [@@js.global "QuickFix"]

  val refactor : _CodeActionKind [@@js.global "Refactor"]

  val refactorExtract : _CodeActionKind [@@js.global "RefactorExtract"]

  val refactorInline : _CodeActionKind [@@js.global "RefactorInline"]

  val refactorRewrite : _CodeActionKind [@@js.global "RefactorRewrite"]

  val source : _CodeActionKind [@@js.global "Source"]

  val sourceOrganizeImports : _CodeActionKind
    [@@js.global "SourceOrganizeImports"]

  val sourceFixAll : _CodeActionKind [@@js.global "SourceFixAll"]
end
[@@js.scope "CodeActionKind"]

module CodeActionContext : sig
  type t = _CodeActionContext

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_diagnostics : t -> _Diagnostic list [@@js.get "diagnostics"]

  val set_diagnostics : t -> _Diagnostic list -> unit [@@js.set "diagnostics"]

  val get_only : t -> _CodeActionKind list [@@js.get "only"]

  val set_only : t -> _CodeActionKind list -> unit [@@js.set "only"]

  val create_
    :  diagnostics:_Diagnostic list
    -> ?only:_CodeActionKind list
    -> unit
    -> _CodeActionContext
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CodeActionContext"]

module CodeAction : sig
  type t = _CodeAction

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_title : t -> string [@@js.get "title"]

  val set_title : t -> string -> unit [@@js.set "title"]

  val get_kind : t -> _CodeActionKind [@@js.get "kind"]

  val set_kind : t -> _CodeActionKind -> unit [@@js.set "kind"]

  val get_diagnostics : t -> _Diagnostic list [@@js.get "diagnostics"]

  val set_diagnostics : t -> _Diagnostic list -> unit [@@js.set "diagnostics"]

  val get_isPreferred : t -> bool [@@js.get "isPreferred"]

  val set_isPreferred : t -> bool -> unit [@@js.set "isPreferred"]

  val get_disabled : t -> anonymous_interface_1 [@@js.get "disabled"]

  val set_disabled : t -> anonymous_interface_1 -> unit [@@js.set "disabled"]

  val get_edit : t -> _WorkspaceEdit [@@js.get "edit"]

  val set_edit : t -> _WorkspaceEdit -> unit [@@js.set "edit"]

  val get_command : t -> _Command [@@js.get "command"]

  val set_command : t -> _Command -> unit [@@js.set "command"]

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]

  val create_ : title:string -> ?kind:_CodeActionKind -> unit -> _CodeAction
    [@@js.global "create"]

  val create_''
    :  title:string
    -> command:_Command
    -> ?kind:_CodeActionKind
    -> unit
    -> _CodeAction
    [@@js.global "create"]

  val create_''
    :  title:string
    -> edit:_WorkspaceEdit
    -> ?kind:_CodeActionKind
    -> unit
    -> _CodeAction
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CodeAction"]

module CodeLens : sig
  type t = _CodeLens

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_command : t -> _Command [@@js.get "command"]

  val set_command : t -> _Command -> unit [@@js.set "command"]

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create_ : range:_Range -> ?data:any -> unit -> _CodeLens
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CodeLens"]

module FormattingOptions : sig
  type t = _FormattingOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_tabSize : t -> uinteger [@@js.get "tabSize"]

  val set_tabSize : t -> uinteger -> unit [@@js.set "tabSize"]

  val get_insertSpaces : t -> bool [@@js.get "insertSpaces"]

  val set_insertSpaces : t -> bool -> unit [@@js.set "insertSpaces"]

  val get_trimTrailingWhitespace : t -> bool [@@js.get "trimTrailingWhitespace"]

  val set_trimTrailingWhitespace : t -> bool -> unit
    [@@js.set "trimTrailingWhitespace"]

  val get_insertFinalNewline : t -> bool [@@js.get "insertFinalNewline"]

  val set_insertFinalNewline : t -> bool -> unit [@@js.set "insertFinalNewline"]

  val get_trimFinalNewlines : t -> bool [@@js.get "trimFinalNewlines"]

  val set_trimFinalNewlines : t -> bool -> unit [@@js.set "trimFinalNewlines"]

  val get : t -> string -> integer or_boolean or_string or_undefined
    [@@js.index_get]

  val set : t -> string -> integer or_boolean or_string or_undefined -> unit
    [@@js.index_set]

  val create_ : tabSize:uinteger -> insertSpaces:bool -> _FormattingOptions
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "FormattingOptions"]

module DocumentLink : sig
  type t = _DocumentLink

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_target : t -> string [@@js.get "target"]

  val set_target : t -> string -> unit [@@js.set "target"]

  val get_tooltip : t -> string [@@js.get "tooltip"]

  val set_tooltip : t -> string -> unit [@@js.set "tooltip"]

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create_
    :  range:_Range
    -> ?target:string
    -> ?data:any
    -> unit
    -> _DocumentLink
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DocumentLink"]

module SelectionRange : sig
  type t = _SelectionRange

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_parent : t -> t [@@js.get "parent"]

  val set_parent : t -> t -> unit [@@js.set "parent"]

  val create_
    :  range:_Range
    -> ?parent:_SelectionRange
    -> unit
    -> _SelectionRange
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "SelectionRange"]

module CallHierarchyItem : sig
  type t = _CallHierarchyItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_kind : t -> _SymbolKind [@@js.get "kind"]

  val set_kind : t -> _SymbolKind -> unit [@@js.set "kind"]

  val get_tags : t -> _SymbolTag list [@@js.get "tags"]

  val set_tags : t -> _SymbolTag list -> unit [@@js.set "tags"]

  val get_detail : t -> string [@@js.get "detail"]

  val set_detail : t -> string -> unit [@@js.set "detail"]

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val set_uri : t -> _DocumentUri -> unit [@@js.set "uri"]

  val get_range : t -> _Range [@@js.get "range"]

  val set_range : t -> _Range -> unit [@@js.set "range"]

  val get_selectionRange : t -> _Range [@@js.get "selectionRange"]

  val set_selectionRange : t -> _Range -> unit [@@js.set "selectionRange"]

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]
end
[@@js.scope "CallHierarchyItem"]

module CallHierarchyIncomingCall : sig
  type t = _CallHierarchyIncomingCall

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_from : t -> _CallHierarchyItem [@@js.get "from"]

  val set_from : t -> _CallHierarchyItem -> unit [@@js.set "from"]

  val get_fromRanges : t -> _Range list [@@js.get "fromRanges"]

  val set_fromRanges : t -> _Range list -> unit [@@js.set "fromRanges"]
end
[@@js.scope "CallHierarchyIncomingCall"]

module CallHierarchyOutgoingCall : sig
  type t = _CallHierarchyOutgoingCall

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_to : t -> _CallHierarchyItem [@@js.get "to"]

  val set_to : t -> _CallHierarchyItem -> unit [@@js.set "to"]

  val get_fromRanges : t -> _Range list [@@js.get "fromRanges"]

  val set_fromRanges : t -> _Range list -> unit [@@js.set "fromRanges"]
end
[@@js.scope "CallHierarchyOutgoingCall"]

module SemanticTokenTypes : sig
  type t = _SemanticTokenTypes

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SemanticTokenModifiers : sig
  type t = _SemanticTokenModifiers

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SemanticTokensLegend : sig
  type t = _SemanticTokensLegend

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_tokenTypes : t -> string list [@@js.get "tokenTypes"]

  val set_tokenTypes : t -> string list -> unit [@@js.set "tokenTypes"]

  val get_tokenModifiers : t -> string list [@@js.get "tokenModifiers"]

  val set_tokenModifiers : t -> string list -> unit [@@js.set "tokenModifiers"]
end
[@@js.scope "SemanticTokensLegend"]

module SemanticTokens : sig
  type t = _SemanticTokens

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_resultId : t -> string [@@js.get "resultId"]

  val set_resultId : t -> string -> unit [@@js.set "resultId"]

  val get_data : t -> uinteger list [@@js.get "data"]

  val set_data : t -> uinteger list -> unit [@@js.set "data"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "SemanticTokens"]

module SemanticTokensEdit : sig
  type t = _SemanticTokensEdit

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_start : t -> uinteger [@@js.get "start"]

  val set_start : t -> uinteger -> unit [@@js.set "start"]

  val get_deleteCount : t -> uinteger [@@js.get "deleteCount"]

  val set_deleteCount : t -> uinteger -> unit [@@js.set "deleteCount"]

  val get_data : t -> uinteger list [@@js.get "data"]

  val set_data : t -> uinteger list -> unit [@@js.set "data"]
end
[@@js.scope "SemanticTokensEdit"]

module SemanticTokensDelta : sig
  type t = _SemanticTokensDelta

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_resultId : t -> string [@@js.get "resultId"]

  val get_edits : t -> _SemanticTokensEdit list [@@js.get "edits"]

  val set_edits : t -> _SemanticTokensEdit list -> unit [@@js.set "edits"]
end
[@@js.scope "SemanticTokensDelta"]

val eOL : string list [@@js.global "EOL"]

module TextDocument : sig
  type t = _TextDocument

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> _DocumentUri [@@js.get "uri"]

  val get_languageId : t -> string [@@js.get "languageId"]

  val get_version : t -> integer [@@js.get "version"]

  val getText : t -> ?range:_Range -> unit -> string [@@js.call "getText"]

  val positionAt : t -> offset:uinteger -> _Position [@@js.call "positionAt"]

  val offsetAt : t -> position:_Position -> uinteger [@@js.call "offsetAt"]

  val get_lineCount : t -> uinteger [@@js.get "lineCount"]

  val create_
    :  uri:_DocumentUri
    -> languageId:string
    -> version:integer
    -> content:string
    -> _TextDocument
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]

  val applyEdits : document:_TextDocument -> edits:_TextEdit list -> string
    [@@js.global "applyEdits"]
end
[@@js.scope "TextDocument"]

(* export {}; *)
