[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _TypeDefinitionClientCapabilities =
      [ `TypeDefinitionClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TypeDefinitionOptions = [ `TypeDefinitionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TypeDefinitionParams = [ `TypeDefinitionParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TypeDefinitionRegistrationOptions =
      [ `TypeDefinitionRegistrationOptions | `TypeDefinitionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TypeDefinitionRequest_HandlerSignature =
      ( _TypeDefinitionParams
      , (Definition.t, DefinitionLink.t) or_array or_null
      , unit )
      RequestHandler.t_3
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Definition, DefinitionLink, LocationLink, Location } from
   'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, StaticRegistrationOptions,
   TextDocumentPositionParams, PartialResultParams, WorkDoneProgressParams,
   WorkDoneProgressOptions } from './protocol'; *)
module TypeDefinitionClientCapabilities : sig
  type t = _TypeDefinitionClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_linkSupport : t -> bool [@@js.get "linkSupport"]

  val set_linkSupport : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "TypeDefinitionClientCapabilities"]

module TypeDefinitionOptions : sig
  type t = _TypeDefinitionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "TypeDefinitionOptions"]

module TypeDefinitionRegistrationOptions : sig
  type t = _TypeDefinitionRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _TypeDefinitionOptions [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "TypeDefinitionRegistrationOptions"]

module TypeDefinitionParams : sig
  type t = _TypeDefinitionParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentPositionParams.t [@@js.cast]

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "TypeDefinitionParams"]

module TypeDefinitionRequest : sig
  val method_
    : ([ `L_s0_textDocument_typeDefinition [@js "textDocument/typeDefinition"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _TypeDefinitionParams
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , _TypeDefinitionRegistrationOptions )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _TypeDefinitionRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "TypeDefinitionRequest"]
