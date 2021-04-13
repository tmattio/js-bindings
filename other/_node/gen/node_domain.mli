[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type domain_Domain = [ `Domain_Domain ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and domain_Domain = [ `Domain_Domain ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and domain_global_NodeJS_Domain = [ `Domain_global_NodeJS_Domain ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Node_domain : sig
  (* export * from 'domain'; *)
end

module Domain : sig
  (* import EventEmitter = require('node:events'); *)
  module Global : sig
    module NodeJS : sig
      module Domain : sig
        type t = domain_global_NodeJS_Domain

        val t_to_js : t -> Ojs.t

        val t_of_js : Ojs.t -> t



        val run
          :  t
          -> fn:(args:(any list[@js.variadic]) -> 'T)
          -> args:(any list[@js.variadic])
          -> 'T
          [@@js.call "run"]

        val add : t -> emitter:(EventEmitter.t_0, Timer.t_0) union2 -> unit
          [@@js.call "add"]

        val remove : t -> emitter:(EventEmitter.t_0, Timer.t_0) union2 -> unit
          [@@js.call "remove"]

        val bind : t -> cb:'T -> 'T [@@js.call "bind"]

        val intercept : t -> cb:'T -> 'T [@@js.call "intercept"]

        val cast : t -> EventEmitter.t_0 [@@js.cast]
      end
      [@@js.scope "Domain"]
    end
    [@@js.scope "NodeJS"]
  end
  [@@js.scope "global"]

  module Domain : sig
    type t = domain_Domain

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> NodeJS.Domain.t_0 [@@js.cast]
  end
  [@@js.scope "Domain"]

  module Domain : sig
    type t = domain_Domain

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_members : t -> (EventEmitter.t_0, NodeJS.Timer.t_0) union2 list
      [@@js.get "members"]

    val set_members
      :  t
      -> (EventEmitter.t_0, NodeJS.Timer.t_0) union2 list
      -> unit
      [@@js.set "members"]

    val enter : t -> unit [@@js.call "enter"]

    val exit : t -> unit [@@js.call "exit"]

    val cast : t -> EventEmitter.t_0 [@@js.cast]
  end
  [@@js.scope "Domain"]

  val create_ : unit -> domain_Domain [@@js.global "create"]
end
[@@js.scope "domain"]
