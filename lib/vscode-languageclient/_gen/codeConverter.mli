[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - CreateFilesParams
  - DeleteFilesParams
  - RenameFilesParams
  - code.CallHierarchyItem
  - code.CodeAction
  - code.CodeActionContext
  - code.CodeLens
  - code.Command
  - code.CompletionContext
  - code.CompletionItem
  - code.Diagnostic
  - code.DiagnosticSeverity
  - code.DiagnosticTag
  - code.DocumentLink
  - code.FileCreateEvent
  - code.FileDeleteEvent
  - code.FileRenameEvent
  - code.FormattingOptions
  - code.Location
  - code.Position
  - code.Range
  - code.SignatureHelpContext
  - code.SymbolKind
  - code.SymbolTag
  - code.TextDocument
  - code.TextDocumentChangeEvent
  - code.TextDocumentWillSaveEvent
  - code.TextEdit
  - code.Uri
  - proto.CallHierarchyItem
  - proto.CodeAction
  - proto.CodeActionContext
  - proto.CodeLens
  - proto.CodeLensParams
  - proto.Command
  - proto.CompletionItem
  - proto.CompletionParams
  - proto.Diagnostic
  - proto.DidChangeTextDocumentParams
  - proto.DidCloseTextDocumentParams
  - proto.DidOpenTextDocumentParams
  - proto.DidSaveTextDocumentParams
  - proto.DocumentLink
  - proto.DocumentLinkParams
  - proto.DocumentSymbolParams
  - proto.FormattingOptions
  - proto.Location
  - proto.Position
  - proto.Range
  - proto.ReferenceParams
  - proto.SignatureHelpParams
  - proto.SymbolKind
  - proto.SymbolTag
  - proto.TextDocumentIdentifier
  - proto.TextDocumentPositionParams
  - proto.TextEdit
  - proto.VersionedTextDocumentIdentifier
  - proto.WillSaveTextDocumentParams
 *)
