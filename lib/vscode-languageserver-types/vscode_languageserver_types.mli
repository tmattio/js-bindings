[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module DocumentUri : sig
  type t = string

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module URI : sig
  type t = string

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Integer : sig
  type t = int

  val t_to_js : t -> Ojs.t

  val min_value : (* FIXME: unknown type *) any [@@js.global "MIN_VALUE"]

  val max_value : int [@@js.global "MAX_VALUE"]
end
[@@js.scope "integer"]

module Uinteger : sig
  type t = int

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val min_value : int [@@js.global "MIN_VALUE"]

  val max_value : int [@@js.global "MAX_VALUE"]
end
[@@js.scope "uinteger"]

module Decimal : sig
  type t = float

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Position : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_line : t -> Uinteger.t [@@js.get "line"]

  val set_line : t -> Uinteger.t -> unit [@@js.set "line"]

  val get_character : t -> Uinteger.t [@@js.get "character"]

  val set_character : t -> Uinteger.t -> unit [@@js.set "character"]

  val create_ : line:Uinteger.t -> character:Uinteger.t -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Position"]

module Range : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_start : t -> Position.t [@@js.get "start"]

  val set_start : t -> Position.t -> unit [@@js.set "start"]

  val get_end : t -> Position.t [@@js.get "end"]

  val set_end : t -> Position.t -> unit [@@js.set "end"]

  val create_ : start:Position.t -> end_:Position.t -> t [@@js.global "create"]

  val create_
    :  start_line:Uinteger.t
    -> start_character:Uinteger.t
    -> end_line:Uinteger.t
    -> end_character:Uinteger.t
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Range"]

module Location : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val create_ : uri:DocumentUri.t -> range:Range.t -> t [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Location"]

module LocationLink : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_origin_selection_range : t -> Range.t
    [@@js.get "originSelectionRange"]

  val set_origin_selection_range : t -> Range.t -> unit
    [@@js.set "originSelectionRange"]

  val get_target_uri : t -> DocumentUri.t [@@js.get "targetUri"]

  val set_target_uri : t -> DocumentUri.t -> unit [@@js.set "targetUri"]

  val get_target_range : t -> Range.t [@@js.get "targetRange"]

  val set_target_range : t -> Range.t -> unit [@@js.set "targetRange"]

  val get_target_selection_range : t -> Range.t
    [@@js.get "targetSelectionRange"]

  val set_target_selection_range : t -> Range.t -> unit
    [@@js.set "targetSelectionRange"]

  val create_
    :  target_uri:DocumentUri.t
    -> target_range:Range.t
    -> target_selection_range:Range.t
    -> ?origin_selection_range:Range.t
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "LocationLink"]

module Color : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_red : t -> Decimal.t [@@js.get "red"]

  val get_green : t -> Decimal.t [@@js.get "green"]

  val get_blue : t -> Decimal.t [@@js.get "blue"]

  val get_alpha : t -> Decimal.t [@@js.get "alpha"]

  val create_
    :  red:Decimal.t
    -> green:Decimal.t
    -> blue:Decimal.t
    -> alpha:Decimal.t
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Color"]

module ColorInformation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_color : t -> Color.t [@@js.get "color"]

  val set_color : t -> Color.t -> unit [@@js.set "color"]

  val create_ : range:Range.t -> color:Color.t -> t [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ColorInformation"]

module TextEdit : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_new_text : t -> string [@@js.get "newText"]

  val set_new_text : t -> string -> unit [@@js.set "newText"]

  val replace : range:Range.t -> new_text:string -> t [@@js.global "replace"]

  val insert : position:Position.t -> new_text:string -> t
    [@@js.global "insert"]

  val del : range:Range.t -> t [@@js.global "del"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextEdit"]

module ColorPresentation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_text_edit : t -> TextEdit.t [@@js.get "textEdit"]

  val set_text_edit : t -> TextEdit.t -> unit [@@js.set "textEdit"]

  val get_additional_text_edits : t -> TextEdit.t list
    [@@js.get "additionalTextEdits"]

  val set_additional_text_edits : t -> TextEdit.t list -> unit
    [@@js.set "additionalTextEdits"]

  val create_
    :  label:string
    -> ?text_edit:TextEdit.t
    -> ?additional_text_edits:TextEdit.t list
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ColorPresentation"]

module FoldingRangeKind : sig
  type t =
    ([ `Comment [@js "comment"]
     | `Imports [@js "imports"]
     | `Region [@js "region"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FoldingRange : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_start_line : t -> Uinteger.t [@@js.get "startLine"]

  val set_start_line : t -> Uinteger.t -> unit [@@js.set "startLine"]

  val get_start_character : t -> Uinteger.t [@@js.get "startCharacter"]

  val set_start_character : t -> Uinteger.t -> unit [@@js.set "startCharacter"]

  val get_end_line : t -> Uinteger.t [@@js.get "endLine"]

  val set_end_line : t -> Uinteger.t -> unit [@@js.set "endLine"]

  val get_end_character : t -> Uinteger.t [@@js.get "endCharacter"]

  val set_end_character : t -> Uinteger.t -> unit [@@js.set "endCharacter"]

  val get_kind : t -> string [@@js.get "kind"]

  val set_kind : t -> string -> unit [@@js.set "kind"]

  val create_
    :  start_line:Uinteger.t
    -> end_line:Uinteger.t
    -> ?start_character:Uinteger.t
    -> ?end_character:Uinteger.t
    -> ?kind:string
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "FoldingRange"]

module DiagnosticRelatedInformation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_location : t -> Location.t [@@js.get "location"]

  val set_location : t -> Location.t -> unit [@@js.set "location"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val create_ : location:Location.t -> message:string -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DiagnosticRelatedInformation"]

module DiagnosticSeverity : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     | `L_n_4 [@js 4]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Error"]

  val warning : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Warning"]

  val information : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "Information"]

  val hint : ([ `L_n_4 [@js 4] ][@js.enum]) [@@js.global "Hint"]
end
[@@js.scope "DiagnosticSeverity"]

module DiagnosticTag : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val unnecessary : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Unnecessary"]

  val deprecated : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Deprecated"]
end
[@@js.scope "DiagnosticTag"]

module CodeDescription : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_href : t -> URI.t [@@js.get "href"]

  val set_href : t -> URI.t -> unit [@@js.set "href"]

  val is : value:t or_null_or_undefined -> bool [@@js.global "is"]
end
[@@js.scope "CodeDescription"]

module Diagnostic : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_severity : t -> DiagnosticSeverity.t [@@js.get "severity"]

  val set_severity : t -> DiagnosticSeverity.t -> unit [@@js.set "severity"]

  val get_code : t -> Integer.t or_string [@@js.get "code"]

  val set_code : t -> Integer.t or_string -> unit [@@js.set "code"]

  val get_code_description : t -> CodeDescription.t [@@js.get "codeDescription"]

  val set_code_description : t -> CodeDescription.t -> unit
    [@@js.set "codeDescription"]

  val get_source : t -> string [@@js.get "source"]

  val set_source : t -> string -> unit [@@js.set "source"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_tags : t -> DiagnosticTag.t list [@@js.get "tags"]

  val set_tags : t -> DiagnosticTag.t list -> unit [@@js.set "tags"]

  val get_related_information : t -> DiagnosticRelatedInformation.t list
    [@@js.get "relatedInformation"]

  val set_related_information : t -> DiagnosticRelatedInformation.t list -> unit
    [@@js.set "relatedInformation"]

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]

  val create_
    :  range:Range.t
    -> message:string
    -> ?severity:DiagnosticSeverity.t
    -> ?code:Integer.t or_string
    -> ?source:string
    -> ?related_information:DiagnosticRelatedInformation.t list
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Diagnostic"]

module Command : sig
  type t

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
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Command"]

module ChangeAnnotation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_needs_confirmation : t -> bool [@@js.get "needsConfirmation"]

  val set_needs_confirmation : t -> bool -> unit [@@js.set "needsConfirmation"]

  val get_description : t -> string [@@js.get "description"]

  val set_description : t -> string -> unit [@@js.set "description"]

  val create_
    :  label:string
    -> ?needs_confirmation:bool
    -> ?description:string
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ChangeAnnotation"]

module ChangeAnnotationIdentifier : sig
  type t = string

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ChangeAnnotationIdentifier"]

module AnnotatedTextEdit : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_annotation_id : t -> ChangeAnnotationIdentifier.t
    [@@js.get "annotationId"]

  val set_annotation_id : t -> ChangeAnnotationIdentifier.t -> unit
    [@@js.set "annotationId"]

  (* TODO: Move me*)
  include module type of struct
    include TextEdit
  end

  val replace
    :  range:Range.t
    -> new_text:string
    -> annotation:ChangeAnnotationIdentifier.t
    -> t
    [@@js.global "replace"]

  val insert
    :  position:Position.t
    -> new_text:string
    -> annotation:ChangeAnnotationIdentifier.t
    -> t
    [@@js.global "insert"]

  val del : range:Range.t -> annotation:ChangeAnnotationIdentifier.t -> t
    [@@js.global "del"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "AnnotatedTextEdit"]

module TextDocumentIdentifier : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val create_ : uri:DocumentUri.t -> t [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentIdentifier"]

module VersionedTextDocumentIdentifier : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_version : t -> Integer.t [@@js.get "version"]

  val set_version : t -> Integer.t -> unit [@@js.set "version"]

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentIdentifier
  end

  val create_ : uri:DocumentUri.t -> version:Integer.t -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "VersionedTextDocumentIdentifier"]

module OptionalVersionedTextDocumentIdentifier : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_version : t -> Integer.t or_null [@@js.get "version"]

  val set_version : t -> Integer.t or_null -> unit [@@js.set "version"]

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentIdentifier
  end

  val create_ : uri:DocumentUri.t -> version:Integer.t or_null -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "OptionalVersionedTextDocumentIdentifier"]

module TextDocumentEdit : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> OptionalVersionedTextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> OptionalVersionedTextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_edits : t -> (AnnotatedTextEdit.t, TextEdit.t) union2 list
    [@@js.get "edits"]

  val set_edits : t -> (AnnotatedTextEdit.t, TextEdit.t) union2 list -> unit
    [@@js.set "edits"]

  val create_
    :  text_document:OptionalVersionedTextDocumentIdentifier.t
    -> edits:(AnnotatedTextEdit.t, TextEdit.t) union2 list
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentEdit"]

module ResourceOperation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> string [@@js.get "kind"]

  val set_kind : t -> string -> unit [@@js.set "kind"]

  val get_annotation_id : t -> ChangeAnnotationIdentifier.t
    [@@js.get "annotationId"]

  val set_annotation_id : t -> ChangeAnnotationIdentifier.t -> unit
    [@@js.set "annotationId"]
end
[@@js.scope "ResourceOperation"]

module CreateFileOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_overwrite : t -> bool [@@js.get "overwrite"]

  val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]

  val get_ignore_if_exists : t -> bool [@@js.get "ignoreIfExists"]

  val set_ignore_if_exists : t -> bool -> unit [@@js.set "ignoreIfExists"]
end
[@@js.scope "CreateFileOptions"]

module CreateFile : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s4_create [@js "create"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s4_create ][@js.enum]) -> unit [@@js.set "kind"]

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_options : t -> CreateFileOptions.t [@@js.get "options"]

  val set_options : t -> CreateFileOptions.t -> unit [@@js.set "options"]

  (* TODO: Move me*)
  include module type of struct
    include ResourceOperation
  end

  val create_
    :  uri:DocumentUri.t
    -> ?options:CreateFileOptions.t
    -> ?annotation:ChangeAnnotationIdentifier.t
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CreateFile"]

module RenameFileOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_overwrite : t -> bool [@@js.get "overwrite"]

  val set_overwrite : t -> bool -> unit [@@js.set "overwrite"]

  val get_ignore_if_exists : t -> bool [@@js.get "ignoreIfExists"]

  val set_ignore_if_exists : t -> bool -> unit [@@js.set "ignoreIfExists"]
end
[@@js.scope "RenameFileOptions"]

module RenameFile : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s32_rename [@js "rename"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s32_rename ][@js.enum]) -> unit [@@js.set "kind"]

  val get_old_uri : t -> DocumentUri.t [@@js.get "oldUri"]

  val set_old_uri : t -> DocumentUri.t -> unit [@@js.set "oldUri"]

  val get_new_uri : t -> DocumentUri.t [@@js.get "newUri"]

  val set_new_uri : t -> DocumentUri.t -> unit [@@js.set "newUri"]

  val get_options : t -> RenameFileOptions.t [@@js.get "options"]

  val set_options : t -> RenameFileOptions.t -> unit [@@js.set "options"]

  (* TODO: Move me*)
  include module type of struct
    include ResourceOperation
  end

  val create_
    :  old_uri:DocumentUri.t
    -> new_uri:DocumentUri.t
    -> ?options:RenameFileOptions.t
    -> ?annotation:ChangeAnnotationIdentifier.t
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "RenameFile"]

module DeleteFileOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_recursive : t -> bool [@@js.get "recursive"]

  val set_recursive : t -> bool -> unit [@@js.set "recursive"]

  val get_ignore_if_not_exists : t -> bool [@@js.get "ignoreIfNotExists"]

  val set_ignore_if_not_exists : t -> bool -> unit
    [@@js.set "ignoreIfNotExists"]
end
[@@js.scope "DeleteFileOptions"]

module DeleteFile : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s8_delete [@js "delete"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s8_delete ][@js.enum]) -> unit [@@js.set "kind"]

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_options : t -> DeleteFileOptions.t [@@js.get "options"]

  val set_options : t -> DeleteFileOptions.t -> unit [@@js.set "options"]

  (* TODO: Move me*)
  include module type of struct
    include ResourceOperation
  end

  val create_
    :  uri:DocumentUri.t
    -> ?options:DeleteFileOptions.t
    -> ?annotation:ChangeAnnotationIdentifier.t
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DeleteFile"]

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> ChangeAnnotation.t [@@js.index_get]

  val set : t -> string -> ChangeAnnotation.t -> unit [@@js.index_set]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> TextEdit.t list [@@js.index_get]

  val set : t -> string -> TextEdit.t list -> unit [@@js.index_set]
end

module WorkspaceEdit : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_changes : t -> AnonymousInterface3.t [@@js.get "changes"]

  val set_changes : t -> AnonymousInterface3.t -> unit [@@js.set "changes"]

  val get_document_changes
    :  t
    -> ( ([ `U_s4_create of CreateFile.t [@js "create"]
          | `U_s8_delete of DeleteFile.t [@js "delete"]
          | `U_s32_rename of RenameFile.t [@js "rename"]
          ]
         [@js.union on_field "kind"])
       , TextDocumentEdit.t )
       or_
       list
    [@@js.get "documentChanges"]

  val set_document_changes
    :  t
    -> ( ([ `U_s4_create of CreateFile.t
          | `U_s8_delete of DeleteFile.t
          | `U_s32_rename of RenameFile.t
          ]
         [@js.union on_field "kind"])
       , TextDocumentEdit.t )
       or_
       list
    -> unit
    [@@js.set "documentChanges"]

  val get_change_annotations : t -> AnonymousInterface2.t
    [@@js.get "changeAnnotations"]

  val set_change_annotations : t -> AnonymousInterface2.t -> unit
    [@@js.set "changeAnnotations"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "WorkspaceEdit"]

module TextEditChange : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val all : t -> (AnnotatedTextEdit.t, TextEdit.t) union2 list [@@js.call "all"]

  val clear : t -> unit [@@js.call "clear"]

  val add : t -> edit:(AnnotatedTextEdit.t, TextEdit.t) union2 -> unit
    [@@js.call "add"]

  val insert : t -> position:Position.t -> new_text:string -> unit
    [@@js.call "insert"]

  val insert'
    :  t
    -> position:Position.t
    -> new_text:string
    -> annotation:(ChangeAnnotation.t, ChangeAnnotationIdentifier.t) union2
    -> ChangeAnnotationIdentifier.t
    [@@js.call "insert"]

  val replace : t -> range:Range.t -> new_text:string -> unit
    [@@js.call "replace"]

  val replace'
    :  t
    -> range:Range.t
    -> new_text:string
    -> ?annotation:(ChangeAnnotation.t, ChangeAnnotationIdentifier.t) union2
    -> unit
    -> ChangeAnnotationIdentifier.t
    [@@js.call "replace"]

  val delete : t -> range:Range.t -> unit [@@js.call "delete"]

  val delete'
    :  t
    -> range:Range.t
    -> ?annotation:(ChangeAnnotation.t, ChangeAnnotationIdentifier.t) union2
    -> unit
    -> ChangeAnnotationIdentifier.t
    [@@js.call "delete"]
end
[@@js.scope "TextEditChange"]

module WorkspaceChange : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace_edit : t -> (* FIXME: unknown type *) any
    [@@js.get "_workspaceEdit"]

  val set_workspace_edit : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_workspaceEdit"]

  val get_text_edit_changes : t -> (* FIXME: unknown type *) any
    [@@js.get "_textEditChanges"]

  val set_text_edit_changes : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_textEditChanges"]

  val get_change_annotations : t -> (* FIXME: unknown type *) any
    [@@js.get "_changeAnnotations"]

  val set_change_annotations : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_changeAnnotations"]

  val create : ?workspace_edit:WorkspaceEdit.t -> unit -> t [@@js.create]

  val get_edit : t -> WorkspaceEdit.t [@@js.get "edit"]

  val get_text_edit_change
    :  t
    -> text_document:OptionalVersionedTextDocumentIdentifier.t
    -> TextEditChange.t
    [@@js.call "getTextEditChange"]

  val get_text_edit_change' : t -> uri:DocumentUri.t -> TextEditChange.t
    [@@js.call "getTextEditChange"]

  val get_init_document_changes : t -> (* FIXME: unknown type *) any
    [@@js.get "initDocumentChanges"]

  val set_init_document_changes : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initDocumentChanges"]

  val get_init_changes : t -> (* FIXME: unknown type *) any
    [@@js.get "initChanges"]

  val set_init_changes : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initChanges"]

  val create_file
    :  t
    -> uri:DocumentUri.t
    -> ?options:CreateFileOptions.t
    -> unit
    -> unit
    [@@js.call "createFile"]

  val create_file'
    :  t
    -> uri:DocumentUri.t
    -> annotation:(ChangeAnnotation.t, ChangeAnnotationIdentifier.t) union2
    -> ?options:CreateFileOptions.t
    -> unit
    -> ChangeAnnotationIdentifier.t
    [@@js.call "createFile"]

  val rename_file
    :  t
    -> old_uri:DocumentUri.t
    -> new_uri:DocumentUri.t
    -> ?options:RenameFileOptions.t
    -> unit
    -> unit
    [@@js.call "renameFile"]

  val rename_file'
    :  t
    -> old_uri:DocumentUri.t
    -> new_uri:DocumentUri.t
    -> ?annotation:(ChangeAnnotation.t, ChangeAnnotationIdentifier.t) union2
    -> ?options:RenameFileOptions.t
    -> unit
    -> ChangeAnnotationIdentifier.t
    [@@js.call "renameFile"]

  val delete_file
    :  t
    -> uri:DocumentUri.t
    -> ?options:DeleteFileOptions.t
    -> unit
    -> unit
    [@@js.call "deleteFile"]

  val delete_file'
    :  t
    -> uri:DocumentUri.t
    -> annotation:(ChangeAnnotation.t, ChangeAnnotationIdentifier.t) union2
    -> ?options:DeleteFileOptions.t
    -> unit
    -> ChangeAnnotationIdentifier.t
    [@@js.call "deleteFile"]
end
[@@js.scope "WorkspaceChange"]

module TextDocumentItem : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_language_id : t -> string [@@js.get "languageId"]

  val set_language_id : t -> string -> unit [@@js.set "languageId"]

  val get_version : t -> Integer.t [@@js.get "version"]

  val set_version : t -> Integer.t -> unit [@@js.set "version"]

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]

  val create_
    :  uri:DocumentUri.t
    -> language_id:string
    -> version:Integer.t
    -> text:string
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentItem"]

module MarkupKind : sig
  type t =
    ([ `L_s19_markdown [@js "markdown"]
     | `L_s27_plaintext [@js "plaintext"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val plain_text : ([ `L_s27_plaintext [@js "plaintext"] ][@js.enum])
    [@@js.global "PlainText"]

  val markdown : ([ `L_s19_markdown [@js "markdown"] ][@js.enum])
    [@@js.global "Markdown"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MarkupKind"]

module MarkupContent : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> MarkupKind.t [@@js.get "kind"]

  val set_kind : t -> MarkupKind.t -> unit [@@js.set "kind"]

  val get_value : t -> string [@@js.get "value"]

  val set_value : t -> string -> unit [@@js.set "value"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MarkupContent"]

module CompletionItemKind : sig
  type t =
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

  val enum_member : ([ `L_n_20 [@js 20] ][@js.enum]) [@@js.global "EnumMember"]

  val constant : ([ `L_n_21 [@js 21] ][@js.enum]) [@@js.global "Constant"]

  val struct_ : ([ `L_n_22 [@js 22] ][@js.enum]) [@@js.global "Struct"]

  val event : ([ `L_n_23 [@js 23] ][@js.enum]) [@@js.global "Event"]

  val operator : ([ `L_n_24 [@js 24] ][@js.enum]) [@@js.global "Operator"]

  val type_parameter : ([ `L_n_25 [@js 25] ][@js.enum])
    [@@js.global "TypeParameter"]
end
[@@js.scope "CompletionItemKind"]

module InsertTextFormat : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val plain_text : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "PlainText"]

  val snippet : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Snippet"]
end
[@@js.scope "InsertTextFormat"]

module CompletionItemTag : sig
  type t = ([ `L_n_1 [@js 1] ][@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val deprecated : int [@@js.global "Deprecated"]
end
[@@js.scope "CompletionItemTag"]

module InsertReplaceEdit : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_new_text : t -> string [@@js.get "newText"]

  val set_new_text : t -> string -> unit [@@js.set "newText"]

  val get_insert : t -> Range.t [@@js.get "insert"]

  val set_insert : t -> Range.t -> unit [@@js.set "insert"]

  val get_replace : t -> Range.t [@@js.get "replace"]

  val set_replace : t -> Range.t -> unit [@@js.set "replace"]

  val create_ : new_text:string -> insert:Range.t -> replace:Range.t -> t
    [@@js.global "create"]

  val is : value:(t, TextEdit.t) union2 -> bool [@@js.global "is"]
end
[@@js.scope "InsertReplaceEdit"]

module InsertTextMode : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val as_is : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "asIs"]

  val adjust_indentation : ([ `L_n_2 [@js 2] ][@js.enum])
    [@@js.global "adjustIndentation"]
end
[@@js.scope "InsertTextMode"]

module CompletionItemLabelDetails : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_label_details : t -> CompletionItemLabelDetails.t
    [@@js.get "labelDetails"]

  val set_label_details : t -> CompletionItemLabelDetails.t -> unit
    [@@js.set "labelDetails"]

  val get_kind : t -> CompletionItemKind.t [@@js.get "kind"]

  val set_kind : t -> CompletionItemKind.t -> unit [@@js.set "kind"]

  val get_tags : t -> CompletionItemTag.t list [@@js.get "tags"]

  val set_tags : t -> CompletionItemTag.t list -> unit [@@js.set "tags"]

  val get_detail : t -> string [@@js.get "detail"]

  val set_detail : t -> string -> unit [@@js.set "detail"]

  val get_documentation : t -> MarkupContent.t or_string
    [@@js.get "documentation"]

  val set_documentation : t -> MarkupContent.t or_string -> unit
    [@@js.set "documentation"]

  val get_deprecated : t -> bool [@@js.get "deprecated"]

  val set_deprecated : t -> bool -> unit [@@js.set "deprecated"]

  val get_preselect : t -> bool [@@js.get "preselect"]

  val set_preselect : t -> bool -> unit [@@js.set "preselect"]

  val get_sort_text : t -> string [@@js.get "sortText"]

  val set_sort_text : t -> string -> unit [@@js.set "sortText"]

  val get_filter_text : t -> string [@@js.get "filterText"]

  val set_filter_text : t -> string -> unit [@@js.set "filterText"]

  val get_insert_text : t -> string [@@js.get "insertText"]

  val set_insert_text : t -> string -> unit [@@js.set "insertText"]

  val get_insert_text_format : t -> InsertTextFormat.t
    [@@js.get "insertTextFormat"]

  val set_insert_text_format : t -> InsertTextFormat.t -> unit
    [@@js.set "insertTextFormat"]

  val get_insert_text_mode : t -> InsertTextMode.t [@@js.get "insertTextMode"]

  val set_insert_text_mode : t -> InsertTextMode.t -> unit
    [@@js.set "insertTextMode"]

  val get_text_edit : t -> (InsertReplaceEdit.t, TextEdit.t) union2
    [@@js.get "textEdit"]

  val set_text_edit : t -> (InsertReplaceEdit.t, TextEdit.t) union2 -> unit
    [@@js.set "textEdit"]

  val get_additional_text_edits : t -> TextEdit.t list
    [@@js.get "additionalTextEdits"]

  val set_additional_text_edits : t -> TextEdit.t list -> unit
    [@@js.set "additionalTextEdits"]

  val get_commit_characters : t -> string list [@@js.get "commitCharacters"]

  val set_commit_characters : t -> string list -> unit
    [@@js.set "commitCharacters"]

  val get_command : t -> Command.t [@@js.get "command"]

  val set_command : t -> Command.t -> unit [@@js.set "command"]

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create_ : label:string -> t [@@js.global "create"]
end
[@@js.scope "CompletionItem"]

module CompletionList : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_is_incomplete : t -> bool [@@js.get "isIncomplete"]

  val set_is_incomplete : t -> bool -> unit [@@js.set "isIncomplete"]

  val get_items : t -> CompletionItem.t list [@@js.get "items"]

  val set_items : t -> CompletionItem.t list -> unit [@@js.set "items"]

  val create_ : ?items:CompletionItem.t list -> ?is_incomplete:bool -> unit -> t
    [@@js.global "create"]
end
[@@js.scope "CompletionList"]

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_language : t -> string [@@js.get "language"]

  val set_language : t -> string -> unit [@@js.set "language"]

  val get_value : t -> string [@@js.get "value"]

  val set_value : t -> string -> unit [@@js.set "value"]
end

module MarkedString : sig
  type t = AnonymousInterface0.t or_string

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val from_plain_text : plain_text:string -> string
    [@@js.global "fromPlainText"]

  val is : value:any -> bool [@@js.global "is"]
end

module Hover : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_contents
    :  t
    -> ((MarkedString.t, MarkupContent.t) union2, MarkedString.t) or_array
    [@@js.get "contents"]

  val set_contents
    :  t
    -> ((MarkedString.t, MarkupContent.t) union2, MarkedString.t) or_array
    -> unit
    [@@js.set "contents"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "Hover"]

module ParameterInformation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> (Uinteger.t * Uinteger.t) or_string [@@js.get "label"]

  val set_label : t -> (Uinteger.t * Uinteger.t) or_string -> unit
    [@@js.set "label"]

  val get_documentation : t -> MarkupContent.t or_string
    [@@js.get "documentation"]

  val set_documentation : t -> MarkupContent.t or_string -> unit
    [@@js.set "documentation"]

  val create_
    :  label:(Uinteger.t * Uinteger.t) or_string
    -> ?documentation:string
    -> unit
    -> t
    [@@js.global "create"]
end
[@@js.scope "ParameterInformation"]

module SignatureInformation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_documentation : t -> MarkupContent.t or_string
    [@@js.get "documentation"]

  val set_documentation : t -> MarkupContent.t or_string -> unit
    [@@js.set "documentation"]

  val get_parameters : t -> ParameterInformation.t list [@@js.get "parameters"]

  val set_parameters : t -> ParameterInformation.t list -> unit
    [@@js.set "parameters"]

  val get_active_parameter : t -> Uinteger.t [@@js.get "activeParameter"]

  val set_active_parameter : t -> Uinteger.t -> unit
    [@@js.set "activeParameter"]

  val create_
    :  label:string
    -> ?documentation:string
    -> parameters:(ParameterInformation.t list[@js.variadic])
    -> t
    [@@js.global "create"]
end
[@@js.scope "SignatureInformation"]

module SignatureHelp : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_signatures : t -> SignatureInformation.t list [@@js.get "signatures"]

  val set_signatures : t -> SignatureInformation.t list -> unit
    [@@js.set "signatures"]

  val get_active_signature : t -> Uinteger.t or_null
    [@@js.get "activeSignature"]

  val set_active_signature : t -> Uinteger.t or_null -> unit
    [@@js.set "activeSignature"]

  val get_active_parameter : t -> Uinteger.t or_null
    [@@js.get "activeParameter"]

  val set_active_parameter : t -> Uinteger.t or_null -> unit
    [@@js.set "activeParameter"]
end
[@@js.scope "SignatureHelp"]

module Definition : sig
  type t = (Location.t, Location.t) or_array

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DefinitionLink : sig
  type t = LocationLink.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Declaration : sig
  type t = (Location.t, Location.t) or_array

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DeclarationLink : sig
  type t = LocationLink.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ReferenceContext : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_include_declaration : t -> bool [@@js.get "includeDeclaration"]

  val set_include_declaration : t -> bool -> unit
    [@@js.set "includeDeclaration"]
end
[@@js.scope "ReferenceContext"]

module DocumentHighlightKind : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val text : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Text"]

  val read : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Read"]

  val write : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "Write"]
end
[@@js.scope "DocumentHighlightKind"]

module DocumentHighlight : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_kind : t -> DocumentHighlightKind.t [@@js.get "kind"]

  val set_kind : t -> DocumentHighlightKind.t -> unit [@@js.set "kind"]

  val create_ : range:Range.t -> ?kind:DocumentHighlightKind.t -> unit -> t
    [@@js.global "create"]
end
[@@js.scope "DocumentHighlight"]

module SymbolKind : sig
  type t =
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

  val enum_member : ([ `L_n_22 [@js 22] ][@js.enum]) [@@js.global "EnumMember"]

  val struct_ : ([ `L_n_23 [@js 23] ][@js.enum]) [@@js.global "Struct"]

  val event : ([ `L_n_24 [@js 24] ][@js.enum]) [@@js.global "Event"]

  val operator : ([ `L_n_25 [@js 25] ][@js.enum]) [@@js.global "Operator"]

  val type_parameter : ([ `L_n_26 [@js 26] ][@js.enum])
    [@@js.global "TypeParameter"]
end
[@@js.scope "SymbolKind"]

module SymbolTag : sig
  type t = ([ `L_n_1 [@js 1] ][@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val deprecated : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Deprecated"]
end
[@@js.scope "SymbolTag"]

module SymbolInformation : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_kind : t -> SymbolKind.t [@@js.get "kind"]

  val set_kind : t -> SymbolKind.t -> unit [@@js.set "kind"]

  val get_tags : t -> SymbolTag.t list [@@js.get "tags"]

  val set_tags : t -> SymbolTag.t list -> unit [@@js.set "tags"]

  val get_deprecated : t -> bool [@@js.get "deprecated"]

  val set_deprecated : t -> bool -> unit [@@js.set "deprecated"]

  val get_location : t -> Location.t [@@js.get "location"]

  val set_location : t -> Location.t -> unit [@@js.set "location"]

  val get_container_name : t -> string [@@js.get "containerName"]

  val set_container_name : t -> string -> unit [@@js.set "containerName"]

  val create_
    :  name:string
    -> kind:SymbolKind.t
    -> range:Range.t
    -> ?uri:string
    -> ?container_name:string
    -> unit
    -> t
    [@@js.global "create"]
end
[@@js.scope "SymbolInformation"]

module DocumentSymbol : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_detail : t -> string [@@js.get "detail"]

  val set_detail : t -> string -> unit [@@js.set "detail"]

  val get_kind : t -> SymbolKind.t [@@js.get "kind"]

  val set_kind : t -> SymbolKind.t -> unit [@@js.set "kind"]

  val get_tags : t -> SymbolTag.t list [@@js.get "tags"]

  val set_tags : t -> SymbolTag.t list -> unit [@@js.set "tags"]

  val get_deprecated : t -> bool [@@js.get "deprecated"]

  val set_deprecated : t -> bool -> unit [@@js.set "deprecated"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_selection_range : t -> Range.t [@@js.get "selectionRange"]

  val set_selection_range : t -> Range.t -> unit [@@js.set "selectionRange"]

  val get_children : t -> t list [@@js.get "children"]

  val set_children : t -> t list -> unit [@@js.set "children"]

  val create_
    :  name:string
    -> detail:string or_undefined
    -> kind:SymbolKind.t
    -> range:Range.t
    -> selection_range:Range.t
    -> ?children:t list
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DocumentSymbol"]

module CodeActionKind : sig
  type t = string

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val empty : t [@@js.global "Empty"]

  val quick_fix : t [@@js.global "QuickFix"]

  val refactor : t [@@js.global "Refactor"]

  val refactor_extract : t [@@js.global "RefactorExtract"]

  val refactor_inline : t [@@js.global "RefactorInline"]

  val refactor_rewrite : t [@@js.global "RefactorRewrite"]

  val source : t [@@js.global "Source"]

  val source_organize_imports : t [@@js.global "SourceOrganizeImports"]

  val source_fix_all : t [@@js.global "SourceFixAll"]
end
[@@js.scope "CodeActionKind"]

module CodeActionContext : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_diagnostics : t -> Diagnostic.t list [@@js.get "diagnostics"]

  val set_diagnostics : t -> Diagnostic.t list -> unit [@@js.set "diagnostics"]

  val get_only : t -> CodeActionKind.t list [@@js.get "only"]

  val set_only : t -> CodeActionKind.t list -> unit [@@js.set "only"]

  val create_
    :  diagnostics:Diagnostic.t list
    -> ?only:CodeActionKind.t list
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CodeActionContext"]

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_reason : t -> string [@@js.get "reason"]

  val set_reason : t -> string -> unit [@@js.set "reason"]
end

module CodeAction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_title : t -> string [@@js.get "title"]

  val set_title : t -> string -> unit [@@js.set "title"]

  val get_kind : t -> CodeActionKind.t [@@js.get "kind"]

  val set_kind : t -> CodeActionKind.t -> unit [@@js.set "kind"]

  val get_diagnostics : t -> Diagnostic.t list [@@js.get "diagnostics"]

  val set_diagnostics : t -> Diagnostic.t list -> unit [@@js.set "diagnostics"]

  val get_is_preferred : t -> bool [@@js.get "isPreferred"]

  val set_is_preferred : t -> bool -> unit [@@js.set "isPreferred"]

  val get_disabled : t -> AnonymousInterface1.t [@@js.get "disabled"]

  val set_disabled : t -> AnonymousInterface1.t -> unit [@@js.set "disabled"]

  val get_edit : t -> WorkspaceEdit.t [@@js.get "edit"]

  val set_edit : t -> WorkspaceEdit.t -> unit [@@js.set "edit"]

  val get_command : t -> Command.t [@@js.get "command"]

  val set_command : t -> Command.t -> unit [@@js.set "command"]

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]

  val create_ : title:string -> ?kind:CodeActionKind.t -> unit -> t
    [@@js.global "create"]

  val create_''
    :  title:string
    -> command:Command.t
    -> ?kind:CodeActionKind.t
    -> unit
    -> t
    [@@js.global "create"]

  val create_''
    :  title:string
    -> edit:WorkspaceEdit.t
    -> ?kind:CodeActionKind.t
    -> unit
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CodeAction"]

module CodeLens : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_command : t -> Command.t [@@js.get "command"]

  val set_command : t -> Command.t -> unit [@@js.set "command"]

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create_ : range:Range.t -> ?data:any -> unit -> t [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CodeLens"]

module FormattingOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_tab_size : t -> Uinteger.t [@@js.get "tabSize"]

  val set_tab_size : t -> Uinteger.t -> unit [@@js.set "tabSize"]

  val get_insert_spaces : t -> bool [@@js.get "insertSpaces"]

  val set_insert_spaces : t -> bool -> unit [@@js.set "insertSpaces"]

  val get_trim_trailing_whitespace : t -> bool
    [@@js.get "trimTrailingWhitespace"]

  val set_trim_trailing_whitespace : t -> bool -> unit
    [@@js.set "trimTrailingWhitespace"]

  val get_insert_final_newline : t -> bool [@@js.get "insertFinalNewline"]

  val set_insert_final_newline : t -> bool -> unit
    [@@js.set "insertFinalNewline"]

  val get_trim_final_newlines : t -> bool [@@js.get "trimFinalNewlines"]

  val set_trim_final_newlines : t -> bool -> unit [@@js.set "trimFinalNewlines"]

  val get : t -> string -> Integer.t or_boolean or_string or_undefined
    [@@js.index_get]

  val set : t -> string -> Integer.t or_boolean or_string or_undefined -> unit
    [@@js.index_set]

  val create_ : tab_size:Uinteger.t -> insert_spaces:bool -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "FormattingOptions"]

module DocumentLink : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_target : t -> string [@@js.get "target"]

  val set_target : t -> string -> unit [@@js.set "target"]

  val get_tooltip : t -> string [@@js.get "tooltip"]

  val set_tooltip : t -> string -> unit [@@js.set "tooltip"]

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create_ : range:Range.t -> ?target:string -> ?data:any -> unit -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DocumentLink"]

module SelectionRange : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_parent : t -> t [@@js.get "parent"]

  val set_parent : t -> t -> unit [@@js.set "parent"]

  val create_ : range:Range.t -> ?parent:t -> unit -> t [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "SelectionRange"]

module CallHierarchyItem : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_kind : t -> SymbolKind.t [@@js.get "kind"]

  val set_kind : t -> SymbolKind.t -> unit [@@js.set "kind"]

  val get_tags : t -> SymbolTag.t list [@@js.get "tags"]

  val set_tags : t -> SymbolTag.t list -> unit [@@js.set "tags"]

  val get_detail : t -> string [@@js.get "detail"]

  val set_detail : t -> string -> unit [@@js.set "detail"]

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_selection_range : t -> Range.t [@@js.get "selectionRange"]

  val set_selection_range : t -> Range.t -> unit [@@js.set "selectionRange"]

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]
end
[@@js.scope "CallHierarchyItem"]

module CallHierarchyIncomingCall : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_from : t -> CallHierarchyItem.t [@@js.get "from"]

  val set_from : t -> CallHierarchyItem.t -> unit [@@js.set "from"]

  val get_from_ranges : t -> Range.t list [@@js.get "fromRanges"]

  val set_from_ranges : t -> Range.t list -> unit [@@js.set "fromRanges"]
end
[@@js.scope "CallHierarchyIncomingCall"]

module CallHierarchyOutgoingCall : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_to : t -> CallHierarchyItem.t [@@js.get "to"]

  val set_to : t -> CallHierarchyItem.t -> unit [@@js.set "to"]

  val get_from_ranges : t -> Range.t list [@@js.get "fromRanges"]

  val set_from_ranges : t -> Range.t list -> unit [@@js.set "fromRanges"]
end
[@@js.scope "CallHierarchyOutgoingCall"]

module SemanticTokenTypes : sig
  type t =
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

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SemanticTokenModifiers : sig
  type t =
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

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SemanticTokensLegend : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_token_types : t -> string list [@@js.get "tokenTypes"]

  val set_token_types : t -> string list -> unit [@@js.set "tokenTypes"]

  val get_token_modifiers : t -> string list [@@js.get "tokenModifiers"]

  val set_token_modifiers : t -> string list -> unit [@@js.set "tokenModifiers"]
end
[@@js.scope "SemanticTokensLegend"]

module SemanticTokens : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_result_id : t -> string [@@js.get "resultId"]

  val set_result_id : t -> string -> unit [@@js.set "resultId"]

  val get_data : t -> Uinteger.t list [@@js.get "data"]

  val set_data : t -> Uinteger.t list -> unit [@@js.set "data"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "SemanticTokens"]

module SemanticTokensEdit : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_start : t -> Uinteger.t [@@js.get "start"]

  val set_start : t -> Uinteger.t -> unit [@@js.set "start"]

  val get_delete_count : t -> Uinteger.t [@@js.get "deleteCount"]

  val set_delete_count : t -> Uinteger.t -> unit [@@js.set "deleteCount"]

  val get_data : t -> Uinteger.t list [@@js.get "data"]

  val set_data : t -> Uinteger.t list -> unit [@@js.set "data"]
end
[@@js.scope "SemanticTokensEdit"]

module SemanticTokensDelta : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_result_id : t -> string [@@js.get "resultId"]

  val get_edits : t -> SemanticTokensEdit.t list [@@js.get "edits"]

  val set_edits : t -> SemanticTokensEdit.t list -> unit [@@js.set "edits"]
end
[@@js.scope "SemanticTokensDelta"]

val e_ol : string list [@@js.global "EOL"]

module TextDocument : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val get_language_id : t -> string [@@js.get "languageId"]

  val get_version : t -> Integer.t [@@js.get "version"]

  val get_text : t -> ?range:Range.t -> unit -> string [@@js.call "getText"]

  val position_at : t -> offset:Uinteger.t -> Position.t
    [@@js.call "positionAt"]

  val offset_at : t -> position:Position.t -> Uinteger.t [@@js.call "offsetAt"]

  val get_line_count : t -> Uinteger.t [@@js.get "lineCount"]

  val create_
    :  uri:DocumentUri.t
    -> language_id:string
    -> version:Integer.t
    -> content:string
    -> t
    [@@js.global "create"]

  val is : value:any -> bool [@@js.global "is"]

  val apply_edits : document:t -> edits:TextEdit.t list -> string
    [@@js.global "applyEdits"]
end
[@@js.scope "TextDocument"]
