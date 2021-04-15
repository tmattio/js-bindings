[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _DeclarationClientCapabilities =
      [ `DeclarationClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DeclarationOptions = [ `DeclarationOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DeclarationParams = [ `DeclarationParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DeclarationRegistrationOptions =
      [ `DeclarationRegistrationOptions | `DeclarationOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DeclarationRequest_HandlerSignature =
      ( _DeclarationParams
      , (Declaration.t, DeclarationLink.t) or_array or_null
      , unit )
      RequestHandler.t_3
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Declaration, DeclarationLink, Location, LocationLink } from
   'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, StaticRegistrationOptions,
   TextDocumentPositionParams, PartialResultParams, WorkDoneProgressParams,
   WorkDoneProgressOptions } from './protocol'; *)
module DeclarationClientCapabilities : sig
  type t = _DeclarationClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_linkSupport : t -> bool [@@js.get "linkSupport"]

  val set_linkSupport : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "DeclarationClientCapabilities"]

module DeclarationOptions : sig
  type t = _DeclarationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "DeclarationOptions"]

module DeclarationRegistrationOptions : sig
  type t = _DeclarationRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _DeclarationOptions [@@js.cast]

  val cast' : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "DeclarationRegistrationOptions"]

module DeclarationParams : sig
  type t = _DeclarationParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentPositionParams.t [@@js.cast]

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DeclarationParams"]

module DeclarationRequest : sig
  val method_
    : ([ `L_s0_textDocument_declaration [@js "textDocument/declaration"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DeclarationParams
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , _DeclarationRegistrationOptions )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _DeclarationRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DeclarationRequest"]
