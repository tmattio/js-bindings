[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Ts2ocaml_baselib

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type ('K, 'V) _Map = [ `Map of 'K * 'V ] intf
    [@@js.custom
      { of_js = (fun _K _V -> Obj.magic); to_js = (fun _K _V -> Obj.magic) }]

    and _MapConstructor = [ `MapConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('K, 'V) _ReadonlyMap = [ `ReadonlyMap of 'K * 'V ] intf
    [@@js.custom
      { of_js = (fun _K _V -> Obj.magic); to_js = (fun _K _V -> Obj.magic) }]

    and 'T _ReadonlySet = [ `ReadonlySet of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and 'T _Set = [ `Set of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _SetConstructor = [ `SetConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('K, 'V) _WeakMap = [ `WeakMap of 'K * 'V ] intf
    [@@js.custom
      { of_js = (fun _K _V -> Obj.magic); to_js = (fun _K _V -> Obj.magic) }]

    and _WeakMapConstructor = [ `WeakMapConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _WeakSet = [ `WeakSet of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _WeakSetConstructor = [ `WeakSetConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Map : sig
  type ('K, 'V) t = ('K, 'V) _Map

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  type ('K, 'V) t_2 = ('K, 'V) t

  val t_2_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t

  val t_2_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2

  val clear : ('K, 'V) t -> unit [@@js.call "clear"]

  val delete : ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]

  val forEach
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val get_ : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]

  val get_size : ('K, 'V) t -> float [@@js.get "size"]
end
[@@js.scope "Map"]

module MapConstructor : sig
  type t = _MapConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  type t_0 = t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val create : t -> (any, any) _Map [@@js.apply_newable]

  val create' : t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _Map
    [@@js.apply_newable]

  val get_prototype : t -> (any, any) _Map [@@js.get "prototype"]
end
[@@js.scope "MapConstructor"]

val map : _MapConstructor [@@js.global "Map"]

module ReadonlyMap : sig
  type ('K, 'V) t = ('K, 'V) _ReadonlyMap

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  type ('K, 'V) t_2 = ('K, 'V) t

  val t_2_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t

  val t_2_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2

  val forEach
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val get_ : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val get_size : ('K, 'V) t -> float [@@js.get "size"]
end
[@@js.scope "ReadonlyMap"]

module WeakMap : sig
  type ('K, 'V) t = ('K, 'V) _WeakMap

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  type ('K, 'V) t_2 = ('K, 'V) t

  val t_2_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t

  val t_2_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2

  val delete : ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]

  val get_ : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]
end
[@@js.scope "WeakMap"]

module WeakMapConstructor : sig
  type t = _WeakMapConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  type t_0 = t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val create : t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _WeakMap
    [@@js.apply_newable]

  val get_prototype : t -> (untyped_object, any) _WeakMap [@@js.get "prototype"]
end
[@@js.scope "WeakMapConstructor"]

val weakMap : _WeakMapConstructor [@@js.global "WeakMap"]

module Set : sig
  type 'T t = 'T _Set

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type 'T t_1 = 'T t

  val t_1_to_js : ('T -> Ojs.t) -> 'T t_1 -> Ojs.t

  val t_1_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t_1

  val add : 'T t -> value:'T -> 'T t [@@js.call "add"]

  val clear : 'T t -> unit [@@js.call "clear"]

  val delete : 'T t -> value:'T -> bool [@@js.call "delete"]

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val has : 'T t -> value:'T -> bool [@@js.call "has"]

  val get_size : 'T t -> float [@@js.get "size"]
end
[@@js.scope "Set"]

module SetConstructor : sig
  type t = _SetConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  type t_0 = t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val create : t -> ?values:'T list or_null -> unit -> 'T _Set
    [@@js.apply_newable]

  val get_prototype : t -> any _Set [@@js.get "prototype"]
end
[@@js.scope "SetConstructor"]

val set_ : _SetConstructor [@@js.global "Set"]

module ReadonlySet : sig
  type 'T t = 'T _ReadonlySet

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type 'T t_1 = 'T t

  val t_1_to_js : ('T -> Ojs.t) -> 'T t_1 -> Ojs.t

  val t_1_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t_1

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val has : 'T t -> value:'T -> bool [@@js.call "has"]

  val get_size : 'T t -> float [@@js.get "size"]
end
[@@js.scope "ReadonlySet"]

module WeakSet : sig
  type 'T t = 'T _WeakSet

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type 'T t_1 = 'T t

  val t_1_to_js : ('T -> Ojs.t) -> 'T t_1 -> Ojs.t

  val t_1_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t_1

  val add : 'T t -> value:'T -> 'T t [@@js.call "add"]

  val delete : 'T t -> value:'T -> bool [@@js.call "delete"]

  val has : 'T t -> value:'T -> bool [@@js.call "has"]
end
[@@js.scope "WeakSet"]

module WeakSetConstructor : sig
  type t = _WeakSetConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  type t_0 = t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val create : t -> ?values:'T list or_null -> unit -> 'T _WeakSet
    [@@js.apply_newable]

  val get_prototype : t -> untyped_object _WeakSet [@@js.get "prototype"]
end
[@@js.scope "WeakSetConstructor"]

val weakSet : _WeakSetConstructor [@@js.global "WeakSet"]
