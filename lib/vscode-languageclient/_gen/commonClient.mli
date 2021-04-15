[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - DynamicFeature<T1>
  - LanguageClientOptions
  - StaticFeature
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DynamicFeature : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module LanguageClientOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module StaticFeature : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module BaseLanguageClient : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DynamicFeature : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module LanguageClientOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module StaticFeature : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _CommonLanguageClient = [`CommonLanguageClient] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { BaseLanguageClient, LanguageClientOptions, StaticFeature, DynamicFeature } from './client'; *)
  module[@js.scope "CommonLanguageClient"] CommonLanguageClient : sig
    type t = _CommonLanguageClient
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: id:string -> name:string -> clientOptions:LanguageClientOptions.t_0 -> t [@@js.create]
    val registerProposedFeatures: t -> unit [@@js.call "registerProposedFeatures"]
    val registerBuiltinFeatures: t -> unit [@@js.call "registerBuiltinFeatures"]
    val cast: t -> BaseLanguageClient.t_0 [@@js.cast]
  end
  module[@js.scope "ProposedFeatures"] ProposedFeatures : sig
    val createAll: _client:BaseLanguageClient.t_0 -> (StaticFeature.t_0, any DynamicFeature.t_1) union2 list [@@js.global "createAll"]
  end
end
