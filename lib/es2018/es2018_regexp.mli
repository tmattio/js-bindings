[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> string [@@js.index_get]

  val set : t -> string -> string -> unit [@@js.index_set]
end

module RegExpMatchArray : sig
  include module type of struct
    include RegExpMatchArray
  end

  val get_groups : t -> AnonymousInterface0.t [@@js.get "groups"]

  val set_groups : t -> AnonymousInterface0.t -> unit [@@js.set "groups"]
end
[@@js.scope "RegExpMatchArray"]

module RegExpExecArray : sig
  include module type of struct
    include RegExpExecArray
  end

  val get_groups : t -> AnonymousInterface0.t [@@js.get "groups"]

  val set_groups : t -> AnonymousInterface0.t -> unit [@@js.set "groups"]
end
[@@js.scope "RegExpExecArray"]

module RegExp : sig
  include module type of struct
    include RegExp
  end

  val get_dot_all : t -> bool [@@js.get "dotAll"]
end
[@@js.scope "RegExp"]
