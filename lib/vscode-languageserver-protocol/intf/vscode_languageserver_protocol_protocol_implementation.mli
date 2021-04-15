[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ImplementationClientCapabilities =
      [ `ImplementationClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ImplementationOptions = [ `ImplementationOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ImplementationParams = [ `ImplementationParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ImplementationRegistrationOptions =
      [ `ImplementationRegistrationOptions | `ImplementationOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ImplementationRequest_HandlerSignature =
      ( _ImplementationParams
      , (Definition.t, DefinitionLink.t) or_array or_null
      , unit )
      RequestHandler.t
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Definition, DefinitionLink, Location, LocationLink } from
   'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, StaticRegistrationOptions,
   TextDocumentPositionParams, PartialResultParams, WorkDoneProgressParams,
   WorkDoneProgressOptions } from './protocol'; *)
module ImplementationClientCapabilities : sig
  type t = _ImplementationClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_linkSupport : t -> bool [@@js.get "linkSupport"]

  val set_linkSupport : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "ImplementationClientCapabilities"]

module ImplementationOptions : sig
  type t = _ImplementationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "ImplementationOptions"]

module ImplementationRegistrationOptions : sig
  type t = _ImplementationRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _ImplementationOptions [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "ImplementationRegistrationOptions"]

module ImplementationParams : sig
  type t = _ImplementationParams

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
    : ( _ImplementationParams
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , _ImplementationRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _ImplementationRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "ImplementationRequest"]
