[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   Definition as VDefinition, DefinitionLink as VDefinitionLink,
   TypeDefinitionProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, TypeDefinitionRegistrationOptions, TypeDefinitionOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideTypeDefinitionSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideTypeDefinitionSignature"]

module TypeDefinitionMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_type_definition
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:ProvideTypeDefinitionSignature.t
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t
    [@@js.call "provideTypeDefinition"]
end
[@@js.scope "TypeDefinitionMiddleware"]

module TypeDefinitionFeature : sig
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
    -> options:TypeDefinitionRegistrationOptions.t
    -> Disposable.t * TypeDefinitionProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( TypeDefinitionOptions.t or_boolean
       , TypeDefinitionRegistrationOptions.t
       , TypeDefinitionProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "TypeDefinitionFeature"]
