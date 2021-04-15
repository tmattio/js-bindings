[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ImplementationFeature = [ `ImplementationFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ImplementationMiddleware = [ `ImplementationMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideImplementationSignature =
      [ `ProvideImplementationSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   Definition as VDefinition, DefinitionLink as VDefinitionLink,
   ImplementationProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, ImplementationRegistrationOptions, ImplementationOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideImplementationSignature : sig
  type t = _ProvideImplementationSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t_1
    [@@js.apply]
end
[@@js.scope "ProvideImplementationSignature"]

module ImplementationMiddleware : sig
  type t = _ImplementationMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideImplementation
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_ProvideImplementationSignature
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t_1
    [@@js.call "provideImplementation"]
end
[@@js.scope "ImplementationMiddleware"]

module ImplementationFeature : sig
  type t = _ImplementationFeature

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
    -> options:ImplementationRegistrationOptions.t
    -> Disposable.t * ImplementationProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( ImplementationOptions.t or_boolean
       , ImplementationRegistrationOptions.t
       , ImplementationProvider.t )
       TextDocumentFeature.t_3
    [@@js.cast]
end
[@@js.scope "ImplementationFeature"]