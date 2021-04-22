[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5



module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_document : t -> TextDocument.t [@@js.get "document"]

  val set_document : t -> TextDocument.t -> unit [@@js.set "document"]

  val get_range : t -> VRange.t [@@js.get "range"]

  val set_range : t -> VRange.t -> unit [@@js.set "range"]
end

(* import { Disposable, TextDocument, ProviderResult, Range as VRange, Color as
   VColor, ColorPresentation as VColorPresentation, ColorInformation as
   VColorInformation, DocumentColorProvider } from 'vscode'; *)
(* import { ClientCapabilities, CancellationToken, ServerCapabilities,
   DocumentSelector, DocumentColorRegistrationOptions, DocumentColorOptions }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module ProvideDocumentColorsSignature : sig
  type t = _ProvideDocumentColorsSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> VColorInformation.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDocumentColorsSignature"]

module ProvideColorPresentationSignature : sig
  type t = _ProvideColorPresentationSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> color:VColor.t
    -> context:AnonymousInterface0.t
    -> token:CancellationToken.t
    -> VColorPresentation.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideColorPresentationSignature"]

module ColorProviderMiddleware : sig
  type t = _ColorProviderMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideDocumentColors
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:_ProvideDocumentColorsSignature
    -> VColorInformation.t list ProviderResult.t
    [@@js.call "provideDocumentColors"]

  val provideColorPresentations
    :  t
    -> this:unit
    -> color:VColor.t
    -> context:AnonymousInterface0.t
    -> token:CancellationToken.t
    -> next:_ProvideColorPresentationSignature
    -> VColorPresentation.t list ProviderResult.t
    [@@js.call "provideColorPresentations"]
end
[@@js.scope "ColorProviderMiddleware"]

module ColorProviderFeature : sig
  type t = _ColorProviderFeature

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
    -> options:DocumentColorRegistrationOptions.t
    -> Disposable.t * DocumentColorProvider.t
    [@@js.call "registerLanguageProvider"]

  val get_asColor : t -> (* FIXME: unknown type *) any [@@js.get "asColor"]

  val set_asColor : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asColor"]

  val get_asColorInformations : t -> (* FIXME: unknown type *) any
    [@@js.get "asColorInformations"]

  val set_asColorInformations : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asColorInformations"]

  val get_asColorPresentations : t -> (* FIXME: unknown type *) any
    [@@js.get "asColorPresentations"]

  val set_asColorPresentations : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asColorPresentations"]

  val cast
    :  t
    -> ( DocumentColorOptions.t or_boolean
       , DocumentColorRegistrationOptions.t
       , DocumentColorProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "ColorProviderFeature"]
