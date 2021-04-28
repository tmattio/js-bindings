[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { StaticFeature, BaseLanguageClient } from './client'; *)
(* import { ClientCapabilities, ConfigurationRequest } from
   'vscode-languageserver-protocol'; *)
module ConfigurationWorkspaceMiddleware : sig
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val create : _client:BaseLanguageClient.t -> t [@@js.create]

  val fill_client_capabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : t -> unit [@@js.call "initialize"]

  val get_get_configuration : t -> (* FIXME: unknown type *) any
    [@@js.get "getConfiguration"]

  val set_get_configuration : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "getConfiguration"]

  val dispose : t -> unit [@@js.call "dispose"]

  (* TODO: Move me*)
  include module type of struct
    include StaticFeature
  end
end
[@@js.scope "ConfigurationFeature"]

val to_json_object : obj:any -> any [@@js.global "toJSONObject"]
