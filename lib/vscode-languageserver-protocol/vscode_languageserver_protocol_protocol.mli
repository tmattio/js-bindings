[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_additionalPropertiesSupport : t -> bool
    [@@js.get "additionalPropertiesSupport"]

  val set_additionalPropertiesSupport : t -> bool -> unit
    [@@js.set "additionalPropertiesSupport"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancel : t -> bool [@@js.get "cancel"]

  val set_cancel : t -> bool -> unit [@@js.set "cancel"]

  val get_retryOnContentModified : t -> string list
    [@@js.get "retryOnContentModified"]

  val set_retryOnContentModified : t -> string list -> unit
    [@@js.set "retryOnContentModified"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_codeActionKind : t -> AnonymousInterface16.t
    [@@js.get "codeActionKind"]

  val set_codeActionKind : t -> AnonymousInterface16.t -> unit
    [@@js.set "codeActionKind"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_defaultBehavior : t -> bool [@@js.get "defaultBehavior"]

  val set_defaultBehavior : t -> bool -> unit [@@js.set "defaultBehavior"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_documentationFormat : t -> MarkupKind.t list
    [@@js.get "documentationFormat"]

  val set_documentationFormat : t -> MarkupKind.t list -> unit
    [@@js.set "documentationFormat"]

  val get_parameterInformation : t -> AnonymousInterface8.t
    [@@js.get "parameterInformation"]

  val set_parameterInformation : t -> AnonymousInterface8.t -> unit
    [@@js.set "parameterInformation"]

  val get_activeParameterSupport : t -> bool [@@js.get "activeParameterSupport"]

  val set_activeParameterSupport : t -> bool -> unit
    [@@js.set "activeParameterSupport"]
end

module AnonymousInterface5 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_fileOperations : t -> FileOperationOptions.t
    [@@js.get "fileOperations"]

  val set_fileOperations : t -> FileOperationOptions.t -> unit
    [@@js.set "fileOperations"]
end

module AnonymousInterface6 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_groupsOnLabel : t -> bool [@@js.get "groupsOnLabel"]

  val set_groupsOnLabel : t -> bool -> unit [@@js.set "groupsOnLabel"]
end

module AnonymousInterface7 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_labelDetailsSupport : t -> bool [@@js.get "labelDetailsSupport"]

  val set_labelDetailsSupport : t -> bool -> unit
    [@@js.set "labelDetailsSupport"]
end

module AnonymousInterface8 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_labelOffsetSupport : t -> bool [@@js.get "labelOffsetSupport"]

  val set_labelOffsetSupport : t -> bool -> unit [@@js.set "labelOffsetSupport"]
end

module AnonymousInterface9 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_language : t -> string [@@js.get "language"]

  val set_language : t -> string -> unit [@@js.set "language"]

  val get_scheme : t -> string [@@js.get "scheme"]

  val set_scheme : t -> string -> unit [@@js.set "scheme"]

  val get_pattern : t -> string [@@js.get "pattern"]

  val set_pattern : t -> string -> unit [@@js.set "pattern"]
end

module AnonymousInterface10 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_version : t -> string [@@js.get "version"]

  val set_version : t -> string -> unit [@@js.set "version"]
end

module AnonymousInterface11 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_properties : t -> string list [@@js.get "properties"]

  val set_properties : t -> string list -> unit [@@js.set "properties"]
end

module AnonymousInterface12 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_placeholder : t -> string [@@js.get "placeholder"]

  val set_placeholder : t -> string -> unit [@@js.set "placeholder"]
end

module AnonymousInterface13 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_rangeLength : t -> Uinteger.t [@@js.get "rangeLength"]

  val set_rangeLength : t -> Uinteger.t -> unit [@@js.set "rangeLength"]

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]
end

module AnonymousInterface14 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_snippetSupport : t -> bool [@@js.get "snippetSupport"]

  val set_snippetSupport : t -> bool -> unit [@@js.set "snippetSupport"]

  val get_commitCharactersSupport : t -> bool
    [@@js.get "commitCharactersSupport"]

  val set_commitCharactersSupport : t -> bool -> unit
    [@@js.set "commitCharactersSupport"]

  val get_documentationFormat : t -> MarkupKind.t list
    [@@js.get "documentationFormat"]

  val set_documentationFormat : t -> MarkupKind.t list -> unit
    [@@js.set "documentationFormat"]

  val get_deprecatedSupport : t -> bool [@@js.get "deprecatedSupport"]

  val set_deprecatedSupport : t -> bool -> unit [@@js.set "deprecatedSupport"]

  val get_preselectSupport : t -> bool [@@js.get "preselectSupport"]

  val set_preselectSupport : t -> bool -> unit [@@js.set "preselectSupport"]

  val get_tagSupport : t -> AnonymousInterface18.t [@@js.get "tagSupport"]

  val set_tagSupport : t -> AnonymousInterface18.t -> unit
    [@@js.set "tagSupport"]

  val get_insertReplaceSupport : t -> bool [@@js.get "insertReplaceSupport"]

  val set_insertReplaceSupport : t -> bool -> unit
    [@@js.set "insertReplaceSupport"]

  val get_resolveSupport : t -> AnonymousInterface11.t
    [@@js.get "resolveSupport"]

  val set_resolveSupport : t -> AnonymousInterface11.t -> unit
    [@@js.set "resolveSupport"]

  val get_insertTextModeSupport : t -> AnonymousInterface20.t
    [@@js.get "insertTextModeSupport"]

  val set_insertTextModeSupport : t -> AnonymousInterface20.t -> unit
    [@@js.set "insertTextModeSupport"]

  val get_labelDetailsSupport : t -> bool [@@js.get "labelDetailsSupport"]

  val set_labelDetailsSupport : t -> bool -> unit
    [@@js.set "labelDetailsSupport"]
end

module AnonymousInterface15 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]
end

module AnonymousInterface16 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> CodeActionKind.t list [@@js.get "valueSet"]

  val set_valueSet : t -> CodeActionKind.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface17 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> CompletionItemKind.t list [@@js.get "valueSet"]

  val set_valueSet : t -> CompletionItemKind.t list -> unit
    [@@js.set "valueSet"]
end

module AnonymousInterface18 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> CompletionItemTag.t list [@@js.get "valueSet"]

  val set_valueSet : t -> CompletionItemTag.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface19 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> DiagnosticTag.t list [@@js.get "valueSet"]

  val set_valueSet : t -> DiagnosticTag.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface20 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> InsertTextMode.t list [@@js.get "valueSet"]

  val set_valueSet : t -> InsertTextMode.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface21 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> SymbolKind.t list [@@js.get "valueSet"]

  val set_valueSet : t -> SymbolKind.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface22 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_valueSet : t -> SymbolTag.t list [@@js.get "valueSet"]

  val set_valueSet : t -> SymbolTag.t list -> unit [@@js.set "valueSet"]
end

(* import { ProgressToken } from 'vscode-jsonrpc'; *)
(* import { ProtocolRequestType, ProtocolRequestType0, ProtocolNotificationType,
   ProtocolNotificationType0 } from './messages'; *)
(* import { Position, Range, Location, LocationLink, Diagnostic, Command,
   TextEdit, WorkspaceEdit, DocumentUri, TextDocumentIdentifier,
   VersionedTextDocumentIdentifier, TextDocumentItem, CompletionItem,
   CompletionList, Hover, SignatureHelp, ReferenceContext, DocumentHighlight,
   SymbolInformation, CodeLens, CodeActionContext, FormattingOptions,
   DocumentLink, MarkupKind, SymbolKind, CompletionItemKind, CodeAction,
   CodeActionKind, DocumentSymbol, CompletionItemTag, DiagnosticTag, SymbolTag,
   uinteger, integer, InsertTextMode } from 'vscode-languageserver-types'; *)
(* import { ImplementationRequest, ImplementationClientCapabilities,
   ImplementationOptions, ImplementationRegistrationOptions,
   ImplementationParams } from './protocol.implementation'; *)
(* import { TypeDefinitionRequest, TypeDefinitionClientCapabilities,
   TypeDefinitionOptions, TypeDefinitionRegistrationOptions,
   TypeDefinitionParams } from './protocol.typeDefinition'; *)
(* import { WorkspaceFoldersRequest, DidChangeWorkspaceFoldersNotification,
   DidChangeWorkspaceFoldersParams, WorkspaceFolder,
   WorkspaceFoldersChangeEvent, WorkspaceFoldersInitializeParams,
   WorkspaceFoldersClientCapabilities, WorkspaceFoldersServerCapabilities } from
   './protocol.workspaceFolders'; *)
(* import { ConfigurationRequest, ConfigurationParams, ConfigurationItem,
   ConfigurationClientCapabilities } from './protocol.configuration'; *)
(* import { DocumentColorRequest, ColorPresentationRequest,
   DocumentColorOptions, DocumentColorParams, ColorPresentationParams,
   DocumentColorClientCapabilities, DocumentColorRegistrationOptions } from
   './protocol.colorProvider'; *)
(* import { FoldingRangeClientCapabilities, FoldingRangeOptions,
   FoldingRangeRequest, FoldingRangeParams, FoldingRangeRegistrationOptions }
   from './protocol.foldingRange'; *)
(* import { DeclarationClientCapabilities, DeclarationRequest,
   DeclarationOptions, DeclarationRegistrationOptions, DeclarationParams } from
   './protocol.declaration'; *)
(* import { SelectionRangeClientCapabilities, SelectionRangeOptions,
   SelectionRangeRequest, SelectionRangeParams,
   SelectionRangeRegistrationOptions } from './protocol.selectionRange'; *)
(* import { WorkDoneProgressClientCapabilities, WorkDoneProgressBegin,
   WorkDoneProgressReport, WorkDoneProgressEnd, WorkDoneProgress,
   WorkDoneProgressCreateParams, WorkDoneProgressCreateRequest,
   WorkDoneProgressCancelParams, WorkDoneProgressCancelNotification } from
   './protocol.progress'; *)
(* import { CallHierarchyClientCapabilities, CallHierarchyOptions,
   CallHierarchyRegistrationOptions, CallHierarchyIncomingCallsParams,
   CallHierarchyIncomingCallsRequest, CallHierarchyOutgoingCallsParams,
   CallHierarchyOutgoingCallsRequest, CallHierarchyPrepareParams,
   CallHierarchyPrepareRequest } from './protocol.callHierarchy'; *)
(* import { SemanticTokensPartialResult, SemanticTokensDeltaPartialResult,
   TokenFormat, SemanticTokensClientCapabilities, SemanticTokensOptions,
   SemanticTokensRegistrationOptions, SemanticTokensParams,
   SemanticTokensRequest, SemanticTokensDeltaParams, SemanticTokensDeltaRequest,
   SemanticTokensRangeParams, SemanticTokensRangeRequest,
   SemanticTokensRefreshRequest, SemanticTokensWorkspaceClientCapabilities,
   SemanticTokensRegistrationType } from './protocol.semanticTokens'; *)
(* import { ShowDocumentParams, ShowDocumentResult, ShowDocumentRequest,
   ShowDocumentClientCapabilities } from './protocol.showDocument'; *)
(* import { LinkedEditingRangeClientCapabilities, LinkedEditingRanges,
   LinkedEditingRangeOptions, LinkedEditingRangeParams,
   LinkedEditingRangeRegistrationOptions, LinkedEditingRangeRequest } from
   './protocol.linkedEditingRange'; *)
(* import { FileOperationOptions, FileOperationClientCapabilities,
   FileOperationRegistrationOptions, FileOperationPatternOptions,
   FileOperationPatternKind, DidCreateFilesNotification, CreateFilesParams,
   FileCreate, WillCreateFilesRequest, DidRenameFilesNotification,
   RenameFilesParams, FileRename, WillRenameFilesRequest,
   DidDeleteFilesNotification, DeleteFilesParams, FileDelete,
   WillDeleteFilesRequest } from './protocol.fileOperations'; *)
(* import { UniquenessLevel, MonikerKind, Moniker, MonikerClientCapabilities,
   MonikerOptions, MonikerRegistrationOptions, MonikerParams, MonikerRequest }
   from './protocol.moniker'; *)
module DocumentFilter : sig
  type t = AnonymousInterface9.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentFilter : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DocumentFilter"]

module DocumentSelector : sig
  type t = _DocumentFilter or_string list

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentSelector : sig
  val is : value:any list or_null_or_undefined -> bool [@@js.global "is"]
end
[@@js.scope "DocumentSelector"]

module Registration : sig
  type t = _Registration

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]

  val get_registerOptions : t -> any [@@js.get "registerOptions"]

  val set_registerOptions : t -> any -> unit [@@js.set "registerOptions"]
end
[@@js.scope "Registration"]

module RegistrationParams : sig
  type t = _RegistrationParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_registrations : t -> _Registration list [@@js.get "registrations"]

  val set_registrations : t -> _Registration list -> unit
    [@@js.set "registrations"]
end
[@@js.scope "RegistrationParams"]

module RegistrationRequest : sig
  val type_
    : (_RegistrationParams, unit, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "RegistrationRequest"]

module Unregistration : sig
  type t = _Unregistration

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]
end
[@@js.scope "Unregistration"]

module UnregistrationParams : sig
  type t = _UnregistrationParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_unregisterations : t -> _Unregistration list
    [@@js.get "unregisterations"]

  val set_unregisterations : t -> _Unregistration list -> unit
    [@@js.set "unregisterations"]
end
[@@js.scope "UnregistrationParams"]

module UnregistrationRequest : sig
  val type_
    : (_UnregistrationParams, unit, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "UnregistrationRequest"]

module WorkDoneProgressParams : sig
  type t = _WorkDoneProgressParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workDoneToken : t -> ProgressToken.t [@@js.get "workDoneToken"]

  val set_workDoneToken : t -> ProgressToken.t -> unit
    [@@js.set "workDoneToken"]
end
[@@js.scope "WorkDoneProgressParams"]

module PartialResultParams : sig
  type t = _PartialResultParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_partialResultToken : t -> ProgressToken.t
    [@@js.get "partialResultToken"]

  val set_partialResultToken : t -> ProgressToken.t -> unit
    [@@js.set "partialResultToken"]
end
[@@js.scope "PartialResultParams"]

module TextDocumentPositionParams : sig
  type t = _TextDocumentPositionParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_position : t -> Position.t [@@js.get "position"]

  val set_position : t -> Position.t -> unit [@@js.set "position"]
end
[@@js.scope "TextDocumentPositionParams"]

module ResourceOperationKind : sig
  type t =
    ([ `L_s4_create [@js "create"]
     | `L_s5_delete [@js "delete"]
     | `L_s9_rename [@js "rename"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ResourceOperationKind : sig
  val create_ : _ResourceOperationKind [@@js.global "Create"]

  val rename : _ResourceOperationKind [@@js.global "Rename"]

  val delete : _ResourceOperationKind [@@js.global "Delete"]
end
[@@js.scope "ResourceOperationKind"]

module FailureHandlingKind : sig
  type t =
    ([ `L_s0_abort [@js "abort"]
     | `L_s31_textOnlyTransactional [@js "textOnlyTransactional"]
     | `L_s32_transactional [@js "transactional"]
     | `L_s33_undo [@js "undo"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FailureHandlingKind : sig
  val abort : _FailureHandlingKind [@@js.global "Abort"]

  val transactional : _FailureHandlingKind [@@js.global "Transactional"]

  val textOnlyTransactional : _FailureHandlingKind
    [@@js.global "TextOnlyTransactional"]

  val undo : _FailureHandlingKind [@@js.global "Undo"]
end
[@@js.scope "FailureHandlingKind"]

module WorkspaceClientCapabilities : sig
  type t = _WorkspaceClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_applyEdit : t -> bool [@@js.get "applyEdit"]

  val set_applyEdit : t -> bool -> unit [@@js.set "applyEdit"]

  val get_workspaceEdit : t -> _WorkspaceEditClientCapabilities
    [@@js.get "workspaceEdit"]

  val set_workspaceEdit : t -> _WorkspaceEditClientCapabilities -> unit
    [@@js.set "workspaceEdit"]

  val get_didChangeConfiguration
    :  t
    -> _DidChangeConfigurationClientCapabilities
    [@@js.get "didChangeConfiguration"]

  val set_didChangeConfiguration
    :  t
    -> _DidChangeConfigurationClientCapabilities
    -> unit
    [@@js.set "didChangeConfiguration"]

  val get_didChangeWatchedFiles : t -> _DidChangeWatchedFilesClientCapabilities
    [@@js.get "didChangeWatchedFiles"]

  val set_didChangeWatchedFiles
    :  t
    -> _DidChangeWatchedFilesClientCapabilities
    -> unit
    [@@js.set "didChangeWatchedFiles"]

  val get_symbol : t -> _WorkspaceSymbolClientCapabilities [@@js.get "symbol"]

  val set_symbol : t -> _WorkspaceSymbolClientCapabilities -> unit
    [@@js.set "symbol"]

  val get_executeCommand : t -> _ExecuteCommandClientCapabilities
    [@@js.get "executeCommand"]

  val set_executeCommand : t -> _ExecuteCommandClientCapabilities -> unit
    [@@js.set "executeCommand"]

  val get_semanticTokens : t -> SemanticTokensWorkspaceClientCapabilities.t
    [@@js.get "semanticTokens"]

  val set_semanticTokens
    :  t
    -> SemanticTokensWorkspaceClientCapabilities.t
    -> unit
    [@@js.set "semanticTokens"]

  val get_codeLens : t -> _CodeLensWorkspaceClientCapabilities
    [@@js.get "codeLens"]

  val set_codeLens : t -> _CodeLensWorkspaceClientCapabilities -> unit
    [@@js.set "codeLens"]

  val get_fileOperations : t -> FileOperationClientCapabilities.t
    [@@js.get "fileOperations"]

  val set_fileOperations : t -> FileOperationClientCapabilities.t -> unit
    [@@js.set "fileOperations"]
end
[@@js.scope "WorkspaceClientCapabilities"]

module TextDocumentClientCapabilities : sig
  type t = _TextDocumentClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_synchronization : t -> _TextDocumentSyncClientCapabilities
    [@@js.get "synchronization"]

  val set_synchronization : t -> _TextDocumentSyncClientCapabilities -> unit
    [@@js.set "synchronization"]

  val get_completion : t -> _CompletionClientCapabilities
    [@@js.get "completion"]

  val set_completion : t -> _CompletionClientCapabilities -> unit
    [@@js.set "completion"]

  val get_hover : t -> _HoverClientCapabilities [@@js.get "hover"]

  val set_hover : t -> _HoverClientCapabilities -> unit [@@js.set "hover"]

  val get_signatureHelp : t -> _SignatureHelpClientCapabilities
    [@@js.get "signatureHelp"]

  val set_signatureHelp : t -> _SignatureHelpClientCapabilities -> unit
    [@@js.set "signatureHelp"]

  val get_declaration : t -> DeclarationClientCapabilities.t
    [@@js.get "declaration"]

  val set_declaration : t -> DeclarationClientCapabilities.t -> unit
    [@@js.set "declaration"]

  val get_definition : t -> _DefinitionClientCapabilities
    [@@js.get "definition"]

  val set_definition : t -> _DefinitionClientCapabilities -> unit
    [@@js.set "definition"]

  val get_typeDefinition : t -> TypeDefinitionClientCapabilities.t
    [@@js.get "typeDefinition"]

  val set_typeDefinition : t -> TypeDefinitionClientCapabilities.t -> unit
    [@@js.set "typeDefinition"]

  val get_implementation : t -> ImplementationClientCapabilities.t
    [@@js.get "implementation"]

  val set_implementation : t -> ImplementationClientCapabilities.t -> unit
    [@@js.set "implementation"]

  val get_references : t -> _ReferenceClientCapabilities [@@js.get "references"]

  val set_references : t -> _ReferenceClientCapabilities -> unit
    [@@js.set "references"]

  val get_documentHighlight : t -> _DocumentHighlightClientCapabilities
    [@@js.get "documentHighlight"]

  val set_documentHighlight : t -> _DocumentHighlightClientCapabilities -> unit
    [@@js.set "documentHighlight"]

  val get_documentSymbol : t -> _DocumentSymbolClientCapabilities
    [@@js.get "documentSymbol"]

  val set_documentSymbol : t -> _DocumentSymbolClientCapabilities -> unit
    [@@js.set "documentSymbol"]

  val get_codeAction : t -> _CodeActionClientCapabilities
    [@@js.get "codeAction"]

  val set_codeAction : t -> _CodeActionClientCapabilities -> unit
    [@@js.set "codeAction"]

  val get_codeLens : t -> _CodeLensClientCapabilities [@@js.get "codeLens"]

  val set_codeLens : t -> _CodeLensClientCapabilities -> unit
    [@@js.set "codeLens"]

  val get_documentLink : t -> _DocumentLinkClientCapabilities
    [@@js.get "documentLink"]

  val set_documentLink : t -> _DocumentLinkClientCapabilities -> unit
    [@@js.set "documentLink"]

  val get_colorProvider : t -> DocumentColorClientCapabilities.t
    [@@js.get "colorProvider"]

  val set_colorProvider : t -> DocumentColorClientCapabilities.t -> unit
    [@@js.set "colorProvider"]

  val get_formatting : t -> _DocumentFormattingClientCapabilities
    [@@js.get "formatting"]

  val set_formatting : t -> _DocumentFormattingClientCapabilities -> unit
    [@@js.set "formatting"]

  val get_rangeFormatting : t -> _DocumentRangeFormattingClientCapabilities
    [@@js.get "rangeFormatting"]

  val set_rangeFormatting
    :  t
    -> _DocumentRangeFormattingClientCapabilities
    -> unit
    [@@js.set "rangeFormatting"]

  val get_onTypeFormatting : t -> _DocumentOnTypeFormattingClientCapabilities
    [@@js.get "onTypeFormatting"]

  val set_onTypeFormatting
    :  t
    -> _DocumentOnTypeFormattingClientCapabilities
    -> unit
    [@@js.set "onTypeFormatting"]

  val get_rename : t -> _RenameClientCapabilities [@@js.get "rename"]

  val set_rename : t -> _RenameClientCapabilities -> unit [@@js.set "rename"]

  val get_foldingRange : t -> FoldingRangeClientCapabilities.t
    [@@js.get "foldingRange"]

  val set_foldingRange : t -> FoldingRangeClientCapabilities.t -> unit
    [@@js.set "foldingRange"]

  val get_selectionRange : t -> SelectionRangeClientCapabilities.t
    [@@js.get "selectionRange"]

  val set_selectionRange : t -> SelectionRangeClientCapabilities.t -> unit
    [@@js.set "selectionRange"]

  val get_publishDiagnostics : t -> _PublishDiagnosticsClientCapabilities
    [@@js.get "publishDiagnostics"]

  val set_publishDiagnostics
    :  t
    -> _PublishDiagnosticsClientCapabilities
    -> unit
    [@@js.set "publishDiagnostics"]

  val get_callHierarchy : t -> CallHierarchyClientCapabilities.t
    [@@js.get "callHierarchy"]

  val set_callHierarchy : t -> CallHierarchyClientCapabilities.t -> unit
    [@@js.set "callHierarchy"]

  val get_semanticTokens : t -> SemanticTokensClientCapabilities.t
    [@@js.get "semanticTokens"]

  val set_semanticTokens : t -> SemanticTokensClientCapabilities.t -> unit
    [@@js.set "semanticTokens"]

  val get_linkedEditingRange : t -> LinkedEditingRangeClientCapabilities.t
    [@@js.get "linkedEditingRange"]

  val set_linkedEditingRange
    :  t
    -> LinkedEditingRangeClientCapabilities.t
    -> unit
    [@@js.set "linkedEditingRange"]

  val get_moniker : t -> MonikerClientCapabilities.t [@@js.get "moniker"]

  val set_moniker : t -> MonikerClientCapabilities.t -> unit
    [@@js.set "moniker"]
end
[@@js.scope "TextDocumentClientCapabilities"]

module WindowClientCapabilities : sig
  type t = _WindowClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workDoneProgress : t -> bool [@@js.get "workDoneProgress"]

  val set_workDoneProgress : t -> bool -> unit [@@js.set "workDoneProgress"]

  val get_showMessage : t -> _ShowMessageRequestClientCapabilities
    [@@js.get "showMessage"]

  val set_showMessage : t -> _ShowMessageRequestClientCapabilities -> unit
    [@@js.set "showMessage"]

  val get_showDocument : t -> ShowDocumentClientCapabilities.t
    [@@js.get "showDocument"]

  val set_showDocument : t -> ShowDocumentClientCapabilities.t -> unit
    [@@js.set "showDocument"]
end
[@@js.scope "WindowClientCapabilities"]

module RegularExpressionsClientCapabilities : sig
  type t = _RegularExpressionsClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_engine : t -> string [@@js.get "engine"]

  val set_engine : t -> string -> unit [@@js.set "engine"]

  val get_version : t -> string [@@js.get "version"]

  val set_version : t -> string -> unit [@@js.set "version"]
end
[@@js.scope "RegularExpressionsClientCapabilities"]

module MarkdownClientCapabilities : sig
  type t = _MarkdownClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_parser : t -> string [@@js.get "parser"]

  val set_parser : t -> string -> unit [@@js.set "parser"]

  val get_version : t -> string [@@js.get "version"]

  val set_version : t -> string -> unit [@@js.set "version"]
end
[@@js.scope "MarkdownClientCapabilities"]

module GeneralClientCapabilities : sig
  type t = _GeneralClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_staleRequestSupport : t -> AnonymousInterface1.t
    [@@js.get "staleRequestSupport"]

  val set_staleRequestSupport : t -> AnonymousInterface1.t -> unit
    [@@js.set "staleRequestSupport"]

  val get_regularExpressions : t -> _RegularExpressionsClientCapabilities
    [@@js.get "regularExpressions"]

  val set_regularExpressions
    :  t
    -> _RegularExpressionsClientCapabilities
    -> unit
    [@@js.set "regularExpressions"]

  val get_markdown : t -> _MarkdownClientCapabilities [@@js.get "markdown"]

  val set_markdown : t -> _MarkdownClientCapabilities -> unit
    [@@js.set "markdown"]
end
[@@js.scope "GeneralClientCapabilities"]

module M_ClientCapabilities : sig
  type t =
    ( _ClientCapabilities
    , WorkspaceFoldersClientCapabilities.t
    , ConfigurationClientCapabilities.t
    , WorkDoneProgressClientCapabilities.t )
    intersection4

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> _WorkspaceClientCapabilities [@@js.get "workspace"]

  val set_workspace : t -> _WorkspaceClientCapabilities -> unit
    [@@js.set "workspace"]

  val get_textDocument : t -> _TextDocumentClientCapabilities
    [@@js.get "textDocument"]

  val set_textDocument : t -> _TextDocumentClientCapabilities -> unit
    [@@js.set "textDocument"]

  val get_window : t -> _WindowClientCapabilities [@@js.get "window"]

  val set_window : t -> _WindowClientCapabilities -> unit [@@js.set "window"]

  val get_general : t -> _GeneralClientCapabilities [@@js.get "general"]

  val set_general : t -> _GeneralClientCapabilities -> unit [@@js.set "general"]

  val get_experimental : t -> untyped_object [@@js.get "experimental"]

  val set_experimental : t -> untyped_object -> unit [@@js.set "experimental"]
end
[@@js.scope "_ClientCapabilities"]

module ClientCapabilities : sig
  type t = _ClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module StaticRegistrationOptions : sig
  type t = _StaticRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]
end
[@@js.scope "StaticRegistrationOptions"]

module StaticRegistrationOptions : sig
  val hasId : value:untyped_object -> bool [@@js.global "hasId"]
end
[@@js.scope "StaticRegistrationOptions"]

module TextDocumentRegistrationOptions : sig
  type t = _TextDocumentRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_documentSelector : t -> _DocumentSelector or_null
    [@@js.get "documentSelector"]

  val set_documentSelector : t -> _DocumentSelector or_null -> unit
    [@@js.set "documentSelector"]
end
[@@js.scope "TextDocumentRegistrationOptions"]

module TextDocumentRegistrationOptions : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentRegistrationOptions"]

module SaveOptions : sig
  type t = _SaveOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_includeText : t -> bool [@@js.get "includeText"]

  val set_includeText : t -> bool -> unit [@@js.set "includeText"]
end
[@@js.scope "SaveOptions"]

module WorkDoneProgressOptions : sig
  type t = _WorkDoneProgressOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workDoneProgress : t -> bool [@@js.get "workDoneProgress"]

  val set_workDoneProgress : t -> bool -> unit [@@js.set "workDoneProgress"]
end
[@@js.scope "WorkDoneProgressOptions"]

module WorkDoneProgressOptions : sig
  val is : value:any -> bool [@@js.global "is"]

  val hasWorkDoneProgress : value:any -> bool
    [@@js.global "hasWorkDoneProgress"]
end
[@@js.scope "WorkDoneProgressOptions"]

module M_ServerCapabilities : sig
  type 'T t =
    ('T _ServerCapabilities, WorkspaceFoldersServerCapabilities.t) intersection2

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = any t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_textDocumentSync
    :  'T t
    -> ( (_TextDocumentSyncKind, _TextDocumentSyncOptions) union2
       , ([ `L_n_0 [@js 0] | `L_n_1 [@js 1] | `L_n_2 [@js 2] ][@js.enum]) )
       or_enum
    [@@js.get "textDocumentSync"]

  val set_textDocumentSync
    :  'T t
    -> ( (_TextDocumentSyncKind, _TextDocumentSyncOptions) union2
       , ([ `L_n_0 | `L_n_1 | `L_n_2 ][@js.enum]) )
       or_enum
    -> unit
    [@@js.set "textDocumentSync"]

  val get_completionProvider : 'T t -> _CompletionOptions
    [@@js.get "completionProvider"]

  val set_completionProvider : 'T t -> _CompletionOptions -> unit
    [@@js.set "completionProvider"]

  val get_hoverProvider : 'T t -> _HoverOptions or_boolean
    [@@js.get "hoverProvider"]

  val set_hoverProvider : 'T t -> _HoverOptions or_boolean -> unit
    [@@js.set "hoverProvider"]

  val get_signatureHelpProvider : 'T t -> _SignatureHelpOptions
    [@@js.get "signatureHelpProvider"]

  val set_signatureHelpProvider : 'T t -> _SignatureHelpOptions -> unit
    [@@js.set "signatureHelpProvider"]

  val get_declarationProvider
    :  'T t
    -> (DeclarationOptions.t, DeclarationRegistrationOptions.t) union2
       or_boolean
    [@@js.get "declarationProvider"]

  val set_declarationProvider
    :  'T t
    -> (DeclarationOptions.t, DeclarationRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "declarationProvider"]

  val get_definitionProvider : 'T t -> _DefinitionOptions or_boolean
    [@@js.get "definitionProvider"]

  val set_definitionProvider : 'T t -> _DefinitionOptions or_boolean -> unit
    [@@js.set "definitionProvider"]

  val get_typeDefinitionProvider
    :  'T t
    -> (TypeDefinitionOptions.t, TypeDefinitionRegistrationOptions.t) union2
       or_boolean
    [@@js.get "typeDefinitionProvider"]

  val set_typeDefinitionProvider
    :  'T t
    -> (TypeDefinitionOptions.t, TypeDefinitionRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "typeDefinitionProvider"]

  val get_implementationProvider
    :  'T t
    -> (ImplementationOptions.t, ImplementationRegistrationOptions.t) union2
       or_boolean
    [@@js.get "implementationProvider"]

  val set_implementationProvider
    :  'T t
    -> (ImplementationOptions.t, ImplementationRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "implementationProvider"]

  val get_referencesProvider : 'T t -> _ReferenceOptions or_boolean
    [@@js.get "referencesProvider"]

  val set_referencesProvider : 'T t -> _ReferenceOptions or_boolean -> unit
    [@@js.set "referencesProvider"]

  val get_documentHighlightProvider
    :  'T t
    -> _DocumentHighlightOptions or_boolean
    [@@js.get "documentHighlightProvider"]

  val set_documentHighlightProvider
    :  'T t
    -> _DocumentHighlightOptions or_boolean
    -> unit
    [@@js.set "documentHighlightProvider"]

  val get_documentSymbolProvider : 'T t -> _DocumentSymbolOptions or_boolean
    [@@js.get "documentSymbolProvider"]

  val set_documentSymbolProvider
    :  'T t
    -> _DocumentSymbolOptions or_boolean
    -> unit
    [@@js.set "documentSymbolProvider"]

  val get_codeActionProvider : 'T t -> _CodeActionOptions or_boolean
    [@@js.get "codeActionProvider"]

  val set_codeActionProvider : 'T t -> _CodeActionOptions or_boolean -> unit
    [@@js.set "codeActionProvider"]

  val get_codeLensProvider : 'T t -> _CodeLensOptions
    [@@js.get "codeLensProvider"]

  val set_codeLensProvider : 'T t -> _CodeLensOptions -> unit
    [@@js.set "codeLensProvider"]

  val get_documentLinkProvider : 'T t -> _DocumentLinkOptions
    [@@js.get "documentLinkProvider"]

  val set_documentLinkProvider : 'T t -> _DocumentLinkOptions -> unit
    [@@js.set "documentLinkProvider"]

  val get_colorProvider
    :  'T t
    -> (DocumentColorOptions.t, DocumentColorRegistrationOptions.t) union2
       or_boolean
    [@@js.get "colorProvider"]

  val set_colorProvider
    :  'T t
    -> (DocumentColorOptions.t, DocumentColorRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "colorProvider"]

  val get_workspaceSymbolProvider : 'T t -> _WorkspaceSymbolOptions or_boolean
    [@@js.get "workspaceSymbolProvider"]

  val set_workspaceSymbolProvider
    :  'T t
    -> _WorkspaceSymbolOptions or_boolean
    -> unit
    [@@js.set "workspaceSymbolProvider"]

  val get_documentFormattingProvider
    :  'T t
    -> _DocumentFormattingOptions or_boolean
    [@@js.get "documentFormattingProvider"]

  val set_documentFormattingProvider
    :  'T t
    -> _DocumentFormattingOptions or_boolean
    -> unit
    [@@js.set "documentFormattingProvider"]

  val get_documentRangeFormattingProvider
    :  'T t
    -> _DocumentRangeFormattingOptions or_boolean
    [@@js.get "documentRangeFormattingProvider"]

  val set_documentRangeFormattingProvider
    :  'T t
    -> _DocumentRangeFormattingOptions or_boolean
    -> unit
    [@@js.set "documentRangeFormattingProvider"]

  val get_documentOnTypeFormattingProvider
    :  'T t
    -> _DocumentOnTypeFormattingOptions
    [@@js.get "documentOnTypeFormattingProvider"]

  val set_documentOnTypeFormattingProvider
    :  'T t
    -> _DocumentOnTypeFormattingOptions
    -> unit
    [@@js.set "documentOnTypeFormattingProvider"]

  val get_renameProvider : 'T t -> _RenameOptions or_boolean
    [@@js.get "renameProvider"]

  val set_renameProvider : 'T t -> _RenameOptions or_boolean -> unit
    [@@js.set "renameProvider"]

  val get_foldingRangeProvider
    :  'T t
    -> (FoldingRangeOptions.t, FoldingRangeRegistrationOptions.t) union2
       or_boolean
    [@@js.get "foldingRangeProvider"]

  val set_foldingRangeProvider
    :  'T t
    -> (FoldingRangeOptions.t, FoldingRangeRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "foldingRangeProvider"]

  val get_selectionRangeProvider
    :  'T t
    -> (SelectionRangeOptions.t, SelectionRangeRegistrationOptions.t) union2
       or_boolean
    [@@js.get "selectionRangeProvider"]

  val set_selectionRangeProvider
    :  'T t
    -> (SelectionRangeOptions.t, SelectionRangeRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "selectionRangeProvider"]

  val get_executeCommandProvider : 'T t -> _ExecuteCommandOptions
    [@@js.get "executeCommandProvider"]

  val set_executeCommandProvider : 'T t -> _ExecuteCommandOptions -> unit
    [@@js.set "executeCommandProvider"]

  val get_callHierarchyProvider
    :  'T t
    -> (CallHierarchyOptions.t, CallHierarchyRegistrationOptions.t) union2
       or_boolean
    [@@js.get "callHierarchyProvider"]

  val set_callHierarchyProvider
    :  'T t
    -> (CallHierarchyOptions.t, CallHierarchyRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "callHierarchyProvider"]

  val get_linkedEditingRangeProvider
    :  'T t
    -> ( LinkedEditingRangeOptions.t
       , LinkedEditingRangeRegistrationOptions.t )
       union2
       or_boolean
    [@@js.get "linkedEditingRangeProvider"]

  val set_linkedEditingRangeProvider
    :  'T t
    -> ( LinkedEditingRangeOptions.t
       , LinkedEditingRangeRegistrationOptions.t )
       union2
       or_boolean
    -> unit
    [@@js.set "linkedEditingRangeProvider"]

  val get_semanticTokensProvider
    :  'T t
    -> (SemanticTokensOptions.t, SemanticTokensRegistrationOptions.t) union2
    [@@js.get "semanticTokensProvider"]

  val set_semanticTokensProvider
    :  'T t
    -> (SemanticTokensOptions.t, SemanticTokensRegistrationOptions.t) union2
    -> unit
    [@@js.set "semanticTokensProvider"]

  val get_workspace : 'T t -> AnonymousInterface5.t [@@js.get "workspace"]

  val set_workspace : 'T t -> AnonymousInterface5.t -> unit
    [@@js.set "workspace"]

  val get_monikerProvider
    :  'T t
    -> (MonikerOptions.t, MonikerRegistrationOptions.t) union2 or_boolean
    [@@js.get "monikerProvider"]

  val set_monikerProvider
    :  'T t
    -> (MonikerOptions.t, MonikerRegistrationOptions.t) union2 or_boolean
    -> unit
    [@@js.set "monikerProvider"]

  val get_experimental : 'T t -> 'T [@@js.get "experimental"]

  val set_experimental : 'T t -> 'T -> unit [@@js.set "experimental"]
end
[@@js.scope "_ServerCapabilities"]

module ServerCapabilities : sig
  type 'T t = 'T _ServerCapabilities

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = any t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0
end

module InitializeRequest : sig
  val type_
    : ( ( _InitializeParams
        , WorkspaceFoldersInitializeParams.t
        , _WorkDoneProgressParams )
        intersection3
      , any _InitializeResult
      , never
      , _InitializeError
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "InitializeRequest"]

module M_InitializeParams : sig
  type t = (_InitializeParams, WorkspaceFoldersInitializeParams.t) intersection2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_processId : t -> Integer.t or_null [@@js.get "processId"]

  val set_processId : t -> Integer.t or_null -> unit [@@js.set "processId"]

  val get_clientInfo : t -> AnonymousInterface10.t [@@js.get "clientInfo"]

  val set_clientInfo : t -> AnonymousInterface10.t -> unit
    [@@js.set "clientInfo"]

  val get_locale : t -> string [@@js.get "locale"]

  val set_locale : t -> string -> unit [@@js.set "locale"]

  val get_rootPath : t -> string or_null [@@js.get "rootPath"]

  val set_rootPath : t -> string or_null -> unit [@@js.set "rootPath"]

  val get_rootUri : t -> DocumentUri.t or_null [@@js.get "rootUri"]

  val set_rootUri : t -> DocumentUri.t or_null -> unit [@@js.set "rootUri"]

  val get_capabilities : t -> _ClientCapabilities [@@js.get "capabilities"]

  val set_capabilities : t -> _ClientCapabilities -> unit
    [@@js.set "capabilities"]

  val get_initializationOptions : t -> any [@@js.get "initializationOptions"]

  val set_initializationOptions : t -> any -> unit
    [@@js.set "initializationOptions"]

  val get_trace
    :  t
    -> ([ `L_s7_messages [@js "messages"]
        | `L_s8_off [@js "off"]
        | `L_s34_verbose [@js "verbose"]
        ]
       [@js.enum])
    [@@js.get "trace"]

  val set_trace
    :  t
    -> ([ `L_s7_messages | `L_s8_off | `L_s34_verbose ][@js.enum])
    -> unit
    [@@js.set "trace"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "_InitializeParams"]

module InitializeParams : sig
  type t = _InitializeParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module InitializeResult : sig
  type 'T t = 'T _InitializeResult

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = any t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_capabilities : 'T t -> 'T _ServerCapabilities
    [@@js.get "capabilities"]

  val set_capabilities : 'T t -> 'T _ServerCapabilities -> unit
    [@@js.set "capabilities"]

  val get_serverInfo : 'T t -> AnonymousInterface10.t [@@js.get "serverInfo"]

  val set_serverInfo : 'T t -> AnonymousInterface10.t -> unit
    [@@js.set "serverInfo"]

  val get : 'T t -> string -> any [@@js.index_get]

  val set : 'T t -> string -> any -> unit [@@js.index_set]
end
[@@js.scope "InitializeResult"]

module InitializeError : sig
  val unknownProtocolVersion : ([ `L_n_1 [@js 1] ][@js.enum])
    [@@js.global "unknownProtocolVersion"]
end
[@@js.scope "InitializeError"]

module InitializeError : sig
  type t = _InitializeError

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_retry : t -> bool [@@js.get "retry"]

  val set_retry : t -> bool -> unit [@@js.set "retry"]
end
[@@js.scope "InitializeError"]

module InitializedParams : sig
  type t = _InitializedParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module InitializedNotification : sig
  val type_ : (_InitializedParams, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "InitializedNotification"]

module ShutdownRequest : sig
  val type_ : (unit, never, unit, unit) ProtocolRequestType0.t
    [@@js.global "type"]
end
[@@js.scope "ShutdownRequest"]

module ExitNotification : sig
  val type_ : unit ProtocolNotificationType0.t [@@js.global "type"]
end
[@@js.scope "ExitNotification"]

module DidChangeConfigurationClientCapabilities : sig
  type t = _DidChangeConfigurationClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DidChangeConfigurationClientCapabilities"]

module DidChangeConfigurationNotification : sig
  val type_
    : ( _DidChangeConfigurationParams
      , _DidChangeConfigurationRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidChangeConfigurationNotification"]

module DidChangeConfigurationRegistrationOptions : sig
  type t = _DidChangeConfigurationRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_section : t -> string list or_string [@@js.get "section"]

  val set_section : t -> string list or_string -> unit [@@js.set "section"]
end
[@@js.scope "DidChangeConfigurationRegistrationOptions"]

module DidChangeConfigurationParams : sig
  type t = _DidChangeConfigurationParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_settings : t -> any [@@js.get "settings"]

  val set_settings : t -> any -> unit [@@js.set "settings"]
end
[@@js.scope "DidChangeConfigurationParams"]

module MessageType : sig
  val error : int [@@js.global "Error"]

  val warning : int [@@js.global "Warning"]

  val info : int [@@js.global "Info"]

  val log : int [@@js.global "Log"]
end
[@@js.scope "MessageType"]

module MessageType : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     | `L_n_4 [@js 4]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ShowMessageParams : sig
  type t = _ShowMessageParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> _MessageType [@@js.get "type"]

  val set_type : t -> _MessageType -> unit [@@js.set "type"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]
end
[@@js.scope "ShowMessageParams"]

module ShowMessageNotification : sig
  val type_ : (_ShowMessageParams, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "ShowMessageNotification"]

module ShowMessageRequestClientCapabilities : sig
  type t = _ShowMessageRequestClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_messageActionItem : t -> AnonymousInterface0.t
    [@@js.get "messageActionItem"]

  val set_messageActionItem : t -> AnonymousInterface0.t -> unit
    [@@js.set "messageActionItem"]
end
[@@js.scope "ShowMessageRequestClientCapabilities"]

module MessageActionItem : sig
  type t = _MessageActionItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_title : t -> string [@@js.get "title"]

  val set_title : t -> string -> unit [@@js.set "title"]

  val get
    :  t
    -> string
    -> (Integer.t, untyped_object) union2 or_boolean or_string
    [@@js.index_get]

  val set
    :  t
    -> string
    -> (Integer.t, untyped_object) union2 or_boolean or_string
    -> unit
    [@@js.index_set]
end
[@@js.scope "MessageActionItem"]

module ShowMessageRequestParams : sig
  type t = _ShowMessageRequestParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> _MessageType [@@js.get "type"]

  val set_type : t -> _MessageType -> unit [@@js.set "type"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_actions : t -> _MessageActionItem list [@@js.get "actions"]

  val set_actions : t -> _MessageActionItem list -> unit [@@js.set "actions"]
end
[@@js.scope "ShowMessageRequestParams"]

module ShowMessageRequest : sig
  val type_
    : ( _ShowMessageRequestParams
      , _MessageActionItem or_null
      , never
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ShowMessageRequest"]

module LogMessageNotification : sig
  val type_ : (_LogMessageParams, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "LogMessageNotification"]

module LogMessageParams : sig
  type t = _LogMessageParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> _MessageType [@@js.get "type"]

  val set_type : t -> _MessageType -> unit [@@js.set "type"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]
end
[@@js.scope "LogMessageParams"]

module TelemetryEventNotification : sig
  val type_ : (any, unit) ProtocolNotificationType.t [@@js.global "type"]
end
[@@js.scope "TelemetryEventNotification"]

module TextDocumentSyncClientCapabilities : sig
  type t = _TextDocumentSyncClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_willSave : t -> bool [@@js.get "willSave"]

  val set_willSave : t -> bool -> unit [@@js.set "willSave"]

  val get_willSaveWaitUntil : t -> bool [@@js.get "willSaveWaitUntil"]

  val set_willSaveWaitUntil : t -> bool -> unit [@@js.set "willSaveWaitUntil"]

  val get_didSave : t -> bool [@@js.get "didSave"]

  val set_didSave : t -> bool -> unit [@@js.set "didSave"]
end
[@@js.scope "TextDocumentSyncClientCapabilities"]

module TextDocumentSyncKind : sig
  val none : int [@@js.global "None"]

  val full : int [@@js.global "Full"]

  val incremental : int [@@js.global "Incremental"]
end
[@@js.scope "TextDocumentSyncKind"]

module TextDocumentSyncKind : sig
  type t =
    ([ `L_n_0 [@js 0]
     | `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module TextDocumentSyncOptions : sig
  type t = _TextDocumentSyncOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_openClose : t -> bool [@@js.get "openClose"]

  val set_openClose : t -> bool -> unit [@@js.set "openClose"]

  val get_change : t -> _TextDocumentSyncKind [@@js.get "change"]

  val set_change : t -> _TextDocumentSyncKind -> unit [@@js.set "change"]

  val get_willSave : t -> bool [@@js.get "willSave"]

  val set_willSave : t -> bool -> unit [@@js.set "willSave"]

  val get_willSaveWaitUntil : t -> bool [@@js.get "willSaveWaitUntil"]

  val set_willSaveWaitUntil : t -> bool -> unit [@@js.set "willSaveWaitUntil"]

  val get_save : t -> _SaveOptions or_boolean [@@js.get "save"]

  val set_save : t -> _SaveOptions or_boolean -> unit [@@js.set "save"]
end
[@@js.scope "TextDocumentSyncOptions"]

module DidOpenTextDocumentParams : sig
  type t = _DidOpenTextDocumentParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentItem.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentItem.t -> unit
    [@@js.set "textDocument"]
end
[@@js.scope "DidOpenTextDocumentParams"]

module DidOpenTextDocumentNotification : sig
  val method_
    : ([ `L_s16_textDocument_didOpen [@js "textDocument/didOpen"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DidOpenTextDocumentParams
      , _TextDocumentRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidOpenTextDocumentNotification"]

module TextDocumentContentChangeEvent : sig
  type t = (AnonymousInterface13.t, AnonymousInterface15.t) union2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module TextDocumentContentChangeEvent : sig
  val isIncremental : event:_TextDocumentContentChangeEvent -> bool
    [@@js.global "isIncremental"]

  val isFull : event:_TextDocumentContentChangeEvent -> bool
    [@@js.global "isFull"]
end
[@@js.scope "TextDocumentContentChangeEvent"]

module DidChangeTextDocumentParams : sig
  type t = _DidChangeTextDocumentParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> VersionedTextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_textDocument : t -> VersionedTextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_contentChanges : t -> _TextDocumentContentChangeEvent list
    [@@js.get "contentChanges"]

  val set_contentChanges : t -> _TextDocumentContentChangeEvent list -> unit
    [@@js.set "contentChanges"]
end
[@@js.scope "DidChangeTextDocumentParams"]

module TextDocumentChangeRegistrationOptions : sig
  type t = _TextDocumentChangeRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_syncKind : t -> _TextDocumentSyncKind [@@js.get "syncKind"]

  val set_syncKind : t -> _TextDocumentSyncKind -> unit [@@js.set "syncKind"]

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]
end
[@@js.scope "TextDocumentChangeRegistrationOptions"]

module DidChangeTextDocumentNotification : sig
  val method_
    : ([ `L_s14_textDocument_didChange [@js "textDocument/didChange"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DidChangeTextDocumentParams
      , _TextDocumentChangeRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidChangeTextDocumentNotification"]

module DidCloseTextDocumentParams : sig
  type t = _DidCloseTextDocumentParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]
end
[@@js.scope "DidCloseTextDocumentParams"]

module DidCloseTextDocumentNotification : sig
  val method_
    : ([ `L_s15_textDocument_didClose [@js "textDocument/didClose"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DidCloseTextDocumentParams
      , _TextDocumentRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidCloseTextDocumentNotification"]

module DidSaveTextDocumentParams : sig
  type t = _DidSaveTextDocumentParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]
end
[@@js.scope "DidSaveTextDocumentParams"]

module TextDocumentSaveRegistrationOptions : sig
  type t = _TextDocumentSaveRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _SaveOptions [@@js.cast]
end
[@@js.scope "TextDocumentSaveRegistrationOptions"]

module DidSaveTextDocumentNotification : sig
  val method_
    : ([ `L_s17_textDocument_didSave [@js "textDocument/didSave"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DidSaveTextDocumentParams
      , _TextDocumentSaveRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidSaveTextDocumentNotification"]

module TextDocumentSaveReason : sig
  val manual : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Manual"]

  val afterDelay : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "AfterDelay"]

  val focusOut : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "FocusOut"]
end
[@@js.scope "TextDocumentSaveReason"]

module TextDocumentSaveReason : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module WillSaveTextDocumentParams : sig
  type t = _WillSaveTextDocumentParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_reason : t -> _TextDocumentSaveReason [@@js.get "reason"]

  val set_reason : t -> _TextDocumentSaveReason -> unit [@@js.set "reason"]
end
[@@js.scope "WillSaveTextDocumentParams"]

module WillSaveTextDocumentNotification : sig
  val method_
    : ([ `L_s29_textDocument_willSave [@js "textDocument/willSave"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _WillSaveTextDocumentParams
      , _TextDocumentRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "WillSaveTextDocumentNotification"]

module WillSaveTextDocumentWaitUntilRequest : sig
  val method_
    : ([ `L_s30_textDocument_willSaveWaitUntil [@js
                                                 "textDocument/willSaveWaitUntil"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _WillSaveTextDocumentParams
      , TextEdit.t list or_null
      , never
      , unit
      , _TextDocumentRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "WillSaveTextDocumentWaitUntilRequest"]

module DidChangeWatchedFilesClientCapabilities : sig
  type t = _DidChangeWatchedFilesClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DidChangeWatchedFilesClientCapabilities"]

module DidChangeWatchedFilesNotification : sig
  val type_
    : ( _DidChangeWatchedFilesParams
      , _DidChangeWatchedFilesRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidChangeWatchedFilesNotification"]

module DidChangeWatchedFilesParams : sig
  type t = _DidChangeWatchedFilesParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_changes : t -> _FileEvent list [@@js.get "changes"]

  val set_changes : t -> _FileEvent list -> unit [@@js.set "changes"]
end
[@@js.scope "DidChangeWatchedFilesParams"]

module FileChangeType : sig
  val created : int [@@js.global "Created"]

  val changed : int [@@js.global "Changed"]

  val deleted : int [@@js.global "Deleted"]
end
[@@js.scope "FileChangeType"]

module FileChangeType : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FileEvent : sig
  type t = _FileEvent

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_type : t -> _FileChangeType [@@js.get "type"]

  val set_type : t -> _FileChangeType -> unit [@@js.set "type"]
end
[@@js.scope "FileEvent"]

module DidChangeWatchedFilesRegistrationOptions : sig
  type t = _DidChangeWatchedFilesRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_watchers : t -> _FileSystemWatcher list [@@js.get "watchers"]

  val set_watchers : t -> _FileSystemWatcher list -> unit [@@js.set "watchers"]
end
[@@js.scope "DidChangeWatchedFilesRegistrationOptions"]

module FileSystemWatcher : sig
  type t = _FileSystemWatcher

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_globPattern : t -> string [@@js.get "globPattern"]

  val set_globPattern : t -> string -> unit [@@js.set "globPattern"]

  val get_kind : t -> Uinteger.t [@@js.get "kind"]

  val set_kind : t -> Uinteger.t -> unit [@@js.set "kind"]
end
[@@js.scope "FileSystemWatcher"]

module WatchKind : sig
  val create_ : int [@@js.global "Create"]

  val change : int [@@js.global "Change"]

  val delete : int [@@js.global "Delete"]
end
[@@js.scope "WatchKind"]

module PublishDiagnosticsClientCapabilities : sig
  type t = _PublishDiagnosticsClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_relatedInformation : t -> bool [@@js.get "relatedInformation"]

  val set_relatedInformation : t -> bool -> unit [@@js.set "relatedInformation"]

  val get_tagSupport : t -> AnonymousInterface19.t [@@js.get "tagSupport"]

  val set_tagSupport : t -> AnonymousInterface19.t -> unit
    [@@js.set "tagSupport"]

  val get_versionSupport : t -> bool [@@js.get "versionSupport"]

  val set_versionSupport : t -> bool -> unit [@@js.set "versionSupport"]

  val get_codeDescriptionSupport : t -> bool [@@js.get "codeDescriptionSupport"]

  val set_codeDescriptionSupport : t -> bool -> unit
    [@@js.set "codeDescriptionSupport"]

  val get_dataSupport : t -> bool [@@js.get "dataSupport"]

  val set_dataSupport : t -> bool -> unit [@@js.set "dataSupport"]
end
[@@js.scope "PublishDiagnosticsClientCapabilities"]

module PublishDiagnosticsParams : sig
  type t = _PublishDiagnosticsParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_version : t -> Integer.t [@@js.get "version"]

  val set_version : t -> Integer.t -> unit [@@js.set "version"]

  val get_diagnostics : t -> Diagnostic.t list [@@js.get "diagnostics"]

  val set_diagnostics : t -> Diagnostic.t list -> unit [@@js.set "diagnostics"]
end
[@@js.scope "PublishDiagnosticsParams"]

module PublishDiagnosticsNotification : sig
  val type_ : (_PublishDiagnosticsParams, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "PublishDiagnosticsNotification"]

module CompletionClientCapabilities : sig
  type t = _CompletionClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_completionItem : t -> AnonymousInterface14.t
    [@@js.get "completionItem"]

  val set_completionItem : t -> AnonymousInterface14.t -> unit
    [@@js.set "completionItem"]

  val get_completionItemKind : t -> AnonymousInterface17.t
    [@@js.get "completionItemKind"]

  val set_completionItemKind : t -> AnonymousInterface17.t -> unit
    [@@js.set "completionItemKind"]

  val get_insertTextMode : t -> InsertTextMode.t [@@js.get "insertTextMode"]

  val set_insertTextMode : t -> InsertTextMode.t -> unit
    [@@js.set "insertTextMode"]

  val get_contextSupport : t -> bool [@@js.get "contextSupport"]

  val set_contextSupport : t -> bool -> unit [@@js.set "contextSupport"]
end
[@@js.scope "CompletionClientCapabilities"]

module CompletionTriggerKind : sig
  val invoked : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Invoked"]

  val triggerCharacter : ([ `L_n_2 [@js 2] ][@js.enum])
    [@@js.global "TriggerCharacter"]

  val triggerForIncompleteCompletions : ([ `L_n_3 [@js 3] ][@js.enum])
    [@@js.global "TriggerForIncompleteCompletions"]
end
[@@js.scope "CompletionTriggerKind"]

module CompletionTriggerKind : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module CompletionContext : sig
  type t = _CompletionContext

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_triggerKind : t -> _CompletionTriggerKind [@@js.get "triggerKind"]

  val set_triggerKind : t -> _CompletionTriggerKind -> unit
    [@@js.set "triggerKind"]

  val get_triggerCharacter : t -> string [@@js.get "triggerCharacter"]

  val set_triggerCharacter : t -> string -> unit [@@js.set "triggerCharacter"]
end
[@@js.scope "CompletionContext"]

module CompletionParams : sig
  type t = _CompletionParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_context : t -> _CompletionContext [@@js.get "context"]

  val set_context : t -> _CompletionContext -> unit [@@js.set "context"]

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]

  val cast'' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "CompletionParams"]

module CompletionOptions : sig
  type t = _CompletionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_triggerCharacters : t -> string list [@@js.get "triggerCharacters"]

  val set_triggerCharacters : t -> string list -> unit
    [@@js.set "triggerCharacters"]

  val get_allCommitCharacters : t -> string list
    [@@js.get "allCommitCharacters"]

  val set_allCommitCharacters : t -> string list -> unit
    [@@js.set "allCommitCharacters"]

  val get_resolveProvider : t -> bool [@@js.get "resolveProvider"]

  val set_resolveProvider : t -> bool -> unit [@@js.set "resolveProvider"]

  val get_completionItem : t -> AnonymousInterface7.t
    [@@js.get "completionItem"]

  val set_completionItem : t -> AnonymousInterface7.t -> unit
    [@@js.set "completionItem"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "CompletionOptions"]

module CompletionRegistrationOptions : sig
  type t = _CompletionRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _CompletionOptions [@@js.cast]
end
[@@js.scope "CompletionRegistrationOptions"]

module CompletionRequest : sig
  val method_
    : ([ `L_s12_textDocument_completion [@js "textDocument/completion"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _CompletionParams
      , (CompletionList.t, CompletionItem.t) or_array or_null
      , CompletionItem.t list
      , unit
      , _CompletionRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "CompletionRequest"]

module CompletionResolveRequest : sig
  val method_
    : ([ `L_s3_completionItem_resolve [@js "completionItem/resolve"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CompletionItem.t
      , CompletionItem.t
      , never
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "CompletionResolveRequest"]

module HoverClientCapabilities : sig
  type t = _HoverClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_contentFormat : t -> MarkupKind.t list [@@js.get "contentFormat"]

  val set_contentFormat : t -> MarkupKind.t list -> unit
    [@@js.set "contentFormat"]
end
[@@js.scope "HoverClientCapabilities"]

module HoverOptions : sig
  type t = _HoverOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "HoverOptions"]

module HoverParams : sig
  type t = _HoverParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "HoverParams"]

module HoverRegistrationOptions : sig
  type t = _HoverRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _HoverOptions [@@js.cast]
end
[@@js.scope "HoverRegistrationOptions"]

module HoverRequest : sig
  val method_
    : ([ `L_s22_textDocument_hover [@js "textDocument/hover"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _HoverParams
      , Hover.t or_null
      , never
      , unit
      , _HoverRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "HoverRequest"]

module SignatureHelpClientCapabilities : sig
  type t = _SignatureHelpClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_signatureInformation : t -> AnonymousInterface4.t
    [@@js.get "signatureInformation"]

  val set_signatureInformation : t -> AnonymousInterface4.t -> unit
    [@@js.set "signatureInformation"]

  val get_contextSupport : t -> bool [@@js.get "contextSupport"]

  val set_contextSupport : t -> bool -> unit [@@js.set "contextSupport"]
end
[@@js.scope "SignatureHelpClientCapabilities"]

module SignatureHelpOptions : sig
  type t = _SignatureHelpOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_triggerCharacters : t -> string list [@@js.get "triggerCharacters"]

  val set_triggerCharacters : t -> string list -> unit
    [@@js.set "triggerCharacters"]

  val get_retriggerCharacters : t -> string list
    [@@js.get "retriggerCharacters"]

  val set_retriggerCharacters : t -> string list -> unit
    [@@js.set "retriggerCharacters"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "SignatureHelpOptions"]

module SignatureHelpTriggerKind : sig
  val invoked : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Invoked"]

  val triggerCharacter : ([ `L_n_2 [@js 2] ][@js.enum])
    [@@js.global "TriggerCharacter"]

  val contentChange : ([ `L_n_3 [@js 3] ][@js.enum])
    [@@js.global "ContentChange"]
end
[@@js.scope "SignatureHelpTriggerKind"]

module SignatureHelpTriggerKind : sig
  type t =
    ([ `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     | `L_n_3 [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SignatureHelpContext : sig
  type t = _SignatureHelpContext

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_triggerKind : t -> _SignatureHelpTriggerKind [@@js.get "triggerKind"]

  val set_triggerKind : t -> _SignatureHelpTriggerKind -> unit
    [@@js.set "triggerKind"]

  val get_triggerCharacter : t -> string [@@js.get "triggerCharacter"]

  val set_triggerCharacter : t -> string -> unit [@@js.set "triggerCharacter"]

  val get_isRetrigger : t -> bool [@@js.get "isRetrigger"]

  val set_isRetrigger : t -> bool -> unit [@@js.set "isRetrigger"]

  val get_activeSignatureHelp : t -> SignatureHelp.t
    [@@js.get "activeSignatureHelp"]

  val set_activeSignatureHelp : t -> SignatureHelp.t -> unit
    [@@js.set "activeSignatureHelp"]
end
[@@js.scope "SignatureHelpContext"]

module SignatureHelpParams : sig
  type t = _SignatureHelpParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_context : t -> _SignatureHelpContext [@@js.get "context"]

  val set_context : t -> _SignatureHelpContext -> unit [@@js.set "context"]

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "SignatureHelpParams"]

module SignatureHelpRegistrationOptions : sig
  type t = _SignatureHelpRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _SignatureHelpOptions [@@js.cast]
end
[@@js.scope "SignatureHelpRegistrationOptions"]

module SignatureHelpRequest : sig
  val method_
    : ([ `L_s28_textDocument_signatureHelp [@js "textDocument/signatureHelp"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _SignatureHelpParams
      , SignatureHelp.t or_null
      , never
      , unit
      , _SignatureHelpRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "SignatureHelpRequest"]

module DefinitionClientCapabilities : sig
  type t = _DefinitionClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_linkSupport : t -> bool [@@js.get "linkSupport"]

  val set_linkSupport : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "DefinitionClientCapabilities"]

module DefinitionOptions : sig
  type t = _DefinitionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "DefinitionOptions"]

module DefinitionParams : sig
  type t = _DefinitionParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]

  val cast'' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "DefinitionParams"]

module DefinitionRegistrationOptions : sig
  type t = _DefinitionRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DefinitionOptions [@@js.cast]
end
[@@js.scope "DefinitionRegistrationOptions"]

module DefinitionRequest : sig
  val method_
    : ([ `L_s13_textDocument_definition [@js "textDocument/definition"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DefinitionParams
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , _DefinitionRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DefinitionRequest"]

module ReferenceClientCapabilities : sig
  type t = _ReferenceClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "ReferenceClientCapabilities"]

module ReferenceParams : sig
  type t = _ReferenceParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_context : t -> ReferenceContext.t [@@js.get "context"]

  val set_context : t -> ReferenceContext.t -> unit [@@js.set "context"]

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]

  val cast'' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "ReferenceParams"]

module ReferenceOptions : sig
  type t = _ReferenceOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "ReferenceOptions"]

module ReferenceRegistrationOptions : sig
  type t = _ReferenceRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _ReferenceOptions [@@js.cast]
end
[@@js.scope "ReferenceRegistrationOptions"]

module ReferencesRequest : sig
  val method_
    : ([ `L_s26_textDocument_references [@js "textDocument/references"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _ReferenceParams
      , Location.t list or_null
      , Location.t list
      , unit
      , _ReferenceRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ReferencesRequest"]

module DocumentHighlightClientCapabilities : sig
  type t = _DocumentHighlightClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentHighlightClientCapabilities"]

module DocumentHighlightParams : sig
  type t = _DocumentHighlightParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]

  val cast'' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "DocumentHighlightParams"]

module DocumentHighlightOptions : sig
  type t = _DocumentHighlightOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "DocumentHighlightOptions"]

module DocumentHighlightRegistrationOptions : sig
  type t = _DocumentHighlightRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DocumentHighlightOptions [@@js.cast]
end
[@@js.scope "DocumentHighlightRegistrationOptions"]

module DocumentHighlightRequest : sig
  val method_
    : ([ `L_s18_textDocument_documentHighlight [@js
                                                 "textDocument/documentHighlight"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentHighlightParams
      , DocumentHighlight.t list or_null
      , DocumentHighlight.t list
      , unit
      , _DocumentHighlightRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentHighlightRequest"]

module DocumentSymbolClientCapabilities : sig
  type t = _DocumentSymbolClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_symbolKind : t -> AnonymousInterface21.t [@@js.get "symbolKind"]

  val set_symbolKind : t -> AnonymousInterface21.t -> unit
    [@@js.set "symbolKind"]

  val get_hierarchicalDocumentSymbolSupport : t -> bool
    [@@js.get "hierarchicalDocumentSymbolSupport"]

  val set_hierarchicalDocumentSymbolSupport : t -> bool -> unit
    [@@js.set "hierarchicalDocumentSymbolSupport"]

  val get_tagSupport : t -> AnonymousInterface22.t [@@js.get "tagSupport"]

  val set_tagSupport : t -> AnonymousInterface22.t -> unit
    [@@js.set "tagSupport"]

  val get_labelSupport : t -> bool [@@js.get "labelSupport"]

  val set_labelSupport : t -> bool -> unit [@@js.set "labelSupport"]
end
[@@js.scope "DocumentSymbolClientCapabilities"]

module DocumentSymbolParams : sig
  type t = _DocumentSymbolParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]

  val cast' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "DocumentSymbolParams"]

module DocumentSymbolOptions : sig
  type t = _DocumentSymbolOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "DocumentSymbolOptions"]

module DocumentSymbolRegistrationOptions : sig
  type t = _DocumentSymbolRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DocumentSymbolOptions [@@js.cast]
end
[@@js.scope "DocumentSymbolRegistrationOptions"]

module DocumentSymbolRequest : sig
  val method_
    : ([ `L_s20_textDocument_documentSymbol [@js "textDocument/documentSymbol"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentSymbolParams
      , (DocumentSymbol.t, SymbolInformation.t) union2 list or_null
      , (DocumentSymbol.t, SymbolInformation.t) union2 list
      , unit
      , _DocumentSymbolRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentSymbolRequest"]

module CodeActionClientCapabilities : sig
  type t = _CodeActionClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_codeActionLiteralSupport : t -> AnonymousInterface2.t
    [@@js.get "codeActionLiteralSupport"]

  val set_codeActionLiteralSupport : t -> AnonymousInterface2.t -> unit
    [@@js.set "codeActionLiteralSupport"]

  val get_isPreferredSupport : t -> bool [@@js.get "isPreferredSupport"]

  val set_isPreferredSupport : t -> bool -> unit [@@js.set "isPreferredSupport"]

  val get_disabledSupport : t -> bool [@@js.get "disabledSupport"]

  val set_disabledSupport : t -> bool -> unit [@@js.set "disabledSupport"]

  val get_dataSupport : t -> bool [@@js.get "dataSupport"]

  val set_dataSupport : t -> bool -> unit [@@js.set "dataSupport"]

  val get_resolveSupport : t -> AnonymousInterface11.t
    [@@js.get "resolveSupport"]

  val set_resolveSupport : t -> AnonymousInterface11.t -> unit
    [@@js.set "resolveSupport"]

  val get_honorsChangeAnnotations : t -> bool
    [@@js.get "honorsChangeAnnotations"]

  val set_honorsChangeAnnotations : t -> bool -> unit
    [@@js.set "honorsChangeAnnotations"]
end
[@@js.scope "CodeActionClientCapabilities"]

module CodeActionParams : sig
  type t = _CodeActionParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_context : t -> CodeActionContext.t [@@js.get "context"]

  val set_context : t -> CodeActionContext.t -> unit [@@js.set "context"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]

  val cast' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "CodeActionParams"]

module CodeActionOptions : sig
  type t = _CodeActionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_codeActionKinds : t -> CodeActionKind.t list
    [@@js.get "codeActionKinds"]

  val set_codeActionKinds : t -> CodeActionKind.t list -> unit
    [@@js.set "codeActionKinds"]

  val get_resolveProvider : t -> bool [@@js.get "resolveProvider"]

  val set_resolveProvider : t -> bool -> unit [@@js.set "resolveProvider"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "CodeActionOptions"]

module CodeActionRegistrationOptions : sig
  type t = _CodeActionRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _CodeActionOptions [@@js.cast]
end
[@@js.scope "CodeActionRegistrationOptions"]

module CodeActionRequest : sig
  val method_
    : ([ `L_s10_textDocument_codeAction [@js "textDocument/codeAction"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _CodeActionParams
      , (CodeAction.t, Command.t) union2 list or_null
      , (CodeAction.t, Command.t) union2 list
      , unit
      , _CodeActionRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "CodeActionRequest"]

module CodeActionResolveRequest : sig
  val method_
    : ([ `L_s1_codeAction_resolve [@js "codeAction/resolve"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : (CodeAction.t, CodeAction.t, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "CodeActionResolveRequest"]

module WorkspaceSymbolClientCapabilities : sig
  type t = _WorkspaceSymbolClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_symbolKind : t -> AnonymousInterface21.t [@@js.get "symbolKind"]

  val set_symbolKind : t -> AnonymousInterface21.t -> unit
    [@@js.set "symbolKind"]

  val get_tagSupport : t -> AnonymousInterface22.t [@@js.get "tagSupport"]

  val set_tagSupport : t -> AnonymousInterface22.t -> unit
    [@@js.set "tagSupport"]
end
[@@js.scope "WorkspaceSymbolClientCapabilities"]

module WorkspaceSymbolParams : sig
  type t = _WorkspaceSymbolParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_query : t -> string [@@js.get "query"]

  val set_query : t -> string -> unit [@@js.set "query"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]

  val cast' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "WorkspaceSymbolParams"]

module WorkspaceSymbolOptions : sig
  type t = _WorkspaceSymbolOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "WorkspaceSymbolOptions"]

module WorkspaceSymbolRegistrationOptions : sig
  type t = _WorkspaceSymbolRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkspaceSymbolOptions [@@js.cast]
end
[@@js.scope "WorkspaceSymbolRegistrationOptions"]

module WorkspaceSymbolRequest : sig
  val method_ : ([ `L_s35_workspace_symbol [@js "workspace/symbol"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _WorkspaceSymbolParams
      , SymbolInformation.t list or_null
      , SymbolInformation.t list
      , unit
      , _WorkspaceSymbolRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "WorkspaceSymbolRequest"]

module CodeLensClientCapabilities : sig
  type t = _CodeLensClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "CodeLensClientCapabilities"]

module CodeLensWorkspaceClientCapabilities : sig
  type t = _CodeLensWorkspaceClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_refreshSupport : t -> bool [@@js.get "refreshSupport"]

  val set_refreshSupport : t -> bool -> unit [@@js.set "refreshSupport"]
end
[@@js.scope "CodeLensWorkspaceClientCapabilities"]

module CodeLensParams : sig
  type t = _CodeLensParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]

  val cast' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "CodeLensParams"]

module CodeLensOptions : sig
  type t = _CodeLensOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_resolveProvider : t -> bool [@@js.get "resolveProvider"]

  val set_resolveProvider : t -> bool -> unit [@@js.set "resolveProvider"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "CodeLensOptions"]

module CodeLensRegistrationOptions : sig
  type t = _CodeLensRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _CodeLensOptions [@@js.cast]
end
[@@js.scope "CodeLensRegistrationOptions"]

module CodeLensRequest : sig
  val method_
    : ([ `L_s11_textDocument_codeLens [@js "textDocument/codeLens"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _CodeLensParams
      , CodeLens.t list or_null
      , CodeLens.t list
      , unit
      , _CodeLensRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "CodeLensRequest"]

module CodeLensResolveRequest : sig
  val method_ : ([ `L_s2_codeLens_resolve [@js "codeLens/resolve"] ][@js.enum])
    [@@js.global "method"]

  val type_ : (CodeLens.t, CodeLens.t, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "CodeLensResolveRequest"]

module CodeLensRefreshRequest : sig
  val method_ : (* FIXME: unknown type '`workspace/codeLens/refresh`' *) any
    [@@js.global "method"]

  val type_ : (unit, unit, unit, unit) ProtocolRequestType0.t
    [@@js.global "type"]
end
[@@js.scope "CodeLensRefreshRequest"]

module DocumentLinkClientCapabilities : sig
  type t = _DocumentLinkClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_tooltipSupport : t -> bool [@@js.get "tooltipSupport"]

  val set_tooltipSupport : t -> bool -> unit [@@js.set "tooltipSupport"]
end
[@@js.scope "DocumentLinkClientCapabilities"]

module DocumentLinkParams : sig
  type t = _DocumentLinkParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]

  val cast' : t -> _PartialResultParams [@@js.cast]
end
[@@js.scope "DocumentLinkParams"]

module DocumentLinkOptions : sig
  type t = _DocumentLinkOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_resolveProvider : t -> bool [@@js.get "resolveProvider"]

  val set_resolveProvider : t -> bool -> unit [@@js.set "resolveProvider"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "DocumentLinkOptions"]

module DocumentLinkRegistrationOptions : sig
  type t = _DocumentLinkRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DocumentLinkOptions [@@js.cast]
end
[@@js.scope "DocumentLinkRegistrationOptions"]

module DocumentLinkRequest : sig
  val method_
    : ([ `L_s19_textDocument_documentLink [@js "textDocument/documentLink"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentLinkParams
      , DocumentLink.t list or_null
      , DocumentLink.t list
      , unit
      , _DocumentLinkRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentLinkRequest"]

module DocumentLinkResolveRequest : sig
  val method_
    : ([ `L_s6_documentLink_resolve [@js "documentLink/resolve"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : (DocumentLink.t, DocumentLink.t, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentLinkResolveRequest"]

module DocumentFormattingClientCapabilities : sig
  type t = _DocumentFormattingClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentFormattingClientCapabilities"]

module DocumentFormattingParams : sig
  type t = _DocumentFormattingParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_options : t -> FormattingOptions.t [@@js.get "options"]

  val set_options : t -> FormattingOptions.t -> unit [@@js.set "options"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "DocumentFormattingParams"]

module DocumentFormattingOptions : sig
  type t = _DocumentFormattingOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "DocumentFormattingOptions"]

module DocumentFormattingRegistrationOptions : sig
  type t = _DocumentFormattingRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DocumentFormattingOptions [@@js.cast]
end
[@@js.scope "DocumentFormattingRegistrationOptions"]

module DocumentFormattingRequest : sig
  val method_
    : ([ `L_s21_textDocument_formatting [@js "textDocument/formatting"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentFormattingParams
      , TextEdit.t list or_null
      , never
      , unit
      , _DocumentFormattingRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentFormattingRequest"]

module DocumentRangeFormattingClientCapabilities : sig
  type t = _DocumentRangeFormattingClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentRangeFormattingClientCapabilities"]

module DocumentRangeFormattingParams : sig
  type t = _DocumentRangeFormattingParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_options : t -> FormattingOptions.t [@@js.get "options"]

  val set_options : t -> FormattingOptions.t -> unit [@@js.set "options"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "DocumentRangeFormattingParams"]

module DocumentRangeFormattingOptions : sig
  type t = _DocumentRangeFormattingOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "DocumentRangeFormattingOptions"]

module DocumentRangeFormattingRegistrationOptions : sig
  type t = _DocumentRangeFormattingRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DocumentRangeFormattingOptions [@@js.cast]
end
[@@js.scope "DocumentRangeFormattingRegistrationOptions"]

module DocumentRangeFormattingRequest : sig
  val method_
    : ([ `L_s25_textDocument_rangeFormatting [@js
                                               "textDocument/rangeFormatting"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentRangeFormattingParams
      , TextEdit.t list or_null
      , never
      , unit
      , _DocumentRangeFormattingRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentRangeFormattingRequest"]

module DocumentOnTypeFormattingClientCapabilities : sig
  type t = _DocumentOnTypeFormattingClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentOnTypeFormattingClientCapabilities"]

module DocumentOnTypeFormattingParams : sig
  type t = _DocumentOnTypeFormattingParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_position : t -> Position.t [@@js.get "position"]

  val set_position : t -> Position.t -> unit [@@js.set "position"]

  val get_ch : t -> string [@@js.get "ch"]

  val set_ch : t -> string -> unit [@@js.set "ch"]

  val get_options : t -> FormattingOptions.t [@@js.get "options"]

  val set_options : t -> FormattingOptions.t -> unit [@@js.set "options"]
end
[@@js.scope "DocumentOnTypeFormattingParams"]

module DocumentOnTypeFormattingOptions : sig
  type t = _DocumentOnTypeFormattingOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_firstTriggerCharacter : t -> string [@@js.get "firstTriggerCharacter"]

  val set_firstTriggerCharacter : t -> string -> unit
    [@@js.set "firstTriggerCharacter"]

  val get_moreTriggerCharacter : t -> string list
    [@@js.get "moreTriggerCharacter"]

  val set_moreTriggerCharacter : t -> string list -> unit
    [@@js.set "moreTriggerCharacter"]
end
[@@js.scope "DocumentOnTypeFormattingOptions"]

module DocumentOnTypeFormattingRegistrationOptions : sig
  type t = _DocumentOnTypeFormattingRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _DocumentOnTypeFormattingOptions [@@js.cast]
end
[@@js.scope "DocumentOnTypeFormattingRegistrationOptions"]

module DocumentOnTypeFormattingRequest : sig
  val method_
    : ([ `L_s23_textDocument_onTypeFormatting [@js
                                                "textDocument/onTypeFormatting"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentOnTypeFormattingParams
      , TextEdit.t list or_null
      , never
      , unit
      , _DocumentOnTypeFormattingRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentOnTypeFormattingRequest"]

module PrepareSupportDefaultBehavior : sig
  val identifier : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Identifier"]
end
[@@js.scope "PrepareSupportDefaultBehavior"]

module PrepareSupportDefaultBehavior : sig
  type t = ([ `L_n_1 [@js 1] ][@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module RenameClientCapabilities : sig
  type t = _RenameClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_prepareSupport : t -> bool [@@js.get "prepareSupport"]

  val set_prepareSupport : t -> bool -> unit [@@js.set "prepareSupport"]

  val get_prepareSupportDefaultBehavior : t -> _PrepareSupportDefaultBehavior
    [@@js.get "prepareSupportDefaultBehavior"]

  val set_prepareSupportDefaultBehavior
    :  t
    -> _PrepareSupportDefaultBehavior
    -> unit
    [@@js.set "prepareSupportDefaultBehavior"]

  val get_honorsChangeAnnotations : t -> bool
    [@@js.get "honorsChangeAnnotations"]

  val set_honorsChangeAnnotations : t -> bool -> unit
    [@@js.set "honorsChangeAnnotations"]
end
[@@js.scope "RenameClientCapabilities"]

module RenameParams : sig
  type t = _RenameParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_position : t -> Position.t [@@js.get "position"]

  val set_position : t -> Position.t -> unit [@@js.set "position"]

  val get_newName : t -> string [@@js.get "newName"]

  val set_newName : t -> string -> unit [@@js.set "newName"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "RenameParams"]

module RenameOptions : sig
  type t = _RenameOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prepareProvider : t -> bool [@@js.get "prepareProvider"]

  val set_prepareProvider : t -> bool -> unit [@@js.set "prepareProvider"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "RenameOptions"]

module RenameRegistrationOptions : sig
  type t = _RenameRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentRegistrationOptions [@@js.cast]

  val cast' : t -> _RenameOptions [@@js.cast]
end
[@@js.scope "RenameRegistrationOptions"]

module RenameRequest : sig
  val method_
    : ([ `L_s27_textDocument_rename [@js "textDocument/rename"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _RenameParams
      , WorkspaceEdit.t or_null
      , never
      , unit
      , _RenameRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "RenameRequest"]

module PrepareRenameParams : sig
  type t = _PrepareRenameParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _TextDocumentPositionParams [@@js.cast]

  val cast' : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "PrepareRenameParams"]

module PrepareRenameRequest : sig
  val method_
    : ([ `L_s24_textDocument_prepareRename [@js "textDocument/prepareRename"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _PrepareRenameParams
      , (Range.t, AnonymousInterface3.t, AnonymousInterface12.t) union3 or_null
      , never
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "PrepareRenameRequest"]

module ExecuteCommandClientCapabilities : sig
  type t = _ExecuteCommandClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "ExecuteCommandClientCapabilities"]

module ExecuteCommandParams : sig
  type t = _ExecuteCommandParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_command : t -> string [@@js.get "command"]

  val set_command : t -> string -> unit [@@js.set "command"]

  val get_arguments : t -> any list [@@js.get "arguments"]

  val set_arguments : t -> any list -> unit [@@js.set "arguments"]

  val cast : t -> _WorkDoneProgressParams [@@js.cast]
end
[@@js.scope "ExecuteCommandParams"]

module ExecuteCommandOptions : sig
  type t = _ExecuteCommandOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_commands : t -> string list [@@js.get "commands"]

  val set_commands : t -> string list -> unit [@@js.set "commands"]

  val cast : t -> _WorkDoneProgressOptions [@@js.cast]
end
[@@js.scope "ExecuteCommandOptions"]

module ExecuteCommandRegistrationOptions : sig
  type t = _ExecuteCommandRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _ExecuteCommandOptions [@@js.cast]
end
[@@js.scope "ExecuteCommandRegistrationOptions"]

module ExecuteCommandRequest : sig
  val type_
    : ( _ExecuteCommandParams
      , any
      , never
      , unit
      , _ExecuteCommandRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ExecuteCommandRequest"]

module WorkspaceEditClientCapabilities : sig
  type t = _WorkspaceEditClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_documentChanges : t -> bool [@@js.get "documentChanges"]

  val set_documentChanges : t -> bool -> unit [@@js.set "documentChanges"]

  val get_resourceOperations : t -> _ResourceOperationKind list
    [@@js.get "resourceOperations"]

  val set_resourceOperations : t -> _ResourceOperationKind list -> unit
    [@@js.set "resourceOperations"]

  val get_failureHandling : t -> _FailureHandlingKind
    [@@js.get "failureHandling"]

  val set_failureHandling : t -> _FailureHandlingKind -> unit
    [@@js.set "failureHandling"]

  val get_normalizesLineEndings : t -> bool [@@js.get "normalizesLineEndings"]

  val set_normalizesLineEndings : t -> bool -> unit
    [@@js.set "normalizesLineEndings"]

  val get_changeAnnotationSupport : t -> AnonymousInterface6.t
    [@@js.get "changeAnnotationSupport"]

  val set_changeAnnotationSupport : t -> AnonymousInterface6.t -> unit
    [@@js.set "changeAnnotationSupport"]
end
[@@js.scope "WorkspaceEditClientCapabilities"]

module ApplyWorkspaceEditParams : sig
  type t = _ApplyWorkspaceEditParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_edit : t -> WorkspaceEdit.t [@@js.get "edit"]

  val set_edit : t -> WorkspaceEdit.t -> unit [@@js.set "edit"]
end
[@@js.scope "ApplyWorkspaceEditParams"]

module ApplyWorkspaceEditResponse : sig
  type t = _ApplyWorkspaceEditResponse

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_applied : t -> bool [@@js.get "applied"]

  val set_applied : t -> bool -> unit [@@js.set "applied"]

  val get_failureReason : t -> string [@@js.get "failureReason"]

  val set_failureReason : t -> string -> unit [@@js.set "failureReason"]

  val get_failedChange : t -> Uinteger.t [@@js.get "failedChange"]

  val set_failedChange : t -> Uinteger.t -> unit [@@js.set "failedChange"]
end
[@@js.scope "ApplyWorkspaceEditResponse"]

module ApplyWorkspaceEditRequest : sig
  val type_
    : ( _ApplyWorkspaceEditParams
      , _ApplyWorkspaceEditResponse
      , never
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ApplyWorkspaceEditRequest"]
(* export { ImplementationRequest, ImplementationParams,
   ImplementationRegistrationOptions, ImplementationOptions,
   TypeDefinitionRequest, TypeDefinitionParams,
   TypeDefinitionRegistrationOptions, TypeDefinitionOptions,
   WorkspaceFoldersRequest, DidChangeWorkspaceFoldersNotification,
   DidChangeWorkspaceFoldersParams, WorkspaceFolder,
   WorkspaceFoldersChangeEvent, ConfigurationRequest, ConfigurationParams,
   ConfigurationItem, DocumentColorRequest, ColorPresentationRequest,
   DocumentColorOptions, DocumentColorParams, ColorPresentationParams,
   DocumentColorRegistrationOptions, FoldingRangeClientCapabilities,
   FoldingRangeOptions, FoldingRangeRequest, FoldingRangeParams,
   FoldingRangeRegistrationOptions, DeclarationClientCapabilities,
   DeclarationRequest, DeclarationParams, DeclarationRegistrationOptions,
   DeclarationOptions, SelectionRangeClientCapabilities, SelectionRangeOptions,
   SelectionRangeParams, SelectionRangeRequest,
   SelectionRangeRegistrationOptions, WorkDoneProgressBegin,
   WorkDoneProgressReport, WorkDoneProgressEnd, WorkDoneProgress,
   WorkDoneProgressCreateParams, WorkDoneProgressCreateRequest,
   WorkDoneProgressCancelParams, WorkDoneProgressCancelNotification,
   CallHierarchyClientCapabilities, CallHierarchyOptions,
   CallHierarchyRegistrationOptions, CallHierarchyIncomingCallsParams,
   CallHierarchyIncomingCallsRequest, CallHierarchyOutgoingCallsParams,
   CallHierarchyOutgoingCallsRequest, CallHierarchyPrepareParams,
   CallHierarchyPrepareRequest, SemanticTokensPartialResult,
   SemanticTokensDeltaPartialResult, TokenFormat,
   SemanticTokensClientCapabilities, SemanticTokensOptions,
   SemanticTokensRegistrationOptions, SemanticTokensParams,
   SemanticTokensRequest, SemanticTokensDeltaParams, SemanticTokensDeltaRequest,
   SemanticTokensRangeParams, SemanticTokensRangeRequest,
   SemanticTokensRefreshRequest, SemanticTokensRegistrationType,
   ShowDocumentParams, ShowDocumentRequest, ShowDocumentResult,
   ShowDocumentClientCapabilities, LinkedEditingRangeClientCapabilities,
   LinkedEditingRanges, LinkedEditingRangeOptions, LinkedEditingRangeParams,
   LinkedEditingRangeRegistrationOptions, LinkedEditingRangeRequest,
   FileOperationOptions, FileOperationClientCapabilities,
   FileOperationRegistrationOptions, FileOperationPatternOptions,
   FileOperationPatternKind, DidCreateFilesNotification, CreateFilesParams,
   FileCreate, WillCreateFilesRequest, DidRenameFilesNotification,
   RenameFilesParams, FileRename, WillRenameFilesRequest,
   DidDeleteFilesNotification, DeleteFilesParams, FileDelete,
   WillDeleteFilesRequest, UniquenessLevel, MonikerKind, Moniker,
   MonikerClientCapabilities, MonikerOptions, MonikerRegistrationOptions,
   MonikerParams, MonikerRequest }; *)
(* export { DocumentColorOptions as ColorProviderOptions, DocumentColorOptions
   as ColorOptions, FoldingRangeOptions as FoldingRangeProviderOptions,
   SelectionRangeOptions as SelectionRangeProviderOptions,
   DocumentColorRegistrationOptions as ColorRegistrationOptions }; *)
