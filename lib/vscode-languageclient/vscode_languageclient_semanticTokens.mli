[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as vscode from 'vscode'; *)
(* import { BaseLanguageClient, TextDocumentFeature } from './client'; *)
(* import { ClientCapabilities, ServerCapabilities, DocumentSelector,
   SemanticTokensOptions, SemanticTokensRegistrationOptions } from
   'vscode-languageserver-protocol'; *)
module DocumentSemanticsTokensSignature : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> previous_result_id:string
    -> token:Vscode.CancellationToken.t
    -> (Vscode.SemanticTokens.t, Vscode.SemanticTokensEdits.t) union2
       Vscode.ProviderResult.t
    [@@js.apply]
end
[@@js.scope "DocumentSemanticsTokensEditsSignature"]

module DocumentRangeSemanticTokensSignature : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_document_semantic_tokens
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> token:Vscode.CancellationToken.t
    -> next:DocumentSemanticsTokensSignature.t
    -> Vscode.SemanticTokens.t Vscode.ProviderResult.t
    [@@js.call "provideDocumentSemanticTokens"]

  val provide_document_semantic_tokens_edits
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> previous_result_id:string
    -> token:Vscode.CancellationToken.t
    -> next:DocumentSemanticsTokensEditsSignature.t
    -> (Vscode.SemanticTokens.t, Vscode.SemanticTokensEdits.t) union2
       Vscode.ProviderResult.t
    [@@js.call "provideDocumentSemanticTokensEdits"]

  val provide_document_range_semantic_tokens
    :  t
    -> this:unit
    -> document:Vscode.TextDocument.t
    -> range:Vscode.Range.t
    -> token:Vscode.CancellationToken.t
    -> next:DocumentRangeSemanticTokensSignature.t
    -> Vscode.SemanticTokens.t Vscode.ProviderResult.t
    [@@js.call "provideDocumentRangeSemanticTokens"]
end
[@@js.scope "SemanticTokensMiddleware"]

module SemanticTokensProviders : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> Vscode.DocumentRangeSemanticTokensProvider.t
    [@@js.get "range"]

  val set_range : t -> Vscode.DocumentRangeSemanticTokensProvider.t -> unit
    [@@js.set "range"]

  val get_full : t -> Vscode.DocumentSemanticTokensProvider.t [@@js.get "full"]

  val set_full : t -> Vscode.DocumentSemanticTokensProvider.t -> unit
    [@@js.set "full"]

  val get_on_did_change_semantic_tokens_emitter
    :  t
    -> unit Vscode.EventEmitter.t
    [@@js.get "onDidChangeSemanticTokensEmitter"]

  val set_on_did_change_semantic_tokens_emitter
    :  t
    -> unit Vscode.EventEmitter.t
    -> unit
    [@@js.set "onDidChangeSemanticTokensEmitter"]
end
[@@js.scope "SemanticTokensProviders"]

module SemanticTokensFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fill_client_capabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:ServerCapabilities.t
    -> document_selector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val register_language_provider
    :  t
    -> options:SemanticTokensRegistrationOptions.t
    -> Vscode.Disposable.t * SemanticTokensProviders.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( SemanticTokensOptions.t or_boolean
       , SemanticTokensRegistrationOptions.t
       , SemanticTokensProviders.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "SemanticTokensFeature"]
