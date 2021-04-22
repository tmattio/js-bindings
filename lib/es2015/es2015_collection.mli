[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Map : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val clear : ('K, 'V) t -> unit [@@js.call "clear"]

  val delete : ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]

  val for_each
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?this_arg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val get : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val set : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]

  val get_size : ('K, 'V) t -> int [@@js.get "size"]

  (* Constructor *)

  val create : unit -> (any, any) t [@@js.new "Map"]

  val create' : ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) t
    [@@js.new "Map"]
end

module MapConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> (any, any) Map.t [@@js.apply_newable]

  val create' : t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) Map.t
    [@@js.apply_newable]

  val get_prototype : t -> (any, any) Map.t [@@js.get "prototype"]
end
[@@js.scope "MapConstructor"]

val map : MapConstructor.t [@@js.global "Map"]

module ReadonlyMap : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val for_each
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?this_arg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val get : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val get_size : ('K, 'V) t -> int [@@js.get "size"]
end
[@@js.scope "ReadonlyMap"]

module WeakMap : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val delete : ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]

  val get : ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]

  val has : ('K, 'V) t -> key:'K -> bool [@@js.call "has"]

  val set : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]

  (* Constructor *)

  val create : ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) t
    [@@js.new "WeakMap"]
end

module WeakMapConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  t
    -> ?entries:('K * 'V) list or_null
    -> unit
    -> ('K, 'V) WeakMap.t
    [@@js.apply_newable]

  val get_prototype : t -> (untyped_object, any) WeakMap.t
    [@@js.get "prototype"]
end
[@@js.scope "WeakMapConstructor"]

val weak_map : WeakMapConstructor.t [@@js.global "WeakMap"]

module Set : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val add : 'T t -> value:'T -> 'T t [@@js.call "add"]

  val clear : 'T t -> unit [@@js.call "clear"]

  val delete : 'T t -> value:'T -> bool [@@js.call "delete"]

  val for_each
    :  'T t
    -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
    -> ?this_arg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val has : 'T t -> value:'T -> bool [@@js.call "has"]

  val get_size : 'T t -> int [@@js.get "size"]

  (* Constructor *)

  val create : ?values:'T list or_null -> unit -> 'T t [@@js.new "Set"]
end

module SetConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?values:'T list or_null -> unit -> 'T Set.t
    [@@js.apply_newable]

  val get_prototype : t -> any Set.t [@@js.get "prototype"]
end
[@@js.scope "SetConstructor"]

val set : SetConstructor.t [@@js.global "Set"]

module ReadonlySet : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val for_each
    :  'T t
    -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
    -> ?this_arg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val has : 'T t -> value:'T -> bool [@@js.call "has"]

  val get_size : 'T t -> int [@@js.get "size"]
end
[@@js.scope "ReadonlySet"]

module WeakSet : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val add : 'T t -> value:'T -> 'T t [@@js.call "add"]

  val delete : 'T t -> value:'T -> bool [@@js.call "delete"]

  val has : 'T t -> value:'T -> bool [@@js.call "has"]

  (* Constructor *)

  val create : ?values:'T list or_null -> unit -> 'T t [@@js.new "WeakSet"]
end

module WeakSetConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?values:'T list or_null -> unit -> 'T WeakSet.t
    [@@js.apply_newable]

  val get_prototype : t -> untyped_object WeakSet.t [@@js.get "prototype"]
end
[@@js.scope "WeakSetConstructor"]

val weak_set : WeakSetConstructor.t [@@js.global "WeakSet"]
