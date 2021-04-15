[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _DocumentRangeSemanticTokensSignature =
      [ `DocumentRangeSemanticTokensSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentSemanticsTokensEditsSignature =
      [ `DocumentSemanticsTokensEditsSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentSemanticsTokensSignature =
      [ `DocumentSemanticsTokensSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokensFeature = [ `SemanticTokensFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokensMiddleware = [ `SemanticTokensMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SemanticTokensProviders = [ `SemanticTokensProviders ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as vscode from 'vscode'; *)
(* import { BaseLanguageClient, TextDocumentFeature } from './client'; *)
(* import { ClientCapabilities, ServerCapabilities, DocumentSelector,
   SemanticTokensOptions, SemanticTokensRegistrationOptions } from
   'vscode-languageserver-protocol'; *)
module DocumentSemanticsTokensSignature : sig
  type t = _DocumentSemanticsTokensSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> token:Vscode.CancellationToken.t
    -> Vscode.SemanticTokens.t Vscode.ProviderResult.t
    [@@js.apply]
end
[@@js.scope "DocumentSemanticsTokensSignature"]

module DocumentSemanticsTokensEditsSignature : sig
  type t = _DocumentSemanticsTokensEditsSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> previousResultId:string
    -> token:Vscode.CancellationToken.t
    -> (Vscode.SemanticTokens.t, Vscode.SemanticTokensEdits.t) union2
       Vscode.ProviderResult.t
    [@@js.apply]
end
[@@js.scope "DocumentSemanticsTokensEditsSignature"]

module DocumentRangeSemanticTokensSignature : sig
  type t = _DocumentRangeSemanticTokensSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> range:Vscode.Range.t
    -> token:Vscode.CancellationToken.t
    -> Vscode.SemanticTokens.t Vscode.ProviderResult.t
    [@@js.apply]
end
[@@js.scope "DocumentRangeSemanticTokensSignature"]

module SemanticTokensMiddleware : sig
  type t = _SemanticTokensMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideDocumentSemanticTokens
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> token:Vscode.CancellationToken.t
    -> next:_DocumentSemanticsTokensSignature
    -> Vscode.SemanticTokens.t Vscode.ProviderResult.t
    [@@js.call "provideDocumentSemanticTokens"]

  val provideDocumentSemanticTokensEdits
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> previousResultId:string
    -> token:Vscode.CancellationToken.t
    -> next:_DocumentSemanticsTokensEditsSignature
    -> (Vscode.SemanticTokens.t, Vscode.SemanticTokensEdits.t) union2
       Vscode.ProviderResult.t
    [@@js.call "provideDocumentSemanticTokensEdits"]

  val provideDocumentRangeSemanticTokens
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> range:Vscode.Range.t
    -> token:Vscode.CancellationToken.t
    -> next:_DocumentRangeSemanticTokensSignature
    -> Vscode.SemanticTokens.t Vscode.ProviderResult.t
    [@@js.call "provideDocumentRangeSemanticTokens"]
end
[@@js.scope "SemanticTokensMiddleware"]

module SemanticTokensProviders : sig
  type t = _SemanticTokensProviders

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Vscode.DocumentRangeSemanticTokensProvider.t
    [@@js.get "range"]

  val set_range : t -> Vscode.DocumentRangeSemanticTokensProvider.t -> unit
    [@@js.set "range"]

  val get_full : t -> Vscode.DocumentSemanticTokensProvider.t [@@js.get "full"]

  val set_full : t -> Vscode.DocumentSemanticTokensProvider.t -> unit
    [@@js.set "full"]

  val get_onDidChangeSemanticTokensEmitter : t -> unit Vscode.EventEmitter.t
    [@@js.get "onDidChangeSemanticTokensEmitter"]

  val set_onDidChangeSemanticTokensEmitter
    :  t
    -> unit Vscode.EventEmitter.t
    -> unit
    [@@js.set "onDidChangeSemanticTokensEmitter"]
end
[@@js.scope "SemanticTokensProviders"]

module SemanticTokensFeature : sig
  type t = _SemanticTokensFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fillClientCapabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:ServerCapabilities.t
    -> documentSelector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val registerLanguageProvider
    :  t
    -> options:SemanticTokensRegistrationOptions.t
    -> Vscode.Disposable.t * _SemanticTokensProviders
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( SemanticTokensOptions.t or_boolean
       , SemanticTokensRegistrationOptions.t
       , _SemanticTokensProviders )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "SemanticTokensFeature"]
