[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - CallHierarchyMiddleware
  - CallHierarchyProvider
  - CancellationError
  - CancellationStrategy
  - CancellationToken
  - ClientCapabilities
  - CodeActionProvider
  - ColorProviderMiddleware
  - CompletionItemProvider
  - ConfigurationWorkspaceMiddleware
  - DeclarationMiddleware
  - DeclarationProvider
  - DefinitionProvider
  - DiagnosticCollection
  - DidChangeTextDocumentParams
  - DidCloseTextDocumentParams
  - DidOpenTextDocumentParams
  - DidSaveTextDocumentParams
  - Disposable
  - DocumentColorProvider
  - DocumentFormattingEditProvider
  - DocumentHighlightProvider
  - DocumentLinkProvider
  - DocumentRangeFormattingEditProvider
  - DocumentSelector
  - DocumentSymbolProvider
  - Error
  - Event<T1>
  - FileCreateEvent
  - FileDeleteEvent
  - FileEvent
  - FileOperationRegistrationOptions
  - FileOperationsMiddleware
  - FileRenameEvent
  - FileWillCreateEvent
  - FileWillDeleteEvent
  - FileWillRenameEvent
  - FoldingRangeProvider
  - FoldingRangeProviderMiddleware
  - GenericNotificationHandler
  - GenericRequestHandler<T1, T2>
  - HoverProvider
  - ImplementationMiddleware
  - ImplementationProvider
  - InitializeError
  - InitializeParams
  - InitializeResult
  - Iterable<T1>
  - LinkedEditingRangeMiddleware
  - LinkedEditingRangeProvider
  - Message
  - MessageReader
  - MessageSignature
  - MessageWriter
  - NotificationHandler<T1>
  - NotificationHandler0
  - NotificationType<T1>
  - NotificationType0
  - OnTypeFormattingEditProvider
  - OutputChannel
  - ProgressToken
  - ProgressType<T1>
  - Promise<T1>
  - ProtocolNotificationType<T1, T2>
  - ProtocolNotificationType0<T1>
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - ProtocolRequestType0<T1, T2, T3, T4>
  - ProviderResult<T1>
  - ReferenceProvider
  - RegistrationType<T1>
  - RenameProvider
  - RequestHandler<T1, T2, T3>
  - RequestHandler0<T1, T2>
  - RequestType<T1, T2, T3>
  - RequestType0<T1, T2>
  - ResponseError<T1>
  - SelectionRangeProvider
  - SelectionRangeProviderMiddleware
  - SemanticTokensMiddleware
  - SemanticTokensProviders
  - ServerCapabilities
  - ShowDocumentParams
  - ShowDocumentRequest.HandlerSignature
  - ShowDocumentResult
  - SignatureHelpProvider
  - StaticRegistrationOptions
  - TextDocument
  - TextDocumentChangeEvent
  - TextDocumentRegistrationOptions
  - TextDocumentWillSaveEvent
  - Thenable<T1>
  - Trace
  - TypeDefinitionMiddleware
  - TypeDefinitionProvider
  - Uri
  - VCodeAction
  - VCodeActionContext
  - VCodeLens
  - VCommand
  - VCompletionContext
  - VCompletionItem
  - VCompletionList
  - VDefinition
  - VDefinitionLink
  - VDiagnostic
  - VDocumentHighlight
  - VDocumentLink
  - VDocumentSymbol
  - VEvent<T1>
  - VFileSystemWatcher
  - VFormattingOptions
  - VHover
  - VLocation
  - VPosition
  - VRange
  - VSignatureHelp
  - VSignatureHelpContext
  - VSymbolInformation
  - VTextEdit
  - VWorkspaceEdit
  - VWorkspaceFolder
  - WorkDoneProgressBegin
  - WorkDoneProgressEnd
  - WorkDoneProgressReport
  - WorkspaceFolderWorkspaceMiddleware
  - WorkspaceSymbolProvider
  - c2p.Converter
  - c2p.URIConverter
  - p2c.Converter
  - p2c.URIConverter
 *)
