[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   Definition as VDefinition, DefinitionLink as VDefinitionLink,
   ImplementationProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, ImplementationRegistrationOptions, ImplementationOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideImplementationSignature : sig
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
[@@js.scope "ProvideImplementationSignature"]

module ImplementationMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_implementation
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:ProvideImplementationSignature.t
    -> (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t
    [@@js.call "provideImplementation"]
end
[@@js.scope "ImplementationMiddleware"]

module ImplementationFeature : sig
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
    -> options:ImplementationRegistrationOptions.t
    -> Disposable.t * ImplementationProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( ImplementationOptions.t or_boolean
       , ImplementationRegistrationOptions.t
       , ImplementationProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "ImplementationFeature"]
