[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { BaseLanguageClient, LanguageClientOptions, StaticFeature,
   DynamicFeature } from './client'; *)
module CommonLanguageClient : sig
  type t = _CommonLanguageClient

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  id:string
    -> name:string
    -> clientOptions:LanguageClientOptions.t
    -> t
    [@@js.create]

  val registerProposedFeatures : t -> unit
    [@@js.call "registerProposedFeatures"]

  val registerBuiltinFeatures : t -> unit [@@js.call "registerBuiltinFeatures"]

  val cast : t -> BaseLanguageClient.t [@@js.cast]
end
[@@js.scope "CommonLanguageClient"]

module ProposedFeatures : sig
  val createAll
    :  _client:BaseLanguageClient.t
    -> (StaticFeature.t, any DynamicFeature.t) union2 list
    [@@js.global "createAll"]
end
[@@js.scope "ProposedFeatures"]
