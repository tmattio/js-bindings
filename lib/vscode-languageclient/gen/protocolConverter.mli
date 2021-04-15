[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - ProtocolCompletionItem
  - code.CallHierarchyIncomingCall
  - code.CallHierarchyItem
  - code.CallHierarchyOutgoingCall
  - code.CodeAction
  - code.CodeActionKind
  - code.CodeLens
  - code.Color
  - code.ColorInformation
  - code.ColorPresentation
  - code.Command
  - code.CompletionItem
  - code.CompletionList
  - code.Declaration
  - code.Definition
  - code.DefinitionLink
  - code.Diagnostic
  - code.DiagnosticSeverity
  - code.DiagnosticTag
  - code.DocumentHighlight
  - code.DocumentHighlightKind
  - code.DocumentLink
  - code.DocumentSymbol
  - code.FoldingRange
  - code.FoldingRangeKind
  - code.Hover
  - code.LinkedEditingRanges
  - code.Location
  - code.LocationLink
  - code.ParameterInformation
  - code.Position
  - code.Range
  - code.SelectionRange
  - code.SemanticTokens
  - code.SemanticTokensEdit
  - code.SemanticTokensEdits
  - code.SemanticTokensLegend
  - code.SignatureHelp
  - code.SignatureInformation
  - code.SymbolInformation
  - code.SymbolKind
  - code.SymbolTag
  - code.TextEdit
  - code.Uri
  - code.WorkspaceEdit
  - ls.CallHierarchyIncomingCall
  - ls.CallHierarchyItem
  - ls.CallHierarchyOutgoingCall
  - ls.CodeAction
  - ls.CodeActionKind
  - ls.CodeLens
  - ls.Color
  - ls.ColorInformation
  - ls.ColorPresentation
  - ls.Command
  - ls.CompletionItem
  - ls.CompletionList
  - ls.Declaration
  - ls.DeclarationLink
  - ls.Definition
  - ls.DefinitionLink
  - ls.Diagnostic
  - ls.DiagnosticTag
  - ls.DocumentHighlight
  - ls.DocumentLink
  - ls.DocumentSymbol
  - ls.FoldingRange
  - ls.Hover
  - ls.LinkedEditingRanges
  - ls.Location
  - ls.ParameterInformation
  - ls.Position
  - ls.Range
  - ls.SelectionRange
  - ls.SemanticTokens
  - ls.SemanticTokensDelta
  - ls.SemanticTokensEdit
  - ls.SemanticTokensLegend
  - ls.SignatureHelp
  - ls.SignatureInformation
  - ls.SymbolInformation
  - ls.SymbolKind
  - ls.SymbolTag
  - ls.TextEdit
  - ls.WorkspaceEdit
 *)
