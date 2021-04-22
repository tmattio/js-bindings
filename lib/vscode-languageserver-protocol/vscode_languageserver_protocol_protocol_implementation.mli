[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Definition, DefinitionLink, Location, LocationLink } from
   'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, StaticRegistrationOptions,
   TextDocumentPositionParams, PartialResultParams, WorkDoneProgressParams,
   WorkDoneProgressOptions } from './protocol'; *)
module ImplementationClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_link_support : t -> bool [@@js.get "linkSupport"]

  val set_link_support : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "ImplementationClientCapabilities"]

module ImplementationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "ImplementationOptions"]

module ImplementationRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> ImplementationOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "ImplementationRegistrationOptions"]

module ImplementationParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentPositionParams.t [@@js.cast]

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "ImplementationParams"]

module ImplementationRequest : sig
  val method_
    : ([ `L_s0_textDocument_implementation [@js "textDocument/implementation"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( ImplementationParams.t
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , ImplementationRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( ImplementationParams.t
      , (Definition.t, DefinitionLink.t) or_array or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "ImplementationRequest"]
