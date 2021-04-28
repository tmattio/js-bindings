[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_additional_properties_support : t -> bool
    [@@js.get "additionalPropertiesSupport"]

  val set_additional_properties_support : t -> bool -> unit
    [@@js.set "additionalPropertiesSupport"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancel : t -> bool [@@js.get "cancel"]

  val set_cancel : t -> bool -> unit [@@js.set "cancel"]

  val get_retry_on_content_modified : t -> string list
    [@@js.get "retryOnContentModified"]

  val set_retry_on_content_modified : t -> string list -> unit
    [@@js.set "retryOnContentModified"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_code_action_kind : t -> AnonymousInterface16.t
    [@@js.get "codeActionKind"]

  val set_code_action_kind : t -> AnonymousInterface16.t -> unit
    [@@js.set "codeActionKind"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_default_behavior : t -> bool [@@js.get "defaultBehavior"]

  val set_default_behavior : t -> bool -> unit [@@js.set "defaultBehavior"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_documentation_format : t -> MarkupKind.t list
    [@@js.get "documentationFormat"]

  val set_documentation_format : t -> MarkupKind.t list -> unit
    [@@js.set "documentationFormat"]

  val get_parameter_information : t -> AnonymousInterface8.t
    [@@js.get "parameterInformation"]

  val set_parameter_information : t -> AnonymousInterface8.t -> unit
    [@@js.set "parameterInformation"]

  val get_active_parameter_support : t -> bool
    [@@js.get "activeParameterSupport"]

  val set_active_parameter_support : t -> bool -> unit
    [@@js.set "activeParameterSupport"]
end

module AnonymousInterface5 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_file_operations : t -> FileOperationOptions.t
    [@@js.get "fileOperations"]

  val set_file_operations : t -> FileOperationOptions.t -> unit
    [@@js.set "fileOperations"]
end

module AnonymousInterface6 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_groups_on_label : t -> bool [@@js.get "groupsOnLabel"]

  val set_groups_on_label : t -> bool -> unit [@@js.set "groupsOnLabel"]
end

module AnonymousInterface7 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label_details_support : t -> bool [@@js.get "labelDetailsSupport"]

  val set_label_details_support : t -> bool -> unit
    [@@js.set "labelDetailsSupport"]
end

module AnonymousInterface8 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label_offset_support : t -> bool [@@js.get "labelOffsetSupport"]

  val set_label_offset_support : t -> bool -> unit
    [@@js.set "labelOffsetSupport"]
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

  val get_range_length : t -> Uinteger.t [@@js.get "rangeLength"]

  val set_range_length : t -> Uinteger.t -> unit [@@js.set "rangeLength"]

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]
end

module AnonymousInterface14 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_snippet_support : t -> bool [@@js.get "snippetSupport"]

  val set_snippet_support : t -> bool -> unit [@@js.set "snippetSupport"]

  val get_commit_characters_support : t -> bool
    [@@js.get "commitCharactersSupport"]

  val set_commit_characters_support : t -> bool -> unit
    [@@js.set "commitCharactersSupport"]

  val get_documentation_format : t -> MarkupKind.t list
    [@@js.get "documentationFormat"]

  val set_documentation_format : t -> MarkupKind.t list -> unit
    [@@js.set "documentationFormat"]

  val get_deprecated_support : t -> bool [@@js.get "deprecatedSupport"]

  val set_deprecated_support : t -> bool -> unit [@@js.set "deprecatedSupport"]

  val get_preselect_support : t -> bool [@@js.get "preselectSupport"]

  val set_preselect_support : t -> bool -> unit [@@js.set "preselectSupport"]

  val get_tag_support : t -> AnonymousInterface18.t [@@js.get "tagSupport"]

  val set_tag_support : t -> AnonymousInterface18.t -> unit
    [@@js.set "tagSupport"]

  val get_insert_replace_support : t -> bool [@@js.get "insertReplaceSupport"]

  val set_insert_replace_support : t -> bool -> unit
    [@@js.set "insertReplaceSupport"]

  val get_resolve_support : t -> AnonymousInterface11.t
    [@@js.get "resolveSupport"]

  val set_resolve_support : t -> AnonymousInterface11.t -> unit
    [@@js.set "resolveSupport"]

  val get_insert_text_mode_support : t -> AnonymousInterface20.t
    [@@js.get "insertTextModeSupport"]

  val set_insert_text_mode_support : t -> AnonymousInterface20.t -> unit
    [@@js.set "insertTextModeSupport"]

  val get_label_details_support : t -> bool [@@js.get "labelDetailsSupport"]

  val set_label_details_support : t -> bool -> unit
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

  val get_value_set : t -> CodeActionKind.t list [@@js.get "valueSet"]

  val set_value_set : t -> CodeActionKind.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface17 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value_set : t -> CompletionItemKind.t list [@@js.get "valueSet"]

  val set_value_set : t -> CompletionItemKind.t list -> unit
    [@@js.set "valueSet"]
end

module AnonymousInterface18 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value_set : t -> CompletionItemTag.t list [@@js.get "valueSet"]

  val set_value_set : t -> CompletionItemTag.t list -> unit
    [@@js.set "valueSet"]
end

module AnonymousInterface19 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value_set : t -> DiagnosticTag.t list [@@js.get "valueSet"]

  val set_value_set : t -> DiagnosticTag.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface20 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value_set : t -> InsertTextMode.t list [@@js.get "valueSet"]

  val set_value_set : t -> InsertTextMode.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface21 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value_set : t -> SymbolKind.t list [@@js.get "valueSet"]

  val set_value_set : t -> SymbolKind.t list -> unit [@@js.set "valueSet"]
end

module AnonymousInterface22 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value_set : t -> SymbolTag.t list [@@js.get "valueSet"]

  val set_value_set : t -> SymbolTag.t list -> unit [@@js.set "valueSet"]
end

open Vscode_languageserver_protocol_messages

open Vscode_languageserver_protocol_protocol_implementation

open Vscode_languageserver_protocol_protocol_type_definition

open Vscode_languageserver_protocol_protocol_workspace_folders

open Vscode_languageserver_protocol_protocol_configuration

open Vscode_languageserver_protocol_protocol_color_provider

open Vscode_languageserver_protocol_protocol_folding_range
open Vscode_languageserver_protocol_protocol_declaration

open Vscode_languageserver_protocol_protocol_selection_range

open Vscode_languageserver_protocol_protocol_progress

open Vscode_languageserver_protocol_protocol_call_hierarchy

open Vscode_languageserver_protocol_protocol_semantic_tokens

open Vscode_languageserver_protocol_protocol_show_document

open Vscode_languageserver_protocol_protocol_linked_editing_range

open Vscode_languageserver_protocol_protocol_file_operations

open Vscode_languageserver_protocol_protocol_moniker

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
  type t = DocumentFilter.t or_string list

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentSelector : sig
  val is : value:any list or_null_or_undefined -> bool [@@js.global "is"]
end
[@@js.scope "DocumentSelector"]

module Registration : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]

  val get_register_options : t -> any [@@js.get "registerOptions"]

  val set_register_options : t -> any -> unit [@@js.set "registerOptions"]
end
[@@js.scope "Registration"]

module RegistrationParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_registrations : t -> Registration.t list [@@js.get "registrations"]

  val set_registrations : t -> Registration.t list -> unit
    [@@js.set "registrations"]
end
[@@js.scope "RegistrationParams"]

module RegistrationRequest : sig
  val type_
    : (RegistrationParams.t, unit, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "RegistrationRequest"]

module Unregistration : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]
end
[@@js.scope "Unregistration"]

module UnregistrationParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_unregisterations : t -> Unregistration.t list
    [@@js.get "unregisterations"]

  val set_unregisterations : t -> Unregistration.t list -> unit
    [@@js.set "unregisterations"]
end
[@@js.scope "UnregistrationParams"]

module UnregistrationRequest : sig
  val type_
    : (UnregistrationParams.t, unit, never, unit, unit) ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "UnregistrationRequest"]

module WorkDoneProgressParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_work_done_token : t -> ProgressToken.t [@@js.get "workDoneToken"]

  val set_work_done_token : t -> ProgressToken.t -> unit
    [@@js.set "workDoneToken"]
end
[@@js.scope "WorkDoneProgressParams"]

module PartialResultParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_partial_result_token : t -> ProgressToken.t
    [@@js.get "partialResultToken"]

  val set_partial_result_token : t -> ProgressToken.t -> unit
    [@@js.set "partialResultToken"]
end
[@@js.scope "PartialResultParams"]

module TextDocumentPositionParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
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
  val create_ : ResourceOperationKind.t [@@js.global "Create"]

  val rename : ResourceOperationKind.t [@@js.global "Rename"]

  val delete : ResourceOperationKind.t [@@js.global "Delete"]
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
  val abort : FailureHandlingKind.t [@@js.global "Abort"]

  val transactional : FailureHandlingKind.t [@@js.global "Transactional"]

  val text_only_transactional : FailureHandlingKind.t
    [@@js.global "TextOnlyTransactional"]

  val undo : FailureHandlingKind.t [@@js.global "Undo"]
end
[@@js.scope "FailureHandlingKind"]

module WorkspaceClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_apply_edit : t -> bool [@@js.get "applyEdit"]

  val set_apply_edit : t -> bool -> unit [@@js.set "applyEdit"]

  val get_workspace_edit : t -> WorkspaceEditClientCapabilities.t
    [@@js.get "workspaceEdit"]

  val set_workspace_edit : t -> WorkspaceEditClientCapabilities.t -> unit
    [@@js.set "workspaceEdit"]

  val get_did_change_configuration
    :  t
    -> DidChangeConfigurationClientCapabilities.t
    [@@js.get "didChangeConfiguration"]

  val set_did_change_configuration
    :  t
    -> DidChangeConfigurationClientCapabilities.t
    -> unit
    [@@js.set "didChangeConfiguration"]

  val get_did_change_watched_files
    :  t
    -> DidChangeWatchedFilesClientCapabilities.t
    [@@js.get "didChangeWatchedFiles"]

  val set_did_change_watched_files
    :  t
    -> DidChangeWatchedFilesClientCapabilities.t
    -> unit
    [@@js.set "didChangeWatchedFiles"]

  val get_symbol : t -> WorkspaceSymbolClientCapabilities.t [@@js.get "symbol"]

  val set_symbol : t -> WorkspaceSymbolClientCapabilities.t -> unit
    [@@js.set "symbol"]

  val get_execute_command : t -> ExecuteCommandClientCapabilities.t
    [@@js.get "executeCommand"]

  val set_execute_command : t -> ExecuteCommandClientCapabilities.t -> unit
    [@@js.set "executeCommand"]

  val get_semantic_tokens : t -> SemanticTokensWorkspaceClientCapabilities.t
    [@@js.get "semanticTokens"]

  val set_semantic_tokens
    :  t
    -> SemanticTokensWorkspaceClientCapabilities.t
    -> unit
    [@@js.set "semanticTokens"]

  val get_code_lens : t -> CodeLensWorkspaceClientCapabilities.t
    [@@js.get "codeLens"]

  val set_code_lens : t -> CodeLensWorkspaceClientCapabilities.t -> unit
    [@@js.set "codeLens"]

  val get_file_operations : t -> FileOperationClientCapabilities.t
    [@@js.get "fileOperations"]

  val set_file_operations : t -> FileOperationClientCapabilities.t -> unit
    [@@js.set "fileOperations"]
end
[@@js.scope "WorkspaceClientCapabilities"]

module TextDocumentClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_synchronization : t -> TextDocumentSyncClientCapabilities.t
    [@@js.get "synchronization"]

  val set_synchronization : t -> TextDocumentSyncClientCapabilities.t -> unit
    [@@js.set "synchronization"]

  val get_completion : t -> CompletionClientCapabilities.t
    [@@js.get "completion"]

  val set_completion : t -> CompletionClientCapabilities.t -> unit
    [@@js.set "completion"]

  val get_hover : t -> HoverClientCapabilities.t [@@js.get "hover"]

  val set_hover : t -> HoverClientCapabilities.t -> unit [@@js.set "hover"]

  val get_signature_help : t -> SignatureHelpClientCapabilities.t
    [@@js.get "signatureHelp"]

  val set_signature_help : t -> SignatureHelpClientCapabilities.t -> unit
    [@@js.set "signatureHelp"]

  val get_declaration : t -> DeclarationClientCapabilities.t
    [@@js.get "declaration"]

  val set_declaration : t -> DeclarationClientCapabilities.t -> unit
    [@@js.set "declaration"]

  val get_definition : t -> DefinitionClientCapabilities.t
    [@@js.get "definition"]

  val set_definition : t -> DefinitionClientCapabilities.t -> unit
    [@@js.set "definition"]

  val get_type_definition : t -> TypeDefinitionClientCapabilities.t
    [@@js.get "typeDefinition"]

  val set_type_definition : t -> TypeDefinitionClientCapabilities.t -> unit
    [@@js.set "typeDefinition"]

  val get_implementation : t -> ImplementationClientCapabilities.t
    [@@js.get "implementation"]

  val set_implementation : t -> ImplementationClientCapabilities.t -> unit
    [@@js.set "implementation"]

  val get_references : t -> ReferenceClientCapabilities.t
    [@@js.get "references"]

  val set_references : t -> ReferenceClientCapabilities.t -> unit
    [@@js.set "references"]

  val get_document_highlight : t -> DocumentHighlightClientCapabilities.t
    [@@js.get "documentHighlight"]

  val set_document_highlight
    :  t
    -> DocumentHighlightClientCapabilities.t
    -> unit
    [@@js.set "documentHighlight"]

  val get_document_symbol : t -> DocumentSymbolClientCapabilities.t
    [@@js.get "documentSymbol"]

  val set_document_symbol : t -> DocumentSymbolClientCapabilities.t -> unit
    [@@js.set "documentSymbol"]

  val get_code_action : t -> CodeActionClientCapabilities.t
    [@@js.get "codeAction"]

  val set_code_action : t -> CodeActionClientCapabilities.t -> unit
    [@@js.set "codeAction"]

  val get_code_lens : t -> CodeLensClientCapabilities.t [@@js.get "codeLens"]

  val set_code_lens : t -> CodeLensClientCapabilities.t -> unit
    [@@js.set "codeLens"]

  val get_document_link : t -> DocumentLinkClientCapabilities.t
    [@@js.get "documentLink"]

  val set_document_link : t -> DocumentLinkClientCapabilities.t -> unit
    [@@js.set "documentLink"]

  val get_color_provider : t -> DocumentColorClientCapabilities.t
    [@@js.get "colorProvider"]

  val set_color_provider : t -> DocumentColorClientCapabilities.t -> unit
    [@@js.set "colorProvider"]

  val get_formatting : t -> DocumentFormattingClientCapabilities.t
    [@@js.get "formatting"]

  val set_formatting : t -> DocumentFormattingClientCapabilities.t -> unit
    [@@js.set "formatting"]

  val get_range_formatting : t -> DocumentRangeFormattingClientCapabilities.t
    [@@js.get "rangeFormatting"]

  val set_range_formatting
    :  t
    -> DocumentRangeFormattingClientCapabilities.t
    -> unit
    [@@js.set "rangeFormatting"]

  val get_on_type_formatting : t -> DocumentOnTypeFormattingClientCapabilities.t
    [@@js.get "onTypeFormatting"]

  val set_on_type_formatting
    :  t
    -> DocumentOnTypeFormattingClientCapabilities.t
    -> unit
    [@@js.set "onTypeFormatting"]

  val get_rename : t -> RenameClientCapabilities.t [@@js.get "rename"]

  val set_rename : t -> RenameClientCapabilities.t -> unit [@@js.set "rename"]

  val get_folding_range : t -> FoldingRangeClientCapabilities.t
    [@@js.get "foldingRange"]

  val set_folding_range : t -> FoldingRangeClientCapabilities.t -> unit
    [@@js.set "foldingRange"]

  val get_selection_range : t -> SelectionRangeClientCapabilities.t
    [@@js.get "selectionRange"]

  val set_selection_range : t -> SelectionRangeClientCapabilities.t -> unit
    [@@js.set "selectionRange"]

  val get_publish_diagnostics : t -> PublishDiagnosticsClientCapabilities.t
    [@@js.get "publishDiagnostics"]

  val set_publish_diagnostics
    :  t
    -> PublishDiagnosticsClientCapabilities.t
    -> unit
    [@@js.set "publishDiagnostics"]

  val get_call_hierarchy : t -> CallHierarchyClientCapabilities.t
    [@@js.get "callHierarchy"]

  val set_call_hierarchy : t -> CallHierarchyClientCapabilities.t -> unit
    [@@js.set "callHierarchy"]

  val get_semantic_tokens : t -> SemanticTokensClientCapabilities.t
    [@@js.get "semanticTokens"]

  val set_semantic_tokens : t -> SemanticTokensClientCapabilities.t -> unit
    [@@js.set "semanticTokens"]

  val get_linked_editing_range : t -> LinkedEditingRangeClientCapabilities.t
    [@@js.get "linkedEditingRange"]

  val set_linked_editing_range
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_work_done_progress : t -> bool [@@js.get "workDoneProgress"]

  val set_work_done_progress : t -> bool -> unit [@@js.set "workDoneProgress"]

  val get_show_message : t -> ShowMessageRequestClientCapabilities.t
    [@@js.get "showMessage"]

  val set_show_message : t -> ShowMessageRequestClientCapabilities.t -> unit
    [@@js.set "showMessage"]

  val get_show_document : t -> ShowDocumentClientCapabilities.t
    [@@js.get "showDocument"]

  val set_show_document : t -> ShowDocumentClientCapabilities.t -> unit
    [@@js.set "showDocument"]
end
[@@js.scope "WindowClientCapabilities"]

module RegularExpressionsClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_engine : t -> string [@@js.get "engine"]

  val set_engine : t -> string -> unit [@@js.set "engine"]

  val get_version : t -> string [@@js.get "version"]

  val set_version : t -> string -> unit [@@js.set "version"]
end
[@@js.scope "RegularExpressionsClientCapabilities"]

module MarkdownClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_parser : t -> string [@@js.get "parser"]

  val set_parser : t -> string -> unit [@@js.set "parser"]

  val get_version : t -> string [@@js.get "version"]

  val set_version : t -> string -> unit [@@js.set "version"]
end
[@@js.scope "MarkdownClientCapabilities"]

module GeneralClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stale_request_support : t -> AnonymousInterface1.t
    [@@js.get "staleRequestSupport"]

  val set_stale_request_support : t -> AnonymousInterface1.t -> unit
    [@@js.set "staleRequestSupport"]

  val get_regular_expressions : t -> RegularExpressionsClientCapabilities.t
    [@@js.get "regularExpressions"]

  val set_regular_expressions
    :  t
    -> RegularExpressionsClientCapabilities.t
    -> unit
    [@@js.set "regularExpressions"]

  val get_markdown : t -> MarkdownClientCapabilities.t [@@js.get "markdown"]

  val set_markdown : t -> MarkdownClientCapabilities.t -> unit
    [@@js.set "markdown"]
end
[@@js.scope "GeneralClientCapabilities"]

module M_ClientCapabilities : sig
  type t =
    ( ClientCapabilities.t
    , WorkspaceFoldersClientCapabilities.t
    , ConfigurationClientCapabilities.t
    , WorkDoneProgressClientCapabilities.t )
    intersection4

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> WorkspaceClientCapabilities.t [@@js.get "workspace"]

  val set_workspace : t -> WorkspaceClientCapabilities.t -> unit
    [@@js.set "workspace"]

  val get_text_document : t -> TextDocumentClientCapabilities.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentClientCapabilities.t -> unit
    [@@js.set "textDocument"]

  val get_window : t -> WindowClientCapabilities.t [@@js.get "window"]

  val set_window : t -> WindowClientCapabilities.t -> unit [@@js.set "window"]

  val get_general : t -> GeneralClientCapabilities.t [@@js.get "general"]

  val set_general : t -> GeneralClientCapabilities.t -> unit
    [@@js.set "general"]

  val get_experimental : t -> untyped_object [@@js.get "experimental"]

  val set_experimental : t -> untyped_object -> unit [@@js.set "experimental"]
end
[@@js.scope "_ClientCapabilities"]

module ClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module StaticRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]
end
[@@js.scope "StaticRegistrationOptions"]

