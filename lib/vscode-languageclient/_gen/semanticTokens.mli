[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - ClientCapabilities
  - DocumentSelector
  - SemanticTokensOptions
  - SemanticTokensRegistrationOptions
  - ServerCapabilities
  - TextDocumentFeature<T1, T2, T3>
  - vscode.CancellationToken
  - vscode.Disposable
  - vscode.DocumentRangeSemanticTokensProvider
  - vscode.DocumentSemanticTokensProvider
  - vscode.EventEmitter<T1>
  - vscode.ProviderResult<T1>
  - vscode.Range
  - vscode.SemanticTokens
  - vscode.SemanticTokensEdits
  - vscode.TextDocument
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ClientCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentSelector : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ServerCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentFeature : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module vscode : sig
    module CancellationToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentRangeSemanticTokensProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSemanticTokensProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EventEmitter : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProviderResult : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Range : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensEdits : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocument : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module BaseLanguageClient : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSelector : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentFeature : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module vscode : sig
      module CancellationToken : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Disposable : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentRangeSemanticTokensProvider : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentSemanticTokensProvider : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module EventEmitter : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module ProviderResult : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module Range : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokens : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module SemanticTokensEdits : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextDocument : sig
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
      type _DocumentRangeSemanticTokensSignature = [`DocumentRangeSemanticTokensSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentSemanticsTokensEditsSignature = [`DocumentSemanticsTokensEditsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentSemanticsTokensSignature = [`DocumentSemanticsTokensSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensFeature = [`SemanticTokensFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensMiddleware = [`SemanticTokensMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensProviders = [`SemanticTokensProviders] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import * as vscode from 'vscode'; *)
  (* import { BaseLanguageClient, TextDocumentFeature } from './client'; *)
  (* import { ClientCapabilities, ServerCapabilities, DocumentSelector, SemanticTokensOptions, SemanticTokensRegistrationOptions } from 'vscode-languageserver-protocol'; *)
  module[@js.scope "DocumentSemanticsTokensSignature"] DocumentSemanticsTokensSignature : sig
    type t = _DocumentSemanticsTokensSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:Vscode.TextDocument.t_0 -> token:Vscode.CancellationToken.t_0 -> Vscode.SemanticTokens.t_0 Vscode.ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "DocumentSemanticsTokensEditsSignature"] DocumentSemanticsTokensEditsSignature : sig
    type t = _DocumentSemanticsTokensEditsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:Vscode.TextDocument.t_0 -> previousResultId:string -> token:Vscode.CancellationToken.t_0 -> (Vscode.SemanticTokens.t_0, Vscode.SemanticTokensEdits.t_0) union2 Vscode.ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "DocumentRangeSemanticTokensSignature"] DocumentRangeSemanticTokensSignature : sig
    type t = _DocumentRangeSemanticTokensSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:Vscode.TextDocument.t_0 -> range:Vscode.Range.t_0 -> token:Vscode.CancellationToken.t_0 -> Vscode.SemanticTokens.t_0 Vscode.ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "SemanticTokensMiddleware"] SemanticTokensMiddleware : sig
    type t = _SemanticTokensMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val provideDocumentSemanticTokens: t -> this:unit -> document:Vscode.TextDocument.t_0 -> token:Vscode.CancellationToken.t_0 -> next:_DocumentSemanticsTokensSignature -> Vscode.SemanticTokens.t_0 Vscode.ProviderResult.t_1 [@@js.call "provideDocumentSemanticTokens"]
    val provideDocumentSemanticTokensEdits: t -> this:unit -> document:Vscode.TextDocument.t_0 -> previousResultId:string -> token:Vscode.CancellationToken.t_0 -> next:_DocumentSemanticsTokensEditsSignature -> (Vscode.SemanticTokens.t_0, Vscode.SemanticTokensEdits.t_0) union2 Vscode.ProviderResult.t_1 [@@js.call "provideDocumentSemanticTokensEdits"]
    val provideDocumentRangeSemanticTokens: t -> this:unit -> document:Vscode.TextDocument.t_0 -> range:Vscode.Range.t_0 -> token:Vscode.CancellationToken.t_0 -> next:_DocumentRangeSemanticTokensSignature -> Vscode.SemanticTokens.t_0 Vscode.ProviderResult.t_1 [@@js.call "provideDocumentRangeSemanticTokens"]
  end
  module[@js.scope "SemanticTokensProviders"] SemanticTokensProviders : sig
    type t = _SemanticTokensProviders
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_range: t -> Vscode.DocumentRangeSemanticTokensProvider.t_0 [@@js.get "range"]
    val set_range: t -> Vscode.DocumentRangeSemanticTokensProvider.t_0 -> unit [@@js.set "range"]
    val get_full: t -> Vscode.DocumentSemanticTokensProvider.t_0 [@@js.get "full"]
    val set_full: t -> Vscode.DocumentSemanticTokensProvider.t_0 -> unit [@@js.set "full"]
    val get_onDidChangeSemanticTokensEmitter: t -> unit Vscode.EventEmitter.t_1 [@@js.get "onDidChangeSemanticTokensEmitter"]
    val set_onDidChangeSemanticTokensEmitter: t -> unit Vscode.EventEmitter.t_1 -> unit [@@js.set "onDidChangeSemanticTokensEmitter"]
  end
  module[@js.scope "SemanticTokensFeature"] SemanticTokensFeature : sig
    type t = _SemanticTokensFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val fillClientCapabilities: t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val registerLanguageProvider: t -> options:SemanticTokensRegistrationOptions.t_0 -> (Vscode.Disposable.t_0 * _SemanticTokensProviders) [@@js.call "registerLanguageProvider"]
    val cast: t -> (SemanticTokensOptions.t_0 or_boolean, SemanticTokensRegistrationOptions.t_0, _SemanticTokensProviders) TextDocumentFeature.t_3 [@@js.cast]
  end
end
