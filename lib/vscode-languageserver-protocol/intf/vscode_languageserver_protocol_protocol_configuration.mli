[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _ConfigurationClientCapabilities =
      [ `ConfigurationClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConfigurationItem = [ `ConfigurationItem ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConfigurationParams = [ `ConfigurationParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConfigurationRequest_HandlerSignature =
      (_ConfigurationParams, any list, unit) RequestHandler.t_3

    and _ConfigurationRequest_MiddlewareSignature =
      [ `ConfigurationRequest_MiddlewareSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_configuration : t -> bool [@@js.get "configuration"]

  val set_configuration : t -> bool -> unit [@@js.set "configuration"]
end

(* import { RequestHandler, HandlerResult, CancellationToken } from
   'vscode-jsonrpc'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { PartialResultParams } from './protocol'; *)
module ConfigurationClientCapabilities : sig
  type t = _ConfigurationClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> anonymous_interface_0 [@@js.get "workspace"]

  val set_workspace : t -> anonymous_interface_0 -> unit [@@js.set "workspace"]
end
[@@js.scope "ConfigurationClientCapabilities"]

module ConfigurationRequest : sig
  val type_
    : ( (_ConfigurationParams, PartialResultParams.t) intersection2
      , any list
      , never
      , unit
      , unit )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _ConfigurationRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t = _ConfigurationRequest_MiddlewareSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> params:_ConfigurationParams
      -> token:CancellationToken.t
      -> next:_ConfigurationRequest_HandlerSignature
      -> (any list, unit) HandlerResult.t_2
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "ConfigurationRequest"]

module ConfigurationItem : sig
  type t = _ConfigurationItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_scopeUri : t -> string [@@js.get "scopeUri"]

  val set_scopeUri : t -> string -> unit [@@js.set "scopeUri"]

  val get_section : t -> string [@@js.get "section"]

  val set_section : t -> string -> unit [@@js.set "section"]
end
[@@js.scope "ConfigurationItem"]

module ConfigurationParams : sig
  type t = _ConfigurationParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_items : t -> _ConfigurationItem list [@@js.get "items"]

  val set_items : t -> _ConfigurationItem list -> unit [@@js.set "items"]
end
[@@js.scope "ConfigurationParams"]
