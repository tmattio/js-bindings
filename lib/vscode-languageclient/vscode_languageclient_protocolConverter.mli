[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as code from 'vscode'; *)
(* import * as ls from 'vscode-languageserver-protocol'; *)
(* import ProtocolCompletionItem from './protocolCompletionItem'; *)
module Converter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val as_uri : t -> value:string -> Code.Uri.t [@@js.call "asUri"]

  val as_diagnostic : t -> diagnostic:Ls.Diagnostic.t -> Code.Diagnostic.t
    [@@js.call "asDiagnostic"]

  val as_diagnostics
    :  t
    -> diagnostics:Ls.Diagnostic.t list
    -> Code.Diagnostic.t list
    [@@js.call "asDiagnostics"]

  val as_position : t -> value:never or_null_or_undefined -> never or_undefined
    [@@js.call "asPosition"]

  val as_position' : t -> value:Ls.Position.t -> Code.Position.t
    [@@js.call "asPosition"]

  val as_position''
    :  t
    -> value:Ls.Position.t or_null_or_undefined
    -> Code.Position.t or_undefined
    [@@js.call "asPosition"]

  val as_range : t -> value:never or_null_or_undefined -> never or_undefined
    [@@js.call "asRange"]

  val as_range' : t -> value:Ls.Range.t -> Code.Range.t [@@js.call "asRange"]

  val as_range''
    :  t
    -> value:Ls.Range.t or_null_or_undefined
    -> Code.Range.t or_undefined
    [@@js.call "asRange"]

  val as_ranges : t -> values:Ls.Range.t list -> Code.Range.t list
    [@@js.call "asRanges"]

  val as_diagnostic_severity
    :  t
    -> value:int or_null_or_undefined
    -> Code.DiagnosticSeverity.t
    [@@js.call "asDiagnosticSeverity"]

  val as_diagnostic_tag
    :  t
    -> tag:Ls.DiagnosticTag.t
    -> Code.DiagnosticTag.t or_undefined
    [@@js.call "asDiagnosticTag"]

  val as_hover : t -> hover:Ls.Hover.t -> Code.Hover.t [@@js.call "asHover"]

  val as_hover' : t -> hover:never or_null_or_undefined -> never or_undefined
    [@@js.call "asHover"]

  val as_hover''
    :  t
    -> hover:Ls.Hover.t or_null_or_undefined
    -> Code.Hover.t or_undefined
    [@@js.call "asHover"]

  val as_completion_result
    :  t
    -> result:Ls.CompletionList.t
    -> Code.CompletionList.t
    [@@js.call "asCompletionResult"]

  val as_completion_result'
    :  t
    -> result:Ls.CompletionItem.t list
    -> Code.CompletionItem.t list
    [@@js.call "asCompletionResult"]

  val as_completion_result''
    :  t
    -> result:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCompletionResult"]

  val as_completion_result'''
    :  t
    -> result:
         (Ls.CompletionList.t, Ls.CompletionItem.t) or_array
         or_null_or_undefined
    -> (Code.CompletionList.t, Code.CompletionItem.t) or_array or_undefined
    [@@js.call "asCompletionResult"]

  val as_completion_item
    :  t
    -> item:Ls.CompletionItem.t
    -> ProtocolCompletionItem.t
    [@@js.call "asCompletionItem"]

  val as_text_edit : t -> edit:never or_null_or_undefined -> never or_undefined
    [@@js.call "asTextEdit"]

  val as_text_edit' : t -> edit:Ls.TextEdit.t -> Code.TextEdit.t
    [@@js.call "asTextEdit"]

  val as_text_edit''
    :  t
    -> edit:Ls.TextEdit.t or_null_or_undefined
    -> Code.TextEdit.t or_undefined
    [@@js.call "asTextEdit"]

  val as_text_edits : t -> items:Ls.TextEdit.t list -> Code.TextEdit.t list
    [@@js.call "asTextEdits"]

  val as_text_edits'
    :  t
    -> items:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asTextEdits"]

  val as_text_edits''
    :  t
    -> items:Ls.TextEdit.t list or_null_or_undefined
    -> Code.TextEdit.t list or_undefined
    [@@js.call "asTextEdits"]

  val as_signature_help
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSignatureHelp"]

  val as_signature_help' : t -> item:Ls.SignatureHelp.t -> Code.SignatureHelp.t
    [@@js.call "asSignatureHelp"]

  val as_signature_help''
    :  t
    -> item:Ls.SignatureHelp.t or_null_or_undefined
    -> Code.SignatureHelp.t or_undefined
    [@@js.call "asSignatureHelp"]

  val as_signature_information
    :  t
    -> item:Ls.SignatureInformation.t
    -> Code.SignatureInformation.t
    [@@js.call "asSignatureInformation"]

  val as_signature_informations
    :  t
    -> items:Ls.SignatureInformation.t list
    -> Code.SignatureInformation.t list
    [@@js.call "asSignatureInformations"]

  val as_parameter_information
    :  t
    -> item:Ls.ParameterInformation.t
    -> Code.ParameterInformation.t
    [@@js.call "asParameterInformation"]

  val as_parameter_informations
    :  t
    -> item:Ls.ParameterInformation.t list
    -> Code.ParameterInformation.t list
    [@@js.call "asParameterInformations"]

  val as_location : t -> item:Ls.Location.t -> Code.Location.t
    [@@js.call "asLocation"]

  val as_location' : t -> item:never or_null_or_undefined -> never or_undefined
    [@@js.call "asLocation"]

  val as_location''
    :  t
    -> item:Ls.Location.t or_null_or_undefined
    -> Code.Location.t or_undefined
    [@@js.call "asLocation"]

  val as_declaration_result
    :  t
    -> item:Ls.Declaration.t
    -> (Code.Location.t, Code.Location.t) or_array
    [@@js.call "asDeclarationResult"]

  val as_declaration_result'
    :  t
    -> item:Ls.DeclarationLink.t list
    -> Code.LocationLink.t list
    [@@js.call "asDeclarationResult"]

  val as_declaration_result''
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDeclarationResult"]

  val as_declaration_result'''
    :  t
    -> item:
         (Ls.Declaration.t, Ls.DeclarationLink.t) or_array or_null_or_undefined
    -> Code.Declaration.t or_undefined
    [@@js.call "asDeclarationResult"]

  val as_definition_result : t -> item:Ls.Definition.t -> Code.Definition.t
    [@@js.call "asDefinitionResult"]

  val as_definition_result'
    :  t
    -> item:Ls.DefinitionLink.t list
    -> Code.DefinitionLink.t list
    [@@js.call "asDefinitionResult"]

  val as_definition_result''
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDefinitionResult"]

  val as_definition_result'''
    :  t
    -> item:(Ls.Definition.t, Ls.DefinitionLink.t) or_array or_null_or_undefined
    -> (Code.Definition.t, Code.DefinitionLink.t) or_array or_undefined
    [@@js.call "asDefinitionResult"]

  val as_references : t -> values:Ls.Location.t list -> Code.Location.t list
    [@@js.call "asReferences"]

  val as_references'
    :  t
    -> values:never or_null_or_undefined
    -> Code.Location.t list or_undefined
    [@@js.call "asReferences"]

  val as_references''
    :  t
    -> values:Ls.Location.t list or_null_or_undefined
    -> Code.Location.t list or_undefined
    [@@js.call "asReferences"]

  val as_document_highlight_kind : t -> item:int -> Code.DocumentHighlightKind.t
    [@@js.call "asDocumentHighlightKind"]

  val as_document_highlight
    :  t
    -> item:Ls.DocumentHighlight.t
    -> Code.DocumentHighlight.t
    [@@js.call "asDocumentHighlight"]

  val as_document_highlights
    :  t
    -> values:Ls.DocumentHighlight.t list
    -> Code.DocumentHighlight.t list
    [@@js.call "asDocumentHighlights"]

  val as_document_highlights'
    :  t
    -> values:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDocumentHighlights"]

  val as_document_highlights''
    :  t
    -> values:Ls.DocumentHighlight.t list or_null_or_undefined
    -> Code.DocumentHighlight.t list or_undefined
    [@@js.call "asDocumentHighlights"]

  val as_symbol_kind : t -> item:Ls.SymbolKind.t -> Code.SymbolKind.t
    [@@js.call "asSymbolKind"]

  val as_symbol_tag : t -> item:Ls.SymbolTag.t -> Code.SymbolTag.t or_undefined
    [@@js.call "asSymbolTag"]

  val as_symbol_tags
    :  t
    -> items:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSymbolTags"]

  val as_symbol_tags' : t -> items:Ls.SymbolTag.t list -> Code.SymbolTag.t list
    [@@js.call "asSymbolTags"]

  val as_symbol_tags''
    :  t
    -> items:Ls.SymbolTag.t list or_null_or_undefined
    -> Code.SymbolTag.t list or_undefined
    [@@js.call "asSymbolTags"]

  val as_symbol_information
    :  t
    -> item:Ls.SymbolInformation.t
    -> ?uri:Code.Uri.t
    -> unit
    -> Code.SymbolInformation.t
    [@@js.call "asSymbolInformation"]

  val as_symbol_informations
    :  t
    -> values:Ls.SymbolInformation.t list
    -> ?uri:Code.Uri.t
    -> unit
    -> Code.SymbolInformation.t list
    [@@js.call "asSymbolInformations"]

  val as_symbol_informations'
    :  t
    -> values:never or_null_or_undefined
    -> ?uri:Code.Uri.t
    -> unit
    -> never or_undefined
    [@@js.call "asSymbolInformations"]

  val as_symbol_informations''
    :  t
    -> values:Ls.SymbolInformation.t list or_null_or_undefined
    -> ?uri:Code.Uri.t
    -> unit
    -> Code.SymbolInformation.t list or_undefined
    [@@js.call "asSymbolInformations"]

  val as_document_symbol
    :  t
    -> value:Ls.DocumentSymbol.t
    -> Code.DocumentSymbol.t
    [@@js.call "asDocumentSymbol"]

  val as_document_symbols
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDocumentSymbols"]

  val as_document_symbols'
    :  t
    -> value:Ls.DocumentSymbol.t list
    -> Code.DocumentSymbol.t list
    [@@js.call "asDocumentSymbols"]

  val as_document_symbols''
    :  t
    -> value:Ls.DocumentSymbol.t list or_null_or_undefined
    -> Code.DocumentSymbol.t list or_undefined
    [@@js.call "asDocumentSymbols"]

  val as_command : t -> item:Ls.Command.t -> Code.Command.t
    [@@js.call "asCommand"]

  val as_commands : t -> items:Ls.Command.t list -> Code.Command.t list
    [@@js.call "asCommands"]

  val as_commands' : t -> items:never or_null_or_undefined -> never or_undefined
    [@@js.call "asCommands"]

  val as_commands''
    :  t
    -> items:Ls.Command.t list or_null_or_undefined
    -> Code.Command.t list or_undefined
    [@@js.call "asCommands"]

  val as_code_action : t -> item:Ls.CodeAction.t -> Code.CodeAction.t
    [@@js.call "asCodeAction"]

  val as_code_action'
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeAction"]

  val as_code_action''
    :  t
    -> item:Ls.CodeAction.t or_null_or_undefined
    -> Code.CodeAction.t or_undefined
    [@@js.call "asCodeAction"]

  val as_code_action_kind
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeActionKind"]

  val as_code_action_kind'
    :  t
    -> item:Ls.CodeActionKind.t
    -> Code.CodeActionKind.t
    [@@js.call "asCodeActionKind"]

  val as_code_action_kind''
    :  t
    -> item:Ls.CodeActionKind.t or_null_or_undefined
    -> Code.CodeActionKind.t or_undefined
    [@@js.call "asCodeActionKind"]

  val as_code_action_kinds
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeActionKinds"]

  val as_code_action_kinds'
    :  t
    -> items:Ls.CodeActionKind.t list
    -> Code.CodeActionKind.t list
    [@@js.call "asCodeActionKinds"]

  val as_code_action_kinds''
    :  t
    -> item:Ls.CodeActionKind.t list or_null_or_undefined
    -> Code.CodeActionKind.t list or_undefined
    [@@js.call "asCodeActionKinds"]

  val as_code_lens : t -> item:Ls.CodeLens.t -> Code.CodeLens.t
    [@@js.call "asCodeLens"]

  val as_code_lens' : t -> item:never or_null_or_undefined -> never or_undefined
    [@@js.call "asCodeLens"]

  val as_code_lens''
    :  t
    -> item:Ls.CodeLens.t or_null_or_undefined
    -> Code.CodeLens.t or_undefined
    [@@js.call "asCodeLens"]

  val as_code_lenses : t -> items:Ls.CodeLens.t list -> Code.CodeLens.t list
    [@@js.call "asCodeLenses"]

  val as_code_lenses'
    :  t
    -> items:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeLenses"]

  val as_code_lenses''
    :  t
    -> items:Ls.CodeLens.t list or_null_or_undefined
    -> Code.CodeLens.t list or_undefined
    [@@js.call "asCodeLenses"]

  val as_workspace_edit : t -> item:Ls.WorkspaceEdit.t -> Code.WorkspaceEdit.t
    [@@js.call "asWorkspaceEdit"]

  val as_workspace_edit'
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asWorkspaceEdit"]

  val as_workspace_edit''
    :  t
    -> item:Ls.WorkspaceEdit.t or_null_or_undefined
    -> Code.WorkspaceEdit.t or_undefined
    [@@js.call "asWorkspaceEdit"]

  val as_document_link : t -> item:Ls.DocumentLink.t -> Code.DocumentLink.t
    [@@js.call "asDocumentLink"]

  val as_document_links
    :  t
    -> items:Ls.DocumentLink.t list
    -> Code.DocumentLink.t list
    [@@js.call "asDocumentLinks"]

  val as_document_links'
    :  t
    -> items:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDocumentLinks"]

  val as_document_links''
    :  t
    -> items:Ls.DocumentLink.t list or_null_or_undefined
    -> Code.DocumentLink.t list or_undefined
    [@@js.call "asDocumentLinks"]

  val as_color : t -> color:Ls.Color.t -> Code.Color.t [@@js.call "asColor"]

  val as_color_information
    :  t
    -> ci:Ls.ColorInformation.t
    -> Code.ColorInformation.t
    [@@js.call "asColorInformation"]

  val as_color_informations
    :  t
    -> color_presentations:Ls.ColorInformation.t list
    -> Code.ColorInformation.t list
    [@@js.call "asColorInformations"]

  val as_color_informations'
    :  t
    -> color_presentations:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asColorInformations"]

  val as_color_informations''
    :  t
    -> color_information:Ls.ColorInformation.t list or_null_or_undefined
    -> Code.ColorInformation.t list
    [@@js.call "asColorInformations"]

  val as_color_presentation
    :  t
    -> cp:Ls.ColorPresentation.t
    -> Code.ColorPresentation.t
    [@@js.call "asColorPresentation"]

  val as_color_presentations
    :  t
    -> color_presentations:Ls.ColorPresentation.t list
    -> Code.ColorPresentation.t list
    [@@js.call "asColorPresentations"]

  val as_color_presentations'
    :  t
    -> color_presentations:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asColorPresentations"]

  val as_color_presentations''
    :  t
    -> color_presentations:Ls.ColorPresentation.t list or_null_or_undefined
    -> never or_undefined
    [@@js.call "asColorPresentations"]

  val as_folding_range_kind
    :  t
    -> kind:string or_undefined
    -> Code.FoldingRangeKind.t or_undefined
    [@@js.call "asFoldingRangeKind"]

  val as_folding_range : t -> r:Ls.FoldingRange.t -> Code.FoldingRange.t
    [@@js.call "asFoldingRange"]

  val as_folding_ranges
    :  t
    -> folding_ranges:Ls.FoldingRange.t list
    -> Code.FoldingRange.t list
    [@@js.call "asFoldingRanges"]

  val as_folding_ranges'
    :  t
    -> folding_ranges:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asFoldingRanges"]

  val as_folding_ranges''
    :  t
    -> folding_ranges:Ls.FoldingRange.t list or_null_or_undefined
    -> Code.FoldingRange.t list or_undefined
    [@@js.call "asFoldingRanges"]

  val as_folding_ranges'''
    :  t
    -> folding_ranges:Ls.FoldingRange.t list or_null_or_undefined
    -> Code.FoldingRange.t list or_undefined
    [@@js.call "asFoldingRanges"]

  val as_selection_range
    :  t
    -> selection_range:Ls.SelectionRange.t
    -> Code.SelectionRange.t
    [@@js.call "asSelectionRange"]

  val as_selection_ranges
    :  t
    -> selection_ranges:Ls.SelectionRange.t list
    -> Code.SelectionRange.t list
    [@@js.call "asSelectionRanges"]

  val as_selection_ranges'
    :  t
    -> selection_ranges:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSelectionRanges"]

  val as_selection_ranges''
    :  t
    -> selection_ranges:Ls.SelectionRange.t list or_null_or_undefined
    -> Code.SelectionRange.t list or_undefined
    [@@js.call "asSelectionRanges"]

  val as_selection_ranges'''
    :  t
    -> selection_ranges:Ls.SelectionRange.t list or_null_or_undefined
    -> Code.SelectionRange.t list or_undefined
    [@@js.call "asSelectionRanges"]

  val as_semantic_tokens_legend
    :  t
    -> value:Ls.SemanticTokensLegend.t
    -> Code.SemanticTokensLegend.t
    [@@js.call "asSemanticTokensLegend"]

  val as_semantic_tokens
    :  t
    -> value:Ls.SemanticTokens.t
    -> Code.SemanticTokens.t
    [@@js.call "asSemanticTokens"]

  val as_semantic_tokens'
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSemanticTokens"]

  val as_semantic_tokens''
    :  t
    -> value:Ls.SemanticTokens.t or_null_or_undefined
    -> Code.SemanticTokens.t or_undefined
    [@@js.call "asSemanticTokens"]

  val as_semantic_tokens'''
    :  t
    -> value:Ls.SemanticTokens.t or_null_or_undefined
    -> Code.SemanticTokens.t or_undefined
    [@@js.call "asSemanticTokens"]

  val as_semantic_tokens_edit
    :  t
    -> value:Ls.SemanticTokensEdit.t
    -> Code.SemanticTokensEdit.t
    [@@js.call "asSemanticTokensEdit"]

  val as_semantic_tokens_edits
    :  t
    -> value:Ls.SemanticTokensDelta.t
    -> Code.SemanticTokensEdits.t
    [@@js.call "asSemanticTokensEdits"]

  val as_semantic_tokens_edits'
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSemanticTokensEdits"]

  val as_semantic_tokens_edits''
    :  t
    -> value:Ls.SemanticTokensDelta.t or_null_or_undefined
    -> Code.SemanticTokensEdits.t or_undefined
    [@@js.call "asSemanticTokensEdits"]

  val as_semantic_tokens_edits'''
    :  t
    -> value:Ls.SemanticTokensDelta.t or_null_or_undefined
    -> Code.SemanticTokensEdits.t or_undefined
    [@@js.call "asSemanticTokensEdits"]

  val as_call_hierarchy_item : t -> item:never or_null -> never or_undefined
    [@@js.call "asCallHierarchyItem"]

  val as_call_hierarchy_item'
    :  t
    -> item:Ls.CallHierarchyItem.t
    -> Code.CallHierarchyItem.t
    [@@js.call "asCallHierarchyItem"]

  val as_call_hierarchy_item''
    :  t
    -> item:Ls.CallHierarchyItem.t or_null
    -> Code.CallHierarchyItem.t or_undefined
    [@@js.call "asCallHierarchyItem"]

  val as_call_hierarchy_item'''
    :  t
    -> item:Ls.CallHierarchyItem.t or_null
    -> Code.CallHierarchyItem.t or_undefined
    [@@js.call "asCallHierarchyItem"]

  val as_call_hierarchy_items : t -> items:never or_null -> never or_undefined
    [@@js.call "asCallHierarchyItems"]

  val as_call_hierarchy_items'
    :  t
    -> items:Ls.CallHierarchyItem.t list
    -> Code.CallHierarchyItem.t list
    [@@js.call "asCallHierarchyItems"]

  val as_call_hierarchy_items''
    :  t
    -> items:Ls.CallHierarchyItem.t list or_null
    -> Code.CallHierarchyItem.t list or_undefined
    [@@js.call "asCallHierarchyItems"]

  val as_call_hierarchy_items'''
    :  t
    -> items:Ls.CallHierarchyItem.t list or_null
    -> Code.CallHierarchyItem.t list or_undefined
    [@@js.call "asCallHierarchyItems"]

  val as_call_hierarchy_incoming_call
    :  t
    -> item:Ls.CallHierarchyIncomingCall.t
    -> Code.CallHierarchyIncomingCall.t
    [@@js.call "asCallHierarchyIncomingCall"]

  val as_call_hierarchy_incoming_calls
    :  t
    -> items:never or_null
    -> never or_undefined
    [@@js.call "asCallHierarchyIncomingCalls"]

  val as_call_hierarchy_incoming_calls'
    :  t
    -> items:Ls.CallHierarchyIncomingCall.t list
    -> Code.CallHierarchyIncomingCall.t list
    [@@js.call "asCallHierarchyIncomingCalls"]

  val as_call_hierarchy_incoming_calls''
    :  t
    -> items:Ls.CallHierarchyIncomingCall.t list or_null
    -> Code.CallHierarchyIncomingCall.t list or_undefined
    [@@js.call "asCallHierarchyIncomingCalls"]

  val as_call_hierarchy_incoming_calls'''
    :  t
    -> items:Ls.CallHierarchyIncomingCall.t list or_null
    -> Code.CallHierarchyIncomingCall.t list or_undefined
    [@@js.call "asCallHierarchyIncomingCalls"]

  val as_call_hierarchy_outgoing_call
    :  t
    -> item:Ls.CallHierarchyOutgoingCall.t
    -> Code.CallHierarchyOutgoingCall.t
    [@@js.call "asCallHierarchyOutgoingCall"]

  val as_call_hierarchy_outgoing_calls
    :  t
    -> items:never or_null
    -> never or_undefined
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val as_call_hierarchy_outgoing_calls'
    :  t
    -> items:Ls.CallHierarchyOutgoingCall.t list
    -> Code.CallHierarchyOutgoingCall.t list
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val as_call_hierarchy_outgoing_calls''
    :  t
    -> items:Ls.CallHierarchyOutgoingCall.t list or_null
    -> Code.CallHierarchyOutgoingCall.t list or_undefined
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val as_call_hierarchy_outgoing_calls'''
    :  t
    -> items:Ls.CallHierarchyOutgoingCall.t list or_null
    -> Code.CallHierarchyOutgoingCall.t list or_undefined
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val as_linked_editing_ranges
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asLinkedEditingRanges"]

  val as_linked_editing_ranges'
    :  t
    -> value:Ls.LinkedEditingRanges.t
    -> Code.LinkedEditingRanges.t
    [@@js.call "asLinkedEditingRanges"]

  val as_linked_editing_ranges''
    :  t
    -> value:Ls.LinkedEditingRanges.t or_null_or_undefined
    -> Code.LinkedEditingRanges.t or_undefined
    [@@js.call "asLinkedEditingRanges"]
end
[@@js.scope "Converter"]

module URIConverter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> value:string -> Code.Uri.t [@@js.apply]
end
[@@js.scope "URIConverter"]

val create_converter
  :  uri_converter:URIConverter.t or_undefined
  -> trust_markdown:bool or_undefined
  -> Converter.t
  [@@js.global "createConverter"]
