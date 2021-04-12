open Es5

module Map : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val clear : ('K, 'V) t -> unit

  val delete : ('K, 'V) t -> key:'K -> bool

  val forEach
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val get_ : ('K, 'V) t -> key:'K -> 'V or_undefined

  val has : ('K, 'V) t -> key:'K -> bool

  val set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t

  val get_size : ('K, 'V) t -> float
end

module MapConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> (any, any) Map.t

  val create' : t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) Map.t

  val get_prototype : t -> (any, any) Map.t
end

val map : MapConstructor.t

module ReadonlyMap : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val forEach
    :  ('K, 'V) t
    -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val get_ : ('K, 'V) t -> key:'K -> 'V or_undefined

  val has : ('K, 'V) t -> key:'K -> bool

  val get_size : ('K, 'V) t -> float
end

module WeakMap : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val delete : ('K, 'V) t -> key:'K -> bool

  val get_ : ('K, 'V) t -> key:'K -> 'V or_undefined

  val has : ('K, 'V) t -> key:'K -> bool

  val set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t
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

  val get_prototype : t -> (untyped_object, any) WeakMap.t
end

val weakMap : WeakMapConstructor.t

module Set : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val add : 'T t -> value:'T -> 'T t

  val clear : 'T t -> unit

  val delete : 'T t -> value:'T -> bool

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val has : 'T t -> value:'T -> bool

  val get_size : 'T t -> float
end

module SetConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?values:'T list or_null -> unit -> 'T Set.t

  val get_prototype : t -> any Set.t
end

val set_ : SetConstructor.t

module ReadonlySet : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val has : 'T t -> value:'T -> bool

  val get_size : 'T t -> float
end

module WeakSet : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val add : 'T t -> value:'T -> 'T t

  val delete : 'T t -> value:'T -> bool

  val has : 'T t -> value:'T -> bool
end

module WeakSetConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?values:'T list or_null -> unit -> 'T WeakSet.t

  val get_prototype : t -> untyped_object WeakSet.t
end

val weakSet : WeakSetConstructor.t
