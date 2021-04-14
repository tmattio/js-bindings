[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _RegExp = regexp

    and _RegExpExecArray = [ `RegExpExecArray ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _RegExpMatchArray = [ `RegExpMatchArray ] intf
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

  val get : t -> string -> string [@@js.index_get]

  val set : t -> string -> string -> unit [@@js.index_set]
end

module RegExpMatchArray : sig
  include module type of struct
    include RegExpMatchArray
  end

  val get_groups : t -> anonymous_interface_0 [@@js.get "groups"]

  val set_groups : t -> anonymous_interface_0 -> unit [@@js.set "groups"]
end
[@@js.scope "RegExpMatchArray"]

module RegExpExecArray : sig
  include module type of struct
    include RegExpExecArray
  end

  val get_groups : t -> anonymous_interface_0 [@@js.get "groups"]

  val set_groups : t -> anonymous_interface_0 -> unit [@@js.set "groups"]
end
[@@js.scope "RegExpExecArray"]

module RegExp : sig
  include module type of struct
    include RegExp
  end

  val get_dotAll : t -> bool [@@js.get "dotAll"]
end
[@@js.scope "RegExp"]
