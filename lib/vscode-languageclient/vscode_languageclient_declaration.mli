[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _DeclarationFeature = [ `DeclarationFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DeclarationMiddleware = [ `DeclarationMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDeclarationSignature = [ `ProvideDeclarationSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   Declaration as VDeclaration, DeclarationProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, DeclarationRegistrationOptions, DeclarationOptions } from
   'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideDeclarationSignature : sig
  type t = _ProvideDeclarationSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> VDeclaration.t ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDeclarationSignature"]

module DeclarationMiddleware : sig
  type t = _DeclarationMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideDeclaration
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:_ProvideDeclarationSignature
    -> VDeclaration.t ProviderResult.t
    [@@js.call "provideDeclaration"]
end
[@@js.scope "DeclarationMiddleware"]

module DeclarationFeature : sig
  type t = _DeclarationFeature

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
    -> options:DeclarationRegistrationOptions.t
    -> Disposable.t * DeclarationProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( DeclarationOptions.t or_boolean
       , DeclarationRegistrationOptions.t
       , DeclarationProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "DeclarationFeature"]
