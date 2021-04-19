[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProvideSelectionRangeSignature =
      [ `ProvideSelectionRangeSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SelectionRangeFeature = [ `SelectionRangeFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SelectionRangeProviderMiddleware =
      [ `SelectionRangeProviderMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   SelectionRange as VSelectionRange, SelectionRangeProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, SelectionRangeOptions, SelectionRangeRegistrationOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideSelectionRangeSignature : sig
  type t = _ProvideSelectionRangeSignature

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
  type t = _SelectionRangeProviderMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideSelectionRanges
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> positions:VPosition.t list
    -> token:CancellationToken.t
    -> next:_ProvideSelectionRangeSignature
    -> VSelectionRange.t list ProviderResult.t
    [@@js.call "provideSelectionRanges"]
end
[@@js.scope "SelectionRangeProviderMiddleware"]

module SelectionRangeFeature : sig
  type t = _SelectionRangeFeature

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
