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

    type anonymous_interface_4 = [ `anonymous_interface_4 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_5 = [ `anonymous_interface_5 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_6 = [ `anonymous_interface_6 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_7 = [ `anonymous_interface_7 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_8 = [ `anonymous_interface_8 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_9 = [ `anonymous_interface_9 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_10 = [ `anonymous_interface_10 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_11 = [ `anonymous_interface_11 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _BaseLanguageClient = [ `BaseLanguageClient ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CloseAction =
      ([ `DoNotRestart [@js 1]
       | `Restart [@js 2]
       ]
      [@js.enum])

    and _CloseAction_DoNotRestart = ([ `DoNotRestart [@js 1] ][@js.enum])

    and _CloseAction_Restart = ([ `Restart [@js 2] ][@js.enum])

    and _ConnectionOptions = [ `ConnectionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticPullMode =
      ([ `onType [@js "onType"]
       | `onSave [@js "onSave"]
       ]
      [@js.enum])

    and _DiagnosticPullMode_onType = ([ `onType [@js "onType"] ][@js.enum])

    and _DiagnosticPullMode_onSave = ([ `onSave [@js "onSave"] ][@js.enum])

    and _DiagnosticPullOptions = [ `DiagnosticPullOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidChangeConfigurationSignature =
      [ `DidChangeConfigurationSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidChangeTextDocumentFeatureShape =
      [ `DidChangeTextDocumentFeatureShape
      | `DynamicFeature of TextDocumentRegistrationOptions.t
      | `NotificationFeature of event:TextDocumentChangeEvent.t -> unit
      | `NotifyingFeature of
        TextDocumentChangeEvent.t * DidChangeTextDocumentParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidChangeWatchedFileSignature = [ `DidChangeWatchedFileSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidCloseTextDocumentFeatureShape =
      [ `DidCloseTextDocumentFeatureShape
      | `DynamicFeature of TextDocumentRegistrationOptions.t
      | `NotificationFeature of textDocument:TextDocument.t -> unit
      | `NotifyingFeature of TextDocument.t * DidCloseTextDocumentParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidOpenTextDocumentFeatureShape =
      [ `DidOpenTextDocumentFeatureShape
      | `DynamicFeature of TextDocumentRegistrationOptions.t
      | `NotificationFeature of textDocument:TextDocument.t -> unit
      | `NotifyingFeature of TextDocument.t * DidOpenTextDocumentParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidSaveTextDocumentFeatureShape =
      [ `DidSaveTextDocumentFeatureShape
      | `DynamicFeature of TextDocumentRegistrationOptions.t
      | `NotificationFeature of textDocument:TextDocument.t -> unit
      | `NotifyingFeature of TextDocument.t * DidSaveTextDocumentParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'RO _DynamicFeature = [ `DynamicFeature of 'RO ] intf
    [@@js.custom
      { of_js = (fun _RO -> Obj.magic); to_js = (fun _RO -> Obj.magic) }]

    and _ErrorAction =
      ([ `Continue [@js 1]
       | `Shutdown [@js 2]
       ]
      [@js.enum])

    and _ErrorAction_Continue = ([ `Continue [@js 1] ][@js.enum])

    and _ErrorAction_Shutdown = ([ `Shutdown [@js 2] ][@js.enum])

    and _ErrorHandler = [ `ErrorHandler ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ExecuteCommandSignature = [ `ExecuteCommandSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _HandleDiagnosticsSignature = [ `HandleDiagnosticsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _HandleWorkDoneProgressSignature =
      [ `HandleWorkDoneProgressSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _InitializationFailedHandler = [ `InitializationFailedHandler ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LSPCancellationError = [ `LSPCancellationError ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LanguageClientOptions = [ `LanguageClientOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageTransports = [ `MessageTransports ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Middleware =
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
      , _Middleware )
      and_

    and ('P, 'R) _NextSignature = [ `NextSignature of 'P * 'R ] intf
    [@@js.custom
      { of_js = (fun _P _R -> Obj.magic); to_js = (fun _P _R -> Obj.magic) }]

    and 'T _NotificationFeature = [ `NotificationFeature of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and ('E, 'P) _NotificationSendEvent =
      [ `NotificationSendEvent of 'E * 'P ] intf
    [@@js.custom
      { of_js = (fun _E _P -> Obj.magic); to_js = (fun _E _P -> Obj.magic) }]

    and ('E, 'P) _NotifyingFeature = [ `NotifyingFeature of 'E * 'P ] intf
    [@@js.custom
      { of_js = (fun _E _P -> Obj.magic); to_js = (fun _E _P -> Obj.magic) }]

    and _PrepareRenameSignature = [ `PrepareRenameSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideCodeActionsSignature = [ `ProvideCodeActionsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideCodeLensesSignature = [ `ProvideCodeLensesSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideCompletionItemsSignature =
      [ `ProvideCompletionItemsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDefinitionSignature = [ `ProvideDefinitionSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDocumentFormattingEditsSignature =
      [ `ProvideDocumentFormattingEditsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDocumentHighlightsSignature =
      [ `ProvideDocumentHighlightsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDocumentLinksSignature = [ `ProvideDocumentLinksSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDocumentRangeFormattingEditsSignature =
      [ `ProvideDocumentRangeFormattingEditsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDocumentSymbolsSignature =
      [ `ProvideDocumentSymbolsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideHoverSignature = [ `ProvideHoverSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideOnTypeFormattingEditsSignature =
      [ `ProvideOnTypeFormattingEditsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideReferencesSignature = [ `ProvideReferencesSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideRenameEditsSignature = [ `ProvideRenameEditsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('T1, 'T2) _ProvideResolveFeature =
      [ `ProvideResolveFeature of 'T1 * 'T2 ] intf
    [@@js.custom
      { of_js = (fun _T1 _T2 -> Obj.magic); to_js = (fun _T1 _T2 -> Obj.magic) }]

    and _ProvideSignatureHelpSignature = [ `ProvideSignatureHelpSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideWorkspaceSymbolsSignature =
      [ `ProvideWorkspaceSymbolsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _RegistrationData = [ `RegistrationData of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _ResolveCodeActionSignature = [ `ResolveCodeActionSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ResolveCodeLensSignature = [ `ResolveCodeLensSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ResolveCompletionItemSignature =
      [ `ResolveCompletionItemSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ResolveDocumentLinkSignature = [ `ResolveDocumentLinkSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _RevealOutputChannelOn =
      ([ `Info [@js 1]
       | `Warn [@js 2]
       | `Error [@js 3]
       | `Never [@js 4]
       ]
      [@js.enum])

    and _RevealOutputChannelOn_Info = ([ `Info [@js 1] ][@js.enum])

    and _RevealOutputChannelOn_Warn = ([ `Warn [@js 2] ][@js.enum])

    and _RevealOutputChannelOn_Error = ([ `Error [@js 3] ][@js.enum])

    and _RevealOutputChannelOn_Never = ([ `Never [@js 4] ][@js.enum])

    and _State =
      ([ `Stopped [@js 1]
       | `Starting [@js 3]
       | `Running [@js 2]
       ]
      [@js.enum])

    and _State_Stopped = ([ `Stopped [@js 1] ][@js.enum])

    and _State_Starting = ([ `Starting [@js 3] ][@js.enum])

    and _State_Running = ([ `Running [@js 2] ][@js.enum])

    and _StateChangeEvent = [ `StateChangeEvent ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StaticFeature = [ `StaticFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SynchronizeOptions = [ `SynchronizeOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('PO, 'RO, 'PR) _TextDocumentFeature =
      [ `TextDocumentFeature of 'PO * 'RO * 'PR | `DynamicFeature of 'RO ] intf
    [@@js.custom
      { of_js = (fun _PO _RO _PR -> Obj.magic)
      ; to_js = (fun _PO _RO _PR -> Obj.magic)
      }]

    and 'T _TextDocumentProviderFeature =
      [ `TextDocumentProviderFeature of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _WindowMiddleware = _WindowMiddleware

    and _WorkspaceMiddleware =
      ( _WorkspaceMiddleware
      , ConfigurationWorkspaceMiddleware.t
      , WorkspaceFolderWorkspaceMiddleware.t
      , FileOperationsMiddleware.t )
      intersection4

    and 'PR _WorkspaceProviderFeature =
      [ `WorkspaceProviderFeature of 'PR ] intf
    [@@js.custom
      { of_js = (fun _PR -> Obj.magic); to_js = (fun _PR -> Obj.magic) }]

    and _Middleware = [ `_Middleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WindowMiddleware = [ `_WindowMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceMiddleware = [ `_WorkspaceMiddleware ] intf
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

  val get_code2Protocol : t -> C2p.URIConverter.t [@@js.get "code2Protocol"]

  val set_code2Protocol : t -> C2p.URIConverter.t -> unit
    [@@js.set "code2Protocol"]

  val get_protocol2Code : t -> P2c.URIConverter.t [@@js.get "protocol2Code"]

  val set_protocol2Code : t -> P2c.URIConverter.t -> unit
    [@@js.set "protocol2Code"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_documentSelector : t -> DocumentSelector.t
    [@@js.get "documentSelector"]

  val set_documentSelector : t -> DocumentSelector.t -> unit
    [@@js.set "documentSelector"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_includeDeclaration : t -> bool [@@js.get "includeDeclaration"]

  val set_includeDeclaration : t -> bool -> unit [@@js.set "includeDeclaration"]
end

module AnonymousInterface3 : sig
  type t = anonymous_interface_3

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_isTrusted : t -> bool [@@js.get "isTrusted"]

  val set_isTrusted : t -> bool -> unit [@@js.set "isTrusted"]
end

module AnonymousInterface4 : sig
  type t = anonymous_interface_4

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> VRange.t [@@js.get "range"]

  val set_range : t -> VRange.t -> unit [@@js.set "range"]

  val get_placeholder : t -> string [@@js.get "placeholder"]

  val set_placeholder : t -> string -> unit [@@js.set "placeholder"]
end

module AnonymousInterface5 : sig
  type t = anonymous_interface_5

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_send : t -> 'T [@@js.get "send"]

  val set_send : t -> 'T -> unit [@@js.set "send"]
end

module AnonymousInterface6 : sig
  type t = anonymous_interface_6

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileCreateEvent.t -> unit Promise.t [@@js.call "send"]
end

module AnonymousInterface7 : sig
  type t = anonymous_interface_7

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileDeleteEvent.t -> unit Promise.t [@@js.call "send"]
end

module AnonymousInterface8 : sig
  type t = anonymous_interface_8

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileRenameEvent.t -> unit Promise.t [@@js.call "send"]
end

module AnonymousInterface9 : sig
  type t = anonymous_interface_9

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileWillCreateEvent.t -> unit Promise.t
    [@@js.call "send"]
end

module AnonymousInterface10 : sig
  type t = anonymous_interface_10

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send : t -> event:FileWillDeleteEvent.t -> unit Promise.t
    [@@js.call "send"]
end

module AnonymousInterface11 : sig
  type t = anonymous_interface_11

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
  type t = _ConnectionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancellationStrategy : t -> CancellationStrategy.t
    [@@js.get "cancellationStrategy"]

  val set_cancellationStrategy : t -> CancellationStrategy.t -> unit
    [@@js.set "cancellationStrategy"]

  val get_maxRestartCount : t -> int [@@js.get "maxRestartCount"]

  val set_maxRestartCount : t -> int -> unit [@@js.set "maxRestartCount"]
end
[@@js.scope "ConnectionOptions"]

module ErrorAction : sig
  type t = _ErrorAction

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module CloseAction : sig
  type t = _CloseAction

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ErrorHandler : sig
  type t = _ErrorHandler

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error
    :  t
    -> error:Error.t
    -> message:Message.t or_undefined
    -> count:int or_undefined
    -> _ErrorAction
    [@@js.call "error"]

  val closed : t -> _CloseAction [@@js.call "closed"]
end
[@@js.scope "ErrorHandler"]

module InitializationFailedHandler : sig
  type t = _InitializationFailedHandler

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
  type t = _SynchronizeOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_configurationSection : t -> string list or_string
    [@@js.get "configurationSection"]

  val set_configurationSection : t -> string list or_string -> unit
    [@@js.set "configurationSection"]

  val get_fileEvents
    :  t
    -> (VFileSystemWatcher.t, VFileSystemWatcher.t) or_array
    [@@js.get "fileEvents"]

  val set_fileEvents
    :  t
    -> (VFileSystemWatcher.t, VFileSystemWatcher.t) or_array
    -> unit
    [@@js.set "fileEvents"]
end
[@@js.scope "SynchronizeOptions"]

module DiagnosticPullMode : sig
  type t = _DiagnosticPullMode

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DiagnosticPullOptions : sig
  type t = _DiagnosticPullOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_onType : t -> bool [@@js.get "onType"]

  val set_onType : t -> bool -> unit [@@js.set "onType"]

  val get_onSave : t -> bool [@@js.get "onSave"]

  val set_onSave : t -> bool -> unit [@@js.set "onSave"]

  val filter : t -> document:TextDocument.t -> mode:_DiagnosticPullMode -> bool
    [@@js.call "filter"]
end
[@@js.scope "DiagnosticPullOptions"]

module RevealOutputChannelOn : sig
  type t = _RevealOutputChannelOn

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module HandleDiagnosticsSignature : sig
  type t = _HandleDiagnosticsSignature

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
  type t = _HandleWorkDoneProgressSignature

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
  type t = _ProvideCompletionItemsSignature

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
  type t = _ResolveCompletionItemSignature

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
  type t = _ProvideHoverSignature

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
  type t = _ProvideSignatureHelpSignature

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
  type t = _ProvideDefinitionSignature

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
  type t = _ProvideReferencesSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> options:anonymous_interface_2
    -> token:CancellationToken.t
    -> VLocation.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideReferencesSignature"]

module ProvideDocumentHighlightsSignature : sig
  type t = _ProvideDocumentHighlightsSignature

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
  type t = _ProvideDocumentSymbolsSignature

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
  type t = _ProvideWorkspaceSymbolsSignature

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
  type t = _ProvideCodeActionsSignature

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
  type t = _ResolveCodeActionSignature

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
  type t = _ProvideCodeLensesSignature

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
  type t = _ResolveCodeLensSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> codeLens:VCodeLens.t
    -> token:CancellationToken.t
    -> VCodeLens.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ResolveCodeLensSignature"]

module ProvideDocumentFormattingEditsSignature : sig
  type t = _ProvideDocumentFormattingEditsSignature

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
  type t = _ProvideDocumentRangeFormattingEditsSignature

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
  type t = _ProvideOnTypeFormattingEditsSignature

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
  type t = _ProvideRenameEditsSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> newName:string
    -> token:CancellationToken.t
    -> VWorkspaceEdit.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideRenameEditsSignature"]

module PrepareRenameSignature : sig
  type t = _PrepareRenameSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VRange.t, anonymous_interface_4) union2 ProviderResult.t
    [@@js.apply]
end
[@@js.scope "PrepareRenameSignature"]

module ProvideDocumentLinksSignature : sig
  type t = _ProvideDocumentLinksSignature

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
  type t = _ResolveDocumentLinkSignature

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
  type t = _ExecuteCommandSignature

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
  type ('P, 'R) t = ('P, 'R) _NextSignature

  val t_to_js : ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('P, 'R) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> Ojs.t -> ('P, 'R) t

  val apply : ('P, 'R) t -> this:unit -> data:'P -> next:(data:'P -> 'R) -> 'R
    [@@js.apply]
end
[@@js.scope "NextSignature"]

module DidChangeConfigurationSignature : sig
  type t = _DidChangeConfigurationSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> this:unit -> sections:string list or_undefined -> unit
    [@@js.apply]
end
[@@js.scope "DidChangeConfigurationSignature"]

module DidChangeWatchedFileSignature : sig
  type t = _DidChangeWatchedFileSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> this:unit -> event:FileEvent.t -> unit [@@js.apply]
end
[@@js.scope "DidChangeWatchedFileSignature"]

module M_WorkspaceMiddleware : sig
  type t = _WorkspaceMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val didChangeConfiguration
    :  t
    -> this:unit
    -> sections:string list or_undefined
    -> next:_DidChangeConfigurationSignature
    -> unit
    [@@js.call "didChangeConfiguration"]

  val didChangeWatchedFile
    :  t
    -> this:unit
    -> event:FileEvent.t
    -> next:_DidChangeWatchedFileSignature
    -> unit
    [@@js.call "didChangeWatchedFile"]
end
[@@js.scope "_WorkspaceMiddleware"]

module WorkspaceMiddleware : sig
  type t = _WorkspaceMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module M_WindowMiddleware : sig
  type t = _WindowMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val showDocument
    :  t
    -> this:unit
    -> params:ShowDocumentParams.t
    -> next:ShowDocumentRequest.HandlerSignature.t
    -> ShowDocumentResult.t Promise.t
    [@@js.call "showDocument"]
end
[@@js.scope "_WindowMiddleware"]

module WindowMiddleware : sig
  type t = _WindowMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module M_Middleware : sig
  type t = _Middleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_didOpen : t -> (TextDocument.t, unit) _NextSignature
    [@@js.get "didOpen"]

  val set_didOpen : t -> (TextDocument.t, unit) _NextSignature -> unit
    [@@js.set "didOpen"]

  val get_didChange : t -> (TextDocumentChangeEvent.t, unit) _NextSignature
    [@@js.get "didChange"]

  val set_didChange
    :  t
    -> (TextDocumentChangeEvent.t, unit) _NextSignature
    -> unit
    [@@js.set "didChange"]

  val get_willSave : t -> (TextDocumentWillSaveEvent.t, unit) _NextSignature
    [@@js.get "willSave"]

  val set_willSave
    :  t
    -> (TextDocumentWillSaveEvent.t, unit) _NextSignature
    -> unit
    [@@js.set "willSave"]

  val get_willSaveWaitUntil
    :  t
    -> (TextDocumentWillSaveEvent.t, VTextEdit.t list Promise.t) _NextSignature
    [@@js.get "willSaveWaitUntil"]

  val set_willSaveWaitUntil
    :  t
    -> (TextDocumentWillSaveEvent.t, VTextEdit.t list Promise.t) _NextSignature
    -> unit
    [@@js.set "willSaveWaitUntil"]

  val get_didSave : t -> (TextDocument.t, unit) _NextSignature
    [@@js.get "didSave"]

  val set_didSave : t -> (TextDocument.t, unit) _NextSignature -> unit
    [@@js.set "didSave"]

  val get_didClose : t -> (TextDocument.t, unit) _NextSignature
    [@@js.get "didClose"]

  val set_didClose : t -> (TextDocument.t, unit) _NextSignature -> unit
    [@@js.set "didClose"]

  val handleDiagnostics
    :  t
    -> this:unit
    -> uri:Uri.t
    -> diagnostics:VDiagnostic.t list
    -> next:_HandleDiagnosticsSignature
    -> unit
    [@@js.call "handleDiagnostics"]

  val handleWorkDoneProgress
    :  t
    -> this:unit
    -> token:ProgressToken.t
    -> params:
         ( WorkDoneProgressBegin.t
         , WorkDoneProgressEnd.t
         , WorkDoneProgressReport.t )
         union3
    -> next:_HandleWorkDoneProgressSignature
    -> unit
    [@@js.call "handleWorkDoneProgress"]

  val provideCompletionItem
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> context:VCompletionContext.t
    -> token:CancellationToken.t
    -> next:_ProvideCompletionItemsSignature
    -> (VCompletionList.t, VCompletionItem.t) or_array ProviderResult.t
    [@@js.call "provideCompletionItem"]

  val resolveCompletionItem
    :  t
    -> this:unit
    -> item:VCompletionItem.t
    -> token:CancellationToken.t
    -> next:_ResolveCompletionItemSignature
    -> VCompletionItem.t ProviderResult.t
    [@@js.call "resolveCompletionItem"]

  val provideHover
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_ProvideHoverSignature
    -> VHover.t ProviderResult.t
    [@@js.call "provideHover"]

  val provideSignatureHelp
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> context:VSignatureHelpContext.t
    -> token:CancellationToken.t
    -> next:_ProvideSignatureHelpSignature
    -> VSignatureHelp.t ProviderResult.t
    [@@js.call "provideSignatureHelp"]

  val provideDefinition
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_ProvideDefinitionSignature
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t
    [@@js.call "provideDefinition"]

  val provideReferences
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> options:anonymous_interface_2
    -> token:CancellationToken.t
    -> next:_ProvideReferencesSignature
    -> VLocation.t list ProviderResult.t
    [@@js.call "provideReferences"]

  val provideDocumentHighlights
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_ProvideDocumentHighlightsSignature
    -> VDocumentHighlight.t list ProviderResult.t
    [@@js.call "provideDocumentHighlights"]

  val provideDocumentSymbols
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:_ProvideDocumentSymbolsSignature
    -> (VDocumentSymbol.t, VSymbolInformation.t) union2 list ProviderResult.t
    [@@js.call "provideDocumentSymbols"]

  val provideWorkspaceSymbols
    :  t
    -> this:unit
    -> query:string
    -> token:CancellationToken.t
    -> next:_ProvideWorkspaceSymbolsSignature
    -> VSymbolInformation.t list ProviderResult.t
    [@@js.call "provideWorkspaceSymbols"]

  val provideCodeActions
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> range:VRange.t
    -> context:VCodeActionContext.t
    -> token:CancellationToken.t
    -> next:_ProvideCodeActionsSignature
    -> (VCodeAction.t, VCommand.t) union2 list ProviderResult.t
    [@@js.call "provideCodeActions"]

  val resolveCodeAction
    :  t
    -> this:unit
    -> item:VCodeAction.t
    -> token:CancellationToken.t
    -> next:_ResolveCodeActionSignature
    -> VCodeAction.t ProviderResult.t
    [@@js.call "resolveCodeAction"]

  val provideCodeLenses
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:_ProvideCodeLensesSignature
    -> VCodeLens.t list ProviderResult.t
    [@@js.call "provideCodeLenses"]

  val resolveCodeLens
    :  t
    -> this:unit
    -> codeLens:VCodeLens.t
    -> token:CancellationToken.t
    -> next:_ResolveCodeLensSignature
    -> VCodeLens.t ProviderResult.t
    [@@js.call "resolveCodeLens"]

  val provideDocumentFormattingEdits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> next:_ProvideDocumentFormattingEditsSignature
    -> VTextEdit.t list ProviderResult.t
    [@@js.call "provideDocumentFormattingEdits"]

  val provideDocumentRangeFormattingEdits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> range:VRange.t
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> next:_ProvideDocumentRangeFormattingEditsSignature
    -> VTextEdit.t list ProviderResult.t
    [@@js.call "provideDocumentRangeFormattingEdits"]

  val provideOnTypeFormattingEdits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> ch:string
    -> options:VFormattingOptions.t
    -> token:CancellationToken.t
    -> next:_ProvideOnTypeFormattingEditsSignature
    -> VTextEdit.t list ProviderResult.t
    [@@js.call "provideOnTypeFormattingEdits"]

  val provideRenameEdits
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> newName:string
    -> token:CancellationToken.t
    -> next:_ProvideRenameEditsSignature
    -> VWorkspaceEdit.t ProviderResult.t
    [@@js.call "provideRenameEdits"]

  val prepareRename
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_PrepareRenameSignature
    -> (VRange.t, anonymous_interface_4) union2 ProviderResult.t
    [@@js.call "prepareRename"]

  val provideDocumentLinks
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:_ProvideDocumentLinksSignature
    -> VDocumentLink.t list ProviderResult.t
    [@@js.call "provideDocumentLinks"]

  val resolveDocumentLink
    :  t
    -> this:unit
    -> link:VDocumentLink.t
    -> token:CancellationToken.t
    -> next:_ResolveDocumentLinkSignature
    -> VDocumentLink.t ProviderResult.t
    [@@js.call "resolveDocumentLink"]

  val executeCommand
    :  t
    -> this:unit
    -> command:string
    -> args:any list
    -> next:_ExecuteCommandSignature
    -> any ProviderResult.t
    [@@js.call "executeCommand"]

  val get_workspace : t -> _WorkspaceMiddleware [@@js.get "workspace"]

  val set_workspace : t -> _WorkspaceMiddleware -> unit [@@js.set "workspace"]

  val get_window : t -> _WindowMiddleware [@@js.get "window"]

  val set_window : t -> _WindowMiddleware -> unit [@@js.set "window"]
end
[@@js.scope "_Middleware"]

module Middleware : sig
  type t = _Middleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module LanguageClientOptions : sig
  type t = _LanguageClientOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_documentSelector : t -> (DocumentSelector.t, string) or_array
    [@@js.get "documentSelector"]

  val set_documentSelector : t -> (DocumentSelector.t, string) or_array -> unit
    [@@js.set "documentSelector"]

  val get_synchronize : t -> _SynchronizeOptions [@@js.get "synchronize"]

  val set_synchronize : t -> _SynchronizeOptions -> unit
    [@@js.set "synchronize"]

  val get_diagnosticCollectionName : t -> string
    [@@js.get "diagnosticCollectionName"]

  val set_diagnosticCollectionName : t -> string -> unit
    [@@js.set "diagnosticCollectionName"]

  val get_outputChannel : t -> OutputChannel.t [@@js.get "outputChannel"]

  val set_outputChannel : t -> OutputChannel.t -> unit
    [@@js.set "outputChannel"]

  val get_outputChannelName : t -> string [@@js.get "outputChannelName"]

  val set_outputChannelName : t -> string -> unit [@@js.set "outputChannelName"]

  val get_traceOutputChannel : t -> OutputChannel.t
    [@@js.get "traceOutputChannel"]

  val set_traceOutputChannel : t -> OutputChannel.t -> unit
    [@@js.set "traceOutputChannel"]

  val get_revealOutputChannelOn : t -> _RevealOutputChannelOn
    [@@js.get "revealOutputChannelOn"]

  val set_revealOutputChannelOn : t -> _RevealOutputChannelOn -> unit
    [@@js.set "revealOutputChannelOn"]

  val get_stdioEncoding : t -> string [@@js.get "stdioEncoding"]

  val set_stdioEncoding : t -> string -> unit [@@js.set "stdioEncoding"]

  val get_initializationOptions : t -> (any, unit -> any) union2
    [@@js.get "initializationOptions"]

  val set_initializationOptions : t -> (any, unit -> any) union2 -> unit
    [@@js.set "initializationOptions"]

  val get_initializationFailedHandler : t -> _InitializationFailedHandler
    [@@js.get "initializationFailedHandler"]

  val set_initializationFailedHandler
    :  t
    -> _InitializationFailedHandler
    -> unit
    [@@js.set "initializationFailedHandler"]

  val get_progressOnInitialization : t -> bool
    [@@js.get "progressOnInitialization"]

  val set_progressOnInitialization : t -> bool -> unit
    [@@js.set "progressOnInitialization"]

  val get_errorHandler : t -> _ErrorHandler [@@js.get "errorHandler"]

  val set_errorHandler : t -> _ErrorHandler -> unit [@@js.set "errorHandler"]

  val get_middleware : t -> _Middleware [@@js.get "middleware"]

  val set_middleware : t -> _Middleware -> unit [@@js.set "middleware"]

  val get_uriConverters : t -> anonymous_interface_0 [@@js.get "uriConverters"]

  val set_uriConverters : t -> anonymous_interface_0 -> unit
    [@@js.set "uriConverters"]

  val get_workspaceFolder : t -> VWorkspaceFolder.t [@@js.get "workspaceFolder"]

  val set_workspaceFolder : t -> VWorkspaceFolder.t -> unit
    [@@js.set "workspaceFolder"]

  val get_connectionOptions : t -> _ConnectionOptions
    [@@js.get "connectionOptions"]

  val set_connectionOptions : t -> _ConnectionOptions -> unit
    [@@js.set "connectionOptions"]

  val get_markdown : t -> anonymous_interface_3 [@@js.get "markdown"]

  val set_markdown : t -> anonymous_interface_3 -> unit [@@js.set "markdown"]

  val get_diagnosticPullOptions : t -> _DiagnosticPullOptions
    [@@js.get "diagnosticPullOptions"]

  val set_diagnosticPullOptions : t -> _DiagnosticPullOptions -> unit
    [@@js.set "diagnosticPullOptions"]
end
[@@js.scope "LanguageClientOptions"]

module State : sig
  type t = _State

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module StateChangeEvent : sig
  type t = _StateChangeEvent

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_oldState : t -> _State [@@js.get "oldState"]

  val set_oldState : t -> _State -> unit [@@js.set "oldState"]

  val get_newState : t -> _State [@@js.get "newState"]

  val set_newState : t -> _State -> unit [@@js.set "newState"]
end
[@@js.scope "StateChangeEvent"]

module RegistrationData : sig
  type 'T t = 'T _RegistrationData

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_id : 'T t -> string [@@js.get "id"]

  val set_id : 'T t -> string -> unit [@@js.set "id"]

  val get_registerOptions : 'T t -> 'T [@@js.get "registerOptions"]

  val set_registerOptions : 'T t -> 'T -> unit [@@js.set "registerOptions"]
end
[@@js.scope "RegistrationData"]

module StaticFeature : sig
  type t = _StaticFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fillInitializeParams : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val fillClientCapabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:ServerCapabilities.t
    -> documentSelector:DocumentSelector.t or_undefined
    -> unit
    [@@js.call "initialize"]

  val dispose : t -> unit [@@js.call "dispose"]
end
[@@js.scope "StaticFeature"]

module DynamicFeature : sig
  type 'RO t = 'RO _DynamicFeature

  val t_to_js : ('RO -> Ojs.t) -> 'RO t -> Ojs.t

  val t_of_js : (Ojs.t -> 'RO) -> Ojs.t -> 'RO t

  val fillInitializeParams : 'RO t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val fillClientCapabilities
    :  'RO t
    -> capabilities:ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  'RO t
    -> capabilities:ServerCapabilities.t
    -> documentSelector:DocumentSelector.t or_undefined
    -> unit
    [@@js.call "initialize"]

  val get_registrationType : 'RO t -> 'RO RegistrationType.t
    [@@js.get "registrationType"]

  val set_registrationType : 'RO t -> 'RO RegistrationType.t -> unit
    [@@js.set "registrationType"]

  val register : 'RO t -> data:'RO _RegistrationData -> unit
    [@@js.call "register"]

  val unregister : 'RO t -> id:string -> unit [@@js.call "unregister"]

  val dispose : 'RO t -> unit [@@js.call "dispose"]
end
[@@js.scope "DynamicFeature"]

module NotificationFeature : sig
  type 'T t = 'T _NotificationFeature

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val getProvider
    :  'T t
    -> document:TextDocument.t
    -> anonymous_interface_5 or_undefined
    [@@js.call "getProvider"]
end
[@@js.scope "NotificationFeature"]

module NotificationSendEvent : sig
  type ('E, 'P) t = ('E, 'P) _NotificationSendEvent

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
  type ('E, 'P) t = ('E, 'P) _NotifyingFeature

  val t_to_js : ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('E, 'P) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('E, 'P) t

  val get_onNotificationSent
    :  ('E, 'P) t
    -> ('E, 'P) _NotificationSendEvent VEvent.t
    [@@js.get "onNotificationSent"]

  val set_onNotificationSent
    :  ('E, 'P) t
    -> ('E, 'P) _NotificationSendEvent VEvent.t
    -> unit
    [@@js.set "onNotificationSent"]
end
[@@js.scope "NotifyingFeature"]

module DidOpenTextDocumentFeatureShape : sig
  type t = _DidOpenTextDocumentFeatureShape

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_openDocuments : t -> TextDocument.t Iterable.t
    [@@js.get "openDocuments"]

  val set_openDocuments : t -> TextDocument.t Iterable.t -> unit
    [@@js.set "openDocuments"]

  val cast : t -> TextDocumentRegistrationOptions.t _DynamicFeature [@@js.cast]

  val cast' : t -> (textDocument:TextDocument.t -> unit) _NotificationFeature
    [@@js.cast]

  val cast''
    :  t
    -> (TextDocument.t, DidOpenTextDocumentParams.t) _NotifyingFeature
    [@@js.cast]
end
[@@js.scope "DidOpenTextDocumentFeatureShape"]

module DidCloseTextDocumentFeatureShape : sig
  type t = _DidCloseTextDocumentFeatureShape

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t _DynamicFeature [@@js.cast]

  val cast' : t -> (textDocument:TextDocument.t -> unit) _NotificationFeature
    [@@js.cast]

  val cast''
    :  t
    -> (TextDocument.t, DidCloseTextDocumentParams.t) _NotifyingFeature
    [@@js.cast]
end
[@@js.scope "DidCloseTextDocumentFeatureShape"]

module DidChangeTextDocumentFeatureShape : sig
  type t = _DidChangeTextDocumentFeatureShape

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t _DynamicFeature [@@js.cast]

  val cast'
    :  t
    -> (event:TextDocumentChangeEvent.t -> unit) _NotificationFeature
    [@@js.cast]

  val cast''
    :  t
    -> ( TextDocumentChangeEvent.t
       , DidChangeTextDocumentParams.t )
       _NotifyingFeature
    [@@js.cast]
end
[@@js.scope "DidChangeTextDocumentFeatureShape"]

module DidSaveTextDocumentFeatureShape : sig
  type t = _DidSaveTextDocumentFeatureShape

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t _DynamicFeature [@@js.cast]

  val cast' : t -> (textDocument:TextDocument.t -> unit) _NotificationFeature
    [@@js.cast]

  val cast''
    :  t
    -> (TextDocument.t, DidSaveTextDocumentParams.t) _NotifyingFeature
    [@@js.cast]
end
[@@js.scope "DidSaveTextDocumentFeatureShape"]

module TextDocumentProviderFeature : sig
  type 'T t = 'T _TextDocumentProviderFeature

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val getProvider : 'T t -> textDocument:TextDocument.t -> 'T or_undefined
    [@@js.call "getProvider"]
end
[@@js.scope "TextDocumentProviderFeature"]

module TextDocumentFeature : sig
  type ('PO, 'RO, 'PR) t = ('PO, 'RO, 'PR) _TextDocumentFeature

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

  val get__client : ('PO, 'RO, 'PR) t -> _BaseLanguageClient
    [@@js.get "_client"]

  val set__client : ('PO, 'RO, 'PR) t -> _BaseLanguageClient -> unit
    [@@js.set "_client"]

  val get__registrationType : ('PO, 'RO, 'PR) t -> (* FIXME: unknown type *) any
    [@@js.get "_registrationType"]

  val set__registrationType
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
    :  _client:_BaseLanguageClient
    -> _registrationType:'RO RegistrationType.t
    -> ('PO, 'RO, 'PR) t
    [@@js.create]

  val get_registrationType : ('PO, 'RO, 'PR) t -> 'RO RegistrationType.t
    [@@js.get "registrationType"]

  val fillClientCapabilities
    :  ('PO, 'RO, 'PR) t
    -> capabilities:ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  ('PO, 'RO, 'PR) t
    -> capabilities:ServerCapabilities.t
    -> documentSelector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val register : ('PO, 'RO, 'PR) t -> data:'RO _RegistrationData -> unit
    [@@js.call "register"]

  val registerLanguageProvider
    :  ('PO, 'RO, 'PR) t
    -> options:'RO
    -> id:string
    -> Disposable.t * 'PR
    [@@js.call "registerLanguageProvider"]

  val unregister : ('PO, 'RO, 'PR) t -> id:string -> unit
    [@@js.call "unregister"]

  val dispose : ('PO, 'RO, 'PR) t -> unit [@@js.call "dispose"]

  val getRegistration
    :  ('PO, 'RO, 'PR) t
    -> documentSelector:DocumentSelector.t or_undefined
    -> capability:'PO or_undefined
    -> string or_undefined
       * ('RO, anonymous_interface_1) intersection2 or_undefined
    [@@js.call "getRegistration"]

  val getRegistrationOptions
    :  ('PO, 'RO, 'PR) t
    -> documentSelector:DocumentSelector.t or_undefined
    -> capability:'PO or_undefined
    -> ('RO, anonymous_interface_1) intersection2 or_undefined
    [@@js.call "getRegistrationOptions"]

  val getProvider
    :  ('PO, 'RO, 'PR) t
    -> textDocument:TextDocument.t
    -> 'PR or_undefined
    [@@js.call "getProvider"]

  val getAllProviders : ('PO, 'RO, 'PR) t -> 'PR Iterable.t
    [@@js.call "getAllProviders"]

  val cast : ('PO, 'RO, 'PR) t -> 'RO _DynamicFeature [@@js.cast]
end
[@@js.scope "TextDocumentFeature"]

module WorkspaceProviderFeature : sig
  type 'PR t = 'PR _WorkspaceProviderFeature

  val t_to_js : ('PR -> Ojs.t) -> 'PR t -> Ojs.t

  val t_of_js : (Ojs.t -> 'PR) -> Ojs.t -> 'PR t

  val getProviders : 'PR t -> 'PR list or_undefined [@@js.call "getProviders"]
end
[@@js.scope "WorkspaceProviderFeature"]

module ProvideResolveFeature : sig
  type ('T1, 'T2) t = ('T1, 'T2) _ProvideResolveFeature

  val t_to_js : ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t

  val get_provide : ('T1, 'T2) t -> 'T1 [@@js.get "provide"]

  val set_provide : ('T1, 'T2) t -> 'T1 -> unit [@@js.set "provide"]

  val get_resolve : ('T1, 'T2) t -> 'T2 [@@js.get "resolve"]

  val set_resolve : ('T1, 'T2) t -> 'T2 -> unit [@@js.set "resolve"]
end
[@@js.scope "ProvideResolveFeature"]

module MessageTransports : sig
  type t = _MessageTransports

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
  type t = _LSPCancellationError

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> (untyped_object, untyped_object) union2 [@@js.get "data"]

  val create : data:(untyped_object, untyped_object) union2 -> t [@@js.create]

  val cast : t -> CancellationError.t [@@js.cast]
end
[@@js.scope "LSPCancellationError"]

module BaseLanguageClient : sig
  type t = _BaseLanguageClient

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__id : t -> (* FIXME: unknown type *) any [@@js.get "_id"]

  val set__id : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_id"]

  val get__name : t -> (* FIXME: unknown type *) any [@@js.get "_name"]

  val set__name : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_name"]

  val get__clientOptions : t -> (* FIXME: unknown type *) any
    [@@js.get "_clientOptions"]

  val set__clientOptions : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_clientOptions"]

  val get__state : t -> (* FIXME: unknown type *) any [@@js.get "_state"]

  val set__state : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_state"]

  val get__onReady : t -> (* FIXME: unknown type *) any [@@js.get "_onReady"]

  val set__onReady : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_onReady"]

  val get__onReadyCallbacks : t -> (* FIXME: unknown type *) any
    [@@js.get "_onReadyCallbacks"]

  val set__onReadyCallbacks : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_onReadyCallbacks"]

  val get__onStop : t -> (* FIXME: unknown type *) any [@@js.get "_onStop"]

  val set__onStop : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_onStop"]

  val get__connectionPromise : t -> (* FIXME: unknown type *) any
    [@@js.get "_connectionPromise"]

  val set__connectionPromise : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_connectionPromise"]

  val get__resolvedConnection : t -> (* FIXME: unknown type *) any
    [@@js.get "_resolvedConnection"]

  val set__resolvedConnection : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_resolvedConnection"]

  val get__initializeResult : t -> (* FIXME: unknown type *) any
    [@@js.get "_initializeResult"]

  val set__initializeResult : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_initializeResult"]

  val get__outputChannel : t -> (* FIXME: unknown type *) any
    [@@js.get "_outputChannel"]

  val set__outputChannel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_outputChannel"]

  val get__disposeOutputChannel : t -> (* FIXME: unknown type *) any
    [@@js.get "_disposeOutputChannel"]

  val set__disposeOutputChannel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_disposeOutputChannel"]

  val get__traceOutputChannel : t -> (* FIXME: unknown type *) any
    [@@js.get "_traceOutputChannel"]

  val set__traceOutputChannel : t -> (* FIXME: unknown type *) any -> unit
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

  val get__syncedDocuments : t -> (* FIXME: unknown type *) any
    [@@js.get "_syncedDocuments"]

  val set__syncedDocuments : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_syncedDocuments"]

  val get__fileEvents : t -> (* FIXME: unknown type *) any
    [@@js.get "_fileEvents"]

  val set__fileEvents : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_fileEvents"]

  val get__fileEventDelayer : t -> (* FIXME: unknown type *) any
    [@@js.get "_fileEventDelayer"]

  val set__fileEventDelayer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_fileEventDelayer"]

  val get__telemetryEmitter : t -> (* FIXME: unknown type *) any
    [@@js.get "_telemetryEmitter"]

  val set__telemetryEmitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_telemetryEmitter"]

  val get__stateChangeEmitter : t -> (* FIXME: unknown type *) any
    [@@js.get "_stateChangeEmitter"]

  val set__stateChangeEmitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_stateChangeEmitter"]

  val get__trace : t -> (* FIXME: unknown type *) any [@@js.get "_trace"]

  val set__trace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_trace"]

  val get__traceFormat : t -> (* FIXME: unknown type *) any
    [@@js.get "_traceFormat"]

  val set__traceFormat : t -> (* FIXME: unknown type *) any -> unit
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
    -> clientOptions:_LanguageClientOptions
    -> t
    [@@js.create]

  val get_state : t -> (* FIXME: unknown type *) any [@@js.get "state"]

  val set_state : t -> (* FIXME: unknown type *) any -> unit [@@js.set "state"]

  val get_getPublicState : t -> (* FIXME: unknown type *) any
    [@@js.get "getPublicState"]

  val set_getPublicState : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "getPublicState"]

  val get_initializeResult : t -> InitializeResult.t or_undefined
    [@@js.get "initializeResult"]

  val sendRequest
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''
    :  t
    -> method_:string
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''
    :  t
    -> method_:string
    -> param:any
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val onRequest
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''
    :  t
    -> method_:string
    -> handler:('R, 'E) GenericRequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val sendNotification : t -> type_:'RO ProtocolNotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val sendNotification'
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'' : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''
    :  t
    -> type_:'P NotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''' : t -> method_:string -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''' : t -> method_:string -> params:any -> unit
    [@@js.call "sendNotification"]

  val onNotification
    :  t
    -> type_:'RO ProtocolNotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''
    :  t
    -> type_:NotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''
    :  t
    -> type_:'P NotificationType.t
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''
    :  t
    -> method_:string
    -> handler:GenericNotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onProgress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onProgress"]

  val sendProgress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val get_clientOptions : t -> _LanguageClientOptions [@@js.get "clientOptions"]

  val get_protocol2CodeConverter : t -> P2c.Converter.t
    [@@js.get "protocol2CodeConverter"]

  val get_code2ProtocolConverter : t -> C2p.Converter.t
    [@@js.get "code2ProtocolConverter"]

  val get_onTelemetry : t -> any Event.t [@@js.get "onTelemetry"]

  val get_onDidChangeState : t -> _StateChangeEvent Event.t
    [@@js.get "onDidChangeState"]

  val get_outputChannel : t -> OutputChannel.t [@@js.get "outputChannel"]

  val get_traceOutputChannel : t -> OutputChannel.t
    [@@js.get "traceOutputChannel"]

  val get_diagnostics : t -> DiagnosticCollection.t or_undefined
    [@@js.get "diagnostics"]

  val createDefaultErrorHandler
    :  t
    -> ?maxRestartCount:int
    -> unit
    -> _ErrorHandler
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
    -> ?showNotification:bool
    -> unit
    -> unit
    [@@js.call "info"]

  val warn
    :  t
    -> message:string
    -> ?data:any
    -> ?showNotification:bool
    -> unit
    -> unit
    [@@js.call "warn"]

  val error
    :  t
    -> message:string
    -> ?data:any
    -> ?showNotification:bool
    -> unit
    -> unit
    [@@js.call "error"]

  val get_showNotificationMessage : t -> (* FIXME: unknown type *) any
    [@@js.get "showNotificationMessage"]

  val set_showNotificationMessage : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "showNotificationMessage"]

  val get_logTrace : t -> (* FIXME: unknown type *) any [@@js.get "logTrace"]

  val set_logTrace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "logTrace"]

  val get_logObjectTrace : t -> (* FIXME: unknown type *) any
    [@@js.get "logObjectTrace"]

  val set_logObjectTrace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "logObjectTrace"]

  val needsStart : t -> bool [@@js.call "needsStart"]

  val needsStop : t -> bool [@@js.call "needsStop"]

  val onReady : t -> unit Promise.t [@@js.call "onReady"]

  val get_isConnectionActive : t -> (* FIXME: unknown type *) any
    [@@js.get "isConnectionActive"]

  val set_isConnectionActive : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "isConnectionActive"]

  val start : t -> Disposable.t [@@js.call "start"]

  val get_resolveConnection : t -> (* FIXME: unknown type *) any
    [@@js.get "resolveConnection"]

  val set_resolveConnection : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "resolveConnection"]

  val get_initialize : t -> (* FIXME: unknown type *) any
    [@@js.get "initialize"]

  val set_initialize : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initialize"]

  val get_doInitialize : t -> (* FIXME: unknown type *) any
    [@@js.get "doInitialize"]

  val set_doInitialize : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doInitialize"]

  val get__clientGetRootPath : t -> (* FIXME: unknown type *) any
    [@@js.get "_clientGetRootPath"]

  val set__clientGetRootPath : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_clientGetRootPath"]

  val stop : t -> unit Promise.t [@@js.call "stop"]

  val get_cleanUp : t -> (* FIXME: unknown type *) any [@@js.get "cleanUp"]

  val set_cleanUp : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "cleanUp"]

  val get_cleanUpChannel : t -> (* FIXME: unknown type *) any
    [@@js.get "cleanUpChannel"]

  val set_cleanUpChannel : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "cleanUpChannel"]

  val get_notifyFileEvent : t -> (* FIXME: unknown type *) any
    [@@js.get "notifyFileEvent"]

  val set_notifyFileEvent : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "notifyFileEvent"]

  val get__didChangeTextDocumentFeature : t -> (* FIXME: unknown type *) any
    [@@js.get "_didChangeTextDocumentFeature"]

  val set__didChangeTextDocumentFeature
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_didChangeTextDocumentFeature"]

  val get_forceDocumentSync : t -> (* FIXME: unknown type *) any
    [@@js.get "forceDocumentSync"]

  val set_forceDocumentSync : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "forceDocumentSync"]

  val get_handleDiagnostics : t -> (* FIXME: unknown type *) any
    [@@js.get "handleDiagnostics"]

  val set_handleDiagnostics : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleDiagnostics"]

  val get_setDiagnostics : t -> (* FIXME: unknown type *) any
    [@@js.get "setDiagnostics"]

  val set_setDiagnostics : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "setDiagnostics"]

  val getLocale : t -> string [@@js.call "getLocale"]

  val createMessageTransports
    :  t
    -> encoding:string
    -> _MessageTransports Promise.t
    [@@js.call "createMessageTransports"]

  val get_createConnection : t -> (* FIXME: unknown type *) any
    [@@js.get "createConnection"]

  val set_createConnection : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "createConnection"]

  val handleConnectionClosed : t -> unit [@@js.call "handleConnectionClosed"]

  val get_handleConnectionError : t -> (* FIXME: unknown type *) any
    [@@js.get "handleConnectionError"]

  val set_handleConnectionError : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleConnectionError"]

  val get_hookConfigurationChanged : t -> (* FIXME: unknown type *) any
    [@@js.get "hookConfigurationChanged"]

  val set_hookConfigurationChanged : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "hookConfigurationChanged"]

  val get_refreshTrace : t -> (* FIXME: unknown type *) any
    [@@js.get "refreshTrace"]

  val set_refreshTrace : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "refreshTrace"]

  val get_hookFileEvents : t -> (* FIXME: unknown type *) any
    [@@js.get "hookFileEvents"]

  val set_hookFileEvents : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "hookFileEvents"]

  val get__features : t -> (* FIXME: unknown type *) any [@@js.get "_features"]

  val get__dynamicFeatures : t -> (* FIXME: unknown type *) any
    [@@js.get "_dynamicFeatures"]

  val registerFeatures
    :  t
    -> features:(_StaticFeature, any _DynamicFeature) union2 list
    -> unit
    [@@js.call "registerFeatures"]

  val registerFeature
    :  t
    -> feature:(_StaticFeature, any _DynamicFeature) union2
    -> unit
    [@@js.call "registerFeature"]

  val getFeature
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidOpenTextDocumentNotification.method' *)
         any
    -> _DidOpenTextDocumentFeatureShape
    [@@js.call "getFeature"]

  val getFeature'
    :  t
    -> request:
         (* FIXME: unknown type 'typeof
            DidChangeTextDocumentNotification.method' *)
         any
    -> _DidChangeTextDocumentFeatureShape
    [@@js.call "getFeature"]

  val getFeature''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillSaveTextDocumentNotification.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , (textDocument:TextDocument.t -> unit) _NotificationFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof
            WillSaveTextDocumentWaitUntilRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , (textDocument:TextDocument.t -> VTextEdit.t list ProviderResult.t)
         _NotificationFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidSaveTextDocumentNotification.method' *)
         any
    -> _DidSaveTextDocumentFeatureShape
    [@@js.call "getFeature"]

  val getFeature'''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidCloseTextDocumentNotification.method' *)
         any
    -> _DidCloseTextDocumentFeatureShape
    [@@js.call "getFeature"]

  val getFeature''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidCreateFilesNotification.method' *)
         any
    -> ( FileOperationRegistrationOptions.t _DynamicFeature
       , anonymous_interface_6 )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidRenameFilesNotification.method' *)
         any
    -> ( FileOperationRegistrationOptions.t _DynamicFeature
       , anonymous_interface_8 )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DidDeleteFilesNotification.method' *)
         any
    -> ( FileOperationRegistrationOptions.t _DynamicFeature
       , anonymous_interface_7 )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillCreateFilesRequest.method' *) any
    -> ( FileOperationRegistrationOptions.t _DynamicFeature
       , anonymous_interface_9 )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillRenameFilesRequest.method' *) any
    -> ( FileOperationRegistrationOptions.t _DynamicFeature
       , anonymous_interface_11 )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WillDeleteFilesRequest.method' *) any
    -> ( FileOperationRegistrationOptions.t _DynamicFeature
       , anonymous_interface_10 )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof CompletionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , CompletionItemProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof HoverRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , HoverProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof SignatureHelpRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , SignatureHelpProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof DefinitionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DefinitionProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof ReferencesRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , ReferenceProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentHighlightRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DocumentHighlightProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof CodeActionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , CodeActionProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentFormattingRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DocumentFormattingEditProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentRangeFormattingRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DocumentRangeFormattingEditProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentOnTypeFormattingRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , OnTypeFormattingEditProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof RenameRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , RenameProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentSymbolRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DocumentSymbolProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof DocumentLinkRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DocumentLinkProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof DocumentColorRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DocumentColorProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof DeclarationRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , DeclarationProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''''''''
    :  t
    -> request:(* FIXME: unknown type 'typeof FoldingRangeRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , FoldingRangeProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof ImplementationRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , ImplementationProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof SelectionRangeRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , SelectionRangeProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof TypeDefinitionRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , TypeDefinitionProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof CallHierarchyPrepareRequest.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , CallHierarchyProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof SemanticTokensRegistrationType.method' *)
         any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , SemanticTokensProviders.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature'''''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof LinkedEditingRangeRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , LinkedEditingRangeProvider.t _TextDocumentProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val getFeature''''''''''''''''''''''''''''''''''
    :  t
    -> request:
         (* FIXME: unknown type 'typeof WorkspaceSymbolRequest.method' *) any
    -> ( TextDocumentRegistrationOptions.t _DynamicFeature
       , WorkspaceSymbolProvider.t _WorkspaceProviderFeature )
       intersection2
    [@@js.call "getFeature"]

  val registerBuiltinFeatures : t -> unit [@@js.call "registerBuiltinFeatures"]

  val fillInitializeParams : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val get_computeClientCapabilities : t -> (* FIXME: unknown type *) any
    [@@js.get "computeClientCapabilities"]

  val set_computeClientCapabilities : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "computeClientCapabilities"]

  val get_initializeFeatures : t -> (* FIXME: unknown type *) any
    [@@js.get "initializeFeatures"]

  val set_initializeFeatures : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "initializeFeatures"]

  val get_handleRegistrationRequest : t -> (* FIXME: unknown type *) any
    [@@js.get "handleRegistrationRequest"]

  val set_handleRegistrationRequest : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleRegistrationRequest"]

  val get_handleUnregistrationRequest : t -> (* FIXME: unknown type *) any
    [@@js.get "handleUnregistrationRequest"]

  val set_handleUnregistrationRequest
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "handleUnregistrationRequest"]

  val get_handleApplyWorkspaceEdit : t -> (* FIXME: unknown type *) any
    [@@js.get "handleApplyWorkspaceEdit"]

  val set_handleApplyWorkspaceEdit : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleApplyWorkspaceEdit"]

  val get_RequestsToCancelOnContentModified
    :  unit
    -> (* FIXME: unknown type *) any
    [@@js.get "RequestsToCancelOnContentModified"]

  val set_RequestsToCancelOnContentModified
    :  (* FIXME: unknown type *) any
    -> unit
    [@@js.set "RequestsToCancelOnContentModified"]

  val handleFailedRequest
    :  t
    -> type_:MessageSignature.t
    -> token:CancellationToken.t or_undefined
    -> error:any
    -> defaultValue:'T
    -> 'T
    [@@js.call "handleFailedRequest"]
end
[@@js.scope "BaseLanguageClient"]
(* export {}; *)
