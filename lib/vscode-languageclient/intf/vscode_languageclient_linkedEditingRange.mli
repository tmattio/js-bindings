[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _LinkedEditingFeature = [ `LinkedEditingFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LinkedEditingRangeMiddleware = [ `LinkedEditingRangeMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideLinkedEditingRangeSignature =
      [ `ProvideLinkedEditingRangeSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideLinkedEditingRangeSignature : sig
  type t = _ProvideLinkedEditingRangeSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:Code.TextDocument.t
    -> position:Code.Position.t
    -> token:Code.CancellationToken.t
    -> Code.LinkedEditingRanges.t Code.ProviderResult.t_1
    [@@js.apply]
end
[@@js.scope "ProvideLinkedEditingRangeSignature"]

module LinkedEditingRangeMiddleware : sig
  type t = _LinkedEditingRangeMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideLinkedEditingRange
    :  t
    -> this:unit
    -> document:Code.TextDocument.t
    -> position:Code.Position.t
    -> token:Code.CancellationToken.t
    -> next:_ProvideLinkedEditingRangeSignature
    -> Code.LinkedEditingRanges.t Code.ProviderResult.t_1
    [@@js.call "provideLinkedEditingRange"]
end
[@@js.scope "LinkedEditingRangeMiddleware"]

module LinkedEditingFeature : sig
  type t = _LinkedEditingFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fillClientCapabilities
    :  t
    -> capabilities:Proto.ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:Proto.ServerCapabilities.t
    -> documentSelector:Proto.DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val registerLanguageProvider
    :  t
    -> options:Proto.LinkedEditingRangeRegistrationOptions.t
    -> Code.Disposable.t * Code.LinkedEditingRangeProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( Proto.LinkedEditingRangeOptions.t or_boolean
       , Proto.LinkedEditingRangeRegistrationOptions.t
       , Code.LinkedEditingRangeProvider.t )
       TextDocumentFeature.t_3
    [@@js.cast]
end
[@@js.scope "LinkedEditingFeature"]
