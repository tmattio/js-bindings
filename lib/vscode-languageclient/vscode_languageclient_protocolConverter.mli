[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _Converter = [ `Converter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _URIConverter = [ `URIConverter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as code from 'vscode'; *)
(* import * as ls from 'vscode-languageserver-protocol'; *)
(* import ProtocolCompletionItem from './protocolCompletionItem'; *)
module Converter : sig
  type t = _Converter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val asUri : t -> value:string -> Code.Uri.t [@@js.call "asUri"]

  val asDiagnostic : t -> diagnostic:Ls.Diagnostic.t -> Code.Diagnostic.t
    [@@js.call "asDiagnostic"]

  val asDiagnostics
    :  t
    -> diagnostics:Ls.Diagnostic.t list
    -> Code.Diagnostic.t list
    [@@js.call "asDiagnostics"]

  val asPosition : t -> value:never or_null_or_undefined -> never or_undefined
    [@@js.call "asPosition"]

  val asPosition' : t -> value:Ls.Position.t -> Code.Position.t
    [@@js.call "asPosition"]

  val asPosition''
    :  t
    -> value:Ls.Position.t or_null_or_undefined
    -> Code.Position.t or_undefined
    [@@js.call "asPosition"]

  val asRange : t -> value:never or_null_or_undefined -> never or_undefined
    [@@js.call "asRange"]

  val asRange' : t -> value:Ls.Range.t -> Code.Range.t [@@js.call "asRange"]

  val asRange''
    :  t
    -> value:Ls.Range.t or_null_or_undefined
    -> Code.Range.t or_undefined
    [@@js.call "asRange"]

  val asRanges : t -> values:Ls.Range.t list -> Code.Range.t list
    [@@js.call "asRanges"]

  val asDiagnosticSeverity
    :  t
    -> value:int or_null_or_undefined
    -> Code.DiagnosticSeverity.t
    [@@js.call "asDiagnosticSeverity"]

  val asDiagnosticTag
    :  t
    -> tag:Ls.DiagnosticTag.t
    -> Code.DiagnosticTag.t or_undefined
    [@@js.call "asDiagnosticTag"]

  val asHover : t -> hover:Ls.Hover.t -> Code.Hover.t [@@js.call "asHover"]

  val asHover' : t -> hover:never or_null_or_undefined -> never or_undefined
    [@@js.call "asHover"]

  val asHover''
    :  t
    -> hover:Ls.Hover.t or_null_or_undefined
    -> Code.Hover.t or_undefined
    [@@js.call "asHover"]

  val asCompletionResult
    :  t
    -> result:Ls.CompletionList.t
    -> Code.CompletionList.t
    [@@js.call "asCompletionResult"]

  val asCompletionResult'
    :  t
    -> result:Ls.CompletionItem.t list
    -> Code.CompletionItem.t list
    [@@js.call "asCompletionResult"]

  val asCompletionResult''
    :  t
    -> result:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCompletionResult"]

  val asCompletionResult'''
    :  t
    -> result:
         (Ls.CompletionList.t, Ls.CompletionItem.t) or_array
         or_null_or_undefined
    -> (Code.CompletionList.t, Code.CompletionItem.t) or_array or_undefined
    [@@js.call "asCompletionResult"]

  val asCompletionItem
    :  t
    -> item:Ls.CompletionItem.t
    -> ProtocolCompletionItem.t
    [@@js.call "asCompletionItem"]

  val asTextEdit : t -> edit:never or_null_or_undefined -> never or_undefined
    [@@js.call "asTextEdit"]

  val asTextEdit' : t -> edit:Ls.TextEdit.t -> Code.TextEdit.t
    [@@js.call "asTextEdit"]

  val asTextEdit''
    :  t
    -> edit:Ls.TextEdit.t or_null_or_undefined
    -> Code.TextEdit.t or_undefined
    [@@js.call "asTextEdit"]

  val asTextEdits : t -> items:Ls.TextEdit.t list -> Code.TextEdit.t list
    [@@js.call "asTextEdits"]

  val asTextEdits' : t -> items:never or_null_or_undefined -> never or_undefined
    [@@js.call "asTextEdits"]

  val asTextEdits''
    :  t
    -> items:Ls.TextEdit.t list or_null_or_undefined
    -> Code.TextEdit.t list or_undefined
    [@@js.call "asTextEdits"]

  val asSignatureHelp
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSignatureHelp"]

  val asSignatureHelp' : t -> item:Ls.SignatureHelp.t -> Code.SignatureHelp.t
    [@@js.call "asSignatureHelp"]

  val asSignatureHelp''
    :  t
    -> item:Ls.SignatureHelp.t or_null_or_undefined
    -> Code.SignatureHelp.t or_undefined
    [@@js.call "asSignatureHelp"]

  val asSignatureInformation
    :  t
    -> item:Ls.SignatureInformation.t
    -> Code.SignatureInformation.t
    [@@js.call "asSignatureInformation"]

  val asSignatureInformations
    :  t
    -> items:Ls.SignatureInformation.t list
    -> Code.SignatureInformation.t list
    [@@js.call "asSignatureInformations"]

  val asParameterInformation
    :  t
    -> item:Ls.ParameterInformation.t
    -> Code.ParameterInformation.t
    [@@js.call "asParameterInformation"]

  val asParameterInformations
    :  t
    -> item:Ls.ParameterInformation.t list
    -> Code.ParameterInformation.t list
    [@@js.call "asParameterInformations"]

  val asLocation : t -> item:Ls.Location.t -> Code.Location.t
    [@@js.call "asLocation"]

  val asLocation' : t -> item:never or_null_or_undefined -> never or_undefined
    [@@js.call "asLocation"]

  val asLocation''
    :  t
    -> item:Ls.Location.t or_null_or_undefined
    -> Code.Location.t or_undefined
    [@@js.call "asLocation"]

  val asDeclarationResult
    :  t
    -> item:Ls.Declaration.t
    -> (Code.Location.t, Code.Location.t) or_array
    [@@js.call "asDeclarationResult"]

  val asDeclarationResult'
    :  t
    -> item:Ls.DeclarationLink.t list
    -> Code.LocationLink.t list
    [@@js.call "asDeclarationResult"]

  val asDeclarationResult''
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDeclarationResult"]

  val asDeclarationResult'''
    :  t
    -> item:
         (Ls.Declaration.t, Ls.DeclarationLink.t) or_array or_null_or_undefined
    -> Code.Declaration.t or_undefined
    [@@js.call "asDeclarationResult"]

  val asDefinitionResult : t -> item:Ls.Definition.t -> Code.Definition.t
    [@@js.call "asDefinitionResult"]

  val asDefinitionResult'
    :  t
    -> item:Ls.DefinitionLink.t list
    -> Code.DefinitionLink.t list
    [@@js.call "asDefinitionResult"]

  val asDefinitionResult''
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDefinitionResult"]

  val asDefinitionResult'''
    :  t
    -> item:(Ls.Definition.t, Ls.DefinitionLink.t) or_array or_null_or_undefined
    -> (Code.Definition.t, Code.DefinitionLink.t) or_array or_undefined
    [@@js.call "asDefinitionResult"]

  val asReferences : t -> values:Ls.Location.t list -> Code.Location.t list
    [@@js.call "asReferences"]

  val asReferences'
    :  t
    -> values:never or_null_or_undefined
    -> Code.Location.t list or_undefined
    [@@js.call "asReferences"]

  val asReferences''
    :  t
    -> values:Ls.Location.t list or_null_or_undefined
    -> Code.Location.t list or_undefined
    [@@js.call "asReferences"]

  val asDocumentHighlightKind : t -> item:int -> Code.DocumentHighlightKind.t
    [@@js.call "asDocumentHighlightKind"]

  val asDocumentHighlight
    :  t
    -> item:Ls.DocumentHighlight.t
    -> Code.DocumentHighlight.t
    [@@js.call "asDocumentHighlight"]

  val asDocumentHighlights
    :  t
    -> values:Ls.DocumentHighlight.t list
    -> Code.DocumentHighlight.t list
    [@@js.call "asDocumentHighlights"]

  val asDocumentHighlights'
    :  t
    -> values:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDocumentHighlights"]

  val asDocumentHighlights''
    :  t
    -> values:Ls.DocumentHighlight.t list or_null_or_undefined
    -> Code.DocumentHighlight.t list or_undefined
    [@@js.call "asDocumentHighlights"]

  val asSymbolKind : t -> item:Ls.SymbolKind.t -> Code.SymbolKind.t
    [@@js.call "asSymbolKind"]

  val asSymbolTag : t -> item:Ls.SymbolTag.t -> Code.SymbolTag.t or_undefined
    [@@js.call "asSymbolTag"]

  val asSymbolTags : t -> items:never or_null_or_undefined -> never or_undefined
    [@@js.call "asSymbolTags"]

  val asSymbolTags' : t -> items:Ls.SymbolTag.t list -> Code.SymbolTag.t list
    [@@js.call "asSymbolTags"]

  val asSymbolTags''
    :  t
    -> items:Ls.SymbolTag.t list or_null_or_undefined
    -> Code.SymbolTag.t list or_undefined
    [@@js.call "asSymbolTags"]

  val asSymbolInformation
    :  t
    -> item:Ls.SymbolInformation.t
    -> ?uri:Code.Uri.t
    -> unit
    -> Code.SymbolInformation.t
    [@@js.call "asSymbolInformation"]

  val asSymbolInformations
    :  t
    -> values:Ls.SymbolInformation.t list
    -> ?uri:Code.Uri.t
    -> unit
    -> Code.SymbolInformation.t list
    [@@js.call "asSymbolInformations"]

  val asSymbolInformations'
    :  t
    -> values:never or_null_or_undefined
    -> ?uri:Code.Uri.t
    -> unit
    -> never or_undefined
    [@@js.call "asSymbolInformations"]

  val asSymbolInformations''
    :  t
    -> values:Ls.SymbolInformation.t list or_null_or_undefined
    -> ?uri:Code.Uri.t
    -> unit
    -> Code.SymbolInformation.t list or_undefined
    [@@js.call "asSymbolInformations"]

  val asDocumentSymbol : t -> value:Ls.DocumentSymbol.t -> Code.DocumentSymbol.t
    [@@js.call "asDocumentSymbol"]

  val asDocumentSymbols
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDocumentSymbols"]

  val asDocumentSymbols'
    :  t
    -> value:Ls.DocumentSymbol.t list
    -> Code.DocumentSymbol.t list
    [@@js.call "asDocumentSymbols"]

  val asDocumentSymbols''
    :  t
    -> value:Ls.DocumentSymbol.t list or_null_or_undefined
    -> Code.DocumentSymbol.t list or_undefined
    [@@js.call "asDocumentSymbols"]

  val asCommand : t -> item:Ls.Command.t -> Code.Command.t
    [@@js.call "asCommand"]

  val asCommands : t -> items:Ls.Command.t list -> Code.Command.t list
    [@@js.call "asCommands"]

  val asCommands' : t -> items:never or_null_or_undefined -> never or_undefined
    [@@js.call "asCommands"]

  val asCommands''
    :  t
    -> items:Ls.Command.t list or_null_or_undefined
    -> Code.Command.t list or_undefined
    [@@js.call "asCommands"]

  val asCodeAction : t -> item:Ls.CodeAction.t -> Code.CodeAction.t
    [@@js.call "asCodeAction"]

  val asCodeAction' : t -> item:never or_null_or_undefined -> never or_undefined
    [@@js.call "asCodeAction"]

  val asCodeAction''
    :  t
    -> item:Ls.CodeAction.t or_null_or_undefined
    -> Code.CodeAction.t or_undefined
    [@@js.call "asCodeAction"]

  val asCodeActionKind
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeActionKind"]

  val asCodeActionKind' : t -> item:Ls.CodeActionKind.t -> Code.CodeActionKind.t
    [@@js.call "asCodeActionKind"]

  val asCodeActionKind''
    :  t
    -> item:Ls.CodeActionKind.t or_null_or_undefined
    -> Code.CodeActionKind.t or_undefined
    [@@js.call "asCodeActionKind"]

  val asCodeActionKinds
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeActionKinds"]

  val asCodeActionKinds'
    :  t
    -> items:Ls.CodeActionKind.t list
    -> Code.CodeActionKind.t list
    [@@js.call "asCodeActionKinds"]

  val asCodeActionKinds''
    :  t
    -> item:Ls.CodeActionKind.t list or_null_or_undefined
    -> Code.CodeActionKind.t list or_undefined
    [@@js.call "asCodeActionKinds"]

  val asCodeLens : t -> item:Ls.CodeLens.t -> Code.CodeLens.t
    [@@js.call "asCodeLens"]

  val asCodeLens' : t -> item:never or_null_or_undefined -> never or_undefined
    [@@js.call "asCodeLens"]

  val asCodeLens''
    :  t
    -> item:Ls.CodeLens.t or_null_or_undefined
    -> Code.CodeLens.t or_undefined
    [@@js.call "asCodeLens"]

  val asCodeLenses : t -> items:Ls.CodeLens.t list -> Code.CodeLens.t list
    [@@js.call "asCodeLenses"]

  val asCodeLenses'
    :  t
    -> items:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asCodeLenses"]

  val asCodeLenses''
    :  t
    -> items:Ls.CodeLens.t list or_null_or_undefined
    -> Code.CodeLens.t list or_undefined
    [@@js.call "asCodeLenses"]

  val asWorkspaceEdit : t -> item:Ls.WorkspaceEdit.t -> Code.WorkspaceEdit.t
    [@@js.call "asWorkspaceEdit"]

  val asWorkspaceEdit'
    :  t
    -> item:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asWorkspaceEdit"]

  val asWorkspaceEdit''
    :  t
    -> item:Ls.WorkspaceEdit.t or_null_or_undefined
    -> Code.WorkspaceEdit.t or_undefined
    [@@js.call "asWorkspaceEdit"]

  val asDocumentLink : t -> item:Ls.DocumentLink.t -> Code.DocumentLink.t
    [@@js.call "asDocumentLink"]

  val asDocumentLinks
    :  t
    -> items:Ls.DocumentLink.t list
    -> Code.DocumentLink.t list
    [@@js.call "asDocumentLinks"]

  val asDocumentLinks'
    :  t
    -> items:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asDocumentLinks"]

  val asDocumentLinks''
    :  t
    -> items:Ls.DocumentLink.t list or_null_or_undefined
    -> Code.DocumentLink.t list or_undefined
    [@@js.call "asDocumentLinks"]

  val asColor : t -> color:Ls.Color.t -> Code.Color.t [@@js.call "asColor"]

  val asColorInformation
    :  t
    -> ci:Ls.ColorInformation.t
    -> Code.ColorInformation.t
    [@@js.call "asColorInformation"]

  val asColorInformations
    :  t
    -> colorPresentations:Ls.ColorInformation.t list
    -> Code.ColorInformation.t list
    [@@js.call "asColorInformations"]

  val asColorInformations'
    :  t
    -> colorPresentations:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asColorInformations"]

  val asColorInformations''
    :  t
    -> colorInformation:Ls.ColorInformation.t list or_null_or_undefined
    -> Code.ColorInformation.t list
    [@@js.call "asColorInformations"]

  val asColorPresentation
    :  t
    -> cp:Ls.ColorPresentation.t
    -> Code.ColorPresentation.t
    [@@js.call "asColorPresentation"]

  val asColorPresentations
    :  t
    -> colorPresentations:Ls.ColorPresentation.t list
    -> Code.ColorPresentation.t list
    [@@js.call "asColorPresentations"]

  val asColorPresentations'
    :  t
    -> colorPresentations:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asColorPresentations"]

  val asColorPresentations''
    :  t
    -> colorPresentations:Ls.ColorPresentation.t list or_null_or_undefined
    -> never or_undefined
    [@@js.call "asColorPresentations"]

  val asFoldingRangeKind
    :  t
    -> kind:string or_undefined
    -> Code.FoldingRangeKind.t or_undefined
    [@@js.call "asFoldingRangeKind"]

  val asFoldingRange : t -> r:Ls.FoldingRange.t -> Code.FoldingRange.t
    [@@js.call "asFoldingRange"]

  val asFoldingRanges
    :  t
    -> foldingRanges:Ls.FoldingRange.t list
    -> Code.FoldingRange.t list
    [@@js.call "asFoldingRanges"]

  val asFoldingRanges'
    :  t
    -> foldingRanges:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asFoldingRanges"]

  val asFoldingRanges''
    :  t
    -> foldingRanges:Ls.FoldingRange.t list or_null_or_undefined
    -> Code.FoldingRange.t list or_undefined
    [@@js.call "asFoldingRanges"]

  val asFoldingRanges'''
    :  t
    -> foldingRanges:Ls.FoldingRange.t list or_null_or_undefined
    -> Code.FoldingRange.t list or_undefined
    [@@js.call "asFoldingRanges"]

  val asSelectionRange
    :  t
    -> selectionRange:Ls.SelectionRange.t
    -> Code.SelectionRange.t
    [@@js.call "asSelectionRange"]

  val asSelectionRanges
    :  t
    -> selectionRanges:Ls.SelectionRange.t list
    -> Code.SelectionRange.t list
    [@@js.call "asSelectionRanges"]

  val asSelectionRanges'
    :  t
    -> selectionRanges:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSelectionRanges"]

  val asSelectionRanges''
    :  t
    -> selectionRanges:Ls.SelectionRange.t list or_null_or_undefined
    -> Code.SelectionRange.t list or_undefined
    [@@js.call "asSelectionRanges"]

  val asSelectionRanges'''
    :  t
    -> selectionRanges:Ls.SelectionRange.t list or_null_or_undefined
    -> Code.SelectionRange.t list or_undefined
    [@@js.call "asSelectionRanges"]

  val asSemanticTokensLegend
    :  t
    -> value:Ls.SemanticTokensLegend.t
    -> Code.SemanticTokensLegend.t
    [@@js.call "asSemanticTokensLegend"]

  val asSemanticTokens : t -> value:Ls.SemanticTokens.t -> Code.SemanticTokens.t
    [@@js.call "asSemanticTokens"]

  val asSemanticTokens'
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSemanticTokens"]

  val asSemanticTokens''
    :  t
    -> value:Ls.SemanticTokens.t or_null_or_undefined
    -> Code.SemanticTokens.t or_undefined
    [@@js.call "asSemanticTokens"]

  val asSemanticTokens'''
    :  t
    -> value:Ls.SemanticTokens.t or_null_or_undefined
    -> Code.SemanticTokens.t or_undefined
    [@@js.call "asSemanticTokens"]

  val asSemanticTokensEdit
    :  t
    -> value:Ls.SemanticTokensEdit.t
    -> Code.SemanticTokensEdit.t
    [@@js.call "asSemanticTokensEdit"]

  val asSemanticTokensEdits
    :  t
    -> value:Ls.SemanticTokensDelta.t
    -> Code.SemanticTokensEdits.t
    [@@js.call "asSemanticTokensEdits"]

  val asSemanticTokensEdits'
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asSemanticTokensEdits"]

  val asSemanticTokensEdits''
    :  t
    -> value:Ls.SemanticTokensDelta.t or_null_or_undefined
    -> Code.SemanticTokensEdits.t or_undefined
    [@@js.call "asSemanticTokensEdits"]

  val asSemanticTokensEdits'''
    :  t
    -> value:Ls.SemanticTokensDelta.t or_null_or_undefined
    -> Code.SemanticTokensEdits.t or_undefined
    [@@js.call "asSemanticTokensEdits"]

  val asCallHierarchyItem : t -> item:never or_null -> never or_undefined
    [@@js.call "asCallHierarchyItem"]

  val asCallHierarchyItem'
    :  t
    -> item:Ls.CallHierarchyItem.t
    -> Code.CallHierarchyItem.t
    [@@js.call "asCallHierarchyItem"]

  val asCallHierarchyItem''
    :  t
    -> item:Ls.CallHierarchyItem.t or_null
    -> Code.CallHierarchyItem.t or_undefined
    [@@js.call "asCallHierarchyItem"]

  val asCallHierarchyItem'''
    :  t
    -> item:Ls.CallHierarchyItem.t or_null
    -> Code.CallHierarchyItem.t or_undefined
    [@@js.call "asCallHierarchyItem"]

  val asCallHierarchyItems : t -> items:never or_null -> never or_undefined
    [@@js.call "asCallHierarchyItems"]

  val asCallHierarchyItems'
    :  t
    -> items:Ls.CallHierarchyItem.t list
    -> Code.CallHierarchyItem.t list
    [@@js.call "asCallHierarchyItems"]

  val asCallHierarchyItems''
    :  t
    -> items:Ls.CallHierarchyItem.t list or_null
    -> Code.CallHierarchyItem.t list or_undefined
    [@@js.call "asCallHierarchyItems"]

  val asCallHierarchyItems'''
    :  t
    -> items:Ls.CallHierarchyItem.t list or_null
    -> Code.CallHierarchyItem.t list or_undefined
    [@@js.call "asCallHierarchyItems"]

  val asCallHierarchyIncomingCall
    :  t
    -> item:Ls.CallHierarchyIncomingCall.t
    -> Code.CallHierarchyIncomingCall.t
    [@@js.call "asCallHierarchyIncomingCall"]

  val asCallHierarchyIncomingCalls
    :  t
    -> items:never or_null
    -> never or_undefined
    [@@js.call "asCallHierarchyIncomingCalls"]

  val asCallHierarchyIncomingCalls'
    :  t
    -> items:Ls.CallHierarchyIncomingCall.t list
    -> Code.CallHierarchyIncomingCall.t list
    [@@js.call "asCallHierarchyIncomingCalls"]

  val asCallHierarchyIncomingCalls''
    :  t
    -> items:Ls.CallHierarchyIncomingCall.t list or_null
    -> Code.CallHierarchyIncomingCall.t list or_undefined
    [@@js.call "asCallHierarchyIncomingCalls"]

  val asCallHierarchyIncomingCalls'''
    :  t
    -> items:Ls.CallHierarchyIncomingCall.t list or_null
    -> Code.CallHierarchyIncomingCall.t list or_undefined
    [@@js.call "asCallHierarchyIncomingCalls"]

  val asCallHierarchyOutgoingCall
    :  t
    -> item:Ls.CallHierarchyOutgoingCall.t
    -> Code.CallHierarchyOutgoingCall.t
    [@@js.call "asCallHierarchyOutgoingCall"]

  val asCallHierarchyOutgoingCalls
    :  t
    -> items:never or_null
    -> never or_undefined
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val asCallHierarchyOutgoingCalls'
    :  t
    -> items:Ls.CallHierarchyOutgoingCall.t list
    -> Code.CallHierarchyOutgoingCall.t list
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val asCallHierarchyOutgoingCalls''
    :  t
    -> items:Ls.CallHierarchyOutgoingCall.t list or_null
    -> Code.CallHierarchyOutgoingCall.t list or_undefined
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val asCallHierarchyOutgoingCalls'''
    :  t
    -> items:Ls.CallHierarchyOutgoingCall.t list or_null
    -> Code.CallHierarchyOutgoingCall.t list or_undefined
    [@@js.call "asCallHierarchyOutgoingCalls"]

  val asLinkedEditingRanges
    :  t
    -> value:never or_null_or_undefined
    -> never or_undefined
    [@@js.call "asLinkedEditingRanges"]

  val asLinkedEditingRanges'
    :  t
    -> value:Ls.LinkedEditingRanges.t
    -> Code.LinkedEditingRanges.t
    [@@js.call "asLinkedEditingRanges"]

  val asLinkedEditingRanges''
    :  t
    -> value:Ls.LinkedEditingRanges.t or_null_or_undefined
    -> Code.LinkedEditingRanges.t or_undefined
    [@@js.call "asLinkedEditingRanges"]
end
[@@js.scope "Converter"]

module URIConverter : sig
  type t = _URIConverter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> value:string -> Code.Uri.t [@@js.apply]
end
[@@js.scope "URIConverter"]

val createConverter
  :  uriConverter:_URIConverter or_undefined
  -> trustMarkdown:bool or_undefined
  -> _Converter
  [@@js.global "createConverter"]
