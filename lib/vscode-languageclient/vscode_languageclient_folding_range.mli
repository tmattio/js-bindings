[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Disposable, TextDocument, ProviderResult, FoldingRange as
   VFoldingRange, FoldingContext, FoldingRangeProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, FoldingRangeRegistrationOptions, FoldingRangeOptions } from
   'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideFoldingRangeSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> context:FoldingContext.t
    -> token:CancellationToken.t
    -> VFoldingRange.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideFoldingRangeSignature"]

module FoldingRangeProviderMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_folding_ranges
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> context:FoldingContext.t
    -> token:CancellationToken.t
    -> next:ProvideFoldingRangeSignature.t
    -> VFoldingRange.t list ProviderResult.t
    [@@js.call "provideFoldingRanges"]
end
[@@js.scope "FoldingRangeProviderMiddleware"]

module FoldingRangeFeature : sig
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
    -> options:FoldingRangeRegistrationOptions.t
    -> Disposable.t * FoldingRangeProvider.t
    [@@js.call "registerLanguageProvider"]

  val get_as_folding_range_kind : unit -> (* FIXME: unknown type *) any
    [@@js.get "asFoldingRangeKind"]

  val set_as_folding_range_kind : (* FIXME: unknown type *) any -> unit
    [@@js.set "asFoldingRangeKind"]

  val get_as_folding_ranges : unit -> (* FIXME: unknown type *) any
    [@@js.get "asFoldingRanges"]

  val set_as_folding_ranges : (* FIXME: unknown type *) any -> unit
    [@@js.set "asFoldingRanges"]

  val cast
    :  t
    -> ( FoldingRangeOptions.t or_boolean
       , FoldingRangeRegistrationOptions.t
       , FoldingRangeProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "FoldingRangeFeature"]
