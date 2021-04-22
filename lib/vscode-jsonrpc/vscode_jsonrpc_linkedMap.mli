[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Touch : sig
  type t =
    ([ `L_n_0 [@js 0]
     | `L_n_1 [@js 1]
     | `L_n_2 [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val none : ([ `L_n_0 [@js 0] ][@js.enum]) [@@js.global "None"]

  val first : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "First"]

  val asOld : ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.global "AsOld"]

  val last : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "Last"]

  val asNew : ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.global "AsNew"]
end
[@@js.scope "Touch"]

module LinkedMap : sig
  type ('K, 'V) t = ('K, 'V) _LinkedMap

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val get__Symbol_toStringTag_ : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "[Symbol.toStringTag]"]

  val get__map : ('K, 'V) t -> (* FIXME: unknown type *) any [@@js.get "_map"]

  val set__map : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_map"]

  val get__head : ('K, 'V) t -> (* FIXME: unknown type *) any [@@js.get "_head"]

  val set__head : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_head"]

  val get__tail : ('K, 'V) t -> (* FIXME: unknown type *) any [@@js.get "_tail"]

  val set__tail : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_tail"]

  val get__size : ('K, 'V) t -> (* FIXME: unknown type *) any [@@js.get "_size"]

  val set__size : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_size"]

  val get__state : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "_state"]

  val set__state : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_state"]

  val create : unit -> ('K, 'V) t [@@js.create]

  val clear : ('K, 'V) t -> unit [@@js.call "clear"]

  val isEmpty : ('K, 'V) t -> bool [@@js.call "isEmpty"]

  val get_size : ('K, 'V) t -> int [@@js.get "size"]

  val get_first : ('K, 'V) t -> 'V or_undefined [@@js.get "first"]

  val get_last : ('K, 'V) t -> 'V or_undefined [@@js.get "last"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val get_ : ('K, 'V) t -> key:'K -> ?touch:_Touch -> unit -> 'V or_undefined
    [@@js.call "get"]

  val set_
    :  ('K, 'V) t
    -> key:'K
    -> value:'V
    -> ?touch:_Touch
    -> unit
    -> ('K, 'V) t
    [@@js.call "set"]

  val delete : ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]

  val remove : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "remove"]

  val shift : ('K, 'V) t -> 'V or_undefined [@@js.call "shift"]

  val forEach
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val keys : ('K, 'V) t -> 'K IterableIterator.t [@@js.call "keys"]

  val values : ('K, 'V) t -> 'V IterableIterator.t [@@js.call "values"]

  val entries : ('K, 'V) t -> ('K * 'V) IterableIterator.t [@@js.call "entries"]

  val _Symbol_iterator_ : ('K, 'V) t -> ('K * 'V) IterableIterator.t
    [@@js.call "[Symbol.iterator]"]

  val trimOld : ('K, 'V) t -> newSize:int -> unit [@@js.call "trimOld"]

  val get_addItemFirst : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "addItemFirst"]

  val set_addItemFirst : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "addItemFirst"]

  val get_addItemLast : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "addItemLast"]

  val set_addItemLast : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "addItemLast"]

  val get_removeItem : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "removeItem"]

  val set_removeItem : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "removeItem"]

  val get_touch : ('K, 'V) t -> (* FIXME: unknown type *) any [@@js.get "touch"]

  val set_touch : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "touch"]

  val toJSON : ('K, 'V) t -> ('K * 'V) list [@@js.call "toJSON"]

  val fromJSON : ('K, 'V) t -> data:('K * 'V) list -> unit
    [@@js.call "fromJSON"]

  val cast : ('K, 'V) t -> ('K, 'V) Map.t [@@js.cast]
end
[@@js.scope "LinkedMap"]

module LRUCache : sig
  type ('K, 'V) t = ('K, 'V) _LRUCache

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val get__limit : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "_limit"]

  val set__limit : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_limit"]

  val get__ratio : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "_ratio"]

  val set__ratio : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_ratio"]

  val create : limit:int -> ?ratio:int -> unit -> ('K, 'V) t [@@js.create]

  val get_limit : ('K, 'V) t -> int [@@js.get "limit"]

  val set_limit : ('K, 'V) t -> int -> unit [@@js.set "limit"]

  val get_ratio : ('K, 'V) t -> int [@@js.get "ratio"]

  val set_ratio : ('K, 'V) t -> int -> unit [@@js.set "ratio"]

  val get_ : ('K, 'V) t -> key:'K -> ?touch:_Touch -> unit -> 'V or_undefined
    [@@js.call "get"]

  val peek : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "peek"]

  val set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]

  val get_checkTrim : ('K, 'V) t -> (* FIXME: unknown type *) any
    [@@js.get "checkTrim"]

  val set_checkTrim : ('K, 'V) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "checkTrim"]

  val cast : ('K, 'V) t -> ('K, 'V) _LinkedMap [@@js.cast]
end
[@@js.scope "LRUCache"]
