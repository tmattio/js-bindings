[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_code2Protocol : t -> C2p.URIConverter.t [@@js.get "code2Protocol"]

  val set_code2Protocol : t -> C2p.URIConverter.t -> unit
    [@@js.set "code2Protocol"]

  val get_protocol2Code : t -> P2c.URIConverter.t [@@js.get "protocol2Code"]

  val set_protocol2Code : t -> P2c.URIConverter.t -> unit
    [@@js.set "protocol2Code"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_document_selector : t -> DocumentSelector.t
    [@@js.get "documentSelector"]

  val set_document_selector : t -> DocumentSelector.t -> unit
    [@@js.set "documentSelector"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_include_declaration : t -> bool [@@js.get "includeDeclaration"]

  val set_include_declaration : t -> bool -> unit
    [@@js.set "includeDeclaration"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_is_trusted : t -> bool [@@js.get "isTrusted"]

  val set_is_trusted : t -> bool -> unit [@@js.set "isTrusted"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> VRange.t [@@js.get "range"]

  val set_range : t -> VRange.t -> unit [@@js.set "range"]

  val get_placeholder : t -> string [@@js.get "placeholder"]

  val set_placeholder : t -> string -> unit [@@js.set "placeholder"]
end

module AnonymousInterface5 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_send : t -> 'T [@@js.get "send"]

  val set_send : t -> 'T -> unit [@@js.set "send"]
end

module AnonymousInterface6 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileCreateEvent.t -> unit Promise.t [@@js.call "send"]
end

module AnonymousInterface7 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileDeleteEvent.t -> unit Promise.t [@@js.call "send"]
end

module AnonymousInterface8 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileRenameEvent.t -> unit Promise.t [@@js.call "send"]
end

module AnonymousInterface9 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileWillCreateEvent.t -> unit Promise.t
    [@@js.call "send"]
end

module AnonymousInterface10 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileWillDeleteEvent.t -> unit Promise.t
    [@@js.call "send"]
end

module AnonymousInterface11 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileWillRenameEvent.t -> unit Promise.t
    [@@js.call "send"]
end

(* import { TextDocumentChangeEvent, TextDocument, Disposable, OutputChannel,
   FileSystemWatcher as VFileSystemWatcher, DiagnosticCollection, Diagnostic as
   VDiagnostic, Uri, ProviderResult, CancellationToken, Position as VPosition,
   Location as VLocation, Range as VRange, CompletionItem as VCompletionItem,
   CompletionList as VCompletionList, SignatureHelp as VSignatureHelp,
   SignatureHelpContext as VSignatureHelpContext, Definition as VDefinition,
   DefinitionLink as VDefinitionLink, DocumentHighlight as VDocumentHighlight,
   SymbolInformation as VSymbolInformation, CodeActionContext as
   VCodeActionContext, Command as VCommand, CodeLens as VCodeLens,
   FormattingOptions as VFormattingOptions, TextEdit as VTextEdit, WorkspaceEdit
   as VWorkspaceEdit, Hover as VHover, CodeAction as VCodeAction, DocumentSymbol
   as VDocumentSymbol, DocumentLink as VDocumentLink, TextDocumentWillSaveEvent,
   WorkspaceFolder as VWorkspaceFolder, CompletionContext as VCompletionContext,
   CompletionItemProvider, HoverProvider, SignatureHelpProvider,
   DefinitionProvider, ReferenceProvider, DocumentHighlightProvider,
   CodeActionProvider, DocumentSymbolProvider, DocumentFormattingEditProvider,
   DocumentRangeFormattingEditProvider, OnTypeFormattingEditProvider,
   RenameProvider, DocumentLinkProvider, DocumentColorProvider,
   DeclarationProvider, FoldingRangeProvider, ImplementationProvider,
   SelectionRangeProvider, TypeDefinitionProvider, WorkspaceSymbolProvider,
   CallHierarchyProvider, FileWillCreateEvent, FileWillRenameEvent,
   FileWillDeleteEvent, FileCreateEvent, FileDeleteEvent, FileRenameEvent,
   LinkedEditingRangeProvider, Event as VEvent, CancellationError } from
   'vscode'; *)
(* import { Message, MessageSignature, ResponseError, RequestType0, RequestType,
   NotificationType0, NotificationType, ProtocolRequestType,
   ProtocolRequestType0, RequestHandler, RequestHandler0, GenericRequestHandler,
   ProtocolNotificationType, ProtocolNotificationType0, NotificationHandler,
   NotificationHandler0, GenericNotificationHandler, MessageReader,
   MessageWriter, Trace, Event, ClientCapabilities,
   TextDocumentRegistrationOptions, InitializeParams, InitializeResult,
   InitializeError, ServerCapabilities, DocumentSelector,
   DidOpenTextDocumentNotification, DidOpenTextDocumentParams,
   DidChangeTextDocumentNotification, DidChangeTextDocumentParams,
   DidCloseTextDocumentNotification, DidCloseTextDocumentParams,
   DidSaveTextDocumentNotification, DidSaveTextDocumentParams,
   WillSaveTextDocumentNotification, WillSaveTextDocumentWaitUntilRequest,
   FileEvent, CompletionRequest, HoverRequest, SignatureHelpRequest,
   DefinitionRequest, ReferencesRequest, DocumentHighlightRequest,
   DocumentSymbolRequest, WorkspaceSymbolRequest, CodeActionRequest,
   DocumentFormattingRequest, DocumentRangeFormattingRequest,
   DocumentOnTypeFormattingRequest, RenameRequest, DocumentLinkRequest,
   ProgressType, ProgressToken, StaticRegistrationOptions, DocumentColorRequest,
   DeclarationRequest, FoldingRangeRequest, ImplementationRequest,
   SelectionRangeRequest, TypeDefinitionRequest, CallHierarchyPrepareRequest,
   CancellationStrategy, RegistrationType, SemanticTokensRegistrationType,
   ShowDocumentRequest, FileOperationRegistrationOptions,
   WillCreateFilesRequest, WillRenameFilesRequest, WillDeleteFilesRequest,
   DidCreateFilesNotification, DidDeleteFilesNotification,
   DidRenameFilesNotification, ShowDocumentParams, ShowDocumentResult,
   LinkedEditingRangeRequest, WorkDoneProgressBegin, WorkDoneProgressEnd,
   WorkDoneProgressReport } from 'vscode-languageserver-protocol'; *)
(* import type { ColorProviderMiddleware } from './colorProvider'; *)
(* import type { ImplementationMiddleware } from './implementation'; *)
(* import type { TypeDefinitionMiddleware } from './typeDefinition'; *)
(* import { ConfigurationWorkspaceMiddleware } from './configuration'; *)
(* import type { WorkspaceFolderWorkspaceMiddleware } from './workspaceFolders'; *)
(* import type { FoldingRangeProviderMiddleware } from './foldingRange'; *)
(* import type { DeclarationMiddleware } from './declaration'; *)
(* import type { SelectionRangeProviderMiddleware } from './selectionRange'; *)
(* import type { CallHierarchyMiddleware } from './callHierarchy'; *)
(* import type { SemanticTokensMiddleware, SemanticTokensProviders } from
   './semanticTokens'; *)
(* import type { FileOperationsMiddleware } from './fileOperations'; *)
(* import { LinkedEditingRangeMiddleware } from './linkedEditingRange'; *)
(* import * as c2p from './codeConverter'; *)
(* import * as p2c from './protocolConverter'; *)
module ConnectionOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancellation_strategy : t -> CancellationStrategy.t
    [@@js.get "cancellationStrategy"]

  val set_cancellation_strategy : t -> CancellationStrategy.t -> unit
    [@@js.set "cancellationStrategy"]

  val get_max_restart_count : t -> int [@@js.get "maxRestartCount"]

  val set_max_restart_count : t -> int -> unit [@@js.set "maxRestartCount"]
end
[@@js.scope "ConnectionOptions"]

module ErrorAction : sig
  type t =
    ([ `Continue [@js 1]
     | `Shutdown [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module CloseAction : sig
  type t =
    ([ `DoNotRestart [@js 1]
     | `Restart [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ErrorHandler : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error
    :  t
    -> error:Error.t
    -> message:Message.t or_undefined
    -> count:int or_undefined
    -> ErrorAction.t
    [@@js.call "error"]

  val closed : t -> CloseAction.t [@@js.call "closed"]
end
[@@js.scope "ErrorHandler"]

module InitializationFailedHandler : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> error:(Error.t, any, InitializeError.t ResponseError.t) union3
    -> bool
    [@@js.apply]
end
[@@js.scope "InitializationFailedHandler"]

module SynchronizeOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_configuration_section : t -> string list or_string
    [@@js.get "configurationSection"]

  val set_configuration_section : t -> string list or_string -> unit
    [@@js.set "configurationSection"]

  val get_file_events
    :  t
    -> (VFileSystemWatcher.t, VFileSystemWatcher.t) or_array
    [@@js.get "fileEvents"]

  val set_file_events
    :  t
    -> (VFileSystemWatcher.t, VFileSystemWatcher.t) or_array
    -> unit
    [@@js.set "fileEvents"]
end
[@@js.scope "SynchronizeOptions"]

module DiagnosticPullMode : sig
  type t =
    ([ `onType [@js "onType"]
     | `onSave [@js "onSave"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DiagnosticPullOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_on_type : t -> bool [@@js.get "onType"]

  val set_on_type : t -> bool -> unit [@@js.set "onType"]

  val get_on_save : t -> bool [@@js.get "onSave"]

  val set_on_save : t -> bool -> unit [@@js.set "onSave"]

  val filter : t -> document:TextDocument.t -> mode:DiagnosticPullMode.t -> bool
    [@@js.call "filter"]
end
[@@js.scope "DiagnosticPullOptions"]

module RevealOutputChannelOn : sig
  type t =
    ([ `Info [@js 1]
     | `Warn [@js 2]
     | `Error [@js 3]
     | `Never [@js 4]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module HandleDiagnosticsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> uri:Uri.t
    -> diagnostics:VDiagnostic.t list
    -> unit
    [@@js.apply]
end
[@@js.scope "HandleDiagnosticsSignature"]

module HandleWorkDoneProgressSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> token:ProgressToken.t
    -> params:
         ( WorkDoneProgressBegin.t
         , WorkDoneProgressEnd.t
         , WorkDoneProgressReport.t )
         union3
    -> unit
    [@@js.apply]
end
[@@js.scope "HandleWorkDoneProgressSignature"]

module ProvideCompletionItemsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> context:VCompletionContext.t
    -> token:CancellationToken.t
    -> (VCompletionList.t, VCompletionItem.t) or_array ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideCompletionItemsSignature"]

module ResolveCompletionItemSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> item:VCompletionItem.t
    -> token:CancellationToken.t
    -> VCompletionItem.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ResolveCompletionItemSignature"]

module ProvideHoverSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> VHover.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideHoverSignature"]

module ProvideSignatureHelpSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> context:VSignatureHelpContext.t
    -> token:CancellationToken.t
    -> VSignatureHelp.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideSignatureHelpSignature"]

module ProvideDefinitionSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDefinitionSignature"]

module ProvideReferencesSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> options:AnonymousInterface2.t
    -> token:CancellationToken.t
    -> VLocation.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideReferencesSignature"]

module ProvideDocumentHighlightsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> VDocumentHighlight.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDocumentHighlightsSignature"]

module ProvideDocumentSymbolsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> (VDocumentSymbol.t, VSymbolInformation.t) union2 list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDocumentSymbolsSignature"]

module ProvideWorkspaceSymbolsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> query:string
    -> token:CancellationToken.t
    -> VSymbolInformation.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideWorkspaceSymbolsSignature"]

module ProvideCodeActionsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> range:VRange.t
    -> context:VCodeActionContext.t
    -> token:CancellationToken.t
    -> (VCodeAction.t, VCommand.t) union2 list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideCodeActionsSignature"]

module ResolveCodeActionSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> item:VCodeAction.t
    -> token:CancellationToken.t
    -> VCodeAction.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ResolveCodeActionSignature"]

module ProvideCodeLensesSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> VCodeLens.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideCodeLensesSignature"]

module ResolveCodeLensSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> code_lens:VCodeLens.t
    -> token:CancellationToken.t
    -> VCodeLens.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ResolveCodeLensSignature"]

module ProvideDocumentFormattingEditsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> VTextEdit.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDocumentFormattingEditsSignature"]

module ProvideDocumentRangeFormattingEditsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> range:VRange.t
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> VTextEdit.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDocumentRangeFormattingEditsSignature"]

module ProvideOnTypeFormattingEditsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> ch:string
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> VTextEdit.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideOnTypeFormattingEditsSignature"]

module ProvideRenameEditsSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> new_name:string
    -> token:CancellationToken.t
    -> VWorkspaceEdit.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideRenameEditsSignature"]

module PrepareRenameSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VRange.t, AnonymousInterface4.t) union2 ProviderResult.t
    [@@js.apply]
end
[@@js.scope "PrepareRenameSignature"]

module ProvideDocumentLinksSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> VDocumentLink.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDocumentLinksSignature"]

module ResolveDocumentLinkSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> link:VDocumentLink.t
    -> token:CancellationToken.t
    -> VDocumentLink.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ResolveDocumentLinkSignature"]

module ExecuteCommandSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> command:string
    -> args:any list
    -> any ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ExecuteCommandSignature"]

module NextSignature : sig
  type ('P, 'R) t = ('P, 'R) NextSignature.t

  val t_to_js : ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('P, 'R) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> Ojs.t -> ('P, 'R) t

  val apply : ('P, 'R) t -> this:unit -> data:'P -> next:(data:'P -> 'R) -> 'R
    [@@js.apply]
end
[@@js.scope "NextSignature"]

module DidChangeConfigurationSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> this:unit -> sections:string list or_undefined -> unit
    [@@js.apply]
end
[@@js.scope "DidChangeConfigurationSignature"]

module DidChangeWatchedFileSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> this:unit -> event:FileEvent.t -> unit [@@js.apply]
end
[@@js.scope "DidChangeWatchedFileSignature"]

module WorkspaceMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module M_WorkspaceMiddleware : sig
  type t =
    ( WorkspaceMiddleware.t
    , ConfigurationWorkspaceMiddleware.t
    , WorkspaceFolderWorkspaceMiddleware.t
    , FileOperationsMiddleware.t )
    intersection4

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val did_change_configuration
    :  t
    -> this:unit
    -> sections:string list or_undefined
    -> next:DidChangeConfigurationSignature.t
    -> unit
    [@@js.call "didChangeConfiguration"]

  val did_change_watched_file
    :  t
    -> this:unit
    -> event:FileEvent.t
    -> next:DidChangeWatchedFileSignature.t
    -> unit
    [@@js.call "didChangeWatchedFile"]
end
[@@js.scope "_WorkspaceMiddleware"]

module WindowMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module M_WindowMiddleware : sig
  type t = WindowMiddleware.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val show_document
    :  t
    -> this:unit
    -> params:ShowDocumentParams.t
    -> next:ShowDocumentRequest.HandlerSignature.t
    -> ShowDocumentResult.t Promise.t
    [@@js.call "showDocument"]
end
[@@js.scope "_WindowMiddleware"]

module M_Middleware : sig
  type t =
    ( ( ( ImplementationMiddleware.t
        , ColorProviderMiddleware.t
        , FoldingRangeProviderMiddleware.t
        , DeclarationMiddleware.t
        , SelectionRangeProviderMiddleware.t
        , CallHierarchyMiddleware.t
        , SemanticTokensMiddleware.t
        , LinkedEditingRangeMiddleware.t )
        intersection8
      , TypeDefinitionMiddleware.t )
      and_
    , Middleware.t )
    and_

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_did_open : t -> (TextDocument.t, unit) NextSignature.t
    [@@js.get "didOpen"]

  val set_did_open : t -> (TextDocument.t, unit) NextSignature.t -> unit
    [@@js.set "didOpen"]

  val get_did_change : t -> (TextDocumentChangeEvent.t, unit) NextSignature.t
    [@@js.get "didChange"]

  val set_did_change
    :  t
    -> (TextDocumentChangeEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didChange"]

  val get_will_save : t -> (TextDocumentWillSaveEvent.t, unit) NextSignature.t
    [@@js.get "willSave"]

  val set_will_save
    :  t
    -> (TextDocumentWillSaveEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "willSave"]

  val get_will_save_wait_until
    :  t
    -> (TextDocumentWillSaveEvent.t, VTextEdit.t list Promise.t) NextSignature.t
    [@@js.get "willSaveWaitUntil"]

  val set_will_save_wait_until
    :  t
    -> (TextDocumentWillSaveEvent.t, VTextEdit.t list Promise.t) NextSignature.t
    -> unit
    [@@js.set "willSaveWaitUntil"]

  val get_did_save : t -> (TextDocument.t, unit) NextSignature.t
    [@@js.get "didSave"]

  val set_did_save : t -> (TextDocument.t, unit) NextSignature.t -> unit
    [@@js.set "didSave"]

  val get_did_close : t -> (TextDocument.t, unit) NextSignature.t
    [@@js.get "didClose"]

  val set_did_close : t -> (TextDocument.t, unit) NextSignature.t -> unit
    [@@js.set "didClose"]

  val handle_diagnostics
    :  t
    -> this:unit
    -> uri:Uri.t
    -> diagnostics:VDiagnostic.t list
    -> next:HandleDiagnosticsSignature.t
    -> unit
    [@@js.call "handleDiagnostics"]

  val handle_work_done_progress
    :  t
    -> this:unit
    -> token:ProgressToken.t
    -> params:
         ( WorkDoneProgressBegin.t
         , WorkDoneProgressEnd.t
         , WorkDoneProgressReport.t )
         union3
    -> next:HandleWorkDoneProgressSignature.t
    -> unit
    [@@js.call "handleWorkDoneProgress"]

  val provide_completion_item
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> context:VCompletionContext.t
    -> token:CancellationToken.t
    -> next:ProvideCompletionItemsSignature.t
    -> (VCompletionList.t, VCompletionItem.t) or_array ProviderResult.t
    [@@js.call "provideCompletionItem"]

  val resolve_completion_item
    :  t
    -> this:unit
    -> item:VCompletionItem.t
    -> token:CancellationToken.t
    -> next:ResolveCompletionItemSignature.t
    -> VCompletionItem.t ProviderResult.t
    [@@js.call "resolveCompletionItem"]

  val provide_hover
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:ProvideHoverSignature.t
    -> VHover.t ProviderResult.t
    [@@js.call "provideHover"]

  val provide_signature_help
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> context:VSignatureHelpContext.t
    -> token:CancellationToken.t
    -> next:ProvideSignatureHelpSignature.t
    -> VSignatureHelp.t ProviderResult.t
    [@@js.call "provideSignatureHelp"]

  val provide_definition
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:ProvideDefinitionSignature.t
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t
    [@@js.call "provideDefinition"]

  val provide_references
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> options:AnonymousInterface2.t
    -> token:CancellationToken.t
    -> next:ProvideReferencesSignature.t
    -> VLocation.t list ProviderResult.t
    [@@js.call "provideReferences"]

  val provide_document_highlights
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:ProvideDocumentHighlightsSignature.t
    -> VDocumentHighlight.t list ProviderResult.t
    [@@js.call "provideDocumentHighlights"]

  val provide_document_symbols
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:ProvideDocumentSymbolsSignature.t
    -> (VDocumentSymbol.t, VSymbolInformation.t) union2 list ProviderResult.t
    [@@js.call "provideDocumentSymbols"]

  val provide_workspace_symbols
    :  t
    -> this:unit
    -> query:string
    -> token:CancellationToken.t
    -> next:ProvideWorkspaceSymbolsSignature.t
    -> VSymbolInformation.t list ProviderResult.t
    [@@js.call "provideWorkspaceSymbols"]

  val provide_code_actions
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> range:VRange.t
    -> context:VCodeActionContext.t
    -> token:CancellationToken.t
    -> next:ProvideCodeActionsSignature.t
    -> (VCodeAction.t, VCommand.t) union2 list ProviderResult.t
    [@@js.call "provideCodeActions"]

  val resolve_code_action
    :  t
    -> this:unit
    -> item:VCodeAction.t
    -> token:CancellationToken.t
    -> next:ResolveCodeActionSignature.t
    -> VCodeAction.t ProviderResult.t
    [@@js.call "resolveCodeAction"]

  val provide_code_lenses
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:ProvideCodeLensesSignature.t
    -> VCodeLens.t list ProviderResult.t
    [@@js.call "provideCodeLenses"]

  val resolve_code_lens
    :  t
    -> this:unit
    -> code_lens:VCodeLens.t
    -> token:CancellationToken.t
    -> next:ResolveCodeLensSignature.t
    -> VCodeLens.t ProviderResult.t
    [@@js.call "resolveCodeLens"]

  val provide_document_formatting_edits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> next:ProvideDocumentFormattingEditsSignature.t
    -> VTextEdit.t list ProviderResult.t
    [@@js.call "provideDocumentFormattingEdits"]

  val provide_document_range_formatting_edits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> range:VRange.t
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> next:ProvideDocumentRangeFormattingEditsSignature.t
    -> VTextEdit.t list ProviderResult.t
    [@@js.call "provideDocumentRangeFormattingEdits"]

  val provide_on_type_formatting_edits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> ch:string
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> next:ProvideOnTypeFormattingEditsSignature.t
    -> VTextEdit.t list ProviderResult.t
    [@@js.call "provideOnTypeFormattingEdits"]

  val provide_rename_edits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> new_name:string
    -> token:CancellationToken.t
    -> next:ProvideRenameEditsSignature.t
    -> VWorkspaceEdit.t ProviderResult.t
    [@@js.call "provideRenameEdits"]

  val prepare_rename
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:PrepareRenameSignature.t
    -> (VRange.t, AnonymousInterface4.t) union2 ProviderResult.t
    [@@js.call "prepareRename"]

  val provide_document_links
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:ProvideDocumentLinksSignature.t
    -> VDocumentLink.t list ProviderResult.t
    [@@js.call "provideDocumentLinks"]

  val resolve_document_link
    :  t
    -> this:unit
    -> link:VDocumentLink.t
    -> token:CancellationToken.t
    -> next:ResolveDocumentLinkSignature.t
    -> VDocumentLink.t ProviderResult.t
    [@@js.call "resolveDocumentLink"]

  val execute_command
    :  t
    -> this:unit
    -> command:string
    -> args:any list
    -> next:ExecuteCommandSignature.t
    -> any ProviderResult.t
    [@@js.call "executeCommand"]

  val get_workspace : t -> WorkspaceMiddleware.t [@@js.get "workspace"]

  val set_workspace : t -> WorkspaceMiddleware.t -> unit [@@js.set "workspace"]

  val get_window : t -> WindowMiddleware.t [@@js.get "window"]

  val set_window : t -> WindowMiddleware.t -> unit [@@js.set "window"]
end
[@@js.scope "_Middleware"]

module Middleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module LanguageClientOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_document_selector : t -> (DocumentSelector.t, string) or_array
    [@@js.get "documentSelector"]

  val set_document_selector : t -> (DocumentSelector.t, string) or_array -> unit
    [@@js.set "documentSelector"]

  val get_synchronize : t -> SynchronizeOptions.t [@@js.get "synchronize"]

  val set_synchronize : t -> SynchronizeOptions.t -> unit
    [@@js.set "synchronize"]

  val get_diagnostic_collection_name : t -> string
    [@@js.get "diagnosticCollectionName"]

  val set_diagnostic_collection_name : t -> string -> unit
    [@@js.set "diagnosticCollectionName"]

  val get_output_channel : t -> OutputChannel.t [@@js.get "outputChannel"]

  val set_output_channel : t -> OutputChannel.t -> unit
    [@@js.set "outputChannel"]

  val get_output_channel_name : t -> string [@@js.get "outputChannelName"]

  val set_output_channel_name : t -> string -> unit
    [@@js.set "outputChannelName"]

  val get_trace_output_channel : t -> OutputChannel.t
    [@@js.get "traceOutputChannel"]

  val set_trace_output_channel : t -> OutputChannel.t -> unit
    [@@js.set "traceOutputChannel"]

  val get_reveal_output_channel_on : t -> RevealOutputChannelOn.t
    [@@js.get "revealOutputChannelOn"]

  val set_reveal_output_channel_on : t -> RevealOutputChannelOn.t -> unit
    [@@js.set "revealOutputChannelOn"]

  val get_stdio_encoding : t -> string [@@js.get "stdioEncoding"]

  val set_stdio_encoding : t -> string -> unit [@@js.set "stdioEncoding"]

  val get_initialization_options : t -> (any, unit -> any) union2
    [@@js.get "initializationOptions"]

  val set_initialization_options : t -> (any, unit -> any) union2 -> unit
    [@@js.set "initializationOptions"]

  val get_initialization_failed_handler : t -> InitializationFailedHandler.t
    [@@js.get "initializationFailedHandler"]

  val set_initialization_failed_handler
    :  t
    -> InitializationFailedHandler.t
    -> unit
    [@@js.set "initializationFailedHandler"]

  val get_progress_on_initialization : t -> bool
    [@@js.get "progressOnInitialization"]

  val set_progress_on_initialization : t -> bool -> unit
    [@@js.set "progressOnInitialization"]

  val get_error_handler : t -> ErrorHandler.t [@@js.get "errorHandler"]

  val set_error_handler : t -> ErrorHandler.t -> unit [@@js.set "errorHandler"]

  val get_middleware : t -> Middleware.t [@@js.get "middleware"]

  val set_middleware : t -> Middleware.t -> unit [@@js.set "middleware"]

  val get_uri_converters : t -> AnonymousInterface0.t [@@js.get "uriConverters"]

  val set_uri_converters : t -> AnonymousInterface0.t -> unit
    [@@js.set "uriConverters"]

  val get_workspace_folder : t -> VWorkspaceFolder.t
    [@@js.get "workspaceFolder"]

  val set_workspace_folder : t -> VWorkspaceFolder.t -> unit
    [@@js.set "workspaceFolder"]

  val get_connection_options : t -> ConnectionOptions.t
    [@@js.get "connectionOptions"]

  val set_connection_options : t -> ConnectionOptions.t -> unit
    [@@js.set "connectionOptions"]

  val get_markdown : t -> AnonymousInterface3.t [@@js.get "markdown"]

  val set_markdown : t -> AnonymousInterface3.t -> unit [@@js.set "markdown"]

  val get_diagnostic_pull_options : t -> DiagnosticPullOptions.t
    [@@js.get "diagnosticPullOptions"]

  val set_diagnostic_pull_options : t -> DiagnosticPullOptions.t -> unit
    [@@js.set "diagnosticPullOptions"]
end
[@@js.scope "LanguageClientOptions"]

module State : sig
  type t =
    ([ `Stopped [@js 1]
     | `Starting [@js 3]
     | `Running [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module StateChangeEvent : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_old_state : t -> State.t [@@js.get "oldState"]

  val set_old_state : t -> State.t -> unit [@@js.set "oldState"]

  val get_new_state : t -> State.t [@@js.get "newState"]

  val set_new_state : t -> State.t -> unit [@@js.set "newState"]
end
[@@js.scope "StateChangeEvent"]

module RegistrationData : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_id : 'T t -> string [@@js.get "id"]

  val set_id : 'T t -> string -> unit [@@js.set "id"]

  val get_register_options : 'T t -> 'T [@@js.get "registerOptions"]

  val set_register_options : 'T t -> 'T -> unit [@@js.set "registerOptions"]
end
[@@js.scope "RegistrationData"]

module StaticFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fill_initialize_params : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val fill_client_capabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:ServerCapabilities.t
    -> document_selector:DocumentSelector.t or_undefined
    -> unit
    [@@js.call "initialize"]

  val dispose : t -> unit [@@js.call "dispose"]
end
[@@js.scope "StaticFeature"]

module DynamicFeature : sig
  type 'RO t

  val t_to_js : ('RO -> Ojs.t) -> 'RO t -> Ojs.t

  val t_of_js : (Ojs.t -> 'RO) -> Ojs.t -> 'RO t

  val fill_initialize_params : 'RO t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val fill_client_capabilities
    :  'RO t
    -> capabilities:ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  'RO t
    -> capabilities:ServerCapabilities.t
    -> document_selector:DocumentSelector.t or_undefined
    -> unit
    [@@js.call "initialize"]

  val get_registration_type : 'RO t -> 'RO RegistrationType.t
    [@@js.get "registrationType"]

  val set_registration_type : 'RO t -> 'RO RegistrationType.t -> unit
    [@@js.set "registrationType"]

  val register : 'RO t -> data:'RO RegistrationData.t -> unit
    [@@js.call "register"]

  val unregister : 'RO t -> id:string -> unit [@@js.call "unregister"]

  val dispose : 'RO t -> unit [@@js.call "dispose"]
end
[@@js.scope "DynamicFeature"]

module NotificationFeature : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_provider
    :  'T t
    -> document:TextDocument.t
    -> AnonymousInterface5.t or_undefined
    [@@js.call "getProvider"]
end
[@@js.scope "NotificationFeature"]

module NotificationSendEvent : sig
  type ('E, 'P) t = ('E, 'P) NotificationSendEvent.t

  val t_to_js : ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t

  val get_original : ('E, 'P) t -> 'E [@@js.get "original"]

  val set_original : ('E, 'P) t -> 'E -> unit [@@js.set "original"]

  val get_type
    :  ('E, 'P) t
    -> ('P, TextDocumentRegistrationOptions.t) ProtocolNotificationType.t
    [@@js.get "type"]

  val set_type
    :  ('E, 'P) t
    -> ('P, TextDocumentRegistrationOptions.t) ProtocolNotificationType.t
    -> unit
    [@@js.set "type"]

  val get_params : ('E, 'P) t -> 'P [@@js.get "params"]

  val set_params : ('E, 'P) t -> 'P -> unit [@@js.set "params"]
end
[@@js.scope "NotificationSendEvent"]

module NotifyingFeature : sig
  type ('E, 'P) t = ('E, 'P) NotifyingFeature.t

  val t_to_js : ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t

  val get_on_notification_sent
    :  ('E, 'P) t
    -> ('E, 'P) NotificationSendEvent.t VEvent.t
    [@@js.get "onNotificationSent"]

  val set_on_notification_sent
    :  ('E, 'P) t
    -> ('E, 'P) NotificationSendEvent.t VEvent.t
    -> unit
    [@@js.set "onNotificationSent"]
end
[@@js.scope "NotifyingFeature"]

module DidOpenTextDocumentFeatureShape : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_open_documents : t -> TextDocument.t Iterable.t
    [@@js.get "openDocuments"]

  val set_open_documents : t -> TextDocument.t Iterable.t -> unit
    [@@js.set "openDocuments"]

  val cast : t -> TextDocumentRegistrationOptions.t DynamicFeature.t [@@js.cast]

  val cast' : t -> (textDocument:TextDocument.t -> unit) NotificationFeature.t
    [@@js.cast]

  val cast''
    :  t
    -> (TextDocument.t, DidOpenTextDocumentParams.t) NotifyingFeature.t
    [@@js.cast]
end
[@@js.scope "DidOpenTextDocumentFeatureShape"]

module DidCloseTextDocumentFeatureShape : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t DynamicFeature.t [@@js.cast]

  val cast' : t -> (textDocument:TextDocument.t -> unit) NotificationFeature.t
    [@@js.cast]

  val cast''
    :  t
    -> (TextDocument.t, DidCloseTextDocumentParams.t) NotifyingFeature.t
    [@@js.cast]
end
[@@js.scope "DidCloseTextDocumentFeatureShape"]

module DidChangeTextDocumentFeatureShape : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t DynamicFeature.t [@@js.cast]

  val cast'
    :  t
    -> (event:TextDocumentChangeEvent.t -> unit) NotificationFeature.t
    [@@js.cast]

  val cast''
    :  t
    -> ( TextDocumentChangeEvent.t
       , DidChangeTextDocumentParams.t )
       NotifyingFeature.t
    [@@js.cast]
end
[@@js.scope "DidChangeTextDocumentFeatureShape"]

module DidSaveTextDocumentFeatureShape : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t DynamicFeature.t [@@js.cast]

  val cast' : t -> (textDocument:TextDocument.t -> unit) NotificationFeature.t
    [@@js.cast]

  val cast''
    :  t
    -> (TextDocument.t, DidSaveTextDocumentParams.t) NotifyingFeature.t
    [@@js.cast]
end
[@@js.scope "DidSaveTextDocumentFeatureShape"]

module TextDocumentProviderFeature : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_provider : 'T t -> text_document:TextDocument.t -> 'T or_undefined
    [@@js.call "getProvider"]
end
[@@js.scope "TextDocumentProviderFeature"]

module TextDocumentFeature : sig
  type ('PO, 'RO, 'PR) t = ('PO, 'RO, 'PR) TextDocumentFeature.t

  val t_to_js
    :  ('PO -> Ojs.t)
    -> ('RO -> Ojs.t)
    -> ('PR -> Ojs.t)
    -> ('PO, 'RO, 'PR) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'PO)
    -> (Ojs.t -> 'RO)
    -> (Ojs.t -> 'PR)
    -> Ojs.t
    -> ('PO, 'RO, 'PR) t

  val get__client : ('PO, 'RO, 'PR) t -> BaseLanguageClient.t
    [@@js.get "_client"]

  val set__client : ('PO, 'RO, 'PR) t -> BaseLanguageClient.t -> unit
    [@@js.set "_client"]

  val get_registration_type : ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *) any
    [@@js.get "_registrationType"]

  val set_registration_type
    :  ('PO, 'RO, 'PR) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_registrationType"]

  val get__registrations : ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *) any
    [@@js.get "_registrations"]

  val set__registrations
    :  ('PO, 'RO, 'PR) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_registrations"]

  val create
    :  _client:BaseLanguageClient.t
    -> _registrationType:'RO RegistrationType.t
    -> ('PO, 'RO, 'PR) t
    [@@js.create]

  val get_registration_type : ('PO, 'RO, 'PR) t -> 'RO RegistrationType.t
    [@@js.get "registrationType"]

  val fill_client_capabilities
    :  ('PO, 'RO, 'PR) t
    -> capabilities:ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  ('PO, 'RO, 'PR) t
    -> capabilities:ServerCapabilities.t
    -> document_selector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val register : ('PO, 'RO, 'PR) t -> data:'RO RegistrationData.t -> unit
    [@@js.call "register"]

  val register_language_provider
    :  ('PO, 'RO, 'PR) t
    -> options:'RO
    -> id:string
    -> Disposable.t * 'PR
    [@@js.call "registerLanguageProvider"]

  val unregister : ('PO, 'RO, 'PR) t -> id:string -> unit
    [@@js.call "unregister"]

  val dispose : ('PO, 'RO, 'PR) t -> unit [@@js.call "dispose"]

  val get_registration
    :  ('PO, 'RO, 'PR) t
    -> document_selector:DocumentSelector.t or_undefined
    -> capability:'PO or_undefined
    -> string or_undefined
       * ('RO, AnonymousInterface1.t) intersection2 or_undefined
    [@@js.call "getRegistration"]

  val get_registration_options
    :  ('PO, 'RO, 'PR) t
    -> document_selector:DocumentSelector.t or_undefined
    -> capability:'PO or_undefined
    -> ('RO, AnonymousInterface1.t) intersection2 or_undefined
    [@@js.call "getRegistrationOptions"]

  val get_provider
    :  ('PO, 'RO, 'PR) t
    -> text_document:TextDocument.t
    -> 'PR or_undefined
    [@@js.call "getProvider"]

  val get_all_providers : ('PO, 'RO, 'PR) t -> 'PR Iterable.t
    [@@js.call "getAllProviders"]

  val cast : ('PO, 'RO, 'PR) t -> 'RO DynamicFeature.t [@@js.cast]
end
[@@js.scope "TextDocumentFeature"]

module WorkspaceProviderFeature : sig
  type 'PR t

  val t_to_js : ('PR -> Ojs.t) -> 'PR t -> Ojs.t

  val t_of_js : (Ojs.t -> 'PR) -> Ojs.t -> 'PR t

  val get_providers : 'PR t -> 'PR list or_undefined [@@js.call "getProviders"]
end
[@@js.scope "WorkspaceProviderFeature"]

module ProvideResolveFeature : sig
  type ('T1, 'T2) t

  val t_to_js : ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t

  val get_provide : ('T1, 'T2) t -> 'T1 [@@js.get "provide"]

  val set_provide : ('T1, 'T2) t -> 'T1 -> unit [@@js.set "provide"]

  val get_resolve : ('T1, 'T2) t -> 'T2 [@@js.get "resolve"]

  val set_resolve : ('T1, 'T2) t -> 'T2 -> unit [@@js.set "resolve"]
end
[@@js.scope "ProvideResolveFeature"]

module MessageTransports : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_reader : t -> MessageReader.t [@@js.get "reader"]

  val set_reader : t -> MessageReader.t -> unit [@@js.set "reader"]

  val get_writer : t -> MessageWriter.t [@@js.get "writer"]

  val set_writer : t -> MessageWriter.t -> unit [@@js.set "writer"]

  val get_detached : t -> bool [@@js.get "detached"]

  val set_detached : t -> bool -> unit [@@js.set "detached"]
end
[@@js.scope "MessageTransports"]

module MessageTransports : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MessageTransports"]

module LSPCancellationError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> (untyped_object, untyped_object) union2 [@@js.get "data"]

  val create : data:(untyped_object, untyped_object) union2 -> t [@@js.create]

  val cast : t -> CancellationError.t [@@js.cast]
end
[@@js.scope "LSPCancellationError"]

module BaseLanguageClient : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__id : t -> (* FIXME: unknown type *) any [@@js.get "_id"]

  val set__id : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_id"]

  val get__name : t -> (* FIXME: unknown type *) any [@@js.get "_name"]

  val set__name : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_name"]

  val get_client_options : t -> (* FIXME: unknown type *) any
    [@@js.get "_clientOptions"]

  val set_client_options : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_clientOptions"]

  val get__state : t -> (* FIXME: unknown type *) any [@@js.get "_state"]

  val set__state : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_state"]

  val get_on_ready : t -> (* FIXME: unknown type *) any [@@js.get "_onReady"]

  val set_on_ready : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_onReady"]

  val get_on_ready_callbacks : t -> (* FIXME: unknown type *) any
    [@@js.get "_onReadyCallbacks"]

  val set_on_ready_callbacks : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_onReadyCallbacks"]

  val get_on_stop : t -> (* FIXME: unknown type *) any [@@js.get "_onStop"]

  val set_on_stop : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_onStop"]

  val get_connection_promise : t -> (* FIXME: unknown type *) any
    [@@js.get "_connectionPromise"]

  val set_connection_promise : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_connectionPromise"]

  val get_resolved_connection : t -> (* FIXME: unknown type *) any
    [@@js.get "_resolvedConnection"]

  val set_resolved_connection : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_resolvedConnection"]

  val get_initialize_result : t -> (* FIXME: unknown type *) any
    [@@js.get "_initializeResult"]

  val set_initialize_result : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_initializeResult"]

  val get_output_channel : t -> (* FIXME: unknown type *) any
    [@@js.get "_outputChannel"]

  val set_output_channel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_outputChannel"]

  val get_dispose_output_channel : t -> (* FIXME: unknown type *) any
    [@@js.get "_disposeOutputChannel"]

  val set_dispose_output_channel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_disposeOutputChannel"]

  val get_trace_output_channel : t -> (* FIXME: unknown type *) any
    [@@js.get "_traceOutputChannel"]

  val set_trace_output_channel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_traceOutputChannel"]

  val get__capabilities : t -> (* FIXME: unknown type *) any
    [@@js.get "_capabilities"]

  val set__capabilities : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_capabilities"]

  val get__listeners : t -> (* FIXME: unknown type *) any
    [@@js.get "_listeners"]

  val set__listeners : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_listeners"]

  val get__providers : t -> (* FIXME: unknown type *) any
    [@@js.get "_providers"]

  val set__providers : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_providers"]

  val get__diagnostics : t -> (* FIXME: unknown type *) any
    [@@js.get "_diagnostics"]

  val set__diagnostics : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_diagnostics"]

  val get_synced_documents : t -> (* FIXME: unknown type *) any
    [@@js.get "_syncedDocuments"]

  val set_synced_documents : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_syncedDocuments"]

  val get_file_events : t -> (* FIXME: unknown type *) any
    [@@js.get "_fileEvents"]

  val set_file_events : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_fileEvents"]

  val get_file_event_delayer : t -> (* FIXME: unknown type *) any
    [@@js.get "_fileEventDelayer"]

  val set_file_event_delayer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_fileEventDelayer"]

  val get_telemetry_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "_telemetryEmitter"]

  val set_telemetry_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_telemetryEmitter"]

  val get_state_change_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "_stateChangeEmitter"]

  val set_state_change_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_stateChangeEmitter"]

  val get__trace : t -> (* FIXME: unknown type *) any [@@js.get "_trace"]

  val set__trace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_trace"]

  val get_trace_format : t -> (* FIXME: unknown type *) any
    [@@js.get "_traceFormat"]

  val set_trace_format : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_traceFormat"]

  val get__tracer : t -> (* FIXME: unknown type *) any [@@js.get "_tracer"]

  val set__tracer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_tracer"]

  val get__c2p : t -> (* FIXME: unknown type *) any [@@js.get "_c2p"]

  val set__c2p : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_c2p"]

  val get__p2c : t -> (* FIXME: unknown type *) any [@@js.get "_p2c"]

  val set__p2c : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_p2c"]

  val create
    :  id:string
    -> name:string
    -> client_options:LanguageClientOptions.t
    -> t
    [@@js.create]

  val get_state : t -> (* FIXME: unknown type *) any [@@js.get "state"]

  val set_state : t -> (* FIXME: unknown type *) any -> unit [@@js.set "state"]

  val get_get_public_state : t -> (* FIXME: unknown type *) any
    [@@js.get "getPublicState"]

  val set_get_public_state : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "getPublicState"]

  val get_initialize_result : t -> InitializeResult.t or_undefined
    [@@js.get "initializeResult"]

  val send_request
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''''
    :  t
    -> method_:string
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''''
    :  t
    -> method_:string
    -> param:any
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val on_request
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request'
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request''
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request''''
    :  t
    -> method_:string
    -> handler:('R, 'E) GenericRequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val send_notification : t -> type_:'RO ProtocolNotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val send_notification'
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'' : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val send_notification'''
    :  t
    -> type_:'P NotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''' : t -> method_:string -> unit
    [@@js.call "sendNotification"]

  val send_notification''''' : t -> method_:string -> params:any -> unit
    [@@js.call "sendNotification"]

  val on_notification
    :  t
    -> type_:'RO ProtocolNotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification'
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification''
    :  t
    -> type_:NotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''
    :  t
    -> type_:'P NotificationType.t
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''
    :  t
    -> method_:string
    -> handler:GenericNotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onProgress"]

  val send_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val get_client_options : t -> LanguageClientOptions.t
    [@@js.get "clientOptions"]

  val get_protocol2CodeConverter : t -> P2c.Converter.t
    [@@js.get "protocol2CodeConverter"]

  val get_code2ProtocolConverter : t -> C2p.Converter.t
    [@@js.get "code2ProtocolConverter"]

  val get_on_telemetry : t -> any Event.t [@@js.get "onTelemetry"]

  val get_on_did_change_state : t -> StateChangeEvent.t Event.t
    [@@js.get "onDidChangeState"]

  val get_output_channel : t -> OutputChannel.t [@@js.get "outputChannel"]

  val get_trace_output_channel : t -> OutputChannel.t
    [@@js.get "traceOutputChannel"]

  val get_diagnostics : t -> DiagnosticCollection.t or_undefined
    [@@js.get "diagnostics"]

  val create_default_error_handler
    :  t
    -> ?max_restart_count:int
    -> unit
    -> ErrorHandler.t
    [@@js.call "createDefaultErrorHandler"]

  val set_trace : t -> Trace.t -> unit [@@js.set "trace"]

  val get_data2String : t -> (* FIXME: unknown type *) any
    [@@js.get "data2String"]

  val set_data2String : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "data2String"]

  val info
    :  t
    -> message:string
    -> ?data:any
    -> ?show_notification:bool
    -> unit
    -> unit
    [@@js.call "info"]

  val warn
    :  t
    -> message:string
    -> ?data:any
    -> ?show_notification:bool
    -> unit
    -> unit
    [@@js.call "warn"]

  val error
    :  t
    -> message:string
    -> ?data:any
    -> ?show_notification:bool
    -> unit
    -> unit
    [@@js.call "error"]

  val get_show_notification_message : t -> (* FIXME: unknown type *) any
    [@@js.get "showNotificationMessage"]

  val set_show_notification_message : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "showNotificationMessage"]

  val get_log_trace : t -> (* FIXME: unknown type *) any [@@js.get "logTrace"]

  val set_log_trace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "logTrace"]

  val get_log_object_trace : t -> (* FIXME: unknown type *) any
    [@@js.get "logObjectTrace"]

  val set_log_object_trace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "logObjectTrace"]

  val needs_start : t -> bool [@@js.call "needsStart"]

  val needs_stop : t -> bool [@@js.call "needsStop"]

  val on_ready : t -> unit Promise.t [@@js.call "onReady"]

  val get_is_connection_active : t -> (* FIXME: unknown type *) any
    [@@js.get "isConnectionActive"]

  val set_is_connection_active : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "isConnectionActive"]

  val start : t -> Disposable.t [@@js.call "start"]

  val get_resolve_connection : t -> (* FIXME: unknown type *) any
    [@@js.get "resolveConnection"]

  val set_resolve_connection : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "resolveConnection"]

  val get_initialize : t -> (* FIXME: unknown type *) any
    [@@js.get "initialize"]

  val set_initialize : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initialize"]

  val get_do_initialize : t -> (* FIXME: unknown type *) any
    [@@js.get "doInitialize"]

  val set_do_initialize : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doInitialize"]

  val get_client_get_root_path : t -> (* FIXME: unknown type *) any
    [@@js.get "_clientGetRootPath"]

  val set_client_get_root_path : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_clientGetRootPath"]

  val stop : t -> unit Promise.t [@@js.call "stop"]

  val get_clean_up : t -> (* FIXME: unknown type *) any [@@js.get "cleanUp"]

  val set_clean_up : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "cleanUp"]

  val get_clean_up_channel : t -> (* FIXME: unknown type *) any
    [@@js.get "cleanUpChannel"]

  val set_clean_up_channel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "cleanUpChannel"]

  val get_notify_file_event : t -> (* FIXME: unknown type *) any
    [@@js.get "notifyFileEvent"]

  val set_notify_file_event : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "notifyFileEvent"]

  val get_did_change_text_document_feature : t -> (* FIXME: unknown type *) any
    [@@js.get "_didChangeTextDocumentFeature"]

  val set_did_change_text_document_feature
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_didChangeTextDocumentFeature"]

  val get_force_document_sync : t -> (* FIXME: unknown type *) any
    [@@js.get "forceDocumentSync"]

  val set_force_document_sync : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "forceDocumentSync"]

  val get_handle_diagnostics : t -> (* FIXME: unknown type *) any
    [@@js.get "handleDiagnostics"]

  val set_handle_diagnostics : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleDiagnostics"]

  val get_set_diagnostics : t -> (* FIXME: unknown type *) any
    [@@js.get "setDiagnostics"]

  val set_set_diagnostics : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "setDiagnostics"]

  val get_locale : t -> string [@@js.call "getLocale"]

  val create_message_transports
    :  t
    -> encoding:string
    -> MessageTransports.t Promise.t
    [@@js.call "createMessageTransports"]

  val get_create_connection : t -> (* FIXME: unknown type *) any
    [@@js.get "createConnection"]

  val set_create_connection : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "createConnection"]

  val handle_connection_closed : t -> unit [@@js.call "handleConnectionClosed"]

  val get_handle_connection_error : t -> (* FIXME: unknown type *) any
    [@@js.get "handleConnectionError"]

  val set_handle_connection_error : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleConnectionError"]

  val get_hook_configuration_changed : t -> (* FIXME: unknown type *) any
    [@@js.get "hookConfigurationChanged"]

  val set_hook_configuration_changed
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "hookConfigurationChanged"]

  val get_refresh_trace : t -> (* FIXME: unknown type *) any
    [@@js.get "refreshTrace"]

  val set_refresh_trace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "refreshTrace"]

  val get_hook_file_events : t -> (* FIXME: unknown type *) any
    [@@js.get "hookFileEvents"]

  val set_hook_file_events : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "hookFileEvents"]

  val get__features : t -> (* FIXME: unknown type *) any [@@js.get "_features"]

  val get_dynamic_features : t -> (* FIXME: unknown type *) any
    [@@js.get "_dynamicFeatures"]

  val register_features
    :  t
    -> features:(StaticFeature.t, any DynamicFeature.t) union2 list
    -> unit
    [@@js.call "registerFeatures"]

  val register_feature
    :  t
    -> feature:(StaticFeature.t, any DynamicFeature.t) union2
    -> unit
    [@@js.call "registerFeature"]

  val get_feature
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidOpenTextDocumentNotification.method' *)
         any
    -> DidOpenTextDocumentFeatureShape.t
    [@@js.call "getFeature"]

  val get_feature'
    :  t
    -> request:
         (* FIXME: unknown type 'typeof
            DidChangeTextDocumentNotification.method' *)
         any
    -> DidChangeTextDocumentFeatureShape.t
    [@@js.call "getFeature"]

  val get_feature''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillSaveTextDocumentNotification.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , (textDocument:TextDocument.t -> unit) NotificationFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof
            WillSaveTextDocumentWaitUntilRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , (textDocument:TextDocument.t -> VTextEdit.t list ProviderResult.t)
         NotificationFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidSaveTextDocumentNotification.method' *)
         any
    -> DidSaveTextDocumentFeatureShape.t
    [@@js.call "getFeature"]

  val get_feature'''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidCloseTextDocumentNotification.method' *)
         any
    -> DidCloseTextDocumentFeatureShape.t
    [@@js.call "getFeature"]

  val get_feature''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidCreateFilesNotification.method' *)
         any
    -> ( FileOperationRegistrationOptions.t DynamicFeature.t
       , AnonymousInterface6.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidRenameFilesNotification.method' *)
         any
    -> ( FileOperationRegistrationOptions.t DynamicFeature.t
       , AnonymousInterface8.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidDeleteFilesNotification.method' *)
         any
    -> ( FileOperationRegistrationOptions.t DynamicFeature.t
       , AnonymousInterface7.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillCreateFilesRequest.method' *) any
    -> ( FileOperationRegistrationOptions.t DynamicFeature.t
       , AnonymousInterface9.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillRenameFilesRequest.method' *) any
    -> ( FileOperationRegistrationOptions.t DynamicFeature.t
       , AnonymousInterface11.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillDeleteFilesRequest.method' *) any
    -> ( FileOperationRegistrationOptions.t DynamicFeature.t
       , AnonymousInterface10.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof CompletionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , CompletionItemProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof HoverRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , HoverProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof SignatureHelpRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , SignatureHelpProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof DefinitionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DefinitionProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof ReferencesRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , ReferenceProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentHighlightRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DocumentHighlightProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof CodeActionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , CodeActionProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentFormattingRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DocumentFormattingEditProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentRangeFormattingRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DocumentRangeFormattingEditProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentOnTypeFormattingRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , OnTypeFormattingEditProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof RenameRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , RenameProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentSymbolRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DocumentSymbolProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof DocumentLinkRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DocumentLinkProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentColorRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DocumentColorProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof DeclarationRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , DeclarationProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof FoldingRangeRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , FoldingRangeProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof ImplementationRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , ImplementationProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof SelectionRangeRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , SelectionRangeProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof TypeDefinitionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , TypeDefinitionProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof CallHierarchyPrepareRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , CallHierarchyProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof SemanticTokensRegistrationType.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , SemanticTokensProviders.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature'''''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof LinkedEditingRangeRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , LinkedEditingRangeProvider.t TextDocumentProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val get_feature''''''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WorkspaceSymbolRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t DynamicFeature.t
       , WorkspaceSymbolProvider.t WorkspaceProviderFeature.t )
       intersection2
    [@@js.call "getFeature"]

  val register_builtin_features : t -> unit
    [@@js.call "registerBuiltinFeatures"]

  val fill_initialize_params : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val get_compute_client_capabilities : t -> (* FIXME: unknown type *) any
    [@@js.get "computeClientCapabilities"]

  val set_compute_client_capabilities
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "computeClientCapabilities"]

  val get_initialize_features : t -> (* FIXME: unknown type *) any
    [@@js.get "initializeFeatures"]

  val set_initialize_features : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initializeFeatures"]

  val get_handle_registration_request : t -> (* FIXME: unknown type *) any
    [@@js.get "handleRegistrationRequest"]

  val set_handle_registration_request
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "handleRegistrationRequest"]

  val get_handle_unregistration_request : t -> (* FIXME: unknown type *) any
    [@@js.get "handleUnregistrationRequest"]

  val set_handle_unregistration_request
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "handleUnregistrationRequest"]

  val get_handle_apply_workspace_edit : t -> (* FIXME: unknown type *) any
    [@@js.get "handleApplyWorkspaceEdit"]

  val set_handle_apply_workspace_edit
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "handleApplyWorkspaceEdit"]

  val get_requests_to_cancel_on_content_modified
    :  unit
    -> (* FIXME: unknown type *) any
    [@@js.get "RequestsToCancelOnContentModified"]

  val set_requests_to_cancel_on_content_modified
    :  (* FIXME: unknown type *) any
    -> unit
    [@@js.set "RequestsToCancelOnContentModified"]

  val handle_failed_request
    :  t
    -> type_:MessageSignature.t
    -> token:CancellationToken.t or_undefined
    -> error:any
    -> default_value:'T
    -> 'T
    [@@js.call "handleFailedRequest"]
end
[@@js.scope "BaseLanguageClient"]
(* export {}; *)
