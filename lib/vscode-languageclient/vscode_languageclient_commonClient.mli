[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { BaseLanguageClient, LanguageClientOptions, StaticFeature,
   DynamicFeature } from './client'; *)
module CommonLanguageClient : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  id:string
    -> name:string
    -> client_options:LanguageClientOptions.t
    -> t
    [@@js.create]

  val register_proposed_features : t -> unit
    [@@js.call "registerProposedFeatures"]

  val register_builtin_features : t -> unit
    [@@js.call "registerBuiltinFeatures"]

  val cast : t -> BaseLanguageClient.t [@@js.cast]
end
[@@js.scope "CommonLanguageClient"]

module ProposedFeatures : sig
  val create_all
    :  _client:BaseLanguageClient.t
    -> (StaticFeature.t, any DynamicFeature.t) union2 list
    [@@js.global "createAll"]
end
[@@js.scope "ProposedFeatures"]
