[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProgressFeature = [ `ProgressFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { ClientCapabilities } from 'vscode-languageserver-protocol'; *)
(* import { BaseLanguageClient, StaticFeature } from './client'; *)
module ProgressFeature : sig
  type t = _ProgressFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val get_activeParts : t -> (* FIXME: unknown type *) any
    [@@js.get "activeParts"]

  val set_activeParts : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "activeParts"]

  val create : _client:BaseLanguageClient.t -> t [@@js.create]

  val fillClientCapabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : t -> unit [@@js.call "initialize"]

  val dispose : t -> unit [@@js.call "dispose"]

  val cast : t -> StaticFeature.t [@@js.cast]
end
[@@js.scope "ProgressFeature"]
