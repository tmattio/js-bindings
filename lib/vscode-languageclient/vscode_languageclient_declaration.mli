[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   Declaration as VDeclaration, DeclarationProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, DeclarationRegistrationOptions, DeclarationOptions } from
   'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideDeclarationSignature : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provide_declaration
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> next:ProvideDeclarationSignature.t
    -> VDeclaration.t ProviderResult.t
    [@@js.call "provideDeclaration"]
end
[@@js.scope "DeclarationMiddleware"]

module DeclarationFeature : sig
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