module StaticRegistrationOptions : sig
  val has_id : value:untyped_object -> bool [@@js.global "hasId"]
end
[@@js.scope "StaticRegistrationOptions"]

module TextDocumentRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_document_selector : t -> DocumentSelector.t or_null
    [@@js.get "documentSelector"]

  val set_document_selector : t -> DocumentSelector.t or_null -> unit
    [@@js.set "documentSelector"]
end
[@@js.scope "TextDocumentRegistrationOptions"]

module TextDocumentRegistrationOptions : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "TextDocumentRegistrationOptions"]

module SaveOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_include_text : t -> bool [@@js.get "includeText"]

  val set_include_text : t -> bool -> unit [@@js.set "includeText"]
end
[@@js.scope "SaveOptions"]

module WorkDoneProgressOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_work_done_progress : t -> bool [@@js.get "workDoneProgress"]

  val set_work_done_progress : t -> bool -> unit [@@js.set "workDoneProgress"]
end
[@@js.scope "WorkDoneProgressOptions"]

module WorkDoneProgressOptions : sig
  val is : value:any -> bool [@@js.global "is"]

  val has_work_done_progress : value:any -> bool
    [@@js.global "hasWorkDoneProgress"]
end
[@@js.scope "WorkDoneProgressOptions"]

module M_ServerCapabilities : sig
  type 'T t =
    ( 'T ServerCapabilities.t
    , WorkspaceFoldersServerCapabilities.t )
    intersection2

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = any t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_text_document_sync
    :  'T t
    -> ( (TextDocumentSyncKind.t, TextDocumentSyncOptions.t) union2
       , ([ `L_n_0 [@js 0] | `L_n_1 [@js 1] | `L_n_2 [@js 2] ][@js.enum]) )
       or_enum
    [@@js.get "textDocumentSync"]

  val set_text_document_sync
    :  'T t
    -> ( (TextDocumentSyncKind.t, TextDocumentSyncOptions.t) union2
       , ([ `L_n_0 | `L_n_1 | `L_n_2 ][@js.enum]) )
       or_enum
    -> unit
    [@@js.set "textDocumentSync"]

  val get_completion_provider : 'T t -> CompletionOptions.t
    [@@js.get "completionProvider"]

  val set_completion_provider : 'T t -> CompletionOptions.t -> unit
    [@@js.set "completionProvider"]

  val get_hover_provider : 'T t -> HoverOptions.t or_boolean
    [@@js.get "hoverProvider"]

  val set_hover_provider : 'T t -> HoverOptions.t or_boolean -> unit
    [@@js.set "hoverProvider"]

  val get_signature_help_provider : 'T t -> SignatureHelpOptions.t
    [@@js.get "signatureHelpProvider"]

  val set_signature_help_provider : 'T t -> SignatureHelpOptions.t -> unit
    [@@js.set "signatureHelpProvider"]

  val get_declaration_provider
    :  'T t
    -> (DeclarationOptions.t, DeclarationRegistrationOptions.t) union2
       or_boolean
    [@@js.get "declarationProvider"]

  val set_declaration_provider
    :  'T t
    -> (DeclarationOptions.t, DeclarationRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "declarationProvider"]

  val get_definition_provider : 'T t -> DefinitionOptions.t or_boolean
    [@@js.get "definitionProvider"]

  val set_definition_provider : 'T t -> DefinitionOptions.t or_boolean -> unit
    [@@js.set "definitionProvider"]

  val get_type_definition_provider
    :  'T t
    -> (TypeDefinitionOptions.t, TypeDefinitionRegistrationOptions.t) union2
       or_boolean
    [@@js.get "typeDefinitionProvider"]

  val set_type_definition_provider
    :  'T t
    -> (TypeDefinitionOptions.t, TypeDefinitionRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "typeDefinitionProvider"]

  val get_implementation_provider
    :  'T t
    -> (ImplementationOptions.t, ImplementationRegistrationOptions.t) union2
       or_boolean
    [@@js.get "implementationProvider"]

  val set_implementation_provider
    :  'T t
    -> (ImplementationOptions.t, ImplementationRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "implementationProvider"]

  val get_references_provider : 'T t -> ReferenceOptions.t or_boolean
    [@@js.get "referencesProvider"]

  val set_references_provider : 'T t -> ReferenceOptions.t or_boolean -> unit
    [@@js.set "referencesProvider"]

  val get_document_highlight_provider
    :  'T t
    -> DocumentHighlightOptions.t or_boolean
    [@@js.get "documentHighlightProvider"]

  val set_document_highlight_provider
    :  'T t
    -> DocumentHighlightOptions.t or_boolean
    -> unit
    [@@js.set "documentHighlightProvider"]

  val get_document_symbol_provider : 'T t -> DocumentSymbolOptions.t or_boolean
    [@@js.get "documentSymbolProvider"]

  val set_document_symbol_provider
    :  'T t
    -> DocumentSymbolOptions.t or_boolean
    -> unit
    [@@js.set "documentSymbolProvider"]

  val get_code_action_provider : 'T t -> CodeActionOptions.t or_boolean
    [@@js.get "codeActionProvider"]

  val set_code_action_provider : 'T t -> CodeActionOptions.t or_boolean -> unit
    [@@js.set "codeActionProvider"]

  val get_code_lens_provider : 'T t -> CodeLensOptions.t
    [@@js.get "codeLensProvider"]

  val set_code_lens_provider : 'T t -> CodeLensOptions.t -> unit
    [@@js.set "codeLensProvider"]

  val get_document_link_provider : 'T t -> DocumentLinkOptions.t
    [@@js.get "documentLinkProvider"]

  val set_document_link_provider : 'T t -> DocumentLinkOptions.t -> unit
    [@@js.set "documentLinkProvider"]

  val get_color_provider
    :  'T t
    -> (DocumentColorOptions.t, DocumentColorRegistrationOptions.t) union2
       or_boolean
    [@@js.get "colorProvider"]

  val set_color_provider
    :  'T t
    -> (DocumentColorOptions.t, DocumentColorRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "colorProvider"]

  val get_workspace_symbol_provider
    :  'T t
    -> WorkspaceSymbolOptions.t or_boolean
    [@@js.get "workspaceSymbolProvider"]

  val set_workspace_symbol_provider
    :  'T t
    -> WorkspaceSymbolOptions.t or_boolean
    -> unit
    [@@js.set "workspaceSymbolProvider"]

  val get_document_formatting_provider
    :  'T t
    -> DocumentFormattingOptions.t or_boolean
    [@@js.get "documentFormattingProvider"]

  val set_document_formatting_provider
    :  'T t
    -> DocumentFormattingOptions.t or_boolean
    -> unit
    [@@js.set "documentFormattingProvider"]

  val get_document_range_formatting_provider
    :  'T t
    -> DocumentRangeFormattingOptions.t or_boolean
    [@@js.get "documentRangeFormattingProvider"]

  val set_document_range_formatting_provider
    :  'T t
    -> DocumentRangeFormattingOptions.t or_boolean
    -> unit
    [@@js.set "documentRangeFormattingProvider"]

  val get_document_on_type_formatting_provider
    :  'T t
    -> DocumentOnTypeFormattingOptions.t
    [@@js.get "documentOnTypeFormattingProvider"]

  val set_document_on_type_formatting_provider
    :  'T t
    -> DocumentOnTypeFormattingOptions.t
    -> unit
    [@@js.set "documentOnTypeFormattingProvider"]

  val get_rename_provider : 'T t -> RenameOptions.t or_boolean
    [@@js.get "renameProvider"]

  val set_rename_provider : 'T t -> RenameOptions.t or_boolean -> unit
    [@@js.set "renameProvider"]

  val get_folding_range_provider
    :  'T t
    -> (FoldingRangeOptions.t, FoldingRangeRegistrationOptions.t) union2
       or_boolean
    [@@js.get "foldingRangeProvider"]

  val set_folding_range_provider
    :  'T t
    -> (FoldingRangeOptions.t, FoldingRangeRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "foldingRangeProvider"]

  val get_selection_range_provider
    :  'T t
    -> (SelectionRangeOptions.t, SelectionRangeRegistrationOptions.t) union2
       or_boolean
    [@@js.get "selectionRangeProvider"]

  val set_selection_range_provider
    :  'T t
    -> (SelectionRangeOptions.t, SelectionRangeRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "selectionRangeProvider"]

  val get_execute_command_provider : 'T t -> ExecuteCommandOptions.t
    [@@js.get "executeCommandProvider"]

  val set_execute_command_provider : 'T t -> ExecuteCommandOptions.t -> unit
    [@@js.set "executeCommandProvider"]

  val get_call_hierarchy_provider
    :  'T t
    -> (CallHierarchyOptions.t, CallHierarchyRegistrationOptions.t) union2
       or_boolean
    [@@js.get "callHierarchyProvider"]

  val set_call_hierarchy_provider
    :  'T t
    -> (CallHierarchyOptions.t, CallHierarchyRegistrationOptions.t) union2
       or_boolean
    -> unit
    [@@js.set "callHierarchyProvider"]

  val get_linked_editing_range_provider
    :  'T t
    -> ( LinkedEditingRangeOptions.t
       , LinkedEditingRangeRegistrationOptions.t )
       union2
       or_boolean
    [@@js.get "linkedEditingRangeProvider"]

  val set_linked_editing_range_provider
    :  'T t
    -> ( LinkedEditingRangeOptions.t
       , LinkedEditingRangeRegistrationOptions.t )
       union2
       or_boolean
    -> unit
    [@@js.set "linkedEditingRangeProvider"]

  val get_semantic_tokens_provider
    :  'T t
    -> (SemanticTokensOptions.t, SemanticTokensRegistrationOptions.t) union2
    [@@js.get "semanticTokensProvider"]

  val set_semantic_tokens_provider
    :  'T t
    -> (SemanticTokensOptions.t, SemanticTokensRegistrationOptions.t) union2
    -> unit
    [@@js.set "semanticTokensProvider"]

  val get_workspace : 'T t -> AnonymousInterface5.t [@@js.get "workspace"]

  val set_workspace : 'T t -> AnonymousInterface5.t -> unit
    [@@js.set "workspace"]

  val get_moniker_provider
    :  'T t
    -> (MonikerOptions.t, MonikerRegistrationOptions.t) union2 or_boolean
    [@@js.get "monikerProvider"]

  val set_moniker_provider
    :  'T t
    -> (MonikerOptions.t, MonikerRegistrationOptions.t) union2 or_boolean
    -> unit
    [@@js.set "monikerProvider"]

  val get_experimental : 'T t -> 'T [@@js.get "experimental"]

  val set_experimental : 'T t -> 'T -> unit [@@js.set "experimental"]
