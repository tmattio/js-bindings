[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_include_declaration : t -> bool [@@js.get "includeDeclaration"]

  val set_include_declaration : t -> bool -> unit
    [@@js.set "includeDeclaration"]
end

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
(* import { CreateFilesParams, DeleteFilesParams, RenameFilesParams } from
   'vscode-languageserver-protocol/lib/common/protocol.fileOperations'; *)
module FileFormattingOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_trim_trailing_whitespace : t -> bool
    [@@js.get "trimTrailingWhitespace"]

  val set_trim_trailing_whitespace : t -> bool -> unit
    [@@js.set "trimTrailingWhitespace"]

  val get_trim_final_newlines : t -> bool [@@js.get "trimFinalNewlines"]

  val set_trim_final_newlines : t -> bool -> unit [@@js.set "trimFinalNewlines"]

  val get_insert_final_newline : t -> bool [@@js.get "insertFinalNewline"]

  val set_insert_final_newline : t -> bool -> unit
    [@@js.set "insertFinalNewline"]
end
[@@js.scope "FileFormattingOptions"]

module Converter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val as_uri : t -> uri:Code.Uri.t -> string [@@js.call "asUri"]

  val as_text_document_identifier
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.TextDocumentIdentifier.t
    [@@js.call "asTextDocumentIdentifier"]

  val as_versioned_text_document_identifier
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.VersionedTextDocumentIdentifier.t
    [@@js.call "asVersionedTextDocumentIdentifier"]

  val as_open_text_document_params
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.DidOpenTextDocumentParams.t
    [@@js.call "asOpenTextDocumentParams"]

  val as_change_text_document_params
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.DidChangeTextDocumentParams.t
    [@@js.call "asChangeTextDocumentParams"]

  val as_change_text_document_params'
    :  t
    -> event:Code.TextDocumentChangeEvent.t
    -> Proto.DidChangeTextDocumentParams.t
    [@@js.call "asChangeTextDocumentParams"]

  val as_close_text_document_params
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.DidCloseTextDocumentParams.t
    [@@js.call "asCloseTextDocumentParams"]

  val as_save_text_document_params
    :  t
    -> text_document:Code.TextDocument.t
    -> ?include_content:bool
    -> unit
    -> Proto.DidSaveTextDocumentParams.t
    [@@js.call "asSaveTextDocumentParams"]

  val as_will_save_text_document_params
    :  t
    -> event:Code.TextDocumentWillSaveEvent.t
    -> Proto.WillSaveTextDocumentParams.t
    [@@js.call "asWillSaveTextDocumentParams"]

  val as_did_create_files_params
    :  t
    -> event:Code.FileCreateEvent.t
    -> CreateFilesParams.t
    [@@js.call "asDidCreateFilesParams"]

  val as_did_rename_files_params
    :  t
    -> event:Code.FileRenameEvent.t
    -> RenameFilesParams.t
    [@@js.call "asDidRenameFilesParams"]

  val as_did_delete_files_params
    :  t
    -> event:Code.FileDeleteEvent.t
    -> DeleteFilesParams.t
    [@@js.call "asDidDeleteFilesParams"]

  val as_will_create_files_params
    :  t
    -> event:Code.FileCreateEvent.t
    -> CreateFilesParams.t
    [@@js.call "asWillCreateFilesParams"]

  val as_will_rename_files_params
    :  t
    -> event:Code.FileRenameEvent.t
    -> RenameFilesParams.t
    [@@js.call "asWillRenameFilesParams"]

  val as_will_delete_files_params
    :  t
    -> event:Code.FileDeleteEvent.t
    -> DeleteFilesParams.t
    [@@js.call "asWillDeleteFilesParams"]

  val as_text_document_position_params
    :  t
    -> text_document:Code.TextDocument.t
    -> position:Code.Position.t
    -> Proto.TextDocumentPositionParams.t
    [@@js.call "asTextDocumentPositionParams"]

  val as_completion_params
    :  t
    -> text_document:Code.TextDocument.t
    -> position:Code.Position.t
    -> context:Code.CompletionContext.t
    -> Proto.CompletionParams.t
    [@@js.call "asCompletionParams"]

  val as_signature_help_params
    :  t
    -> text_document:Code.TextDocument.t
    -> position:Code.Position.t
    -> context:Code.SignatureHelpContext.t
    -> Proto.SignatureHelpParams.t
    [@@js.call "asSignatureHelpParams"]

  val as_worker_position : t -> position:Code.Position.t -> Proto.Position.t
    [@@js.call "asWorkerPosition"]

  val as_position : t -> value:Code.Position.t -> Proto.Position.t
    [@@js.call "asPosition"]

  val as_position' : t -> value:never or_undefined -> never or_undefined
    [@@js.call "asPosition"]

  val as_position'' : t -> value:never or_null -> never or_null
    [@@js.call "asPosition"]

  val as_position'''
    :  t
    -> value:Code.Position.t or_null_or_undefined
    -> Proto.Position.t or_null_or_undefined
    [@@js.call "asPosition"]

  val as_positions : t -> value:Code.Position.t list -> Proto.Position.t list
    [@@js.call "asPositions"]

  val as_range : t -> value:Code.Range.t -> Proto.Range.t [@@js.call "asRange"]

  val as_range' : t -> value:never or_undefined -> never or_undefined
    [@@js.call "asRange"]

  val as_range'' : t -> value:never or_null -> never or_null
    [@@js.call "asRange"]

  val as_range'''
    :  t
    -> value:Code.Range.t or_null_or_undefined
    -> Proto.Range.t or_null_or_undefined
    [@@js.call "asRange"]

  val as_location : t -> value:Code.Location.t -> Proto.Location.t
    [@@js.call "asLocation"]

  val as_location' : t -> value:never or_undefined -> never or_undefined
    [@@js.call "asLocation"]

  val as_location'' : t -> value:never or_null -> never or_null
    [@@js.call "asLocation"]

  val as_location'''
    :  t
    -> value:Code.Location.t or_null_or_undefined
    -> Proto.Location.t or_null_or_undefined
    [@@js.call "asLocation"]

  val as_diagnostic_severity : t -> value:Code.DiagnosticSeverity.t -> int
    [@@js.call "asDiagnosticSeverity"]

  val as_diagnostic_tag : t -> value:Code.DiagnosticTag.t -> int or_undefined
    [@@js.call "asDiagnosticTag"]

  val as_diagnostic : t -> item:Code.Diagnostic.t -> Proto.Diagnostic.t
    [@@js.call "asDiagnostic"]

  val as_diagnostics
    :  t
    -> items:Code.Diagnostic.t list
    -> Proto.Diagnostic.t list
    [@@js.call "asDiagnostics"]

  val as_completion_item
    :  t
    -> item:Code.CompletionItem.t
    -> ?label_details_support:bool
    -> unit
    -> Proto.CompletionItem.t
    [@@js.call "asCompletionItem"]

  val as_symbol_kind : t -> item:Code.SymbolKind.t -> Proto.SymbolKind.t
    [@@js.call "asSymbolKind"]

  val as_symbol_tag : t -> item:Code.SymbolTag.t -> Proto.SymbolTag.t
    [@@js.call "asSymbolTag"]

  val as_symbol_tags
    :  t
    -> items:Code.SymbolTag.t list
    -> Proto.SymbolTag.t list
    [@@js.call "asSymbolTags"]

  val as_text_edit : t -> edit:Code.TextEdit.t -> Proto.TextEdit.t
    [@@js.call "asTextEdit"]

  val as_reference_params
    :  t
    -> text_document:Code.TextDocument.t
    -> position:Code.Position.t
    -> options:AnonymousInterface0.t
    -> Proto.ReferenceParams.t
    [@@js.call "asReferenceParams"]

  val as_code_action : t -> item:Code.CodeAction.t -> Proto.CodeAction.t
    [@@js.call "asCodeAction"]

  val as_code_action_context
    :  t
    -> context:Code.CodeActionContext.t
    -> Proto.CodeActionContext.t
    [@@js.call "asCodeActionContext"]

  val as_command : t -> item:Code.Command.t -> Proto.Command.t
    [@@js.call "asCommand"]

  val as_code_lens : t -> item:Code.CodeLens.t -> Proto.CodeLens.t
    [@@js.call "asCodeLens"]

  val as_formatting_options
    :  t
    -> options:Code.FormattingOptions.t
    -> file_options:FileFormattingOptions.t
    -> Proto.FormattingOptions.t
    [@@js.call "asFormattingOptions"]

  val as_document_symbol_params
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.DocumentSymbolParams.t
    [@@js.call "asDocumentSymbolParams"]

  val as_code_lens_params
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.CodeLensParams.t
    [@@js.call "asCodeLensParams"]

  val as_document_link : t -> item:Code.DocumentLink.t -> Proto.DocumentLink.t
    [@@js.call "asDocumentLink"]

  val as_document_link_params
    :  t
    -> text_document:Code.TextDocument.t
    -> Proto.DocumentLinkParams.t
    [@@js.call "asDocumentLinkParams"]

  val as_call_hierarchy_item
    :  t
    -> value:Code.CallHierarchyItem.t
    -> Proto.CallHierarchyItem.t
    [@@js.call "asCallHierarchyItem"]
end
[@@js.scope "Converter"]

module URIConverter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> value:Code.Uri.t -> string [@@js.apply]
end
[@@js.scope "URIConverter"]

val create_converter : ?uri_converter:URIConverter.t -> unit -> Converter.t
  [@@js.global "createConverter"]