[@@@js.stop]
module type Missing = sig
  module ProtocolCompletionItem : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module code : sig
    module CallHierarchyIncomingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyOutgoingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeAction : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeActionKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeLens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Color : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorInformation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorPresentation : sig
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
    module CompletionList : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Declaration : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Definition : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DefinitionLink : sig
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
    module DocumentHighlight : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentHighlightKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSymbol : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRange : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRangeKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Hover : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRanges : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Location : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LocationLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ParameterInformation : sig
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
    module SelectionRange : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensEdits : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensLegend : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureHelp : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureInformation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolInformation : sig
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
    module WorkspaceEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module ls : sig
    module CallHierarchyIncomingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyOutgoingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeAction : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeActionKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CodeLens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Color : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorInformation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorPresentation : sig
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
    module CompletionList : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Declaration : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeclarationLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Definition : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DefinitionLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Diagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticTag : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentHighlight : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentLink : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSymbol : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRange : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Hover : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRanges : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Location : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ParameterInformation : sig
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
    module SelectionRange : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensDelta : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensLegend : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureHelp : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureInformation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolInformation : sig
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
    module TextEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module ProtocolCompletionItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module code : sig
      module CallHierarchyIncomingCall : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CallHierarchyItem : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CallHierarchyOutgoingCall : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeAction : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeActionKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeLens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Color : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ColorInformation : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ColorPresentation : sig
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
      module CompletionList : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Declaration : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Definition : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DefinitionLink : sig
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
      module DocumentHighlight : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentHighlightKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentSymbol : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FoldingRange : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FoldingRangeKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Hover : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LinkedEditingRanges : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Location : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LocationLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ParameterInformation : sig
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
      module SelectionRange : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensEdits : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensLegend : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SignatureHelp : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SignatureInformation : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SymbolInformation : sig
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
      module WorkspaceEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module ls : sig
      module CallHierarchyIncomingCall : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CallHierarchyItem : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CallHierarchyOutgoingCall : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeAction : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeActionKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CodeLens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Color : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ColorInformation : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ColorPresentation : sig
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
      module CompletionList : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Declaration : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DeclarationLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Definition : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DefinitionLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Diagnostic : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticTag : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentHighlight : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentLink : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentSymbol : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FoldingRange : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Hover : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LinkedEditingRanges : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Location : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ParameterInformation : sig
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
      module SelectionRange : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensDelta : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensLegend : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SignatureHelp : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SignatureInformation : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SymbolInformation : sig
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
      module TextEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WorkspaceEdit : sig
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
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _Converter = [`Converter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _URIConverter = [`URIConverter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import * as code from 'vscode'; *)
  (* import * as ls from 'vscode-languageserver-protocol'; *)
  (* import ProtocolCompletionItem from './protocolCompletionItem'; *)
  module[@js.scope "Converter"] Converter : sig
    type t = _Converter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val asUri: t -> value:string -> Code.Uri.t_0 [@@js.call "asUri"]
    val asDiagnostic: t -> diagnostic:Ls.Diagnostic.t_0 -> Code.Diagnostic.t_0 [@@js.call "asDiagnostic"]
    val asDiagnostics: t -> diagnostics:Ls.Diagnostic.t_0 list -> Code.Diagnostic.t_0 list [@@js.call "asDiagnostics"]
    val asPosition: t -> value:never or_null_or_undefined -> never or_undefined [@@js.call "asPosition"]
    val asPosition': t -> value:Ls.Position.t_0 -> Code.Position.t_0 [@@js.call "asPosition"]
    val asPosition'': t -> value:Ls.Position.t_0 or_null_or_undefined -> Code.Position.t_0 or_undefined [@@js.call "asPosition"]
    val asRange: t -> value:never or_null_or_undefined -> never or_undefined [@@js.call "asRange"]
    val asRange': t -> value:Ls.Range.t_0 -> Code.Range.t_0 [@@js.call "asRange"]
    val asRange'': t -> value:Ls.Range.t_0 or_null_or_undefined -> Code.Range.t_0 or_undefined [@@js.call "asRange"]
    val asRanges: t -> values:Ls.Range.t_0 list -> Code.Range.t_0 list [@@js.call "asRanges"]
    val asDiagnosticSeverity: t -> value:float or_null_or_undefined -> Code.DiagnosticSeverity.t_0 [@@js.call "asDiagnosticSeverity"]
    val asDiagnosticTag: t -> tag:Ls.DiagnosticTag.t_0 -> Code.DiagnosticTag.t_0 or_undefined [@@js.call "asDiagnosticTag"]
    val asHover: t -> hover:Ls.Hover.t_0 -> Code.Hover.t_0 [@@js.call "asHover"]
    val asHover': t -> hover:never or_null_or_undefined -> never or_undefined [@@js.call "asHover"]
    val asHover'': t -> hover:Ls.Hover.t_0 or_null_or_undefined -> Code.Hover.t_0 or_undefined [@@js.call "asHover"]
    val asCompletionResult: t -> result:Ls.CompletionList.t_0 -> Code.CompletionList.t_0 [@@js.call "asCompletionResult"]
    val asCompletionResult': t -> result:Ls.CompletionItem.t_0 list -> Code.CompletionItem.t_0 list [@@js.call "asCompletionResult"]
    val asCompletionResult'': t -> result:never or_null_or_undefined -> never or_undefined [@@js.call "asCompletionResult"]
    val asCompletionResult''': t -> result:(Ls.CompletionList.t_0, Ls.CompletionItem.t_0) or_array or_null_or_undefined -> (Code.CompletionList.t_0, Code.CompletionItem.t_0) or_array or_undefined [@@js.call "asCompletionResult"]
    val asCompletionItem: t -> item:Ls.CompletionItem.t_0 -> ProtocolCompletionItem.t_0 [@@js.call "asCompletionItem"]
    val asTextEdit: t -> edit:never or_null_or_undefined -> never or_undefined [@@js.call "asTextEdit"]
    val asTextEdit': t -> edit:Ls.TextEdit.t_0 -> Code.TextEdit.t_0 [@@js.call "asTextEdit"]
    val asTextEdit'': t -> edit:Ls.TextEdit.t_0 or_null_or_undefined -> Code.TextEdit.t_0 or_undefined [@@js.call "asTextEdit"]
    val asTextEdits: t -> items:Ls.TextEdit.t_0 list -> Code.TextEdit.t_0 list [@@js.call "asTextEdits"]
    val asTextEdits': t -> items:never or_null_or_undefined -> never or_undefined [@@js.call "asTextEdits"]
    val asTextEdits'': t -> items:Ls.TextEdit.t_0 list or_null_or_undefined -> Code.TextEdit.t_0 list or_undefined [@@js.call "asTextEdits"]
    val asSignatureHelp: t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asSignatureHelp"]
    val asSignatureHelp': t -> item:Ls.SignatureHelp.t_0 -> Code.SignatureHelp.t_0 [@@js.call "asSignatureHelp"]
    val asSignatureHelp'': t -> item:Ls.SignatureHelp.t_0 or_null_or_undefined -> Code.SignatureHelp.t_0 or_undefined [@@js.call "asSignatureHelp"]
    val asSignatureInformation: t -> item:Ls.SignatureInformation.t_0 -> Code.SignatureInformation.t_0 [@@js.call "asSignatureInformation"]
    val asSignatureInformations: t -> items:Ls.SignatureInformation.t_0 list -> Code.SignatureInformation.t_0 list [@@js.call "asSignatureInformations"]
    val asParameterInformation: t -> item:Ls.ParameterInformation.t_0 -> Code.ParameterInformation.t_0 [@@js.call "asParameterInformation"]
    val asParameterInformations: t -> item:Ls.ParameterInformation.t_0 list -> Code.ParameterInformation.t_0 list [@@js.call "asParameterInformations"]
    val asLocation: t -> item:Ls.Location.t_0 -> Code.Location.t_0 [@@js.call "asLocation"]
    val asLocation': t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asLocation"]
    val asLocation'': t -> item:Ls.Location.t_0 or_null_or_undefined -> Code.Location.t_0 or_undefined [@@js.call "asLocation"]
    val asDeclarationResult: t -> item:Ls.Declaration.t_0 -> (Code.Location.t_0, Code.Location.t_0) or_array [@@js.call "asDeclarationResult"]
    val asDeclarationResult': t -> item:Ls.DeclarationLink.t_0 list -> Code.LocationLink.t_0 list [@@js.call "asDeclarationResult"]
    val asDeclarationResult'': t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asDeclarationResult"]
    val asDeclarationResult''': t -> item:(Ls.Declaration.t_0, Ls.DeclarationLink.t_0) or_array or_null_or_undefined -> Code.Declaration.t_0 or_undefined [@@js.call "asDeclarationResult"]
    val asDefinitionResult: t -> item:Ls.Definition.t_0 -> Code.Definition.t_0 [@@js.call "asDefinitionResult"]
    val asDefinitionResult': t -> item:Ls.DefinitionLink.t_0 list -> Code.DefinitionLink.t_0 list [@@js.call "asDefinitionResult"]
    val asDefinitionResult'': t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asDefinitionResult"]
    val asDefinitionResult''': t -> item:(Ls.Definition.t_0, Ls.DefinitionLink.t_0) or_array or_null_or_undefined -> (Code.Definition.t_0, Code.DefinitionLink.t_0) or_array or_undefined [@@js.call "asDefinitionResult"]
    val asReferences: t -> values:Ls.Location.t_0 list -> Code.Location.t_0 list [@@js.call "asReferences"]
    val asReferences': t -> values:never or_null_or_undefined -> Code.Location.t_0 list or_undefined [@@js.call "asReferences"]
    val asReferences'': t -> values:Ls.Location.t_0 list or_null_or_undefined -> Code.Location.t_0 list or_undefined [@@js.call "asReferences"]
    val asDocumentHighlightKind: t -> item:float -> Code.DocumentHighlightKind.t_0 [@@js.call "asDocumentHighlightKind"]
    val asDocumentHighlight: t -> item:Ls.DocumentHighlight.t_0 -> Code.DocumentHighlight.t_0 [@@js.call "asDocumentHighlight"]
    val asDocumentHighlights: t -> values:Ls.DocumentHighlight.t_0 list -> Code.DocumentHighlight.t_0 list [@@js.call "asDocumentHighlights"]
    val asDocumentHighlights': t -> values:never or_null_or_undefined -> never or_undefined [@@js.call "asDocumentHighlights"]
    val asDocumentHighlights'': t -> values:Ls.DocumentHighlight.t_0 list or_null_or_undefined -> Code.DocumentHighlight.t_0 list or_undefined [@@js.call "asDocumentHighlights"]
    val asSymbolKind: t -> item:Ls.SymbolKind.t_0 -> Code.SymbolKind.t_0 [@@js.call "asSymbolKind"]
    val asSymbolTag: t -> item:Ls.SymbolTag.t_0 -> Code.SymbolTag.t_0 or_undefined [@@js.call "asSymbolTag"]
    val asSymbolTags: t -> items:never or_null_or_undefined -> never or_undefined [@@js.call "asSymbolTags"]
    val asSymbolTags': t -> items:Ls.SymbolTag.t_0 list -> Code.SymbolTag.t_0 list [@@js.call "asSymbolTags"]
    val asSymbolTags'': t -> items:Ls.SymbolTag.t_0 list or_null_or_undefined -> Code.SymbolTag.t_0 list or_undefined [@@js.call "asSymbolTags"]
    val asSymbolInformation: t -> item:Ls.SymbolInformation.t_0 -> ?uri:Code.Uri.t_0 -> unit -> Code.SymbolInformation.t_0 [@@js.call "asSymbolInformation"]
    val asSymbolInformations: t -> values:Ls.SymbolInformation.t_0 list -> ?uri:Code.Uri.t_0 -> unit -> Code.SymbolInformation.t_0 list [@@js.call "asSymbolInformations"]
    val asSymbolInformations': t -> values:never or_null_or_undefined -> ?uri:Code.Uri.t_0 -> unit -> never or_undefined [@@js.call "asSymbolInformations"]
    val asSymbolInformations'': t -> values:Ls.SymbolInformation.t_0 list or_null_or_undefined -> ?uri:Code.Uri.t_0 -> unit -> Code.SymbolInformation.t_0 list or_undefined [@@js.call "asSymbolInformations"]
    val asDocumentSymbol: t -> value:Ls.DocumentSymbol.t_0 -> Code.DocumentSymbol.t_0 [@@js.call "asDocumentSymbol"]
    val asDocumentSymbols: t -> value:never or_null_or_undefined -> never or_undefined [@@js.call "asDocumentSymbols"]
    val asDocumentSymbols': t -> value:Ls.DocumentSymbol.t_0 list -> Code.DocumentSymbol.t_0 list [@@js.call "asDocumentSymbols"]
    val asDocumentSymbols'': t -> value:Ls.DocumentSymbol.t_0 list or_null_or_undefined -> Code.DocumentSymbol.t_0 list or_undefined [@@js.call "asDocumentSymbols"]
    val asCommand: t -> item:Ls.Command.t_0 -> Code.Command.t_0 [@@js.call "asCommand"]
    val asCommands: t -> items:Ls.Command.t_0 list -> Code.Command.t_0 list [@@js.call "asCommands"]
    val asCommands': t -> items:never or_null_or_undefined -> never or_undefined [@@js.call "asCommands"]
    val asCommands'': t -> items:Ls.Command.t_0 list or_null_or_undefined -> Code.Command.t_0 list or_undefined [@@js.call "asCommands"]
    val asCodeAction: t -> item:Ls.CodeAction.t_0 -> Code.CodeAction.t_0 [@@js.call "asCodeAction"]
    val asCodeAction': t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asCodeAction"]
    val asCodeAction'': t -> item:Ls.CodeAction.t_0 or_null_or_undefined -> Code.CodeAction.t_0 or_undefined [@@js.call "asCodeAction"]
    val asCodeActionKind: t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asCodeActionKind"]
    val asCodeActionKind': t -> item:Ls.CodeActionKind.t_0 -> Code.CodeActionKind.t_0 [@@js.call "asCodeActionKind"]
    val asCodeActionKind'': t -> item:Ls.CodeActionKind.t_0 or_null_or_undefined -> Code.CodeActionKind.t_0 or_undefined [@@js.call "asCodeActionKind"]
    val asCodeActionKinds: t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asCodeActionKinds"]
    val asCodeActionKinds': t -> items:Ls.CodeActionKind.t_0 list -> Code.CodeActionKind.t_0 list [@@js.call "asCodeActionKinds"]
    val asCodeActionKinds'': t -> item:Ls.CodeActionKind.t_0 list or_null_or_undefined -> Code.CodeActionKind.t_0 list or_undefined [@@js.call "asCodeActionKinds"]
    val asCodeLens: t -> item:Ls.CodeLens.t_0 -> Code.CodeLens.t_0 [@@js.call "asCodeLens"]
    val asCodeLens': t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asCodeLens"]
    val asCodeLens'': t -> item:Ls.CodeLens.t_0 or_null_or_undefined -> Code.CodeLens.t_0 or_undefined [@@js.call "asCodeLens"]
    val asCodeLenses: t -> items:Ls.CodeLens.t_0 list -> Code.CodeLens.t_0 list [@@js.call "asCodeLenses"]
    val asCodeLenses': t -> items:never or_null_or_undefined -> never or_undefined [@@js.call "asCodeLenses"]
    val asCodeLenses'': t -> items:Ls.CodeLens.t_0 list or_null_or_undefined -> Code.CodeLens.t_0 list or_undefined [@@js.call "asCodeLenses"]
    val asWorkspaceEdit: t -> item:Ls.WorkspaceEdit.t_0 -> Code.WorkspaceEdit.t_0 [@@js.call "asWorkspaceEdit"]
    val asWorkspaceEdit': t -> item:never or_null_or_undefined -> never or_undefined [@@js.call "asWorkspaceEdit"]
    val asWorkspaceEdit'': t -> item:Ls.WorkspaceEdit.t_0 or_null_or_undefined -> Code.WorkspaceEdit.t_0 or_undefined [@@js.call "asWorkspaceEdit"]
    val asDocumentLink: t -> item:Ls.DocumentLink.t_0 -> Code.DocumentLink.t_0 [@@js.call "asDocumentLink"]
    val asDocumentLinks: t -> items:Ls.DocumentLink.t_0 list -> Code.DocumentLink.t_0 list [@@js.call "asDocumentLinks"]
    val asDocumentLinks': t -> items:never or_null_or_undefined -> never or_undefined [@@js.call "asDocumentLinks"]
    val asDocumentLinks'': t -> items:Ls.DocumentLink.t_0 list or_null_or_undefined -> Code.DocumentLink.t_0 list or_undefined [@@js.call "asDocumentLinks"]
    val asColor: t -> color:Ls.Color.t_0 -> Code.Color.t_0 [@@js.call "asColor"]
    val asColorInformation: t -> ci:Ls.ColorInformation.t_0 -> Code.ColorInformation.t_0 [@@js.call "asColorInformation"]
    val asColorInformations: t -> colorPresentations:Ls.ColorInformation.t_0 list -> Code.ColorInformation.t_0 list [@@js.call "asColorInformations"]
    val asColorInformations': t -> colorPresentations:never or_null_or_undefined -> never or_undefined [@@js.call "asColorInformations"]
    val asColorInformations'': t -> colorInformation:Ls.ColorInformation.t_0 list or_null_or_undefined -> Code.ColorInformation.t_0 list [@@js.call "asColorInformations"]
    val asColorPresentation: t -> cp:Ls.ColorPresentation.t_0 -> Code.ColorPresentation.t_0 [@@js.call "asColorPresentation"]
    val asColorPresentations: t -> colorPresentations:Ls.ColorPresentation.t_0 list -> Code.ColorPresentation.t_0 list [@@js.call "asColorPresentations"]
    val asColorPresentations': t -> colorPresentations:never or_null_or_undefined -> never or_undefined [@@js.call "asColorPresentations"]
    val asColorPresentations'': t -> colorPresentations:Ls.ColorPresentation.t_0 list or_null_or_undefined -> never or_undefined [@@js.call "asColorPresentations"]
    val asFoldingRangeKind: t -> kind:string or_undefined -> Code.FoldingRangeKind.t_0 or_undefined [@@js.call "asFoldingRangeKind"]
    val asFoldingRange: t -> r:Ls.FoldingRange.t_0 -> Code.FoldingRange.t_0 [@@js.call "asFoldingRange"]
    val asFoldingRanges: t -> foldingRanges:Ls.FoldingRange.t_0 list -> Code.FoldingRange.t_0 list [@@js.call "asFoldingRanges"]
    val asFoldingRanges': t -> foldingRanges:never or_null_or_undefined -> never or_undefined [@@js.call "asFoldingRanges"]
    val asFoldingRanges'': t -> foldingRanges:Ls.FoldingRange.t_0 list or_null_or_undefined -> Code.FoldingRange.t_0 list or_undefined [@@js.call "asFoldingRanges"]
    val asFoldingRanges''': t -> foldingRanges:Ls.FoldingRange.t_0 list or_null_or_undefined -> Code.FoldingRange.t_0 list or_undefined [@@js.call "asFoldingRanges"]
    val asSelectionRange: t -> selectionRange:Ls.SelectionRange.t_0 -> Code.SelectionRange.t_0 [@@js.call "asSelectionRange"]
    val asSelectionRanges: t -> selectionRanges:Ls.SelectionRange.t_0 list -> Code.SelectionRange.t_0 list [@@js.call "asSelectionRanges"]
    val asSelectionRanges': t -> selectionRanges:never or_null_or_undefined -> never or_undefined [@@js.call "asSelectionRanges"]
    val asSelectionRanges'': t -> selectionRanges:Ls.SelectionRange.t_0 list or_null_or_undefined -> Code.SelectionRange.t_0 list or_undefined [@@js.call "asSelectionRanges"]
    val asSelectionRanges''': t -> selectionRanges:Ls.SelectionRange.t_0 list or_null_or_undefined -> Code.SelectionRange.t_0 list or_undefined [@@js.call "asSelectionRanges"]
    val asSemanticTokensLegend: t -> value:Ls.SemanticTokensLegend.t_0 -> Code.SemanticTokensLegend.t_0 [@@js.call "asSemanticTokensLegend"]
    val asSemanticTokens: t -> value:Ls.SemanticTokens.t_0 -> Code.SemanticTokens.t_0 [@@js.call "asSemanticTokens"]
    val asSemanticTokens': t -> value:never or_null_or_undefined -> never or_undefined [@@js.call "asSemanticTokens"]
    val asSemanticTokens'': t -> value:Ls.SemanticTokens.t_0 or_null_or_undefined -> Code.SemanticTokens.t_0 or_undefined [@@js.call "asSemanticTokens"]
    val asSemanticTokens''': t -> value:Ls.SemanticTokens.t_0 or_null_or_undefined -> Code.SemanticTokens.t_0 or_undefined [@@js.call "asSemanticTokens"]
    val asSemanticTokensEdit: t -> value:Ls.SemanticTokensEdit.t_0 -> Code.SemanticTokensEdit.t_0 [@@js.call "asSemanticTokensEdit"]
    val asSemanticTokensEdits: t -> value:Ls.SemanticTokensDelta.t_0 -> Code.SemanticTokensEdits.t_0 [@@js.call "asSemanticTokensEdits"]
    val asSemanticTokensEdits': t -> value:never or_null_or_undefined -> never or_undefined [@@js.call "asSemanticTokensEdits"]
    val asSemanticTokensEdits'': t -> value:Ls.SemanticTokensDelta.t_0 or_null_or_undefined -> Code.SemanticTokensEdits.t_0 or_undefined [@@js.call "asSemanticTokensEdits"]
    val asSemanticTokensEdits''': t -> value:Ls.SemanticTokensDelta.t_0 or_null_or_undefined -> Code.SemanticTokensEdits.t_0 or_undefined [@@js.call "asSemanticTokensEdits"]
    val asCallHierarchyItem: t -> item:never or_null -> never or_undefined [@@js.call "asCallHierarchyItem"]
    val asCallHierarchyItem': t -> item:Ls.CallHierarchyItem.t_0 -> Code.CallHierarchyItem.t_0 [@@js.call "asCallHierarchyItem"]
    val asCallHierarchyItem'': t -> item:Ls.CallHierarchyItem.t_0 or_null -> Code.CallHierarchyItem.t_0 or_undefined [@@js.call "asCallHierarchyItem"]
    val asCallHierarchyItem''': t -> item:Ls.CallHierarchyItem.t_0 or_null -> Code.CallHierarchyItem.t_0 or_undefined [@@js.call "asCallHierarchyItem"]
    val asCallHierarchyItems: t -> items:never or_null -> never or_undefined [@@js.call "asCallHierarchyItems"]
    val asCallHierarchyItems': t -> items:Ls.CallHierarchyItem.t_0 list -> Code.CallHierarchyItem.t_0 list [@@js.call "asCallHierarchyItems"]
    val asCallHierarchyItems'': t -> items:Ls.CallHierarchyItem.t_0 list or_null -> Code.CallHierarchyItem.t_0 list or_undefined [@@js.call "asCallHierarchyItems"]
    val asCallHierarchyItems''': t -> items:Ls.CallHierarchyItem.t_0 list or_null -> Code.CallHierarchyItem.t_0 list or_undefined [@@js.call "asCallHierarchyItems"]
    val asCallHierarchyIncomingCall: t -> item:Ls.CallHierarchyIncomingCall.t_0 -> Code.CallHierarchyIncomingCall.t_0 [@@js.call "asCallHierarchyIncomingCall"]
    val asCallHierarchyIncomingCalls: t -> items:never or_null -> never or_undefined [@@js.call "asCallHierarchyIncomingCalls"]
    val asCallHierarchyIncomingCalls': t -> items:Ls.CallHierarchyIncomingCall.t_0 list -> Code.CallHierarchyIncomingCall.t_0 list [@@js.call "asCallHierarchyIncomingCalls"]
    val asCallHierarchyIncomingCalls'': t -> items:Ls.CallHierarchyIncomingCall.t_0 list or_null -> Code.CallHierarchyIncomingCall.t_0 list or_undefined [@@js.call "asCallHierarchyIncomingCalls"]
    val asCallHierarchyIncomingCalls''': t -> items:Ls.CallHierarchyIncomingCall.t_0 list or_null -> Code.CallHierarchyIncomingCall.t_0 list or_undefined [@@js.call "asCallHierarchyIncomingCalls"]
    val asCallHierarchyOutgoingCall: t -> item:Ls.CallHierarchyOutgoingCall.t_0 -> Code.CallHierarchyOutgoingCall.t_0 [@@js.call "asCallHierarchyOutgoingCall"]
    val asCallHierarchyOutgoingCalls: t -> items:never or_null -> never or_undefined [@@js.call "asCallHierarchyOutgoingCalls"]
    val asCallHierarchyOutgoingCalls': t -> items:Ls.CallHierarchyOutgoingCall.t_0 list -> Code.CallHierarchyOutgoingCall.t_0 list [@@js.call "asCallHierarchyOutgoingCalls"]
    val asCallHierarchyOutgoingCalls'': t -> items:Ls.CallHierarchyOutgoingCall.t_0 list or_null -> Code.CallHierarchyOutgoingCall.t_0 list or_undefined [@@js.call "asCallHierarchyOutgoingCalls"]
    val asCallHierarchyOutgoingCalls''': t -> items:Ls.CallHierarchyOutgoingCall.t_0 list or_null -> Code.CallHierarchyOutgoingCall.t_0 list or_undefined [@@js.call "asCallHierarchyOutgoingCalls"]
    val asLinkedEditingRanges: t -> value:never or_null_or_undefined -> never or_undefined [@@js.call "asLinkedEditingRanges"]
    val asLinkedEditingRanges': t -> value:Ls.LinkedEditingRanges.t_0 -> Code.LinkedEditingRanges.t_0 [@@js.call "asLinkedEditingRanges"]
    val asLinkedEditingRanges'': t -> value:Ls.LinkedEditingRanges.t_0 or_null_or_undefined -> Code.LinkedEditingRanges.t_0 or_undefined [@@js.call "asLinkedEditingRanges"]
  end
  module[@js.scope "URIConverter"] URIConverter : sig
    type t = _URIConverter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> value:string -> Code.Uri.t_0 [@@js.apply]
  end
  val createConverter: uriConverter:_URIConverter or_undefined -> trustMarkdown:bool or_undefined -> _Converter [@@js.global "createConverter"]
end