end
[@@js.scope "_ServerCapabilities"]

module ServerCapabilities : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = any t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0
end

module InitializeRequest : sig
  val type_
    : ( ( InitializeParams.t
        , WorkspaceFoldersInitializeParams.t
        , WorkDoneProgressParams.t )
        intersection3
      , any InitializeResult.t
      , never
      , InitializeError.t
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "InitializeRequest"]

module M_InitializeParams : sig
  type t =
    (InitializeParams.t, WorkspaceFoldersInitializeParams.t) intersection2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_process_id : t -> Integer.t or_null [@@js.get "processId"]

  val set_process_id : t -> Integer.t or_null -> unit [@@js.set "processId"]

  val get_client_info : t -> AnonymousInterface10.t [@@js.get "clientInfo"]

  val set_client_info : t -> AnonymousInterface10.t -> unit
    [@@js.set "clientInfo"]

  val get_locale : t -> string [@@js.get "locale"]

  val set_locale : t -> string -> unit [@@js.set "locale"]

  val get_root_path : t -> string or_null [@@js.get "rootPath"]

  val set_root_path : t -> string or_null -> unit [@@js.set "rootPath"]

  val get_root_uri : t -> DocumentUri.t or_null [@@js.get "rootUri"]

  val set_root_uri : t -> DocumentUri.t or_null -> unit [@@js.set "rootUri"]

  val get_capabilities : t -> ClientCapabilities.t [@@js.get "capabilities"]

  val set_capabilities : t -> ClientCapabilities.t -> unit
    [@@js.set "capabilities"]

  val get_initialization_options : t -> any [@@js.get "initializationOptions"]

  val set_initialization_options : t -> any -> unit
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

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end
end
[@@js.scope "_InitializeParams"]

module InitializeParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module InitializeResult : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = any t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_capabilities : 'T t -> 'T ServerCapabilities.t
    [@@js.get "capabilities"]

  val set_capabilities : 'T t -> 'T ServerCapabilities.t -> unit
    [@@js.set "capabilities"]

  val get_server_info : 'T t -> AnonymousInterface10.t [@@js.get "serverInfo"]

  val set_server_info : 'T t -> AnonymousInterface10.t -> unit
    [@@js.set "serverInfo"]

  val get : 'T t -> string -> any [@@js.index_get]

  val set : 'T t -> string -> any -> unit [@@js.index_set]
end
[@@js.scope "InitializeResult"]

module InitializeError : sig
  val unknown_protocol_version : ([ `L_n_1 [@js 1] ][@js.enum])
    [@@js.global "unknownProtocolVersion"]
end
[@@js.scope "InitializeError"]

module InitializeError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_retry : t -> bool [@@js.get "retry"]

  val set_retry : t -> bool -> unit [@@js.set "retry"]
end
[@@js.scope "InitializeError"]

module InitializedParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module InitializedNotification : sig
  val type_ : (InitializedParams.t, unit) ProtocolNotificationType.t
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DidChangeConfigurationClientCapabilities"]

module DidChangeConfigurationNotification : sig
  val type_
    : ( DidChangeConfigurationParams.t
      , DidChangeConfigurationRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidChangeConfigurationNotification"]

module DidChangeConfigurationRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_section : t -> string list or_string [@@js.get "section"]

  val set_section : t -> string list or_string -> unit [@@js.set "section"]
end
[@@js.scope "DidChangeConfigurationRegistrationOptions"]

module DidChangeConfigurationParams : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> MessageType.t [@@js.get "type"]

  val set_type : t -> MessageType.t -> unit [@@js.set "type"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]
end
[@@js.scope "ShowMessageParams"]

module ShowMessageNotification : sig
  val type_ : (ShowMessageParams.t, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "ShowMessageNotification"]

module ShowMessageRequestClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_message_action_item : t -> AnonymousInterface0.t
    [@@js.get "messageActionItem"]

  val set_message_action_item : t -> AnonymousInterface0.t -> unit
    [@@js.set "messageActionItem"]
end
[@@js.scope "ShowMessageRequestClientCapabilities"]

module MessageActionItem : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> MessageType.t [@@js.get "type"]

  val set_type : t -> MessageType.t -> unit [@@js.set "type"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_actions : t -> MessageActionItem.t list [@@js.get "actions"]

  val set_actions : t -> MessageActionItem.t list -> unit [@@js.set "actions"]
end
[@@js.scope "ShowMessageRequestParams"]

module ShowMessageRequest : sig
  val type_
    : ( ShowMessageRequestParams.t
      , MessageActionItem.t or_null
      , never
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ShowMessageRequest"]

module LogMessageNotification : sig
  val type_ : (LogMessageParams.t, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "LogMessageNotification"]

module LogMessageParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> MessageType.t [@@js.get "type"]

  val set_type : t -> MessageType.t -> unit [@@js.set "type"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]
end
[@@js.scope "LogMessageParams"]

module TelemetryEventNotification : sig
  val type_ : (any, unit) ProtocolNotificationType.t [@@js.global "type"]
end
[@@js.scope "TelemetryEventNotification"]

module TextDocumentSyncClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_will_save : t -> bool [@@js.get "willSave"]

  val set_will_save : t -> bool -> unit [@@js.set "willSave"]

  val get_will_save_wait_until : t -> bool [@@js.get "willSaveWaitUntil"]

  val set_will_save_wait_until : t -> bool -> unit
    [@@js.set "willSaveWaitUntil"]

  val get_did_save : t -> bool [@@js.get "didSave"]

  val set_did_save : t -> bool -> unit [@@js.set "didSave"]
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_open_close : t -> bool [@@js.get "openClose"]

  val set_open_close : t -> bool -> unit [@@js.set "openClose"]

  val get_change : t -> TextDocumentSyncKind.t [@@js.get "change"]

  val set_change : t -> TextDocumentSyncKind.t -> unit [@@js.set "change"]

  val get_will_save : t -> bool [@@js.get "willSave"]

  val set_will_save : t -> bool -> unit [@@js.set "willSave"]

  val get_will_save_wait_until : t -> bool [@@js.get "willSaveWaitUntil"]

  val set_will_save_wait_until : t -> bool -> unit
    [@@js.set "willSaveWaitUntil"]

  val get_save : t -> SaveOptions.t or_boolean [@@js.get "save"]

  val set_save : t -> SaveOptions.t or_boolean -> unit [@@js.set "save"]
end
[@@js.scope "TextDocumentSyncOptions"]

module DidOpenTextDocumentParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentItem.t [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentItem.t -> unit
    [@@js.set "textDocument"]
end
[@@js.scope "DidOpenTextDocumentParams"]

module DidOpenTextDocumentNotification : sig
  val method_
    : ([ `L_s16_textDocument_didOpen [@js "textDocument/didOpen"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( DidOpenTextDocumentParams.t
      , TextDocumentRegistrationOptions.t )
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
  val is_incremental : event:TextDocumentContentChangeEvent.t -> bool
    [@@js.global "isIncremental"]

  val is_full : event:TextDocumentContentChangeEvent.t -> bool
    [@@js.global "isFull"]
end
[@@js.scope "TextDocumentContentChangeEvent"]

module DidChangeTextDocumentParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> VersionedTextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> VersionedTextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_content_changes : t -> TextDocumentContentChangeEvent.t list
    [@@js.get "contentChanges"]

  val set_content_changes : t -> TextDocumentContentChangeEvent.t list -> unit
    [@@js.set "contentChanges"]
end
[@@js.scope "DidChangeTextDocumentParams"]

module TextDocumentChangeRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_sync_kind : t -> TextDocumentSyncKind.t [@@js.get "syncKind"]

  val set_sync_kind : t -> TextDocumentSyncKind.t -> unit [@@js.set "syncKind"]

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end
end
[@@js.scope "TextDocumentChangeRegistrationOptions"]

module DidChangeTextDocumentNotification : sig
  val method_
    : ([ `L_s14_textDocument_didChange [@js "textDocument/didChange"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DidChangeTextDocumentParams.t
      , TextDocumentChangeRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidChangeTextDocumentNotification"]

module DidCloseTextDocumentParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]
end
[@@js.scope "DidCloseTextDocumentParams"]

module DidCloseTextDocumentNotification : sig
  val method_
    : ([ `L_s15_textDocument_didClose [@js "textDocument/didClose"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( DidCloseTextDocumentParams.t
      , TextDocumentRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidCloseTextDocumentNotification"]

module DidSaveTextDocumentParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_text : t -> string [@@js.get "text"]

  val set_text : t -> string -> unit [@@js.set "text"]
end
[@@js.scope "DidSaveTextDocumentParams"]

module TextDocumentSaveRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> SaveOptions.t [@@js.cast]
end
[@@js.scope "TextDocumentSaveRegistrationOptions"]

module DidSaveTextDocumentNotification : sig
  val method_
    : ([ `L_s17_textDocument_didSave [@js "textDocument/didSave"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( DidSaveTextDocumentParams.t
      , TextDocumentSaveRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidSaveTextDocumentNotification"]

module TextDocumentSaveReason : sig
  val manual : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Manual"]

  val after_delay : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "AfterDelay"]

  val focus_out : ([ `L_n_3 [@js 3] ][@js.enum]) [@@js.global "FocusOut"]
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_reason : t -> TextDocumentSaveReason.t [@@js.get "reason"]

  val set_reason : t -> TextDocumentSaveReason.t -> unit [@@js.set "reason"]
end
[@@js.scope "WillSaveTextDocumentParams"]

module WillSaveTextDocumentNotification : sig
  val method_
    : ([ `L_s29_textDocument_willSave [@js "textDocument/willSave"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( WillSaveTextDocumentParams.t
      , TextDocumentRegistrationOptions.t )
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
    : ( WillSaveTextDocumentParams.t
      , TextEdit.t list or_null
      , never
      , unit
      , TextDocumentRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "WillSaveTextDocumentWaitUntilRequest"]

module DidChangeWatchedFilesClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DidChangeWatchedFilesClientCapabilities"]

module DidChangeWatchedFilesNotification : sig
  val type_
    : ( DidChangeWatchedFilesParams.t
      , DidChangeWatchedFilesRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "DidChangeWatchedFilesNotification"]

module DidChangeWatchedFilesParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_changes : t -> FileEvent.t list [@@js.get "changes"]

  val set_changes : t -> FileEvent.t list -> unit [@@js.set "changes"]
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_type : t -> FileChangeType.t [@@js.get "type"]

  val set_type : t -> FileChangeType.t -> unit [@@js.set "type"]
end
[@@js.scope "FileEvent"]

module DidChangeWatchedFilesRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_watchers : t -> FileSystemWatcher.t list [@@js.get "watchers"]

  val set_watchers : t -> FileSystemWatcher.t list -> unit [@@js.set "watchers"]
end
[@@js.scope "DidChangeWatchedFilesRegistrationOptions"]

module FileSystemWatcher : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_glob_pattern : t -> string [@@js.get "globPattern"]

  val set_glob_pattern : t -> string -> unit [@@js.set "globPattern"]

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_related_information : t -> bool [@@js.get "relatedInformation"]

  val set_related_information : t -> bool -> unit
    [@@js.set "relatedInformation"]

  val get_tag_support : t -> AnonymousInterface19.t [@@js.get "tagSupport"]

  val set_tag_support : t -> AnonymousInterface19.t -> unit
    [@@js.set "tagSupport"]

  val get_version_support : t -> bool [@@js.get "versionSupport"]

  val set_version_support : t -> bool -> unit [@@js.set "versionSupport"]

  val get_code_description_support : t -> bool
    [@@js.get "codeDescriptionSupport"]

  val set_code_description_support : t -> bool -> unit
    [@@js.set "codeDescriptionSupport"]

  val get_data_support : t -> bool [@@js.get "dataSupport"]

  val set_data_support : t -> bool -> unit [@@js.set "dataSupport"]
end
[@@js.scope "PublishDiagnosticsClientCapabilities"]

module PublishDiagnosticsParams : sig
  type t

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
  val type_ : (PublishDiagnosticsParams.t, unit) ProtocolNotificationType.t
    [@@js.global "type"]
end
[@@js.scope "PublishDiagnosticsNotification"]

module CompletionClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_completion_item : t -> AnonymousInterface14.t
    [@@js.get "completionItem"]

  val set_completion_item : t -> AnonymousInterface14.t -> unit
    [@@js.set "completionItem"]

  val get_completion_item_kind : t -> AnonymousInterface17.t
    [@@js.get "completionItemKind"]

  val set_completion_item_kind : t -> AnonymousInterface17.t -> unit
    [@@js.set "completionItemKind"]

  val get_insert_text_mode : t -> InsertTextMode.t [@@js.get "insertTextMode"]

  val set_insert_text_mode : t -> InsertTextMode.t -> unit
    [@@js.set "insertTextMode"]

  val get_context_support : t -> bool [@@js.get "contextSupport"]

  val set_context_support : t -> bool -> unit [@@js.set "contextSupport"]
end
[@@js.scope "CompletionClientCapabilities"]

module CompletionTriggerKind : sig
  val invoked : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Invoked"]

  val trigger_character : ([ `L_n_2 [@js 2] ][@js.enum])
    [@@js.global "TriggerCharacter"]

  val trigger_for_incomplete_completions : ([ `L_n_3 [@js 3] ][@js.enum])
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_trigger_kind : t -> CompletionTriggerKind.t [@@js.get "triggerKind"]

  val set_trigger_kind : t -> CompletionTriggerKind.t -> unit
    [@@js.set "triggerKind"]

  val get_trigger_character : t -> string [@@js.get "triggerCharacter"]

  val set_trigger_character : t -> string -> unit [@@js.set "triggerCharacter"]
end
[@@js.scope "CompletionContext"]

module CompletionParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_context : t -> CompletionContext.t [@@js.get "context"]

  val set_context : t -> CompletionContext.t -> unit [@@js.set "context"]

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CompletionParams"]

module CompletionOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_trigger_characters : t -> string list [@@js.get "triggerCharacters"]

  val set_trigger_characters : t -> string list -> unit
    [@@js.set "triggerCharacters"]

  val get_all_commit_characters : t -> string list
    [@@js.get "allCommitCharacters"]

  val set_all_commit_characters : t -> string list -> unit
    [@@js.set "allCommitCharacters"]

  val get_resolve_provider : t -> bool [@@js.get "resolveProvider"]

  val set_resolve_provider : t -> bool -> unit [@@js.set "resolveProvider"]

  val get_completion_item : t -> AnonymousInterface7.t
    [@@js.get "completionItem"]

  val set_completion_item : t -> AnonymousInterface7.t -> unit
    [@@js.set "completionItem"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "CompletionOptions"]

module CompletionRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> CompletionOptions.t [@@js.cast]
end
[@@js.scope "CompletionRegistrationOptions"]

module CompletionRequest : sig
  val method_
    : ([ `L_s12_textDocument_completion [@js "textDocument/completion"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CompletionParams.t
      , (CompletionList.t, CompletionItem.t) or_array or_null
      , CompletionItem.t list
      , unit
      , CompletionRegistrationOptions.t )
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_content_format : t -> MarkupKind.t list [@@js.get "contentFormat"]

  val set_content_format : t -> MarkupKind.t list -> unit
    [@@js.set "contentFormat"]
end
[@@js.scope "HoverClientCapabilities"]

module HoverOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "HoverOptions"]

module HoverParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]
end
[@@js.scope "HoverParams"]

module HoverRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> HoverOptions.t [@@js.cast]
end
[@@js.scope "HoverRegistrationOptions"]

module HoverRequest : sig
  val method_
    : ([ `L_s22_textDocument_hover [@js "textDocument/hover"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( HoverParams.t
      , Hover.t or_null
      , never
      , unit
      , HoverRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "HoverRequest"]

module SignatureHelpClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_signature_information : t -> AnonymousInterface4.t
    [@@js.get "signatureInformation"]

  val set_signature_information : t -> AnonymousInterface4.t -> unit
    [@@js.set "signatureInformation"]

  val get_context_support : t -> bool [@@js.get "contextSupport"]

  val set_context_support : t -> bool -> unit [@@js.set "contextSupport"]
end
[@@js.scope "SignatureHelpClientCapabilities"]

module SignatureHelpOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_trigger_characters : t -> string list [@@js.get "triggerCharacters"]

  val set_trigger_characters : t -> string list -> unit
    [@@js.set "triggerCharacters"]

  val get_retrigger_characters : t -> string list
    [@@js.get "retriggerCharacters"]

  val set_retrigger_characters : t -> string list -> unit
    [@@js.set "retriggerCharacters"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "SignatureHelpOptions"]

module SignatureHelpTriggerKind : sig
  val invoked : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "Invoked"]

  val trigger_character : ([ `L_n_2 [@js 2] ][@js.enum])
    [@@js.global "TriggerCharacter"]

  val content_change : ([ `L_n_3 [@js 3] ][@js.enum])
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_trigger_kind : t -> SignatureHelpTriggerKind.t
    [@@js.get "triggerKind"]

  val set_trigger_kind : t -> SignatureHelpTriggerKind.t -> unit
    [@@js.set "triggerKind"]

  val get_trigger_character : t -> string [@@js.get "triggerCharacter"]

  val set_trigger_character : t -> string -> unit [@@js.set "triggerCharacter"]

  val get_is_retrigger : t -> bool [@@js.get "isRetrigger"]

  val set_is_retrigger : t -> bool -> unit [@@js.set "isRetrigger"]

  val get_active_signature_help : t -> SignatureHelp.t
    [@@js.get "activeSignatureHelp"]

  val set_active_signature_help : t -> SignatureHelp.t -> unit
    [@@js.set "activeSignatureHelp"]
end
[@@js.scope "SignatureHelpContext"]

module SignatureHelpParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_context : t -> SignatureHelpContext.t [@@js.get "context"]

  val set_context : t -> SignatureHelpContext.t -> unit [@@js.set "context"]

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]
end
[@@js.scope "SignatureHelpParams"]

module SignatureHelpRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> SignatureHelpOptions.t [@@js.cast]
end
[@@js.scope "SignatureHelpRegistrationOptions"]

module SignatureHelpRequest : sig
  val method_
    : ([ `L_s28_textDocument_signatureHelp [@js "textDocument/signatureHelp"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( SignatureHelpParams.t
      , SignatureHelp.t or_null
      , never
      , unit
      , SignatureHelpRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "SignatureHelpRequest"]

module DefinitionClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_link_support : t -> bool [@@js.get "linkSupport"]

  val set_link_support : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "DefinitionClientCapabilities"]

module DefinitionOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DefinitionOptions"]

module DefinitionParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DefinitionParams"]

module DefinitionRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DefinitionOptions.t [@@js.cast]
end
[@@js.scope "DefinitionRegistrationOptions"]

module DefinitionRequest : sig
  val method_
    : ([ `L_s13_textDocument_definition [@js "textDocument/definition"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DefinitionParams.t
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , DefinitionRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DefinitionRequest"]

module ReferenceClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "ReferenceClientCapabilities"]

module ReferenceParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_context : t -> ReferenceContext.t [@@js.get "context"]

  val set_context : t -> ReferenceContext.t -> unit [@@js.set "context"]

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "ReferenceParams"]

module ReferenceOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "ReferenceOptions"]

module ReferenceRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> ReferenceOptions.t [@@js.cast]
end
[@@js.scope "ReferenceRegistrationOptions"]

module ReferencesRequest : sig
  val method_
    : ([ `L_s26_textDocument_references [@js "textDocument/references"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( ReferenceParams.t
      , Location.t list or_null
      , Location.t list
      , unit
      , ReferenceRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ReferencesRequest"]

module DocumentHighlightClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentHighlightClientCapabilities"]

module DocumentHighlightParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DocumentHighlightParams"]

module DocumentHighlightOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DocumentHighlightOptions"]

module DocumentHighlightRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DocumentHighlightOptions.t [@@js.cast]
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
    : ( DocumentHighlightParams.t
      , DocumentHighlight.t list or_null
      , DocumentHighlight.t list
      , unit
      , DocumentHighlightRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentHighlightRequest"]

module DocumentSymbolClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_symbol_kind : t -> AnonymousInterface21.t [@@js.get "symbolKind"]

  val set_symbol_kind : t -> AnonymousInterface21.t -> unit
    [@@js.set "symbolKind"]

  val get_hierarchical_document_symbol_support : t -> bool
    [@@js.get "hierarchicalDocumentSymbolSupport"]

  val set_hierarchical_document_symbol_support : t -> bool -> unit
    [@@js.set "hierarchicalDocumentSymbolSupport"]

  val get_tag_support : t -> AnonymousInterface22.t [@@js.get "tagSupport"]

  val set_tag_support : t -> AnonymousInterface22.t -> unit
    [@@js.set "tagSupport"]

  val get_label_support : t -> bool [@@js.get "labelSupport"]

  val set_label_support : t -> bool -> unit [@@js.set "labelSupport"]
end
[@@js.scope "DocumentSymbolClientCapabilities"]

module DocumentSymbolParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DocumentSymbolParams"]

module DocumentSymbolOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DocumentSymbolOptions"]

module DocumentSymbolRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DocumentSymbolOptions.t [@@js.cast]
end
[@@js.scope "DocumentSymbolRegistrationOptions"]

module DocumentSymbolRequest : sig
  val method_
    : ([ `L_s20_textDocument_documentSymbol [@js "textDocument/documentSymbol"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DocumentSymbolParams.t
      , (DocumentSymbol.t, SymbolInformation.t) union2 list or_null
      , (DocumentSymbol.t, SymbolInformation.t) union2 list
      , unit
      , DocumentSymbolRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentSymbolRequest"]

module CodeActionClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_code_action_literal_support : t -> AnonymousInterface2.t
    [@@js.get "codeActionLiteralSupport"]

  val set_code_action_literal_support : t -> AnonymousInterface2.t -> unit
    [@@js.set "codeActionLiteralSupport"]

  val get_is_preferred_support : t -> bool [@@js.get "isPreferredSupport"]

  val set_is_preferred_support : t -> bool -> unit
    [@@js.set "isPreferredSupport"]

  val get_disabled_support : t -> bool [@@js.get "disabledSupport"]

  val set_disabled_support : t -> bool -> unit [@@js.set "disabledSupport"]

  val get_data_support : t -> bool [@@js.get "dataSupport"]

  val set_data_support : t -> bool -> unit [@@js.set "dataSupport"]

  val get_resolve_support : t -> AnonymousInterface11.t
    [@@js.get "resolveSupport"]

  val set_resolve_support : t -> AnonymousInterface11.t -> unit
    [@@js.set "resolveSupport"]

  val get_honors_change_annotations : t -> bool
    [@@js.get "honorsChangeAnnotations"]

  val set_honors_change_annotations : t -> bool -> unit
    [@@js.set "honorsChangeAnnotations"]
end
[@@js.scope "CodeActionClientCapabilities"]

module CodeActionParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_context : t -> CodeActionContext.t [@@js.get "context"]

  val set_context : t -> CodeActionContext.t -> unit [@@js.set "context"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CodeActionParams"]

module CodeActionOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_code_action_kinds : t -> CodeActionKind.t list
    [@@js.get "codeActionKinds"]

  val set_code_action_kinds : t -> CodeActionKind.t list -> unit
    [@@js.set "codeActionKinds"]

  val get_resolve_provider : t -> bool [@@js.get "resolveProvider"]

  val set_resolve_provider : t -> bool -> unit [@@js.set "resolveProvider"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "CodeActionOptions"]

module CodeActionRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> CodeActionOptions.t [@@js.cast]
end
[@@js.scope "CodeActionRegistrationOptions"]

module CodeActionRequest : sig
  val method_
    : ([ `L_s10_textDocument_codeAction [@js "textDocument/codeAction"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CodeActionParams.t
      , (CodeAction.t, Command.t) union2 list or_null
      , (CodeAction.t, Command.t) union2 list
      , unit
      , CodeActionRegistrationOptions.t )
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_symbol_kind : t -> AnonymousInterface21.t [@@js.get "symbolKind"]

  val set_symbol_kind : t -> AnonymousInterface21.t -> unit
    [@@js.set "symbolKind"]

  val get_tag_support : t -> AnonymousInterface22.t [@@js.get "tagSupport"]

  val set_tag_support : t -> AnonymousInterface22.t -> unit
    [@@js.set "tagSupport"]
end
[@@js.scope "WorkspaceSymbolClientCapabilities"]

module WorkspaceSymbolParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_query : t -> string [@@js.get "query"]

  val set_query : t -> string -> unit [@@js.set "query"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "WorkspaceSymbolParams"]

module WorkspaceSymbolOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "WorkspaceSymbolOptions"]

module WorkspaceSymbolRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkspaceSymbolOptions
  end
end
[@@js.scope "WorkspaceSymbolRegistrationOptions"]

module WorkspaceSymbolRequest : sig
  val method_ : ([ `L_s35_workspace_symbol [@js "workspace/symbol"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( WorkspaceSymbolParams.t
      , SymbolInformation.t list or_null
      , SymbolInformation.t list
      , unit
      , WorkspaceSymbolRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "WorkspaceSymbolRequest"]

module CodeLensClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "CodeLensClientCapabilities"]

module CodeLensWorkspaceClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_refresh_support : t -> bool [@@js.get "refreshSupport"]

  val set_refresh_support : t -> bool -> unit [@@js.set "refreshSupport"]
end
[@@js.scope "CodeLensWorkspaceClientCapabilities"]

module CodeLensParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CodeLensParams"]

module CodeLensOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_resolve_provider : t -> bool [@@js.get "resolveProvider"]

  val set_resolve_provider : t -> bool -> unit [@@js.set "resolveProvider"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "CodeLensOptions"]

module CodeLensRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> CodeLensOptions.t [@@js.cast]
end
[@@js.scope "CodeLensRegistrationOptions"]

module CodeLensRequest : sig
  val method_
    : ([ `L_s11_textDocument_codeLens [@js "textDocument/codeLens"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( CodeLensParams.t
      , CodeLens.t list or_null
      , CodeLens.t list
      , unit
      , CodeLensRegistrationOptions.t )
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_tooltip_support : t -> bool [@@js.get "tooltipSupport"]

  val set_tooltip_support : t -> bool -> unit [@@js.set "tooltipSupport"]
end
[@@js.scope "DocumentLinkClientCapabilities"]

module DocumentLinkParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DocumentLinkParams"]

module DocumentLinkOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_resolve_provider : t -> bool [@@js.get "resolveProvider"]

  val set_resolve_provider : t -> bool -> unit [@@js.set "resolveProvider"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DocumentLinkOptions"]

module DocumentLinkRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DocumentLinkOptions.t [@@js.cast]
end
[@@js.scope "DocumentLinkRegistrationOptions"]

module DocumentLinkRequest : sig
  val method_
    : ([ `L_s19_textDocument_documentLink [@js "textDocument/documentLink"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DocumentLinkParams.t
      , DocumentLink.t list or_null
      , DocumentLink.t list
      , unit
      , DocumentLinkRegistrationOptions.t )
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentFormattingClientCapabilities"]

module DocumentFormattingParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_options : t -> FormattingOptions.t [@@js.get "options"]

  val set_options : t -> FormattingOptions.t -> unit [@@js.set "options"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end
end
[@@js.scope "DocumentFormattingParams"]

module DocumentFormattingOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DocumentFormattingOptions"]

module DocumentFormattingRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DocumentFormattingOptions.t [@@js.cast]
end
[@@js.scope "DocumentFormattingRegistrationOptions"]

module DocumentFormattingRequest : sig
  val method_
    : ([ `L_s21_textDocument_formatting [@js "textDocument/formatting"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DocumentFormattingParams.t
      , TextEdit.t list or_null
      , never
      , unit
      , DocumentFormattingRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentFormattingRequest"]

module DocumentRangeFormattingClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentRangeFormattingClientCapabilities"]

module DocumentRangeFormattingParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val get_options : t -> FormattingOptions.t [@@js.get "options"]

  val set_options : t -> FormattingOptions.t -> unit [@@js.set "options"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end
end
[@@js.scope "DocumentRangeFormattingParams"]

module DocumentRangeFormattingOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DocumentRangeFormattingOptions"]

module DocumentRangeFormattingRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DocumentRangeFormattingOptions.t [@@js.cast]
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
    : ( DocumentRangeFormattingParams.t
      , TextEdit.t list or_null
      , never
      , unit
      , DocumentRangeFormattingRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "DocumentRangeFormattingRequest"]

module DocumentOnTypeFormattingClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentOnTypeFormattingClientCapabilities"]

module DocumentOnTypeFormattingParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_first_trigger_character : t -> string
    [@@js.get "firstTriggerCharacter"]

  val set_first_trigger_character : t -> string -> unit
    [@@js.set "firstTriggerCharacter"]

  val get_more_trigger_character : t -> string list
    [@@js.get "moreTriggerCharacter"]

  val set_more_trigger_character : t -> string list -> unit
    [@@js.set "moreTriggerCharacter"]
end
[@@js.scope "DocumentOnTypeFormattingOptions"]

module DocumentOnTypeFormattingRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DocumentOnTypeFormattingOptions.t [@@js.cast]
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
    : ( DocumentOnTypeFormattingParams.t
      , TextEdit.t list or_null
      , never
      , unit
      , DocumentOnTypeFormattingRegistrationOptions.t )
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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_prepare_support : t -> bool [@@js.get "prepareSupport"]

  val set_prepare_support : t -> bool -> unit [@@js.set "prepareSupport"]

  val get_prepare_support_default_behavior
    :  t
    -> PrepareSupportDefaultBehavior.t
    [@@js.get "prepareSupportDefaultBehavior"]

  val set_prepare_support_default_behavior
    :  t
    -> PrepareSupportDefaultBehavior.t
    -> unit
    [@@js.set "prepareSupportDefaultBehavior"]

  val get_honors_change_annotations : t -> bool
    [@@js.get "honorsChangeAnnotations"]

  val set_honors_change_annotations : t -> bool -> unit
    [@@js.set "honorsChangeAnnotations"]
end
[@@js.scope "RenameClientCapabilities"]

module RenameParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_position : t -> Position.t [@@js.get "position"]

  val set_position : t -> Position.t -> unit [@@js.set "position"]

  val get_new_name : t -> string [@@js.get "newName"]

  val set_new_name : t -> string -> unit [@@js.set "newName"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end
end
[@@js.scope "RenameParams"]

module RenameOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prepare_provider : t -> bool [@@js.get "prepareProvider"]

  val set_prepare_provider : t -> bool -> unit [@@js.set "prepareProvider"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "RenameOptions"]

module RenameRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> RenameOptions.t [@@js.cast]
end
[@@js.scope "RenameRegistrationOptions"]

module RenameRequest : sig
  val method_
    : ([ `L_s27_textDocument_rename [@js "textDocument/rename"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( RenameParams.t
      , WorkspaceEdit.t or_null
      , never
      , unit
      , RenameRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "RenameRequest"]

module PrepareRenameParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]
end
[@@js.scope "PrepareRenameParams"]

module PrepareRenameRequest : sig
  val method_
    : ([ `L_s24_textDocument_prepareRename [@js "textDocument/prepareRename"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( PrepareRenameParams.t
      , (Range.t, AnonymousInterface3.t, AnonymousInterface12.t) union3 or_null
      , never
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "PrepareRenameRequest"]

module ExecuteCommandClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "ExecuteCommandClientCapabilities"]

module ExecuteCommandParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_command : t -> string [@@js.get "command"]

  val set_command : t -> string -> unit [@@js.set "command"]

  val get_arguments : t -> any list [@@js.get "arguments"]

  val set_arguments : t -> any list -> unit [@@js.set "arguments"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end
end
[@@js.scope "ExecuteCommandParams"]

module ExecuteCommandOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_commands : t -> string list [@@js.get "commands"]

  val set_commands : t -> string list -> unit [@@js.set "commands"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "ExecuteCommandOptions"]

module ExecuteCommandRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include ExecuteCommandOptions
  end
end
[@@js.scope "ExecuteCommandRegistrationOptions"]

module ExecuteCommandRequest : sig
  val type_
    : ( ExecuteCommandParams.t
      , any
      , never
      , unit
      , ExecuteCommandRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "ExecuteCommandRequest"]

module WorkspaceEditClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_document_changes : t -> bool [@@js.get "documentChanges"]

  val set_document_changes : t -> bool -> unit [@@js.set "documentChanges"]

  val get_resource_operations : t -> ResourceOperationKind.t list
    [@@js.get "resourceOperations"]

  val set_resource_operations : t -> ResourceOperationKind.t list -> unit
    [@@js.set "resourceOperations"]

  val get_failure_handling : t -> FailureHandlingKind.t
    [@@js.get "failureHandling"]

  val set_failure_handling : t -> FailureHandlingKind.t -> unit
    [@@js.set "failureHandling"]

  val get_normalizes_line_endings : t -> bool [@@js.get "normalizesLineEndings"]

  val set_normalizes_line_endings : t -> bool -> unit
    [@@js.set "normalizesLineEndings"]

  val get_change_annotation_support : t -> AnonymousInterface6.t
    [@@js.get "changeAnnotationSupport"]

  val set_change_annotation_support : t -> AnonymousInterface6.t -> unit
    [@@js.set "changeAnnotationSupport"]
end
[@@js.scope "WorkspaceEditClientCapabilities"]

module ApplyWorkspaceEditParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_label : t -> string [@@js.get "label"]

  val set_label : t -> string -> unit [@@js.set "label"]

  val get_edit : t -> WorkspaceEdit.t [@@js.get "edit"]

  val set_edit : t -> WorkspaceEdit.t -> unit [@@js.set "edit"]
end
[@@js.scope "ApplyWorkspaceEditParams"]

module ApplyWorkspaceEditResponse : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_applied : t -> bool [@@js.get "applied"]

  val set_applied : t -> bool -> unit [@@js.set "applied"]

  val get_failure_reason : t -> string [@@js.get "failureReason"]

  val set_failure_reason : t -> string -> unit [@@js.set "failureReason"]

  val get_failed_change : t -> Uinteger.t [@@js.get "failedChange"]

  val set_failed_change : t -> Uinteger.t -> unit [@@js.set "failedChange"]
end
[@@js.scope "ApplyWorkspaceEditResponse"]

module ApplyWorkspaceEditRequest : sig
  val type_
    : ( ApplyWorkspaceEditParams.t
      , ApplyWorkspaceEditResponse.t
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
