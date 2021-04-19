[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ConfigurationFeature = [ `ConfigurationFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConfigurationWorkspaceMiddleware =
      [ `ConfigurationWorkspaceMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { StaticFeature, BaseLanguageClient } from './client'; *)
(* import { ClientCapabilities, ConfigurationRequest } from
   'vscode-languageserver-protocol'; *)
module ConfigurationWorkspaceMiddleware : sig
  type t = _ConfigurationWorkspaceMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_configuration : t -> ConfigurationRequest.MiddlewareSignature.t
    [@@js.get "configuration"]

  val set_configuration
    :  t
    -> ConfigurationRequest.MiddlewareSignature.t
    -> unit
    [@@js.set "configuration"]
end
[@@js.scope "ConfigurationWorkspaceMiddleware"]

module ConfigurationFeature : sig
  type t = _ConfigurationFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val create : _client:BaseLanguageClient.t -> t [@@js.create]

  val fillClientCapabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : t -> unit [@@js.call "initialize"]

  val get_getConfiguration : t -> (* FIXME: unknown type *) any
    [@@js.get "getConfiguration"]

  val set_getConfiguration : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "getConfiguration"]

  val dispose : t -> unit [@@js.call "dispose"]

  val cast : t -> StaticFeature.t [@@js.cast]
end
[@@js.scope "ConfigurationFeature"]

val toJSONObject : obj:any -> any [@@js.global "toJSONObject"]
