[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _Converter = [ `Converter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FileFormattingOptions = [ `FileFormattingOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _URIConverter = [ `URIConverter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_includeDeclaration : t -> bool [@@js.get "includeDeclaration"]

  val set_includeDeclaration : t -> bool -> unit [@@js.set "includeDeclaration"]
end

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
(* import { CreateFilesParams, DeleteFilesParams, RenameFilesParams } from
   'vscode-languageserver-protocol/lib/common/protocol.fileOperations'; *)
module FileFormattingOptions : sig
  type t = _FileFormattingOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_trimTrailingWhitespace : t -> bool [@@js.get "trimTrailingWhitespace"]

  val set_trimTrailingWhitespace : t -> bool -> unit
    [@@js.set "trimTrailingWhitespace"]

  val get_trimFinalNewlines : t -> bool [@@js.get "trimFinalNewlines"]

  val set_trimFinalNewlines : t -> bool -> unit [@@js.set "trimFinalNewlines"]

  val get_insertFinalNewline : t -> bool [@@js.get "insertFinalNewline"]

  val set_insertFinalNewline : t -> bool -> unit [@@js.set "insertFinalNewline"]
end
[@@js.scope "FileFormattingOptions"]

module Converter : sig
  type t = _Converter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val asUri : t -> uri:Code.Uri.t -> string [@@js.call "asUri"]

  val asTextDocumentIdentifier
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.TextDocumentIdentifier.t
    [@@js.call "asTextDocumentIdentifier"]

  val asVersionedTextDocumentIdentifier
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.VersionedTextDocumentIdentifier.t
    [@@js.call "asVersionedTextDocumentIdentifier"]

  val asOpenTextDocumentParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.DidOpenTextDocumentParams.t
    [@@js.call "asOpenTextDocumentParams"]

  val asChangeTextDocumentParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.DidChangeTextDocumentParams.t
    [@@js.call "asChangeTextDocumentParams"]

  val asChangeTextDocumentParams'
    :  t
    -> event:Code.TextDocumentChangeEvent.t
    -> Proto.DidChangeTextDocumentParams.t
    [@@js.call "asChangeTextDocumentParams"]

  val asCloseTextDocumentParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.DidCloseTextDocumentParams.t
    [@@js.call "asCloseTextDocumentParams"]

  val asSaveTextDocumentParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> ?includeContent:bool
    -> unit
    -> Proto.DidSaveTextDocumentParams.t
    [@@js.call "asSaveTextDocumentParams"]

  val asWillSaveTextDocumentParams
    :  t
    -> event:Code.TextDocumentWillSaveEvent.t
    -> Proto.WillSaveTextDocumentParams.t
    [@@js.call "asWillSaveTextDocumentParams"]

  val asDidCreateFilesParams
    :  t
    -> event:Code.FileCreateEvent.t
    -> CreateFilesParams.t
    [@@js.call "asDidCreateFilesParams"]

  val asDidRenameFilesParams
    :  t
    -> event:Code.FileRenameEvent.t
    -> RenameFilesParams.t
    [@@js.call "asDidRenameFilesParams"]

  val asDidDeleteFilesParams
    :  t
    -> event:Code.FileDeleteEvent.t
    -> DeleteFilesParams.t
    [@@js.call "asDidDeleteFilesParams"]

  val asWillCreateFilesParams
    :  t
    -> event:Code.FileCreateEvent.t
    -> CreateFilesParams.t
    [@@js.call "asWillCreateFilesParams"]

  val asWillRenameFilesParams
    :  t
    -> event:Code.FileRenameEvent.t
    -> RenameFilesParams.t
    [@@js.call "asWillRenameFilesParams"]

  val asWillDeleteFilesParams
    :  t
    -> event:Code.FileDeleteEvent.t
    -> DeleteFilesParams.t
    [@@js.call "asWillDeleteFilesParams"]

  val asTextDocumentPositionParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> position:Code.Position.t
    -> Proto.TextDocumentPositionParams.t
    [@@js.call "asTextDocumentPositionParams"]

  val asCompletionParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> position:Code.Position.t
    -> context:Code.CompletionContext.t
    -> Proto.CompletionParams.t
    [@@js.call "asCompletionParams"]

  val asSignatureHelpParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> position:Code.Position.t
    -> context:Code.SignatureHelpContext.t
    -> Proto.SignatureHelpParams.t
    [@@js.call "asSignatureHelpParams"]

  val asWorkerPosition : t -> position:Code.Position.t -> Proto.Position.t
    [@@js.call "asWorkerPosition"]

  val asPosition : t -> value:Code.Position.t -> Proto.Position.t
    [@@js.call "asPosition"]

  val asPosition' : t -> value:never or_undefined -> never or_undefined
    [@@js.call "asPosition"]

  val asPosition'' : t -> value:never or_null -> never or_null
    [@@js.call "asPosition"]

  val asPosition'''
    :  t
    -> value:Code.Position.t or_null_or_undefined
    -> Proto.Position.t or_null_or_undefined
    [@@js.call "asPosition"]

  val asPositions : t -> value:Code.Position.t list -> Proto.Position.t list
    [@@js.call "asPositions"]

  val asRange : t -> value:Code.Range.t -> Proto.Range.t [@@js.call "asRange"]

  val asRange' : t -> value:never or_undefined -> never or_undefined
    [@@js.call "asRange"]

  val asRange'' : t -> value:never or_null -> never or_null
    [@@js.call "asRange"]

  val asRange'''
    :  t
    -> value:Code.Range.t or_null_or_undefined
    -> Proto.Range.t or_null_or_undefined
    [@@js.call "asRange"]

  val asLocation : t -> value:Code.Location.t -> Proto.Location.t
    [@@js.call "asLocation"]

  val asLocation' : t -> value:never or_undefined -> never or_undefined
    [@@js.call "asLocation"]

  val asLocation'' : t -> value:never or_null -> never or_null
    [@@js.call "asLocation"]

  val asLocation'''
    :  t
    -> value:Code.Location.t or_null_or_undefined
    -> Proto.Location.t or_null_or_undefined
    [@@js.call "asLocation"]

  val asDiagnosticSeverity : t -> value:Code.DiagnosticSeverity.t -> int
    [@@js.call "asDiagnosticSeverity"]

  val asDiagnosticTag : t -> value:Code.DiagnosticTag.t -> int or_undefined
    [@@js.call "asDiagnosticTag"]

  val asDiagnostic : t -> item:Code.Diagnostic.t -> Proto.Diagnostic.t
    [@@js.call "asDiagnostic"]

  val asDiagnostics
    :  t
    -> items:Code.Diagnostic.t list
    -> Proto.Diagnostic.t list
    [@@js.call "asDiagnostics"]

  val asCompletionItem
    :  t
    -> item:Code.CompletionItem.t
    -> ?labelDetailsSupport:bool
    -> unit
    -> Proto.CompletionItem.t
    [@@js.call "asCompletionItem"]

  val asSymbolKind : t -> item:Code.SymbolKind.t -> Proto.SymbolKind.t
    [@@js.call "asSymbolKind"]

  val asSymbolTag : t -> item:Code.SymbolTag.t -> Proto.SymbolTag.t
    [@@js.call "asSymbolTag"]

  val asSymbolTags : t -> items:Code.SymbolTag.t list -> Proto.SymbolTag.t list
    [@@js.call "asSymbolTags"]

  val asTextEdit : t -> edit:Code.TextEdit.t -> Proto.TextEdit.t
    [@@js.call "asTextEdit"]

  val asReferenceParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> position:Code.Position.t
    -> options:anonymous_interface_0
    -> Proto.ReferenceParams.t
    [@@js.call "asReferenceParams"]

  val asCodeAction : t -> item:Code.CodeAction.t -> Proto.CodeAction.t
    [@@js.call "asCodeAction"]

  val asCodeActionContext
    :  t
    -> context:Code.CodeActionContext.t
    -> Proto.CodeActionContext.t
    [@@js.call "asCodeActionContext"]

  val asCommand : t -> item:Code.Command.t -> Proto.Command.t
    [@@js.call "asCommand"]

  val asCodeLens : t -> item:Code.CodeLens.t -> Proto.CodeLens.t
    [@@js.call "asCodeLens"]

  val asFormattingOptions
    :  t
    -> options:Code.FormattingOptions.t
    -> fileOptions:_FileFormattingOptions
    -> Proto.FormattingOptions.t
    [@@js.call "asFormattingOptions"]

  val asDocumentSymbolParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.DocumentSymbolParams.t
    [@@js.call "asDocumentSymbolParams"]

  val asCodeLensParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.CodeLensParams.t
    [@@js.call "asCodeLensParams"]

  val asDocumentLink : t -> item:Code.DocumentLink.t -> Proto.DocumentLink.t
    [@@js.call "asDocumentLink"]

  val asDocumentLinkParams
    :  t
    -> textDocument:Code.TextDocument.t
    -> Proto.DocumentLinkParams.t
    [@@js.call "asDocumentLinkParams"]

  val asCallHierarchyItem
    :  t
    -> value:Code.CallHierarchyItem.t
    -> Proto.CallHierarchyItem.t
    [@@js.call "asCallHierarchyItem"]
end
[@@js.scope "Converter"]

module URIConverter : sig
  type t = _URIConverter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> value:Code.Uri.t -> string [@@js.apply]
end
[@@js.scope "URIConverter"]

val createConverter : ?uriConverter:_URIConverter -> unit -> _Converter
  [@@js.global "createConverter"]