[@@@js.stop]
module type Missing = sig
  module CallHierarchyMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CallHierarchyProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CancellationError : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CancellationStrategy : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CancellationToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ClientCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CodeActionProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ColorProviderMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CompletionItemProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ConfigurationWorkspaceMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DeclarationMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DeclarationProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DefinitionProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DiagnosticCollection : sig
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
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentColorProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentFormattingEditProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentHighlightProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentLinkProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentRangeFormattingEditProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentSelector : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentSymbolProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Event : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
  module FileEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FileOperationRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FileOperationsMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FileRenameEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FileWillCreateEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FileWillDeleteEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FileWillRenameEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FoldingRangeProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FoldingRangeProviderMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module GenericNotificationHandler : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module GenericRequestHandler : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module HoverProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ImplementationMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ImplementationProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module InitializeError : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module InitializeParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module InitializeResult : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Iterable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module LinkedEditingRangeMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module LinkedEditingRangeProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Message : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageReader : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageSignature : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageWriter : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationHandler : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NotificationHandler0 : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NotificationType0 : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module OnTypeFormattingEditProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module OutputChannel : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProgressToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProgressType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProtocolNotificationType : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module ProtocolNotificationType0 : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module ProtocolRequestType0 : sig
    type ('T1, 'T2, 'T3, 'T4) t_4
    val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
  end
  module ProviderResult : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ReferenceProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module RegistrationType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RenameProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module RequestHandler : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestHandler0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module RequestType : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestType0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module ResponseError : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module SelectionRangeProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SelectionRangeProviderMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensProviders : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ServerCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ShowDocumentParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ShowDocumentRequest : sig
    module HandlerSignature : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module ShowDocumentResult : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SignatureHelpProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module StaticRegistrationOptions : sig
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
  module TextDocumentRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentWillSaveEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Thenable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Trace : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TypeDefinitionMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TypeDefinitionProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Uri : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCodeAction : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCodeActionContext : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCodeLens : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCommand : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCompletionContext : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCompletionItem : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCompletionList : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDefinition : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDefinitionLink : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDiagnostic : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDocumentHighlight : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDocumentLink : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDocumentSymbol : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VEvent : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module VFileSystemWatcher : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VFormattingOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VHover : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VLocation : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VPosition : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VRange : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VSignatureHelp : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VSignatureHelpContext : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VSymbolInformation : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VTextEdit : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VWorkspaceEdit : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VWorkspaceFolder : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressBegin : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressEnd : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressReport : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkspaceFolderWorkspaceMiddleware : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkspaceSymbolProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module c2p : sig
    module Converter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module URIConverter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module p2c : sig
    module Converter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module URIConverter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module CallHierarchyMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CancellationError : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CancellationStrategy : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CancellationToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeActionProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorProviderMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionItemProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ConfigurationWorkspaceMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeclarationMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeclarationProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DefinitionProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticCollection : sig
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
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentColorProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentFormattingEditProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentHighlightProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentLinkProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentRangeFormattingEditProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSelector : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSymbolProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Error : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Event : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
    module FileEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileOperationRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileOperationsMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileRenameEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileWillCreateEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileWillDeleteEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileWillRenameEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRangeProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRangeProviderMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module GenericNotificationHandler : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module GenericRequestHandler : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module HoverProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ImplementationMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ImplementationProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module InitializeError : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module InitializeParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module InitializeResult : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Iterable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module LinkedEditingRangeMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRangeProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Message : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageReader : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageSignature : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageWriter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationHandler : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NotificationHandler0 : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NotificationType0 : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module OnTypeFormattingEditProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module OutputChannel : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProgressToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProgressType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProtocolNotificationType : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module ProtocolNotificationType0 : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module ProtocolRequestType0 : sig
      type ('T1, 'T2, 'T3, 'T4) t_4
      val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
      val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
    end
    module ProviderResult : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ReferenceProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RegistrationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RenameProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RequestHandler : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestHandler0 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module RequestType : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestType0 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module ResponseError : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module SelectionRangeProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SelectionRangeProviderMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensProviders : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ShowDocumentParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ShowDocumentRequest : sig
      module HandlerSignature : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module ShowDocumentResult : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureHelpProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module StaticRegistrationOptions : sig
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
    module TextDocumentRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentWillSaveEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Thenable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Trace : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TypeDefinitionMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TypeDefinitionProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uri : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCodeAction : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCodeActionContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCodeLens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCommand : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCompletionContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCompletionItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCompletionList : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDefinition : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDefinitionLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDiagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDocumentHighlight : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDocumentLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDocumentSymbol : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VEvent : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module VFileSystemWatcher : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VFormattingOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VHover : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VLocation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VPosition : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VRange : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VSignatureHelp : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VSignatureHelpContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VSymbolInformation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VTextEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VWorkspaceEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VWorkspaceFolder : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressBegin : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressEnd : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressReport : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceFolderWorkspaceMiddleware : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceSymbolProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module c2p : sig
      module Converter : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module URIConverter : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module p2c : sig
      module Converter : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module URIConverter : sig
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
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_2 = [`anonymous_interface_2] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_3 = [`anonymous_interface_3] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_4 = [`anonymous_interface_4] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_5 = [`anonymous_interface_5] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_6 = [`anonymous_interface_6] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_7 = [`anonymous_interface_7] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_8 = [`anonymous_interface_8] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_9 = [`anonymous_interface_9] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_10 = [`anonymous_interface_10] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_11 = [`anonymous_interface_11] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _BaseLanguageClient = [`BaseLanguageClient] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CloseAction = [`DoNotRestart[@js 1] | `Restart[@js 2]] [@js.enum]
      and _CloseAction_DoNotRestart = [`DoNotRestart[@js 1]] [@js.enum]
      and _CloseAction_Restart = [`Restart[@js 2]] [@js.enum]
      and _ConnectionOptions = [`ConnectionOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticPullMode = [`onType[@js "onType"] | `onSave[@js "onSave"]] [@js.enum]
      and _DiagnosticPullMode_onType = [`onType[@js "onType"]] [@js.enum]
      and _DiagnosticPullMode_onSave = [`onSave[@js "onSave"]] [@js.enum]
      and _DiagnosticPullOptions = [`DiagnosticPullOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidChangeConfigurationSignature = [`DidChangeConfigurationSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidChangeTextDocumentFeatureShape = [`DidChangeTextDocumentFeatureShape | `DynamicFeature of TextDocumentRegistrationOptions.t_0 | `NotificationFeature of event:TextDocumentChangeEvent.t_0 -> unit | `NotifyingFeature of (TextDocumentChangeEvent.t_0 * DidChangeTextDocumentParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidChangeWatchedFileSignature = [`DidChangeWatchedFileSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidCloseTextDocumentFeatureShape = [`DidCloseTextDocumentFeatureShape | `DynamicFeature of TextDocumentRegistrationOptions.t_0 | `NotificationFeature of textDocument:TextDocument.t_0 -> unit | `NotifyingFeature of (TextDocument.t_0 * DidCloseTextDocumentParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidOpenTextDocumentFeatureShape = [`DidOpenTextDocumentFeatureShape | `DynamicFeature of TextDocumentRegistrationOptions.t_0 | `NotificationFeature of textDocument:TextDocument.t_0 -> unit | `NotifyingFeature of (TextDocument.t_0 * DidOpenTextDocumentParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidSaveTextDocumentFeatureShape = [`DidSaveTextDocumentFeatureShape | `DynamicFeature of TextDocumentRegistrationOptions.t_0 | `NotificationFeature of textDocument:TextDocument.t_0 -> unit | `NotifyingFeature of (TextDocument.t_0 * DidSaveTextDocumentParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'RO _DynamicFeature = [`DynamicFeature of 'RO] intf
      [@@js.custom { of_js=(fun _RO -> Obj.magic); to_js=(fun _RO -> Obj.magic) }]
      and _ErrorAction = [`Continue[@js 1] | `Shutdown[@js 2]] [@js.enum]
      and _ErrorAction_Continue = [`Continue[@js 1]] [@js.enum]
      and _ErrorAction_Shutdown = [`Shutdown[@js 2]] [@js.enum]
      and _ErrorHandler = [`ErrorHandler] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ExecuteCommandSignature = [`ExecuteCommandSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _HandleDiagnosticsSignature = [`HandleDiagnosticsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _HandleWorkDoneProgressSignature = [`HandleWorkDoneProgressSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _InitializationFailedHandler = [`InitializationFailedHandler] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LSPCancellationError = [`LSPCancellationError] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LanguageClientOptions = [`LanguageClientOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageTransports = [`MessageTransports] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Middleware = (((ImplementationMiddleware.t_0, ColorProviderMiddleware.t_0, FoldingRangeProviderMiddleware.t_0, DeclarationMiddleware.t_0, SelectionRangeProviderMiddleware.t_0, CallHierarchyMiddleware.t_0, SemanticTokensMiddleware.t_0, LinkedEditingRangeMiddleware.t_0) intersection8, TypeDefinitionMiddleware.t_0) and_, _Middleware) and_
      and ('P, 'R) _NextSignature = [`NextSignature of ('P * 'R)] intf
      [@@js.custom { of_js=(fun _P _R -> Obj.magic); to_js=(fun _P _R -> Obj.magic) }]
      and 'T _NotificationFeature = [`NotificationFeature of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ('E, 'P) _NotificationSendEvent = [`NotificationSendEvent of ('E * 'P)] intf
      [@@js.custom { of_js=(fun _E _P -> Obj.magic); to_js=(fun _E _P -> Obj.magic) }]
      and ('E, 'P) _NotifyingFeature = [`NotifyingFeature of ('E * 'P)] intf
      [@@js.custom { of_js=(fun _E _P -> Obj.magic); to_js=(fun _E _P -> Obj.magic) }]
      and _PrepareRenameSignature = [`PrepareRenameSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideCodeActionsSignature = [`ProvideCodeActionsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideCodeLensesSignature = [`ProvideCodeLensesSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideCompletionItemsSignature = [`ProvideCompletionItemsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDefinitionSignature = [`ProvideDefinitionSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDocumentFormattingEditsSignature = [`ProvideDocumentFormattingEditsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDocumentHighlightsSignature = [`ProvideDocumentHighlightsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDocumentLinksSignature = [`ProvideDocumentLinksSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDocumentRangeFormattingEditsSignature = [`ProvideDocumentRangeFormattingEditsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDocumentSymbolsSignature = [`ProvideDocumentSymbolsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideHoverSignature = [`ProvideHoverSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideOnTypeFormattingEditsSignature = [`ProvideOnTypeFormattingEditsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideReferencesSignature = [`ProvideReferencesSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideRenameEditsSignature = [`ProvideRenameEditsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('T1, 'T2) _ProvideResolveFeature = [`ProvideResolveFeature of ('T1 * 'T2)] intf
      [@@js.custom { of_js=(fun _T1 _T2 -> Obj.magic); to_js=(fun _T1 _T2 -> Obj.magic) }]
      and _ProvideSignatureHelpSignature = [`ProvideSignatureHelpSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideWorkspaceSymbolsSignature = [`ProvideWorkspaceSymbolsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _RegistrationData = [`RegistrationData of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _ResolveCodeActionSignature = [`ResolveCodeActionSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ResolveCodeLensSignature = [`ResolveCodeLensSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ResolveCompletionItemSignature = [`ResolveCompletionItemSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ResolveDocumentLinkSignature = [`ResolveDocumentLinkSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _RevealOutputChannelOn = [`Info[@js 1] | `Warn[@js 2] | `Error[@js 3] | `Never[@js 4]] [@js.enum]
      and _RevealOutputChannelOn_Info = [`Info[@js 1]] [@js.enum]
      and _RevealOutputChannelOn_Warn = [`Warn[@js 2]] [@js.enum]
      and _RevealOutputChannelOn_Error = [`Error[@js 3]] [@js.enum]
      and _RevealOutputChannelOn_Never = [`Never[@js 4]] [@js.enum]
      and _State = [`Stopped[@js 1] | `Starting[@js 3] | `Running[@js 2]] [@js.enum]
      and _State_Stopped = [`Stopped[@js 1]] [@js.enum]
      and _State_Starting = [`Starting[@js 3]] [@js.enum]
      and _State_Running = [`Running[@js 2]] [@js.enum]
      and _StateChangeEvent = [`StateChangeEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StaticFeature = [`StaticFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SynchronizeOptions = [`SynchronizeOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('PO, 'RO, 'PR) _TextDocumentFeature = [`TextDocumentFeature of ('PO * 'RO * 'PR) | `DynamicFeature of 'RO] intf
      [@@js.custom { of_js=(fun _PO _RO _PR -> Obj.magic); to_js=(fun _PO _RO _PR -> Obj.magic) }]
      and 'T _TextDocumentProviderFeature = [`TextDocumentProviderFeature of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _WindowMiddleware = _WindowMiddleware
      and _WorkspaceMiddleware = (_WorkspaceMiddleware, ConfigurationWorkspaceMiddleware.t_0, WorkspaceFolderWorkspaceMiddleware.t_0, FileOperationsMiddleware.t_0) intersection4
      and 'PR _WorkspaceProviderFeature = [`WorkspaceProviderFeature of 'PR] intf
      [@@js.custom { of_js=(fun _PR -> Obj.magic); to_js=(fun _PR -> Obj.magic) }]
      and _Middleware = [`_Middleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WindowMiddleware = [`_WindowMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceMiddleware = [`_WorkspaceMiddleware] intf
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
    val get_code2Protocol: t -> C2p.URIConverter.t_0 [@@js.get "code2Protocol"]
    val set_code2Protocol: t -> C2p.URIConverter.t_0 -> unit [@@js.set "code2Protocol"]
    val get_protocol2Code: t -> P2c.URIConverter.t_0 [@@js.get "protocol2Code"]
    val set_protocol2Code: t -> P2c.URIConverter.t_0 -> unit [@@js.set "protocol2Code"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_documentSelector: t -> DocumentSelector.t_0 [@@js.get "documentSelector"]
    val set_documentSelector: t -> DocumentSelector.t_0 -> unit [@@js.set "documentSelector"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_includeDeclaration: t -> bool [@@js.get "includeDeclaration"]
    val set_includeDeclaration: t -> bool -> unit [@@js.set "includeDeclaration"]
  end
  module AnonymousInterface3 : sig
    type t = anonymous_interface_3
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_isTrusted: t -> bool [@@js.get "isTrusted"]
    val set_isTrusted: t -> bool -> unit [@@js.set "isTrusted"]
  end
  module AnonymousInterface4 : sig
    type t = anonymous_interface_4
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_range: t -> VRange.t_0 [@@js.get "range"]
    val set_range: t -> VRange.t_0 -> unit [@@js.set "range"]
    val get_placeholder: t -> string [@@js.get "placeholder"]
    val set_placeholder: t -> string -> unit [@@js.set "placeholder"]
  end
  module AnonymousInterface5 : sig
    type t = anonymous_interface_5
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_send: t -> 'T [@@js.get "send"]
    val set_send: t -> 'T -> unit [@@js.set "send"]
  end
  module AnonymousInterface6 : sig
    type t = anonymous_interface_6
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val send: t -> event:FileCreateEvent.t_0 -> unit Promise.t_1 [@@js.call "send"]
  end
  module AnonymousInterface7 : sig
    type t = anonymous_interface_7
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val send: t -> event:FileDeleteEvent.t_0 -> unit Promise.t_1 [@@js.call "send"]
  end
  module AnonymousInterface8 : sig
    type t = anonymous_interface_8
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val send: t -> event:FileRenameEvent.t_0 -> unit Promise.t_1 [@@js.call "send"]
  end
  module AnonymousInterface9 : sig
    type t = anonymous_interface_9
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val send: t -> event:FileWillCreateEvent.t_0 -> unit Promise.t_1 [@@js.call "send"]
  end
  module AnonymousInterface10 : sig
    type t = anonymous_interface_10
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val send: t -> event:FileWillDeleteEvent.t_0 -> unit Promise.t_1 [@@js.call "send"]
  end
  module AnonymousInterface11 : sig
    type t = anonymous_interface_11
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val send: t -> event:FileWillRenameEvent.t_0 -> unit Promise.t_1 [@@js.call "send"]
  end
  (* import { TextDocumentChangeEvent, TextDocument, Disposable, OutputChannel, FileSystemWatcher as VFileSystemWatcher, DiagnosticCollection, Diagnostic as VDiagnostic, Uri, ProviderResult, CancellationToken, Position as VPosition, Location as VLocation, Range as VRange, CompletionItem as VCompletionItem, CompletionList as VCompletionList, SignatureHelp as VSignatureHelp, SignatureHelpContext as VSignatureHelpContext, Definition as VDefinition, DefinitionLink as VDefinitionLink, DocumentHighlight as VDocumentHighlight, SymbolInformation as VSymbolInformation, CodeActionContext as VCodeActionContext, Command as VCommand, CodeLens as VCodeLens, FormattingOptions as VFormattingOptions, TextEdit as VTextEdit, WorkspaceEdit as VWorkspaceEdit, Hover as VHover, CodeAction as VCodeAction, DocumentSymbol as VDocumentSymbol, DocumentLink as VDocumentLink, TextDocumentWillSaveEvent, WorkspaceFolder as VWorkspaceFolder, CompletionContext as VCompletionContext, CompletionItemProvider, HoverProvider, SignatureHelpProvider, DefinitionProvider, ReferenceProvider, DocumentHighlightProvider, CodeActionProvider, DocumentSymbolProvider, DocumentFormattingEditProvider, DocumentRangeFormattingEditProvider, OnTypeFormattingEditProvider, RenameProvider, DocumentLinkProvider, DocumentColorProvider, DeclarationProvider, FoldingRangeProvider, ImplementationProvider, SelectionRangeProvider, TypeDefinitionProvider, WorkspaceSymbolProvider, CallHierarchyProvider, FileWillCreateEvent, FileWillRenameEvent, FileWillDeleteEvent, FileCreateEvent, FileDeleteEvent, FileRenameEvent, LinkedEditingRangeProvider, Event as VEvent, CancellationError } from 'vscode'; *)
  (* import { Message, MessageSignature, ResponseError, RequestType0, RequestType, NotificationType0, NotificationType, ProtocolRequestType, ProtocolRequestType0, RequestHandler, RequestHandler0, GenericRequestHandler, ProtocolNotificationType, ProtocolNotificationType0, NotificationHandler, NotificationHandler0, GenericNotificationHandler, MessageReader, MessageWriter, Trace, Event, ClientCapabilities, TextDocumentRegistrationOptions, InitializeParams, InitializeResult, InitializeError, ServerCapabilities, DocumentSelector, DidOpenTextDocumentNotification, DidOpenTextDocumentParams, DidChangeTextDocumentNotification, DidChangeTextDocumentParams, DidCloseTextDocumentNotification, DidCloseTextDocumentParams, DidSaveTextDocumentNotification, DidSaveTextDocumentParams, WillSaveTextDocumentNotification, WillSaveTextDocumentWaitUntilRequest, FileEvent, CompletionRequest, HoverRequest, SignatureHelpRequest, DefinitionRequest, ReferencesRequest, DocumentHighlightRequest, DocumentSymbolRequest, WorkspaceSymbolRequest, CodeActionRequest, DocumentFormattingRequest, DocumentRangeFormattingRequest, DocumentOnTypeFormattingRequest, RenameRequest, DocumentLinkRequest, ProgressType, ProgressToken, StaticRegistrationOptions, DocumentColorRequest, DeclarationRequest, FoldingRangeRequest, ImplementationRequest, SelectionRangeRequest, TypeDefinitionRequest, CallHierarchyPrepareRequest, CancellationStrategy, RegistrationType, SemanticTokensRegistrationType, ShowDocumentRequest, FileOperationRegistrationOptions, WillCreateFilesRequest, WillRenameFilesRequest, WillDeleteFilesRequest, DidCreateFilesNotification, DidDeleteFilesNotification, DidRenameFilesNotification, ShowDocumentParams, ShowDocumentResult, LinkedEditingRangeRequest, WorkDoneProgressBegin, WorkDoneProgressEnd, WorkDoneProgressReport } from 'vscode-languageserver-protocol'; *)
  (* import type { ColorProviderMiddleware } from './colorProvider'; *)
  (* import type { ImplementationMiddleware } from './implementation'; *)
  (* import type { TypeDefinitionMiddleware } from './typeDefinition'; *)
  (* import { ConfigurationWorkspaceMiddleware } from './configuration'; *)
  (* import type { WorkspaceFolderWorkspaceMiddleware } from './workspaceFolders'; *)
  (* import type { FoldingRangeProviderMiddleware } from './foldingRange'; *)
  (* import type { DeclarationMiddleware } from './declaration'; *)
  (* import type { SelectionRangeProviderMiddleware } from './selectionRange'; *)
  (* import type { CallHierarchyMiddleware } from './callHierarchy'; *)
  (* import type { SemanticTokensMiddleware, SemanticTokensProviders } from './semanticTokens'; *)
  (* import type { FileOperationsMiddleware } from './fileOperations'; *)
  (* import { LinkedEditingRangeMiddleware } from './linkedEditingRange'; *)
  (* import * as c2p from './codeConverter'; *)
  (* import * as p2c from './protocolConverter'; *)
  module[@js.scope "ConnectionOptions"] ConnectionOptions : sig
    type t = _ConnectionOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_cancellationStrategy: t -> CancellationStrategy.t_0 [@@js.get "cancellationStrategy"]
    val set_cancellationStrategy: t -> CancellationStrategy.t_0 -> unit [@@js.set "cancellationStrategy"]
    val get_maxRestartCount: t -> float [@@js.get "maxRestartCount"]
    val set_maxRestartCount: t -> float -> unit [@@js.set "maxRestartCount"]
  end
  module ErrorAction : sig
    type t = _ErrorAction
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CloseAction : sig
    type t = _CloseAction
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "ErrorHandler"] ErrorHandler : sig
    type t = _ErrorHandler
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val error: t -> error:Error.t_0 -> message:Message.t_0 or_undefined -> count:float or_undefined -> _ErrorAction [@@js.call "error"]
    val closed: t -> _CloseAction [@@js.call "closed"]
  end
  module[@js.scope "InitializationFailedHandler"] InitializationFailedHandler : sig
    type t = _InitializationFailedHandler
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> error:(Error.t_0, any, InitializeError.t_0 ResponseError.t_1) union3 -> bool [@@js.apply]
  end
  module[@js.scope "SynchronizeOptions"] SynchronizeOptions : sig
    type t = _SynchronizeOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_configurationSection: t -> string list or_string [@@js.get "configurationSection"]
    val set_configurationSection: t -> string list or_string -> unit [@@js.set "configurationSection"]
    val get_fileEvents: t -> (VFileSystemWatcher.t_0, VFileSystemWatcher.t_0) or_array [@@js.get "fileEvents"]
    val set_fileEvents: t -> (VFileSystemWatcher.t_0, VFileSystemWatcher.t_0) or_array -> unit [@@js.set "fileEvents"]
  end
  module DiagnosticPullMode : sig
    type t = _DiagnosticPullMode
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "DiagnosticPullOptions"] DiagnosticPullOptions : sig
    type t = _DiagnosticPullOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_onType: t -> bool [@@js.get "onType"]
    val set_onType: t -> bool -> unit [@@js.set "onType"]
    val get_onSave: t -> bool [@@js.get "onSave"]
    val set_onSave: t -> bool -> unit [@@js.set "onSave"]
    val filter: t -> document:TextDocument.t_0 -> mode:_DiagnosticPullMode -> bool [@@js.call "filter"]
  end
  module RevealOutputChannelOn : sig
    type t = _RevealOutputChannelOn
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "HandleDiagnosticsSignature"] HandleDiagnosticsSignature : sig
    type t = _HandleDiagnosticsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> uri:Uri.t_0 -> diagnostics:VDiagnostic.t_0 list -> unit [@@js.apply]
  end
  module[@js.scope "HandleWorkDoneProgressSignature"] HandleWorkDoneProgressSignature : sig
    type t = _HandleWorkDoneProgressSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> token:ProgressToken.t_0 -> params:(WorkDoneProgressBegin.t_0, WorkDoneProgressEnd.t_0, WorkDoneProgressReport.t_0) union3 -> unit [@@js.apply]
  end
  module[@js.scope "ProvideCompletionItemsSignature"] ProvideCompletionItemsSignature : sig
    type t = _ProvideCompletionItemsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> context:VCompletionContext.t_0 -> token:CancellationToken.t_0 -> (VCompletionList.t_0, VCompletionItem.t_0) or_array ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ResolveCompletionItemSignature"] ResolveCompletionItemSignature : sig
    type t = _ResolveCompletionItemSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> item:VCompletionItem.t_0 -> token:CancellationToken.t_0 -> VCompletionItem.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideHoverSignature"] ProvideHoverSignature : sig
    type t = _ProvideHoverSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> VHover.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideSignatureHelpSignature"] ProvideSignatureHelpSignature : sig
    type t = _ProvideSignatureHelpSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> context:VSignatureHelpContext.t_0 -> token:CancellationToken.t_0 -> VSignatureHelp.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideDefinitionSignature"] ProvideDefinitionSignature : sig
    type t = _ProvideDefinitionSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> (VDefinition.t_0, VDefinitionLink.t_0) or_array ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideReferencesSignature"] ProvideReferencesSignature : sig
    type t = _ProvideReferencesSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> options:anonymous_interface_2 -> token:CancellationToken.t_0 -> VLocation.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideDocumentHighlightsSignature"] ProvideDocumentHighlightsSignature : sig
    type t = _ProvideDocumentHighlightsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> VDocumentHighlight.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideDocumentSymbolsSignature"] ProvideDocumentSymbolsSignature : sig
    type t = _ProvideDocumentSymbolsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> (VDocumentSymbol.t_0, VSymbolInformation.t_0) union2 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideWorkspaceSymbolsSignature"] ProvideWorkspaceSymbolsSignature : sig
    type t = _ProvideWorkspaceSymbolsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> query:string -> token:CancellationToken.t_0 -> VSymbolInformation.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideCodeActionsSignature"] ProvideCodeActionsSignature : sig
    type t = _ProvideCodeActionsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> range:VRange.t_0 -> context:VCodeActionContext.t_0 -> token:CancellationToken.t_0 -> (VCodeAction.t_0, VCommand.t_0) union2 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ResolveCodeActionSignature"] ResolveCodeActionSignature : sig
    type t = _ResolveCodeActionSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> item:VCodeAction.t_0 -> token:CancellationToken.t_0 -> VCodeAction.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideCodeLensesSignature"] ProvideCodeLensesSignature : sig
    type t = _ProvideCodeLensesSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> VCodeLens.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ResolveCodeLensSignature"] ResolveCodeLensSignature : sig
    type t = _ResolveCodeLensSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> codeLens:VCodeLens.t_0 -> token:CancellationToken.t_0 -> VCodeLens.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideDocumentFormattingEditsSignature"] ProvideDocumentFormattingEditsSignature : sig
    type t = _ProvideDocumentFormattingEditsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> options:VFormattingOptions.t_0 -> token:CancellationToken.t_0 -> VTextEdit.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideDocumentRangeFormattingEditsSignature"] ProvideDocumentRangeFormattingEditsSignature : sig
    type t = _ProvideDocumentRangeFormattingEditsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> range:VRange.t_0 -> options:VFormattingOptions.t_0 -> token:CancellationToken.t_0 -> VTextEdit.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideOnTypeFormattingEditsSignature"] ProvideOnTypeFormattingEditsSignature : sig
    type t = _ProvideOnTypeFormattingEditsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> ch:string -> options:VFormattingOptions.t_0 -> token:CancellationToken.t_0 -> VTextEdit.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideRenameEditsSignature"] ProvideRenameEditsSignature : sig
    type t = _ProvideRenameEditsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> newName:string -> token:CancellationToken.t_0 -> VWorkspaceEdit.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "PrepareRenameSignature"] PrepareRenameSignature : sig
    type t = _PrepareRenameSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> (VRange.t_0, anonymous_interface_4) union2 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ProvideDocumentLinksSignature"] ProvideDocumentLinksSignature : sig
    type t = _ProvideDocumentLinksSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> VDocumentLink.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ResolveDocumentLinkSignature"] ResolveDocumentLinkSignature : sig
    type t = _ResolveDocumentLinkSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> link:VDocumentLink.t_0 -> token:CancellationToken.t_0 -> VDocumentLink.t_0 ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ExecuteCommandSignature"] ExecuteCommandSignature : sig
    type t = _ExecuteCommandSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> command:string -> args:any list -> any ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "NextSignature"] NextSignature : sig
    type ('P, 'R) t = ('P, 'R) _NextSignature
    val t_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('P, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> Ojs.t -> ('P, 'R) t
    type ('P, 'R) t_2 = ('P, 'R) t
    val t_2_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('P, 'R) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> Ojs.t -> ('P, 'R) t_2
    val apply: ('P, 'R) t -> this:unit -> data:'P -> next:(data:'P -> 'R) -> 'R [@@js.apply]
  end
  module[@js.scope "DidChangeConfigurationSignature"] DidChangeConfigurationSignature : sig
    type t = _DidChangeConfigurationSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> sections:string list or_undefined -> unit [@@js.apply]
  end
  module[@js.scope "DidChangeWatchedFileSignature"] DidChangeWatchedFileSignature : sig
    type t = _DidChangeWatchedFileSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> event:FileEvent.t_0 -> unit [@@js.apply]
  end
  module[@js.scope "_WorkspaceMiddleware"] M_WorkspaceMiddleware : sig
    type t = _WorkspaceMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val didChangeConfiguration: t -> this:unit -> sections:string list or_undefined -> next:_DidChangeConfigurationSignature -> unit [@@js.call "didChangeConfiguration"]
    val didChangeWatchedFile: t -> this:unit -> event:FileEvent.t_0 -> next:_DidChangeWatchedFileSignature -> unit [@@js.call "didChangeWatchedFile"]
  end
  module WorkspaceMiddleware : sig
    type t = _WorkspaceMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "_WindowMiddleware"] M_WindowMiddleware : sig
    type t = _WindowMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val showDocument: t -> this:unit -> params:ShowDocumentParams.t_0 -> next:ShowDocumentRequest.HandlerSignature.t_0 -> ShowDocumentResult.t_0 Promise.t_1 [@@js.call "showDocument"]
  end
  module WindowMiddleware : sig
    type t = _WindowMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "_Middleware"] M_Middleware : sig
    type t = _Middleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_didOpen: t -> (TextDocument.t_0, unit) _NextSignature [@@js.get "didOpen"]
    val set_didOpen: t -> (TextDocument.t_0, unit) _NextSignature -> unit [@@js.set "didOpen"]
    val get_didChange: t -> (TextDocumentChangeEvent.t_0, unit) _NextSignature [@@js.get "didChange"]
    val set_didChange: t -> (TextDocumentChangeEvent.t_0, unit) _NextSignature -> unit [@@js.set "didChange"]
    val get_willSave: t -> (TextDocumentWillSaveEvent.t_0, unit) _NextSignature [@@js.get "willSave"]
    val set_willSave: t -> (TextDocumentWillSaveEvent.t_0, unit) _NextSignature -> unit [@@js.set "willSave"]
    val get_willSaveWaitUntil: t -> (TextDocumentWillSaveEvent.t_0, VTextEdit.t_0 list Thenable.t_1) _NextSignature [@@js.get "willSaveWaitUntil"]
    val set_willSaveWaitUntil: t -> (TextDocumentWillSaveEvent.t_0, VTextEdit.t_0 list Thenable.t_1) _NextSignature -> unit [@@js.set "willSaveWaitUntil"]
    val get_didSave: t -> (TextDocument.t_0, unit) _NextSignature [@@js.get "didSave"]
    val set_didSave: t -> (TextDocument.t_0, unit) _NextSignature -> unit [@@js.set "didSave"]
    val get_didClose: t -> (TextDocument.t_0, unit) _NextSignature [@@js.get "didClose"]
    val set_didClose: t -> (TextDocument.t_0, unit) _NextSignature -> unit [@@js.set "didClose"]
    val handleDiagnostics: t -> this:unit -> uri:Uri.t_0 -> diagnostics:VDiagnostic.t_0 list -> next:_HandleDiagnosticsSignature -> unit [@@js.call "handleDiagnostics"]
    val handleWorkDoneProgress: t -> this:unit -> token:ProgressToken.t_0 -> params:(WorkDoneProgressBegin.t_0, WorkDoneProgressEnd.t_0, WorkDoneProgressReport.t_0) union3 -> next:_HandleWorkDoneProgressSignature -> unit [@@js.call "handleWorkDoneProgress"]
    val provideCompletionItem: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> context:VCompletionContext.t_0 -> token:CancellationToken.t_0 -> next:_ProvideCompletionItemsSignature -> (VCompletionList.t_0, VCompletionItem.t_0) or_array ProviderResult.t_1 [@@js.call "provideCompletionItem"]
    val resolveCompletionItem: t -> this:unit -> item:VCompletionItem.t_0 -> token:CancellationToken.t_0 -> next:_ResolveCompletionItemSignature -> VCompletionItem.t_0 ProviderResult.t_1 [@@js.call "resolveCompletionItem"]
    val provideHover: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> next:_ProvideHoverSignature -> VHover.t_0 ProviderResult.t_1 [@@js.call "provideHover"]
    val provideSignatureHelp: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> context:VSignatureHelpContext.t_0 -> token:CancellationToken.t_0 -> next:_ProvideSignatureHelpSignature -> VSignatureHelp.t_0 ProviderResult.t_1 [@@js.call "provideSignatureHelp"]
    val provideDefinition: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDefinitionSignature -> (VDefinition.t_0, VDefinitionLink.t_0) or_array ProviderResult.t_1 [@@js.call "provideDefinition"]
    val provideReferences: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> options:anonymous_interface_2 -> token:CancellationToken.t_0 -> next:_ProvideReferencesSignature -> VLocation.t_0 list ProviderResult.t_1 [@@js.call "provideReferences"]
    val provideDocumentHighlights: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDocumentHighlightsSignature -> VDocumentHighlight.t_0 list ProviderResult.t_1 [@@js.call "provideDocumentHighlights"]
    val provideDocumentSymbols: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDocumentSymbolsSignature -> (VDocumentSymbol.t_0, VSymbolInformation.t_0) union2 list ProviderResult.t_1 [@@js.call "provideDocumentSymbols"]
    val provideWorkspaceSymbols: t -> this:unit -> query:string -> token:CancellationToken.t_0 -> next:_ProvideWorkspaceSymbolsSignature -> VSymbolInformation.t_0 list ProviderResult.t_1 [@@js.call "provideWorkspaceSymbols"]
    val provideCodeActions: t -> this:unit -> document:TextDocument.t_0 -> range:VRange.t_0 -> context:VCodeActionContext.t_0 -> token:CancellationToken.t_0 -> next:_ProvideCodeActionsSignature -> (VCodeAction.t_0, VCommand.t_0) union2 list ProviderResult.t_1 [@@js.call "provideCodeActions"]
    val resolveCodeAction: t -> this:unit -> item:VCodeAction.t_0 -> token:CancellationToken.t_0 -> next:_ResolveCodeActionSignature -> VCodeAction.t_0 ProviderResult.t_1 [@@js.call "resolveCodeAction"]
    val provideCodeLenses: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> next:_ProvideCodeLensesSignature -> VCodeLens.t_0 list ProviderResult.t_1 [@@js.call "provideCodeLenses"]
    val resolveCodeLens: t -> this:unit -> codeLens:VCodeLens.t_0 -> token:CancellationToken.t_0 -> next:_ResolveCodeLensSignature -> VCodeLens.t_0 ProviderResult.t_1 [@@js.call "resolveCodeLens"]
    val provideDocumentFormattingEdits: t -> this:unit -> document:TextDocument.t_0 -> options:VFormattingOptions.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDocumentFormattingEditsSignature -> VTextEdit.t_0 list ProviderResult.t_1 [@@js.call "provideDocumentFormattingEdits"]
    val provideDocumentRangeFormattingEdits: t -> this:unit -> document:TextDocument.t_0 -> range:VRange.t_0 -> options:VFormattingOptions.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDocumentRangeFormattingEditsSignature -> VTextEdit.t_0 list ProviderResult.t_1 [@@js.call "provideDocumentRangeFormattingEdits"]
    val provideOnTypeFormattingEdits: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> ch:string -> options:VFormattingOptions.t_0 -> token:CancellationToken.t_0 -> next:_ProvideOnTypeFormattingEditsSignature -> VTextEdit.t_0 list ProviderResult.t_1 [@@js.call "provideOnTypeFormattingEdits"]
    val provideRenameEdits: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> newName:string -> token:CancellationToken.t_0 -> next:_ProvideRenameEditsSignature -> VWorkspaceEdit.t_0 ProviderResult.t_1 [@@js.call "provideRenameEdits"]
    val prepareRename: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> next:_PrepareRenameSignature -> (VRange.t_0, anonymous_interface_4) union2 ProviderResult.t_1 [@@js.call "prepareRename"]
    val provideDocumentLinks: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDocumentLinksSignature -> VDocumentLink.t_0 list ProviderResult.t_1 [@@js.call "provideDocumentLinks"]
    val resolveDocumentLink: t -> this:unit -> link:VDocumentLink.t_0 -> token:CancellationToken.t_0 -> next:_ResolveDocumentLinkSignature -> VDocumentLink.t_0 ProviderResult.t_1 [@@js.call "resolveDocumentLink"]
    val executeCommand: t -> this:unit -> command:string -> args:any list -> next:_ExecuteCommandSignature -> any ProviderResult.t_1 [@@js.call "executeCommand"]
    val get_workspace: t -> _WorkspaceMiddleware [@@js.get "workspace"]
    val set_workspace: t -> _WorkspaceMiddleware -> unit [@@js.set "workspace"]
    val get_window: t -> _WindowMiddleware [@@js.get "window"]
    val set_window: t -> _WindowMiddleware -> unit [@@js.set "window"]
  end
  module Middleware : sig
    type t = _Middleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "LanguageClientOptions"] LanguageClientOptions : sig
    type t = _LanguageClientOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_documentSelector: t -> (DocumentSelector.t_0, string) or_array [@@js.get "documentSelector"]
    val set_documentSelector: t -> (DocumentSelector.t_0, string) or_array -> unit [@@js.set "documentSelector"]
    val get_synchronize: t -> _SynchronizeOptions [@@js.get "synchronize"]
    val set_synchronize: t -> _SynchronizeOptions -> unit [@@js.set "synchronize"]
    val get_diagnosticCollectionName: t -> string [@@js.get "diagnosticCollectionName"]
    val set_diagnosticCollectionName: t -> string -> unit [@@js.set "diagnosticCollectionName"]
    val get_outputChannel: t -> OutputChannel.t_0 [@@js.get "outputChannel"]
    val set_outputChannel: t -> OutputChannel.t_0 -> unit [@@js.set "outputChannel"]
    val get_outputChannelName: t -> string [@@js.get "outputChannelName"]
    val set_outputChannelName: t -> string -> unit [@@js.set "outputChannelName"]
    val get_traceOutputChannel: t -> OutputChannel.t_0 [@@js.get "traceOutputChannel"]
    val set_traceOutputChannel: t -> OutputChannel.t_0 -> unit [@@js.set "traceOutputChannel"]
    val get_revealOutputChannelOn: t -> _RevealOutputChannelOn [@@js.get "revealOutputChannelOn"]
    val set_revealOutputChannelOn: t -> _RevealOutputChannelOn -> unit [@@js.set "revealOutputChannelOn"]
    val get_stdioEncoding: t -> string [@@js.get "stdioEncoding"]
    val set_stdioEncoding: t -> string -> unit [@@js.set "stdioEncoding"]
    val get_initializationOptions: t -> (any, (unit -> any)) union2 [@@js.get "initializationOptions"]
    val set_initializationOptions: t -> (any, (unit -> any)) union2 -> unit [@@js.set "initializationOptions"]
    val get_initializationFailedHandler: t -> _InitializationFailedHandler [@@js.get "initializationFailedHandler"]
    val set_initializationFailedHandler: t -> _InitializationFailedHandler -> unit [@@js.set "initializationFailedHandler"]
    val get_progressOnInitialization: t -> bool [@@js.get "progressOnInitialization"]
    val set_progressOnInitialization: t -> bool -> unit [@@js.set "progressOnInitialization"]
    val get_errorHandler: t -> _ErrorHandler [@@js.get "errorHandler"]
    val set_errorHandler: t -> _ErrorHandler -> unit [@@js.set "errorHandler"]
    val get_middleware: t -> _Middleware [@@js.get "middleware"]
    val set_middleware: t -> _Middleware -> unit [@@js.set "middleware"]
    val get_uriConverters: t -> anonymous_interface_0 [@@js.get "uriConverters"]
    val set_uriConverters: t -> anonymous_interface_0 -> unit [@@js.set "uriConverters"]
    val get_workspaceFolder: t -> VWorkspaceFolder.t_0 [@@js.get "workspaceFolder"]
    val set_workspaceFolder: t -> VWorkspaceFolder.t_0 -> unit [@@js.set "workspaceFolder"]
    val get_connectionOptions: t -> _ConnectionOptions [@@js.get "connectionOptions"]
    val set_connectionOptions: t -> _ConnectionOptions -> unit [@@js.set "connectionOptions"]
    val get_markdown: t -> anonymous_interface_3 [@@js.get "markdown"]
    val set_markdown: t -> anonymous_interface_3 -> unit [@@js.set "markdown"]
    val get_diagnosticPullOptions: t -> _DiagnosticPullOptions [@@js.get "diagnosticPullOptions"]
    val set_diagnosticPullOptions: t -> _DiagnosticPullOptions -> unit [@@js.set "diagnosticPullOptions"]
  end
  module State : sig
    type t = _State
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "StateChangeEvent"] StateChangeEvent : sig
    type t = _StateChangeEvent
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_oldState: t -> _State [@@js.get "oldState"]
    val set_oldState: t -> _State -> unit [@@js.set "oldState"]
    val get_newState: t -> _State [@@js.get "newState"]
    val set_newState: t -> _State -> unit [@@js.set "newState"]
  end
  module[@js.scope "RegistrationData"] RegistrationData : sig
    type 'T t = 'T _RegistrationData
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get_id: 'T t -> string [@@js.get "id"]
    val set_id: 'T t -> string -> unit [@@js.set "id"]
    val get_registerOptions: 'T t -> 'T [@@js.get "registerOptions"]
    val set_registerOptions: 'T t -> 'T -> unit [@@js.set "registerOptions"]
  end
  module[@js.scope "StaticFeature"] StaticFeature : sig
    type t = _StaticFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val fillInitializeParams: t -> params:InitializeParams.t_0 -> unit [@@js.call "fillInitializeParams"]
    val fillClientCapabilities: t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 or_undefined -> unit [@@js.call "initialize"]
    val dispose: t -> unit [@@js.call "dispose"]
  end
  module[@js.scope "DynamicFeature"] DynamicFeature : sig
    type 'RO t = 'RO _DynamicFeature
    val t_to_js: ('RO -> Ojs.t) -> 'RO t -> Ojs.t
    val t_of_js: (Ojs.t -> 'RO) -> Ojs.t -> 'RO t
    type 'RO t_1 = 'RO t
    val t_1_to_js: ('RO -> Ojs.t) -> 'RO t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'RO) -> Ojs.t -> 'RO t_1
    val fillInitializeParams: 'RO t -> params:InitializeParams.t_0 -> unit [@@js.call "fillInitializeParams"]
    val fillClientCapabilities: 'RO t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: 'RO t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 or_undefined -> unit [@@js.call "initialize"]
    val get_registrationType: 'RO t -> 'RO RegistrationType.t_1 [@@js.get "registrationType"]
    val set_registrationType: 'RO t -> 'RO RegistrationType.t_1 -> unit [@@js.set "registrationType"]
    val register: 'RO t -> data:'RO _RegistrationData -> unit [@@js.call "register"]
    val unregister: 'RO t -> id:string -> unit [@@js.call "unregister"]
    val dispose: 'RO t -> unit [@@js.call "dispose"]
  end
  module[@js.scope "NotificationFeature"] NotificationFeature : sig
    type 'T t = 'T _NotificationFeature
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val getProvider: 'T t -> document:TextDocument.t_0 -> anonymous_interface_5 or_undefined [@@js.call "getProvider"]
  end
  module[@js.scope "NotificationSendEvent"] NotificationSendEvent : sig
    type ('E, 'P) t = ('E, 'P) _NotificationSendEvent
    val t_to_js: ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t
    type ('E, 'P) t_2 = ('E, 'P) t
    val t_2_to_js: ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t_2
    val get_original: ('E, 'P) t -> 'E [@@js.get "original"]
    val set_original: ('E, 'P) t -> 'E -> unit [@@js.set "original"]
    val get_type: ('E, 'P) t -> ('P, TextDocumentRegistrationOptions.t_0) ProtocolNotificationType.t_2 [@@js.get "type"]
    val set_type: ('E, 'P) t -> ('P, TextDocumentRegistrationOptions.t_0) ProtocolNotificationType.t_2 -> unit [@@js.set "type"]
    val get_params: ('E, 'P) t -> 'P [@@js.get "params"]
    val set_params: ('E, 'P) t -> 'P -> unit [@@js.set "params"]
  end
  module[@js.scope "NotifyingFeature"] NotifyingFeature : sig
    type ('E, 'P) t = ('E, 'P) _NotifyingFeature
    val t_to_js: ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t
    type ('E, 'P) t_2 = ('E, 'P) t
    val t_2_to_js: ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t_2
    val get_onNotificationSent: ('E, 'P) t -> ('E, 'P) _NotificationSendEvent VEvent.t_1 [@@js.get "onNotificationSent"]
    val set_onNotificationSent: ('E, 'P) t -> ('E, 'P) _NotificationSendEvent VEvent.t_1 -> unit [@@js.set "onNotificationSent"]
  end
  module[@js.scope "DidOpenTextDocumentFeatureShape"] DidOpenTextDocumentFeatureShape : sig
    type t = _DidOpenTextDocumentFeatureShape
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_openDocuments: t -> TextDocument.t_0 Iterable.t_1 [@@js.get "openDocuments"]
    val set_openDocuments: t -> TextDocument.t_0 Iterable.t_1 -> unit [@@js.set "openDocuments"]
    val cast: t -> TextDocumentRegistrationOptions.t_0 _DynamicFeature [@@js.cast]
    val cast': t -> (textDocument:TextDocument.t_0 -> unit) _NotificationFeature [@@js.cast]
    val cast'': t -> (TextDocument.t_0, DidOpenTextDocumentParams.t_0) _NotifyingFeature [@@js.cast]
  end
  module[@js.scope "DidCloseTextDocumentFeatureShape"] DidCloseTextDocumentFeatureShape : sig
    type t = _DidCloseTextDocumentFeatureShape
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 _DynamicFeature [@@js.cast]
    val cast': t -> (textDocument:TextDocument.t_0 -> unit) _NotificationFeature [@@js.cast]
    val cast'': t -> (TextDocument.t_0, DidCloseTextDocumentParams.t_0) _NotifyingFeature [@@js.cast]
  end
  module[@js.scope "DidChangeTextDocumentFeatureShape"] DidChangeTextDocumentFeatureShape : sig
    type t = _DidChangeTextDocumentFeatureShape
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 _DynamicFeature [@@js.cast]
    val cast': t -> (event:TextDocumentChangeEvent.t_0 -> unit) _NotificationFeature [@@js.cast]
    val cast'': t -> (TextDocumentChangeEvent.t_0, DidChangeTextDocumentParams.t_0) _NotifyingFeature [@@js.cast]
  end
  module[@js.scope "DidSaveTextDocumentFeatureShape"] DidSaveTextDocumentFeatureShape : sig
    type t = _DidSaveTextDocumentFeatureShape
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 _DynamicFeature [@@js.cast]
    val cast': t -> (textDocument:TextDocument.t_0 -> unit) _NotificationFeature [@@js.cast]
    val cast'': t -> (TextDocument.t_0, DidSaveTextDocumentParams.t_0) _NotifyingFeature [@@js.cast]
  end
  module[@js.scope "TextDocumentProviderFeature"] TextDocumentProviderFeature : sig
    type 'T t = 'T _TextDocumentProviderFeature
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val getProvider: 'T t -> textDocument:TextDocument.t_0 -> 'T or_undefined [@@js.call "getProvider"]
  end
  module[@js.scope "TextDocumentFeature"] TextDocumentFeature : sig
    type ('PO, 'RO, 'PR) t = ('PO, 'RO, 'PR) _TextDocumentFeature
    val t_to_js: ('PO -> Ojs.t) -> ('RO -> Ojs.t) -> ('PR -> Ojs.t) -> ('PO, 'RO, 'PR) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'PO) -> (Ojs.t -> 'RO) -> (Ojs.t -> 'PR) -> Ojs.t -> ('PO, 'RO, 'PR) t
    type ('PO, 'RO, 'PR) t_3 = ('PO, 'RO, 'PR) t
    val t_3_to_js: ('PO -> Ojs.t) -> ('RO -> Ojs.t) -> ('PR -> Ojs.t) -> ('PO, 'RO, 'PR) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'PO) -> (Ojs.t -> 'RO) -> (Ojs.t -> 'PR) -> Ojs.t -> ('PO, 'RO, 'PR) t_3
    val get__client: ('PO, 'RO, 'PR) t -> _BaseLanguageClient [@@js.get "_client"]
    val set__client: ('PO, 'RO, 'PR) t -> _BaseLanguageClient -> unit [@@js.set "_client"]
    val get__registrationType: ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *)any [@@js.get "_registrationType"]
    val set__registrationType: ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_registrationType"]
    val get__registrations: ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *)any [@@js.get "_registrations"]
    val set__registrations: ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_registrations"]
    val create: _client:_BaseLanguageClient -> _registrationType:'RO RegistrationType.t_1 -> ('PO, 'RO, 'PR) t [@@js.create]
    val get_registrationType: ('PO, 'RO, 'PR) t -> 'RO RegistrationType.t_1 [@@js.get "registrationType"]
    val fillClientCapabilities: ('PO, 'RO, 'PR) t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: ('PO, 'RO, 'PR) t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val register: ('PO, 'RO, 'PR) t -> data:'RO _RegistrationData -> unit [@@js.call "register"]
    val registerLanguageProvider: ('PO, 'RO, 'PR) t -> options:'RO -> id:string -> (Disposable.t_0 * 'PR) [@@js.call "registerLanguageProvider"]
    val unregister: ('PO, 'RO, 'PR) t -> id:string -> unit [@@js.call "unregister"]
    val dispose: ('PO, 'RO, 'PR) t -> unit [@@js.call "dispose"]
    val getRegistration: ('PO, 'RO, 'PR) t -> documentSelector:DocumentSelector.t_0 or_undefined -> capability:'PO or_undefined -> (string or_undefined * ('RO, anonymous_interface_1) intersection2 or_undefined) [@@js.call "getRegistration"]
    val getRegistrationOptions: ('PO, 'RO, 'PR) t -> documentSelector:DocumentSelector.t_0 or_undefined -> capability:'PO or_undefined -> ('RO, anonymous_interface_1) intersection2 or_undefined [@@js.call "getRegistrationOptions"]
    val getProvider: ('PO, 'RO, 'PR) t -> textDocument:TextDocument.t_0 -> 'PR or_undefined [@@js.call "getProvider"]
    val getAllProviders: ('PO, 'RO, 'PR) t -> 'PR Iterable.t_1 [@@js.call "getAllProviders"]
    val cast: ('PO, 'RO, 'PR) t -> 'RO _DynamicFeature [@@js.cast]
  end
  module[@js.scope "WorkspaceProviderFeature"] WorkspaceProviderFeature : sig
    type 'PR t = 'PR _WorkspaceProviderFeature
    val t_to_js: ('PR -> Ojs.t) -> 'PR t -> Ojs.t
    val t_of_js: (Ojs.t -> 'PR) -> Ojs.t -> 'PR t
    type 'PR t_1 = 'PR t
    val t_1_to_js: ('PR -> Ojs.t) -> 'PR t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'PR) -> Ojs.t -> 'PR t_1
    val getProviders: 'PR t -> 'PR list or_undefined [@@js.call "getProviders"]
  end
  module[@js.scope "ProvideResolveFeature"] ProvideResolveFeature : sig
    type ('T1, 'T2) t = ('T1, 'T2) _ProvideResolveFeature
    val t_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t
    type ('T1, 'T2) t_2 = ('T1, 'T2) t
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    val get_provide: ('T1, 'T2) t -> 'T1 [@@js.get "provide"]
    val set_provide: ('T1, 'T2) t -> 'T1 -> unit [@@js.set "provide"]
    val get_resolve: ('T1, 'T2) t -> 'T2 [@@js.get "resolve"]
    val set_resolve: ('T1, 'T2) t -> 'T2 -> unit [@@js.set "resolve"]
  end
  module[@js.scope "MessageTransports"] MessageTransports : sig
    type t = _MessageTransports
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_reader: t -> MessageReader.t_0 [@@js.get "reader"]
    val set_reader: t -> MessageReader.t_0 -> unit [@@js.set "reader"]
    val get_writer: t -> MessageWriter.t_0 [@@js.get "writer"]
    val set_writer: t -> MessageWriter.t_0 -> unit [@@js.set "writer"]
    val get_detached: t -> bool [@@js.get "detached"]
    val set_detached: t -> bool -> unit [@@js.set "detached"]
  end
  module[@js.scope "MessageTransports"] MessageTransports : sig
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "LSPCancellationError"] LSPCancellationError : sig
    type t = _LSPCancellationError
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_data: t -> (untyped_object, untyped_object) union2 [@@js.get "data"]
    val create: data:(untyped_object, untyped_object) union2 -> t [@@js.create]
    val cast: t -> CancellationError.t_0 [@@js.cast]
  end
  module[@js.scope "BaseLanguageClient"] BaseLanguageClient : sig
    type t = _BaseLanguageClient
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__id: t -> (* FIXME: unknown type *)any [@@js.get "_id"]
    val set__id: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_id"]
    val get__name: t -> (* FIXME: unknown type *)any [@@js.get "_name"]
    val set__name: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_name"]
    val get__clientOptions: t -> (* FIXME: unknown type *)any [@@js.get "_clientOptions"]
    val set__clientOptions: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_clientOptions"]
    val get__state: t -> (* FIXME: unknown type *)any [@@js.get "_state"]
    val set__state: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_state"]
    val get__onReady: t -> (* FIXME: unknown type *)any [@@js.get "_onReady"]
    val set__onReady: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_onReady"]
    val get__onReadyCallbacks: t -> (* FIXME: unknown type *)any [@@js.get "_onReadyCallbacks"]
    val set__onReadyCallbacks: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_onReadyCallbacks"]
    val get__onStop: t -> (* FIXME: unknown type *)any [@@js.get "_onStop"]
    val set__onStop: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_onStop"]
    val get__connectionPromise: t -> (* FIXME: unknown type *)any [@@js.get "_connectionPromise"]
    val set__connectionPromise: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_connectionPromise"]
    val get__resolvedConnection: t -> (* FIXME: unknown type *)any [@@js.get "_resolvedConnection"]
    val set__resolvedConnection: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_resolvedConnection"]
    val get__initializeResult: t -> (* FIXME: unknown type *)any [@@js.get "_initializeResult"]
    val set__initializeResult: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_initializeResult"]
    val get__outputChannel: t -> (* FIXME: unknown type *)any [@@js.get "_outputChannel"]
    val set__outputChannel: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_outputChannel"]
    val get__disposeOutputChannel: t -> (* FIXME: unknown type *)any [@@js.get "_disposeOutputChannel"]
    val set__disposeOutputChannel: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_disposeOutputChannel"]
    val get__traceOutputChannel: t -> (* FIXME: unknown type *)any [@@js.get "_traceOutputChannel"]
    val set__traceOutputChannel: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_traceOutputChannel"]
    val get__capabilities: t -> (* FIXME: unknown type *)any [@@js.get "_capabilities"]
    val set__capabilities: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_capabilities"]
    val get__listeners: t -> (* FIXME: unknown type *)any [@@js.get "_listeners"]
    val set__listeners: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_listeners"]
    val get__providers: t -> (* FIXME: unknown type *)any [@@js.get "_providers"]
    val set__providers: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_providers"]
    val get__diagnostics: t -> (* FIXME: unknown type *)any [@@js.get "_diagnostics"]
    val set__diagnostics: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_diagnostics"]
    val get__syncedDocuments: t -> (* FIXME: unknown type *)any [@@js.get "_syncedDocuments"]
    val set__syncedDocuments: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_syncedDocuments"]
    val get__fileEvents: t -> (* FIXME: unknown type *)any [@@js.get "_fileEvents"]
    val set__fileEvents: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_fileEvents"]
    val get__fileEventDelayer: t -> (* FIXME: unknown type *)any [@@js.get "_fileEventDelayer"]
    val set__fileEventDelayer: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_fileEventDelayer"]
    val get__telemetryEmitter: t -> (* FIXME: unknown type *)any [@@js.get "_telemetryEmitter"]
    val set__telemetryEmitter: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_telemetryEmitter"]
    val get__stateChangeEmitter: t -> (* FIXME: unknown type *)any [@@js.get "_stateChangeEmitter"]
    val set__stateChangeEmitter: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_stateChangeEmitter"]
    val get__trace: t -> (* FIXME: unknown type *)any [@@js.get "_trace"]
    val set__trace: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_trace"]
    val get__traceFormat: t -> (* FIXME: unknown type *)any [@@js.get "_traceFormat"]
    val set__traceFormat: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_traceFormat"]
    val get__tracer: t -> (* FIXME: unknown type *)any [@@js.get "_tracer"]
    val set__tracer: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_tracer"]
    val get__c2p: t -> (* FIXME: unknown type *)any [@@js.get "_c2p"]
    val set__c2p: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_c2p"]
    val get__p2c: t -> (* FIXME: unknown type *)any [@@js.get "_p2c"]
    val set__p2c: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_p2c"]
    val create: id:string -> name:string -> clientOptions:_LanguageClientOptions -> t [@@js.create]
    val get_state: t -> (* FIXME: unknown type *)any [@@js.get "state"]
    val set_state: t -> (* FIXME: unknown type *)any -> unit [@@js.set "state"]
    val get_getPublicState: t -> (* FIXME: unknown type *)any [@@js.get "getPublicState"]
    val set_getPublicState: t -> (* FIXME: unknown type *)any -> unit [@@js.set "getPublicState"]
    val get_initializeResult: t -> InitializeResult.t_0 or_undefined [@@js.get "initializeResult"]
    val sendRequest: t -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t_4 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest': t -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t_5 -> params:'P -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'': t -> type_:('R, 'E) RequestType0.t_2 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''': t -> type_:('P, 'R, 'E) RequestType.t_3 -> params:'P -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'''': t -> method_:string -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''''': t -> method_:string -> param:any -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val onRequest: t -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t_4 -> handler:('R, 'E) RequestHandler0.t_2 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest': t -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t_5 -> handler:('P, 'R, 'E) RequestHandler.t_3 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'': t -> type_:('R, 'E) RequestType0.t_2 -> handler:('R, 'E) RequestHandler0.t_2 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''': t -> type_:('P, 'R, 'E) RequestType.t_3 -> handler:('P, 'R, 'E) RequestHandler.t_3 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''': t -> method_:string -> handler:('R, 'E) GenericRequestHandler.t_2 -> Disposable.t_0 [@@js.call "onRequest"]
    val sendNotification: t -> type_:'RO ProtocolNotificationType0.t_1 -> unit [@@js.call "sendNotification"]
    val sendNotification': t -> type_:('P, 'RO) ProtocolNotificationType.t_2 -> ?params:'P -> unit -> unit [@@js.call "sendNotification"]
    val sendNotification'': t -> type_:NotificationType0.t_0 -> unit [@@js.call "sendNotification"]
    val sendNotification''': t -> type_:'P NotificationType.t_1 -> ?params:'P -> unit -> unit [@@js.call "sendNotification"]
    val sendNotification'''': t -> method_:string -> unit [@@js.call "sendNotification"]
    val sendNotification''''': t -> method_:string -> params:any -> unit [@@js.call "sendNotification"]
    val onNotification: t -> type_:'RO ProtocolNotificationType0.t_1 -> handler:NotificationHandler0.t_0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification': t -> type_:('P, 'RO) ProtocolNotificationType.t_2 -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'': t -> type_:NotificationType0.t_0 -> handler:NotificationHandler0.t_0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''': t -> type_:'P NotificationType.t_1 -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''': t -> method_:string -> handler:GenericNotificationHandler.t_0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onProgress: t -> type_:'P ProgressType.t_1 -> token:string or_number -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onProgress"]
    val sendProgress: t -> type_:'P ProgressType.t_1 -> token:string or_number -> value:'P -> unit [@@js.call "sendProgress"]
    val get_clientOptions: t -> _LanguageClientOptions [@@js.get "clientOptions"]
    val get_protocol2CodeConverter: t -> P2c.Converter.t_0 [@@js.get "protocol2CodeConverter"]
    val get_code2ProtocolConverter: t -> C2p.Converter.t_0 [@@js.get "code2ProtocolConverter"]
    val get_onTelemetry: t -> any Event.t_1 [@@js.get "onTelemetry"]
    val get_onDidChangeState: t -> _StateChangeEvent Event.t_1 [@@js.get "onDidChangeState"]
    val get_outputChannel: t -> OutputChannel.t_0 [@@js.get "outputChannel"]
    val get_traceOutputChannel: t -> OutputChannel.t_0 [@@js.get "traceOutputChannel"]
    val get_diagnostics: t -> DiagnosticCollection.t_0 or_undefined [@@js.get "diagnostics"]
    val createDefaultErrorHandler: t -> ?maxRestartCount:float -> unit -> _ErrorHandler [@@js.call "createDefaultErrorHandler"]
    val set_trace: t -> Trace.t_0 -> unit [@@js.set "trace"]
    val get_data2String: t -> (* FIXME: unknown type *)any [@@js.get "data2String"]
    val set_data2String: t -> (* FIXME: unknown type *)any -> unit [@@js.set "data2String"]
    val info: t -> message:string -> ?data:any -> ?showNotification:bool -> unit -> unit [@@js.call "info"]
    val warn: t -> message:string -> ?data:any -> ?showNotification:bool -> unit -> unit [@@js.call "warn"]
    val error: t -> message:string -> ?data:any -> ?showNotification:bool -> unit -> unit [@@js.call "error"]
    val get_showNotificationMessage: t -> (* FIXME: unknown type *)any [@@js.get "showNotificationMessage"]
    val set_showNotificationMessage: t -> (* FIXME: unknown type *)any -> unit [@@js.set "showNotificationMessage"]
    val get_logTrace: t -> (* FIXME: unknown type *)any [@@js.get "logTrace"]
    val set_logTrace: t -> (* FIXME: unknown type *)any -> unit [@@js.set "logTrace"]
    val get_logObjectTrace: t -> (* FIXME: unknown type *)any [@@js.get "logObjectTrace"]
    val set_logObjectTrace: t -> (* FIXME: unknown type *)any -> unit [@@js.set "logObjectTrace"]
    val needsStart: t -> bool [@@js.call "needsStart"]
    val needsStop: t -> bool [@@js.call "needsStop"]
    val onReady: t -> unit Promise.t_1 [@@js.call "onReady"]
    val get_isConnectionActive: t -> (* FIXME: unknown type *)any [@@js.get "isConnectionActive"]
    val set_isConnectionActive: t -> (* FIXME: unknown type *)any -> unit [@@js.set "isConnectionActive"]
    val start: t -> Disposable.t_0 [@@js.call "start"]
    val get_resolveConnection: t -> (* FIXME: unknown type *)any [@@js.get "resolveConnection"]
    val set_resolveConnection: t -> (* FIXME: unknown type *)any -> unit [@@js.set "resolveConnection"]
    val get_initialize: t -> (* FIXME: unknown type *)any [@@js.get "initialize"]
    val set_initialize: t -> (* FIXME: unknown type *)any -> unit [@@js.set "initialize"]
    val get_doInitialize: t -> (* FIXME: unknown type *)any [@@js.get "doInitialize"]
    val set_doInitialize: t -> (* FIXME: unknown type *)any -> unit [@@js.set "doInitialize"]
    val get__clientGetRootPath: t -> (* FIXME: unknown type *)any [@@js.get "_clientGetRootPath"]
    val set__clientGetRootPath: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_clientGetRootPath"]
    val stop: t -> unit Promise.t_1 [@@js.call "stop"]
    val get_cleanUp: t -> (* FIXME: unknown type *)any [@@js.get "cleanUp"]
    val set_cleanUp: t -> (* FIXME: unknown type *)any -> unit [@@js.set "cleanUp"]
    val get_cleanUpChannel: t -> (* FIXME: unknown type *)any [@@js.get "cleanUpChannel"]
    val set_cleanUpChannel: t -> (* FIXME: unknown type *)any -> unit [@@js.set "cleanUpChannel"]
    val get_notifyFileEvent: t -> (* FIXME: unknown type *)any [@@js.get "notifyFileEvent"]
    val set_notifyFileEvent: t -> (* FIXME: unknown type *)any -> unit [@@js.set "notifyFileEvent"]
    val get__didChangeTextDocumentFeature: t -> (* FIXME: unknown type *)any [@@js.get "_didChangeTextDocumentFeature"]
    val set__didChangeTextDocumentFeature: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_didChangeTextDocumentFeature"]
    val get_forceDocumentSync: t -> (* FIXME: unknown type *)any [@@js.get "forceDocumentSync"]
    val set_forceDocumentSync: t -> (* FIXME: unknown type *)any -> unit [@@js.set "forceDocumentSync"]
    val get_handleDiagnostics: t -> (* FIXME: unknown type *)any [@@js.get "handleDiagnostics"]
    val set_handleDiagnostics: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleDiagnostics"]
    val get_setDiagnostics: t -> (* FIXME: unknown type *)any [@@js.get "setDiagnostics"]
    val set_setDiagnostics: t -> (* FIXME: unknown type *)any -> unit [@@js.set "setDiagnostics"]
    val getLocale: t -> string [@@js.call "getLocale"]
    val createMessageTransports: t -> encoding:string -> _MessageTransports Promise.t_1 [@@js.call "createMessageTransports"]
    val get_createConnection: t -> (* FIXME: unknown type *)any [@@js.get "createConnection"]
    val set_createConnection: t -> (* FIXME: unknown type *)any -> unit [@@js.set "createConnection"]
    val handleConnectionClosed: t -> unit [@@js.call "handleConnectionClosed"]
    val get_handleConnectionError: t -> (* FIXME: unknown type *)any [@@js.get "handleConnectionError"]
    val set_handleConnectionError: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleConnectionError"]
    val get_hookConfigurationChanged: t -> (* FIXME: unknown type *)any [@@js.get "hookConfigurationChanged"]
    val set_hookConfigurationChanged: t -> (* FIXME: unknown type *)any -> unit [@@js.set "hookConfigurationChanged"]
    val get_refreshTrace: t -> (* FIXME: unknown type *)any [@@js.get "refreshTrace"]
    val set_refreshTrace: t -> (* FIXME: unknown type *)any -> unit [@@js.set "refreshTrace"]
    val get_hookFileEvents: t -> (* FIXME: unknown type *)any [@@js.get "hookFileEvents"]
    val set_hookFileEvents: t -> (* FIXME: unknown type *)any -> unit [@@js.set "hookFileEvents"]
    val get__features: t -> (* FIXME: unknown type *)any [@@js.get "_features"]
    val get__dynamicFeatures: t -> (* FIXME: unknown type *)any [@@js.get "_dynamicFeatures"]
    val registerFeatures: t -> features:(_StaticFeature, any _DynamicFeature) union2 list -> unit [@@js.call "registerFeatures"]
    val registerFeature: t -> feature:(_StaticFeature, any _DynamicFeature) union2 -> unit [@@js.call "registerFeature"]
    val getFeature: t -> request:(* FIXME: unknown type 'typeof DidOpenTextDocumentNotification.method' *)any -> _DidOpenTextDocumentFeatureShape [@@js.call "getFeature"]
    val getFeature': t -> request:(* FIXME: unknown type 'typeof DidChangeTextDocumentNotification.method' *)any -> _DidChangeTextDocumentFeatureShape [@@js.call "getFeature"]
    val getFeature'': t -> request:(* FIXME: unknown type 'typeof WillSaveTextDocumentNotification.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, (textDocument:TextDocument.t_0 -> unit) _NotificationFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''': t -> request:(* FIXME: unknown type 'typeof WillSaveTextDocumentWaitUntilRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, (textDocument:TextDocument.t_0 -> VTextEdit.t_0 list ProviderResult.t_1) _NotificationFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''': t -> request:(* FIXME: unknown type 'typeof DidSaveTextDocumentNotification.method' *)any -> _DidSaveTextDocumentFeatureShape [@@js.call "getFeature"]
    val getFeature''''': t -> request:(* FIXME: unknown type 'typeof DidCloseTextDocumentNotification.method' *)any -> _DidCloseTextDocumentFeatureShape [@@js.call "getFeature"]
    val getFeature'''''': t -> request:(* FIXME: unknown type 'typeof DidCreateFilesNotification.method' *)any -> (FileOperationRegistrationOptions.t_0 _DynamicFeature, anonymous_interface_6) intersection2 [@@js.call "getFeature"]
    val getFeature''''''': t -> request:(* FIXME: unknown type 'typeof DidRenameFilesNotification.method' *)any -> (FileOperationRegistrationOptions.t_0 _DynamicFeature, anonymous_interface_8) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''': t -> request:(* FIXME: unknown type 'typeof DidDeleteFilesNotification.method' *)any -> (FileOperationRegistrationOptions.t_0 _DynamicFeature, anonymous_interface_7) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''': t -> request:(* FIXME: unknown type 'typeof WillCreateFilesRequest.method' *)any -> (FileOperationRegistrationOptions.t_0 _DynamicFeature, anonymous_interface_9) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''': t -> request:(* FIXME: unknown type 'typeof WillRenameFilesRequest.method' *)any -> (FileOperationRegistrationOptions.t_0 _DynamicFeature, anonymous_interface_11) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''': t -> request:(* FIXME: unknown type 'typeof WillDeleteFilesRequest.method' *)any -> (FileOperationRegistrationOptions.t_0 _DynamicFeature, anonymous_interface_10) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''': t -> request:(* FIXME: unknown type 'typeof CompletionRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, CompletionItemProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''': t -> request:(* FIXME: unknown type 'typeof HoverRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, HoverProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''': t -> request:(* FIXME: unknown type 'typeof SignatureHelpRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, SignatureHelpProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DefinitionRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DefinitionProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''': t -> request:(* FIXME: unknown type 'typeof ReferencesRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, ReferenceProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentHighlightRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DocumentHighlightProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof CodeActionRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, CodeActionProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentFormattingRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DocumentFormattingEditProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentRangeFormattingRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DocumentRangeFormattingEditProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentOnTypeFormattingRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, OnTypeFormattingEditProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof RenameRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, RenameProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentSymbolRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DocumentSymbolProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentLinkRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DocumentLinkProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DocumentColorRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DocumentColorProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof DeclarationRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, DeclarationProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof FoldingRangeRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, FoldingRangeProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof ImplementationRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, ImplementationProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof SelectionRangeRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, SelectionRangeProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof TypeDefinitionRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, TypeDefinitionProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof CallHierarchyPrepareRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, CallHierarchyProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof SemanticTokensRegistrationType.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, SemanticTokensProviders.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature''''''''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof LinkedEditingRangeRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, LinkedEditingRangeProvider.t_0 _TextDocumentProviderFeature) intersection2 [@@js.call "getFeature"]
    val getFeature'''''''''''''''''''''''''''''''''': t -> request:(* FIXME: unknown type 'typeof WorkspaceSymbolRequest.method' *)any -> (TextDocumentRegistrationOptions.t_0 _DynamicFeature, WorkspaceSymbolProvider.t_0 _WorkspaceProviderFeature) intersection2 [@@js.call "getFeature"]
    val registerBuiltinFeatures: t -> unit [@@js.call "registerBuiltinFeatures"]
    val fillInitializeParams: t -> params:InitializeParams.t_0 -> unit [@@js.call "fillInitializeParams"]
    val get_computeClientCapabilities: t -> (* FIXME: unknown type *)any [@@js.get "computeClientCapabilities"]
    val set_computeClientCapabilities: t -> (* FIXME: unknown type *)any -> unit [@@js.set "computeClientCapabilities"]
    val get_initializeFeatures: t -> (* FIXME: unknown type *)any [@@js.get "initializeFeatures"]
    val set_initializeFeatures: t -> (* FIXME: unknown type *)any -> unit [@@js.set "initializeFeatures"]
    val get_handleRegistrationRequest: t -> (* FIXME: unknown type *)any [@@js.get "handleRegistrationRequest"]
    val set_handleRegistrationRequest: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleRegistrationRequest"]
    val get_handleUnregistrationRequest: t -> (* FIXME: unknown type *)any [@@js.get "handleUnregistrationRequest"]
    val set_handleUnregistrationRequest: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleUnregistrationRequest"]
    val get_handleApplyWorkspaceEdit: t -> (* FIXME: unknown type *)any [@@js.get "handleApplyWorkspaceEdit"]
    val set_handleApplyWorkspaceEdit: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleApplyWorkspaceEdit"]
    val get_RequestsToCancelOnContentModified: unit -> (* FIXME: unknown type *)any [@@js.get "RequestsToCancelOnContentModified"]
    val set_RequestsToCancelOnContentModified: (* FIXME: unknown type *)any -> unit [@@js.set "RequestsToCancelOnContentModified"]
    val handleFailedRequest: t -> type_:MessageSignature.t_0 -> token:CancellationToken.t_0 or_undefined -> error:any -> defaultValue:'T -> 'T [@@js.call "handleFailedRequest"]
  end
  
end