[@@@js.stop]
module type Missing = sig
  module CreateFilesParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DeleteFilesParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module RenameFilesParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module code : sig
    module CallHierarchyItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeAction : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeActionContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeLens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Command : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Diagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticSeverity : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticTag : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileCreateEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileDeleteEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileRenameEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FormattingOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Location : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Position : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Range : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureHelpContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolTag : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocument : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentChangeEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentWillSaveEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uri : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module proto : sig
    module CallHierarchyItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeAction : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeActionContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeLens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeLensParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Command : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Diagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DidChangeTextDocumentParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DidCloseTextDocumentParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DidOpenTextDocumentParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DidSaveTextDocumentParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentLinkParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSymbolParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FormattingOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Location : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Position : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Range : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ReferenceParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureHelpParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolTag : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentIdentifier : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentPositionParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VersionedTextDocumentIdentifier : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WillSaveTextDocumentParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module CreateFilesParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeleteFilesParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RenameFilesParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module code : sig
      module CallHierarchyItem : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeAction : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeActionContext : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeLens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Command : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CompletionContext : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CompletionItem : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Diagnostic : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticSeverity : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticTag : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileCreateEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileDeleteEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileRenameEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FormattingOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Location : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Position : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Range : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SignatureHelpContext : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SymbolKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SymbolTag : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextDocument : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextDocumentChangeEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextDocumentWillSaveEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Uri : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module proto : sig
      module CallHierarchyItem : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeAction : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeActionContext : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeLens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeLensParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Command : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CompletionItem : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CompletionParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Diagnostic : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DidChangeTextDocumentParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DidCloseTextDocumentParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DidOpenTextDocumentParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DidSaveTextDocumentParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentLinkParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentSymbolParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FormattingOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Location : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Position : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Range : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ReferenceParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SignatureHelpParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SymbolKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SymbolTag : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextDocumentIdentifier : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextDocumentPositionParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module VersionedTextDocumentIdentifier : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WillSaveTextDocumentParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _Converter = [`Converter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileFormattingOptions = [`FileFormattingOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _URIConverter = [`URIConverter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_includeDeclaration: t -> bool [@@js.get "includeDeclaration"]
    val set_includeDeclaration: t -> bool -> unit [@@js.set "includeDeclaration"]
  end
  (* import * as code from 'vscode'; *)
  (* import * as proto from 'vscode-languageserver-protocol'; *)
  (* import { CreateFilesParams, DeleteFilesParams, RenameFilesParams } from 'vscode-languageserver-protocol/lib/common/protocol.fileOperations'; *)
  module[@js.scope "FileFormattingOptions"] FileFormattingOptions : sig
    type t = _FileFormattingOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_trimTrailingWhitespace: t -> bool [@@js.get "trimTrailingWhitespace"]
    val set_trimTrailingWhitespace: t -> bool -> unit [@@js.set "trimTrailingWhitespace"]
    val get_trimFinalNewlines: t -> bool [@@js.get "trimFinalNewlines"]
    val set_trimFinalNewlines: t -> bool -> unit [@@js.set "trimFinalNewlines"]
    val get_insertFinalNewline: t -> bool [@@js.get "insertFinalNewline"]
    val set_insertFinalNewline: t -> bool -> unit [@@js.set "insertFinalNewline"]
  end
  module[@js.scope "Converter"] Converter : sig
    type t = _Converter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val asUri: t -> uri:Code.Uri.t_0 -> string [@@js.call "asUri"]
    val asTextDocumentIdentifier: t -> textDocument:Code.TextDocument.t_0 -> Proto.TextDocumentIdentifier.t_0 [@@js.call "asTextDocumentIdentifier"]
    val asVersionedTextDocumentIdentifier: t -> textDocument:Code.TextDocument.t_0 -> Proto.VersionedTextDocumentIdentifier.t_0 [@@js.call "asVersionedTextDocumentIdentifier"]
    val asOpenTextDocumentParams: t -> textDocument:Code.TextDocument.t_0 -> Proto.DidOpenTextDocumentParams.t_0 [@@js.call "asOpenTextDocumentParams"]
    val asChangeTextDocumentParams: t -> textDocument:Code.TextDocument.t_0 -> Proto.DidChangeTextDocumentParams.t_0 [@@js.call "asChangeTextDocumentParams"]
    val asChangeTextDocumentParams': t -> event:Code.TextDocumentChangeEvent.t_0 -> Proto.DidChangeTextDocumentParams.t_0 [@@js.call "asChangeTextDocumentParams"]
    val asCloseTextDocumentParams: t -> textDocument:Code.TextDocument.t_0 -> Proto.DidCloseTextDocumentParams.t_0 [@@js.call "asCloseTextDocumentParams"]
    val asSaveTextDocumentParams: t -> textDocument:Code.TextDocument.t_0 -> ?includeContent:bool -> unit -> Proto.DidSaveTextDocumentParams.t_0 [@@js.call "asSaveTextDocumentParams"]
    val asWillSaveTextDocumentParams: t -> event:Code.TextDocumentWillSaveEvent.t_0 -> Proto.WillSaveTextDocumentParams.t_0 [@@js.call "asWillSaveTextDocumentParams"]
    val asDidCreateFilesParams: t -> event:Code.FileCreateEvent.t_0 -> CreateFilesParams.t_0 [@@js.call "asDidCreateFilesParams"]
    val asDidRenameFilesParams: t -> event:Code.FileRenameEvent.t_0 -> RenameFilesParams.t_0 [@@js.call "asDidRenameFilesParams"]
    val asDidDeleteFilesParams: t -> event:Code.FileDeleteEvent.t_0 -> DeleteFilesParams.t_0 [@@js.call "asDidDeleteFilesParams"]
    val asWillCreateFilesParams: t -> event:Code.FileCreateEvent.t_0 -> CreateFilesParams.t_0 [@@js.call "asWillCreateFilesParams"]
    val asWillRenameFilesParams: t -> event:Code.FileRenameEvent.t_0 -> RenameFilesParams.t_0 [@@js.call "asWillRenameFilesParams"]
    val asWillDeleteFilesParams: t -> event:Code.FileDeleteEvent.t_0 -> DeleteFilesParams.t_0 [@@js.call "asWillDeleteFilesParams"]
    val asTextDocumentPositionParams: t -> textDocument:Code.TextDocument.t_0 -> position:Code.Position.t_0 -> Proto.TextDocumentPositionParams.t_0 [@@js.call "asTextDocumentPositionParams"]
    val asCompletionParams: t -> textDocument:Code.TextDocument.t_0 -> position:Code.Position.t_0 -> context:Code.CompletionContext.t_0 -> Proto.CompletionParams.t_0 [@@js.call "asCompletionParams"]
    val asSignatureHelpParams: t -> textDocument:Code.TextDocument.t_0 -> position:Code.Position.t_0 -> context:Code.SignatureHelpContext.t_0 -> Proto.SignatureHelpParams.t_0 [@@js.call "asSignatureHelpParams"]
    val asWorkerPosition: t -> position:Code.Position.t_0 -> Proto.Position.t_0 [@@js.call "asWorkerPosition"]
    val asPosition: t -> value:Code.Position.t_0 -> Proto.Position.t_0 [@@js.call "asPosition"]
    val asPosition': t -> value:never or_undefined -> never or_undefined [@@js.call "asPosition"]
    val asPosition'': t -> value:never or_null -> never or_null [@@js.call "asPosition"]
    val asPosition''': t -> value:Code.Position.t_0 or_null_or_undefined -> Proto.Position.t_0 or_null_or_undefined [@@js.call "asPosition"]
    val asPositions: t -> value:Code.Position.t_0 list -> Proto.Position.t_0 list [@@js.call "asPositions"]
    val asRange: t -> value:Code.Range.t_0 -> Proto.Range.t_0 [@@js.call "asRange"]
    val asRange': t -> value:never or_undefined -> never or_undefined [@@js.call "asRange"]
    val asRange'': t -> value:never or_null -> never or_null [@@js.call "asRange"]
    val asRange''': t -> value:Code.Range.t_0 or_null_or_undefined -> Proto.Range.t_0 or_null_or_undefined [@@js.call "asRange"]
    val asLocation: t -> value:Code.Location.t_0 -> Proto.Location.t_0 [@@js.call "asLocation"]
    val asLocation': t -> value:never or_undefined -> never or_undefined [@@js.call "asLocation"]
    val asLocation'': t -> value:never or_null -> never or_null [@@js.call "asLocation"]
    val asLocation''': t -> value:Code.Location.t_0 or_null_or_undefined -> Proto.Location.t_0 or_null_or_undefined [@@js.call "asLocation"]
    val asDiagnosticSeverity: t -> value:Code.DiagnosticSeverity.t_0 -> float [@@js.call "asDiagnosticSeverity"]
    val asDiagnosticTag: t -> value:Code.DiagnosticTag.t_0 -> float or_undefined [@@js.call "asDiagnosticTag"]
    val asDiagnostic: t -> item:Code.Diagnostic.t_0 -> Proto.Diagnostic.t_0 [@@js.call "asDiagnostic"]
    val asDiagnostics: t -> items:Code.Diagnostic.t_0 list -> Proto.Diagnostic.t_0 list [@@js.call "asDiagnostics"]
    val asCompletionItem: t -> item:Code.CompletionItem.t_0 -> ?labelDetailsSupport:bool -> unit -> Proto.CompletionItem.t_0 [@@js.call "asCompletionItem"]
    val asSymbolKind: t -> item:Code.SymbolKind.t_0 -> Proto.SymbolKind.t_0 [@@js.call "asSymbolKind"]
    val asSymbolTag: t -> item:Code.SymbolTag.t_0 -> Proto.SymbolTag.t_0 [@@js.call "asSymbolTag"]
    val asSymbolTags: t -> items:Code.SymbolTag.t_0 list -> Proto.SymbolTag.t_0 list [@@js.call "asSymbolTags"]
    val asTextEdit: t -> edit:Code.TextEdit.t_0 -> Proto.TextEdit.t_0 [@@js.call "asTextEdit"]
    val asReferenceParams: t -> textDocument:Code.TextDocument.t_0 -> position:Code.Position.t_0 -> options:anonymous_interface_0 -> Proto.ReferenceParams.t_0 [@@js.call "asReferenceParams"]
    val asCodeAction: t -> item:Code.CodeAction.t_0 -> Proto.CodeAction.t_0 [@@js.call "asCodeAction"]
    val asCodeActionContext: t -> context:Code.CodeActionContext.t_0 -> Proto.CodeActionContext.t_0 [@@js.call "asCodeActionContext"]
    val asCommand: t -> item:Code.Command.t_0 -> Proto.Command.t_0 [@@js.call "asCommand"]
    val asCodeLens: t -> item:Code.CodeLens.t_0 -> Proto.CodeLens.t_0 [@@js.call "asCodeLens"]
    val asFormattingOptions: t -> options:Code.FormattingOptions.t_0 -> fileOptions:_FileFormattingOptions -> Proto.FormattingOptions.t_0 [@@js.call "asFormattingOptions"]
    val asDocumentSymbolParams: t -> textDocument:Code.TextDocument.t_0 -> Proto.DocumentSymbolParams.t_0 [@@js.call "asDocumentSymbolParams"]
    val asCodeLensParams: t -> textDocument:Code.TextDocument.t_0 -> Proto.CodeLensParams.t_0 [@@js.call "asCodeLensParams"]
    val asDocumentLink: t -> item:Code.DocumentLink.t_0 -> Proto.DocumentLink.t_0 [@@js.call "asDocumentLink"]
    val asDocumentLinkParams: t -> textDocument:Code.TextDocument.t_0 -> Proto.DocumentLinkParams.t_0 [@@js.call "asDocumentLinkParams"]
    val asCallHierarchyItem: t -> value:Code.CallHierarchyItem.t_0 -> Proto.CallHierarchyItem.t_0 [@@js.call "asCallHierarchyItem"]
  end
  module[@js.scope "URIConverter"] URIConverter : sig
    type t = _URIConverter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> value:Code.Uri.t_0 -> string [@@js.apply]
  end
  val createConverter: ?uriConverter:_URIConverter -> unit -> _Converter [@@js.global "createConverter"]
end
