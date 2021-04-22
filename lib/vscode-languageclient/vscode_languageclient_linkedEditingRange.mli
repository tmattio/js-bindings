[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideLinkedEditingRangeSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:Code.TextDocument.t
    -> position:Code.Position.t
    -> token:Code.CancellationToken.t
    -> Code.LinkedEditingRanges.t Code.ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideLinkedEditingRangeSignature"]

module LinkedEditingRangeMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_linked_editing_range
    :  t
    -> this:unit
    -> document:Code.TextDocument.t
    -> position:Code.Position.t
    -> token:Code.CancellationToken.t
    -> next:ProvideLinkedEditingRangeSignature.t
    -> Code.LinkedEditingRanges.t Code.ProviderResult.t
    [@@js.call "provideLinkedEditingRange"]
end
[@@js.scope "LinkedEditingRangeMiddleware"]

module LinkedEditingFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fill_client_capabilities
    :  t
    -> capabilities:Proto.ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:Proto.ServerCapabilities.t
    -> document_selector:Proto.DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val register_language_provider
    :  t
    -> options:Proto.LinkedEditingRangeRegistrationOptions.t
    -> Code.Disposable.t * Code.LinkedEditingRangeProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( Proto.LinkedEditingRangeOptions.t or_boolean
       , Proto.LinkedEditingRangeRegistrationOptions.t
       , Code.LinkedEditingRangeProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "LinkedEditingFeature"]
