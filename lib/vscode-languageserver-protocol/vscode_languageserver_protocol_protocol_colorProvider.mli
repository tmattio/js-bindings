[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { TextDocumentIdentifier, Range, Color, ColorInformation,
   ColorPresentation } from 'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, StaticRegistrationOptions,
   PartialResultParams, WorkDoneProgressParams, WorkDoneProgressOptions } from
   './protocol'; *)
module DocumentColorClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DocumentColorClientCapabilities"]

module DocumentColorOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "DocumentColorOptions"]

module DocumentColorRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> StaticRegistrationOptions.t [@@js.cast]

  val cast'' : t -> DocumentColorOptions.t [@@js.cast]
end
[@@js.scope "DocumentColorRegistrationOptions"]

module DocumentColorParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DocumentColorParams"]

module DocumentColorRequest : sig
  val method_
    : ([ `L_s0_textDocument_documentColor [@js "textDocument/documentColor"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DocumentColorParams.t
      , ColorInformation.t list
      , ColorInformation.t list
      , unit
      , DocumentColorRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      (DocumentColorParams.t, ColorInformation.t list, unit) RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DocumentColorRequest"]

module ColorPresentationParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_color : t -> Color.t [@@js.get "color"]

  val set_color : t -> Color.t -> unit [@@js.set "color"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "ColorPresentationParams"]

module ColorPresentationRequest : sig
  val type_
    : ( ColorPresentationParams.t
      , ColorPresentation.t list
      , ColorPresentation.t list
      , unit
      , ( WorkDoneProgressOptions.t
        , TextDocumentRegistrationOptions.t )
        intersection2 )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( ColorPresentationParams.t
      , ColorPresentation.t list
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "ColorPresentationRequest"]
