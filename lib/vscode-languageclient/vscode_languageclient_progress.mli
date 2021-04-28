[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { ClientCapabilities } from 'vscode-languageserver-protocol'; *)
(* import { BaseLanguageClient, StaticFeature } from './client'; *)
module ProgressFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val get_active_parts : t -> (* FIXME: unknown type *) any
    [@@js.get "activeParts"]

  val set_active_parts : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "activeParts"]

  val create : _client:BaseLanguageClient.t -> t [@@js.create]

  val fill_client_capabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : t -> unit [@@js.call "initialize"]

  val dispose : t -> unit [@@js.call "dispose"]

  (* TODO: Move me*)
  include module type of struct
    include StaticFeature
  end
end
[@@js.scope "ProgressFeature"]
