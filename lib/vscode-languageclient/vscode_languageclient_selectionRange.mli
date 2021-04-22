[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   SelectionRange as VSelectionRange, SelectionRangeProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, SelectionRangeOptions, SelectionRangeRegistrationOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideSelectionRangeSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> positions:VPosition.t list
    -> token:CancellationToken.t
    -> VSelectionRange.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideSelectionRangeSignature"]

module SelectionRangeProviderMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_selection_ranges
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> positions:VPosition.t list
    -> token:CancellationToken.t
    -> next:ProvideSelectionRangeSignature.t
    -> VSelectionRange.t list ProviderResult.t
    [@@js.call "provideSelectionRanges"]
end
[@@js.scope "SelectionRangeProviderMiddleware"]

module SelectionRangeFeature : sig
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
    -> options:SelectionRangeRegistrationOptions.t
    -> Disposable.t * SelectionRangeProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( SelectionRangeOptions.t or_boolean
       , SelectionRangeRegistrationOptions.t
       , SelectionRangeProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "SelectionRangeFeature"]
