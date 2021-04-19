[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _FoldingRangeFeature = [ `FoldingRangeFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FoldingRangeProviderMiddleware =
      [ `FoldingRangeProviderMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideFoldingRangeSignature = [ `ProvideFoldingRangeSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Disposable, TextDocument, ProviderResult, FoldingRange as
   VFoldingRange, FoldingContext, FoldingRangeProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, FoldingRangeRegistrationOptions, FoldingRangeOptions } from
   'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideFoldingRangeSignature : sig
  type t = _ProvideFoldingRangeSignature

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
  type t = _FoldingRangeProviderMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideFoldingRanges
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> context:FoldingContext.t
    -> token:CancellationToken.t
    -> next:_ProvideFoldingRangeSignature
    -> VFoldingRange.t list ProviderResult.t
    [@@js.call "provideFoldingRanges"]
end
[@@js.scope "FoldingRangeProviderMiddleware"]

module FoldingRangeFeature : sig
  type t = _FoldingRangeFeature

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
    -> options:FoldingRangeRegistrationOptions.t
    -> Disposable.t * FoldingRangeProvider.t
    [@@js.call "registerLanguageProvider"]

  val get_asFoldingRangeKind : unit -> (* FIXME: unknown type *) any
    [@@js.get "asFoldingRangeKind"]

  val set_asFoldingRangeKind : (* FIXME: unknown type *) any -> unit
    [@@js.set "asFoldingRangeKind"]

  val get_asFoldingRanges : unit -> (* FIXME: unknown type *) any
    [@@js.get "asFoldingRanges"]

  val set_asFoldingRanges : (* FIXME: unknown type *) any -> unit
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
