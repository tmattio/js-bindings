[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProvideTypeDefinitionSignature =
      [ `ProvideTypeDefinitionSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TypeDefinitionFeature = [ `TypeDefinitionFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TypeDefinitionMiddleware = [ `TypeDefinitionMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   Definition as VDefinition, DefinitionLink as VDefinitionLink,
   TypeDefinitionProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, TypeDefinitionRegistrationOptions, TypeDefinitionOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideTypeDefinitionSignature : sig
  type t = _ProvideTypeDefinitionSignature

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
[@@js.scope "ProvideTypeDefinitionSignature"]

module TypeDefinitionMiddleware : sig
  type t = _TypeDefinitionMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideTypeDefinition
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_ProvideTypeDefinitionSignature
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t_1
    [@@js.call "provideTypeDefinition"]
end
[@@js.scope "TypeDefinitionMiddleware"]

module TypeDefinitionFeature : sig
  type t = _TypeDefinitionFeature

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
    -> options:TypeDefinitionRegistrationOptions.t
    -> Disposable.t * TypeDefinitionProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( TypeDefinitionOptions.t or_boolean
       , TypeDefinitionRegistrationOptions.t
       , TypeDefinitionProvider.t )
       TextDocumentFeature.t_3
    [@@js.cast]
end
[@@js.scope "TypeDefinitionFeature"]
