type never = private Ojs.t

val never_to_js : never -> Ojs.t

val never_of_js : Ojs.t -> never

module Never : sig
  type t = never

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val absurd : t -> 'a
end

type any = private Ojs.t

val any_to_js : any -> Ojs.t

val any_of_js : Ojs.t -> any

module Any : sig
  type t = any

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val unsafe_cast : t -> 'a
end

type unknown = private Ojs.t

val unknown_to_js : unknown -> Ojs.t

val unknown_of_js : Ojs.t -> unknown

module Unknown : sig
  type t = unknown

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val unsafe_cast : t -> 'a
end

type -'a intf

val intf_to_js : ('a -> Ojs.t) -> 'a intf -> Ojs.t

val intf_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a intf

type ('t, +'a) enum

val enum_to_js : ('t -> Ojs.t) -> ('a -> Ojs.t) -> ('t, 'a) enum -> Ojs.t

val enum_of_js : (Ojs.t -> 't) -> (Ojs.t -> 'a) -> Ojs.t -> ('t, 'a) enum

module Enum : sig
  type ('t, +'a) t = ('t, 'a) enum

  val t_to_js : ('t -> Ojs.t) -> ('a -> Ojs.t) -> ('t, 'a) t -> Ojs.t

  val t_of_js : (Ojs.t -> 't) -> (Ojs.t -> 'a) -> Ojs.t -> ('t, 'a) t

  val get_value : ('t, 'a) t -> 'a
end

type untyped_object

val untyped_object_of_js : Ojs.t -> untyped_object

val untyped_object_to_js : untyped_object -> Ojs.t

type untyped_function

val untyped_function_of_js : Ojs.t -> untyped_function

val untyped_function_to_js : untyped_function -> Ojs.t

type symbol

val symbol_of_js : Ojs.t -> symbol

val symbol_to_js : symbol -> Ojs.t

type regexp

val regexp_of_js : Ojs.t -> regexp

val regexp_to_js : regexp -> Ojs.t

type bigint

val bigint_of_js : Ojs.t -> bigint

val bigint_to_js : bigint -> Ojs.t

type 'a or_null = 'a option

val or_null_to_js : ('a -> Ojs.t) -> 'a or_null -> Ojs.t

val or_null_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_null

type 'a or_undefined = 'a option

val or_undefined_to_js : ('a -> Ojs.t) -> 'a or_undefined -> Ojs.t

val or_undefined_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_undefined

type 'a or_null_or_undefined = 'a option

val or_null_or_undefined_to_js
  :  ('a -> Ojs.t)
  -> 'a or_null_or_undefined
  -> Ojs.t

val or_null_or_undefined_of_js
  :  (Ojs.t -> 'a)
  -> Ojs.t
  -> 'a or_null_or_undefined

type ('a, 'b) and_ = private Ojs.t

val and__to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) and_ -> Ojs.t

val and__of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) and_

module And : sig
  type ('a, 'b) t = ('a, 'b) and_

  val t_to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) t

  val car : ('a, 'b) t -> 'a

  val cdr : ('a, 'b) t -> 'b
end

type ('a, 'b) intersection2 = ('b, 'a) and_

val intersection2_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('a, 'b) intersection2
  -> Ojs.t

val intersection2_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> Ojs.t
  -> ('a, 'b) intersection2

type ('a, 'b, 'c) intersection3 = (('b, 'c) intersection2, 'a) and_

val intersection3_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('a, 'b, 'c) intersection3
  -> Ojs.t

val intersection3_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> Ojs.t
  -> ('a, 'b, 'c) intersection3

type ('a, 'b, 'c, 'd) intersection4 = (('b, 'c, 'd) intersection3, 'a) and_

val intersection4_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('a, 'b, 'c, 'd) intersection4
  -> Ojs.t

val intersection4_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd) intersection4

type ('a, 'b, 'c, 'd, 'e) intersection5 =
  (('b, 'c, 'd, 'e) intersection4, 'a) and_

val intersection5_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e) intersection5
  -> Ojs.t

val intersection5_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e) intersection5

type ('a, 'b, 'c, 'd, 'e, 'f) intersection6 =
  (('b, 'c, 'd, 'e, 'f) intersection5, 'a) and_

val intersection6_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('f -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e, 'f) intersection6
  -> Ojs.t

val intersection6_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> (Ojs.t -> 'f)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e, 'f) intersection6

type ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 =
  (('b, 'c, 'd, 'e, 'f, 'g) intersection6, 'a) and_

val intersection7_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('f -> Ojs.t)
  -> ('g -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7
  -> Ojs.t

val intersection7_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> (Ojs.t -> 'f)
  -> (Ojs.t -> 'g)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7

type ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 =
  (('b, 'c, 'd, 'e, 'f, 'g, 'h) intersection7, 'a) and_

val intersection8_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('f -> Ojs.t)
  -> ('g -> Ojs.t)
  -> ('h -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8
  -> Ojs.t

val intersection8_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> (Ojs.t -> 'f)
  -> (Ojs.t -> 'g)
  -> (Ojs.t -> 'h)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8

module Intersection : sig
  val get_0 : ('a, 'b) intersection2 -> 'a

  val get_1 : ('a, 'b, 'c) intersection3 -> 'b

  val get_2 : ('a, 'b, 'c, 'd) intersection4 -> 'c

  val get_3 : ('a, 'b, 'c, 'd, 'e) intersection5 -> 'd

  val get_4 : ('a, 'b, 'c, 'd, 'e, 'f) intersection6 -> 'e

  val get_5 : ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 -> 'f

  val get_6 : ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 -> 'g
end

type ('a, 'b) or_

val or__to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) or_ -> Ojs.t

val or__of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) or_

module Or : sig
  type ('a, 'b) t = ('a, 'b) or_

  val t_to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) t

  val inl : 'a -> ('a, 'b) t

  val test
    :  is_left:(Ojs.t -> bool)
    -> is_right:(Ojs.t -> bool)
    -> ('a, 'b) t
    -> [ `Left of 'a | `Right of 'b | `Other of Ojs.t ]
end

type ('a, 'b) union2 = ('b, 'a) or_

val union2_to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) union2 -> Ojs.t

val union2_of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) union2

type ('a, 'b, 'c) union3 = (('b, 'c) union2, 'a) or_

val union3_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('a, 'b, 'c) union3
  -> Ojs.t

val union3_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> Ojs.t
  -> ('a, 'b, 'c) union3

type ('a, 'b, 'c, 'd) union4 = (('b, 'c, 'd) union3, 'a) or_

val union4_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('a, 'b, 'c, 'd) union4
  -> Ojs.t

val union4_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd) union4

type ('a, 'b, 'c, 'd, 'e) union5 = (('b, 'c, 'd, 'e) union4, 'a) or_

val union5_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e) union5
  -> Ojs.t

val union5_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e) union5

type ('a, 'b, 'c, 'd, 'e, 'f) union6 = (('b, 'c, 'd, 'e, 'f) union5, 'a) or_

val union6_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('f -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e, 'f) union6
  -> Ojs.t

val union6_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> (Ojs.t -> 'f)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e, 'f) union6

type ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7 =
  (('b, 'c, 'd, 'e, 'f, 'g) union6, 'a) or_

val union7_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('f -> Ojs.t)
  -> ('g -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7
  -> Ojs.t

val union7_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> (Ojs.t -> 'f)
  -> (Ojs.t -> 'g)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7

type ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8 =
  (('b, 'c, 'd, 'e, 'f, 'g, 'h) union7, 'a) or_

val union8_to_js
  :  ('a -> Ojs.t)
  -> ('b -> Ojs.t)
  -> ('c -> Ojs.t)
  -> ('d -> Ojs.t)
  -> ('e -> Ojs.t)
  -> ('f -> Ojs.t)
  -> ('g -> Ojs.t)
  -> ('h -> Ojs.t)
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8
  -> Ojs.t

val union8_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'b)
  -> (Ojs.t -> 'c)
  -> (Ojs.t -> 'd)
  -> (Ojs.t -> 'e)
  -> (Ojs.t -> 'f)
  -> (Ojs.t -> 'g)
  -> (Ojs.t -> 'h)
  -> Ojs.t
  -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8

module Union : sig
  val inject_0 : 'a -> ('a, 'b) union2

  val inject_1 : 'b -> ('a, 'b, 'c) union3

  val inject_2 : 'c -> ('a, 'b, 'c, 'd) union4

  val inject_3 : 'd -> ('a, 'b, 'c, 'd, 'e) union5

  val inject_4 : 'e -> ('a, 'b, 'c, 'd, 'e, 'f) union6

  val inject_5 : 'f -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7

  val inject_6 : 'g -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8
end

type 'a or_string =
  [ `String of string
  | `Other of 'a
  ]

val or_string_to_js : ('a -> Ojs.t) -> 'a or_string -> Ojs.t

val or_string_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_string

type 'a or_number =
  [ `Number of float
  | `Other of 'a
  ]

val or_number_to_js : ('a -> Ojs.t) -> 'a or_number -> Ojs.t

val or_number_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_number

type 'a or_boolean =
  [ `Boolean of bool
  | `Other of 'a
  ]

val or_boolean_to_js : ('a -> Ojs.t) -> 'a or_boolean -> Ojs.t

val or_boolean_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_boolean

type 'a or_symbol =
  [ `Symbol of symbol
  | `Other of 'a
  ]

val or_symbol_to_js : ('a -> Ojs.t) -> 'a or_symbol -> Ojs.t

val or_symbol_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_symbol

type 'a or_bigint =
  [ `BigInt of bigint
  | `Other of 'a
  ]

val or_bigint_to_js : ('a -> Ojs.t) -> 'a or_bigint -> Ojs.t

val or_bigint_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_bigint

val is_array : Ojs.t -> bool

type ('a, 't) or_array =
  [ `Array of 't list
  | `Other of 'a
  ]

val or_array_to_js
  :  ('a -> Ojs.t)
  -> ('t -> Ojs.t)
  -> ('a, 't) or_array
  -> Ojs.t

val or_array_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 't)
  -> Ojs.t
  -> ('a, 't) or_array

type ('a, 'cases) or_enum =
  [ `Enum of 'cases
  | `Other of 'a
  ]

val or_enum_to_js
  :  ('a -> Ojs.t)
  -> ('cases -> Ojs.t)
  -> ('a, 'cases) or_enum
  -> Ojs.t

val or_enum_of_js
  :  (Ojs.t -> 'a)
  -> (Ojs.t -> 'cases)
  -> Ojs.t
  -> ('a, 'cases) or_enum

external pure_js_expr : string -> Ojs.t = "caml_pure_js_expr"

val naN : float

val infinity : float

val eval : x:string -> any

val parseInt : s:string -> ?radix:float -> unit -> float

val parseFloat : string:string -> float

val isNaN : number:float -> bool

val isFinite : number:float -> bool

val decodeURI : encodedURI:string -> string

val decodeURIComponent : encodedURIComponent:string -> string

val encodeURI : uri:string -> string

val encodeURIComponent : uriComponent:bool or_string or_number -> string

val escape : string:string -> string

val unescape : string:string -> string

module Symbol : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toString : t -> string

  val valueOf : t -> symbol
end

module PropertyKey : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module PropertyDescriptor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_configurable : t -> bool

  val set_configurable : t -> bool -> unit

  val get_enumerable : t -> bool

  val set_enumerable : t -> bool -> unit

  val get_value : t -> any

  val set_value : t -> any -> unit

  val get_writable : t -> bool

  val set_writable : t -> bool -> unit

  val get_ : t -> any

  val set_ : t -> v:any -> unit
end

module PropertyDescriptorMap : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> PropertyDescriptor.t

  val set : t -> string -> PropertyDescriptor.t -> unit
end

module Function : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply_ : t -> this:t -> thisArg:any -> ?argArray:any -> unit -> any

  val call : t -> this:t -> thisArg:any -> argArray:any list -> any

  val bind : t -> this:t -> thisArg:any -> argArray:any list -> any

  val toString : t -> string

  val get_prototype : t -> any

  val set_prototype : t -> any -> unit

  val get_length : t -> float

  val get_arguments : t -> any

  val set_arguments : t -> any -> unit

  val get_caller : t -> t

  val set_caller : t -> t -> unit

  (* Constructor *)

  val create : args:string list -> t
end

module ThisType : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Readonly : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module ConcatArray : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_length : 'T t -> float

  val get : 'T t -> float -> 'T

  val join : 'T t -> ?separator:string -> unit -> string

  val slice : 'T t -> ?start:float -> ?end_:float -> unit -> 'T list
end

module ReadonlyArray : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_length : 'T t -> float

  val toString : 'T t -> string

  val toLocaleString : 'T t -> string

  val concat : 'T t -> items:'T ConcatArray.t list -> 'T list

  val concat' : 'T t -> items:('T, 'T ConcatArray.t) union2 list -> 'T list

  val join : 'T t -> ?separator:string -> unit -> string

  val slice : 'T t -> ?start:float -> ?end_:float -> unit -> 'T list

  val indexOf : 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> float

  val lastIndexOf
    :  'T t
    -> searchElement:'T
    -> ?fromIndex:float
    -> unit
    -> float

  val every
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> bool

  val every'
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val some
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> index:float -> array:'T list -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val map
    :  'T t
    -> callbackfn:(value:'T -> index:float -> array:'T list -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list

  val filter
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S list

  val filter'
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T list

  val reduce
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> 'T

  val reduce'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T

  val reduce''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> 'T

  val reduceRight'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T

  val reduceRight''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U

  val get : 'T t -> float -> 'T

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module Array : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_length : 'T t -> float

  val set_length : 'T t -> float -> unit

  val toString : 'T t -> string

  val toLocaleString : 'T t -> string

  val pop : 'T t -> 'T or_undefined

  val push : 'T t -> items:'T list -> float

  val concat : 'T t -> items:'T ConcatArray.t list -> 'T list

  val concat' : 'T t -> items:('T, 'T ConcatArray.t) union2 list -> 'T list

  val join : 'T t -> ?separator:string -> unit -> string

  val reverse : 'T t -> 'T list

  val shift : 'T t -> 'T or_undefined

  val slice : 'T t -> ?start:float -> ?end_:float -> unit -> 'T list

  val sort : 'T t -> ?compareFn:(a:'T -> b:'T -> float) -> unit -> 'T t

  val splice : 'T t -> start:float -> ?deleteCount:float -> unit -> 'T list

  val splice'
    :  'T t
    -> start:float
    -> deleteCount:float
    -> items:'T list
    -> 'T list

  val unshift : 'T t -> items:'T list -> float

  val indexOf : 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> float

  val lastIndexOf
    :  'T t
    -> searchElement:'T
    -> ?fromIndex:float
    -> unit
    -> float

  val every
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> bool

  val every'
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val some
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> index:float -> array:'T list -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val map
    :  'T t
    -> callbackfn:(value:'T -> index:float -> array:'T list -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list

  val filter
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S list

  val filter'
    :  'T t
    -> predicate:(value:'T -> index:float -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T list

  val reduce
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> 'T

  val reduce'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T

  val reduce''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> 'T

  val reduceRight'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T

  val reduceRight''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:float
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U

  val get : 'T t -> float -> 'T

  val set : 'T t -> float -> 'T -> unit

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t

  (* Constructor *)

  val create : ?arrayLength:float -> unit -> any list

  val create' : arrayLength:float -> 'T list

  val create'' : items:'T list -> 'T list

  val isArray : arg:any -> bool
end

module ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?arrayLength:float -> unit -> any list

  val create' : t -> arrayLength:float -> 'T list

  val create'' : t -> items:'T list -> 'T list

  val apply : t -> ?arrayLength:float -> unit -> any list

  val apply' : t -> arrayLength:float -> 'T list

  val apply'' : t -> items:'T list -> 'T list

  val isArray : t -> arg:any -> bool

  val get_prototype : t -> any list
end

val array : ArrayConstructor.t

module Object : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_constructor : t -> Function.t

  val set_constructor : t -> Function.t -> unit

  val toString : t -> string

  val toLocaleString : t -> string

  val valueOf : t -> t

  val hasOwnProperty : t -> v:PropertyKey.t -> bool

  val isPrototypeOf : t -> v:t -> bool

  val propertyIsEnumerable : t -> v:PropertyKey.t -> bool

  (* Constructor *)

  val create : ?value:any -> unit -> t

  val getPrototypeOf : o:any -> any

  val getOwnPropertyDescriptor
    :  o:any
    -> p:PropertyKey.t
    -> PropertyDescriptor.t or_undefined

  val getOwnPropertyNames : o:any -> string list

  val create_ : o:untyped_object or_null -> any

  val create_'
    :  o:untyped_object or_null
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any

  val defineProperty
    :  t
    -> o:any
    -> p:PropertyKey.t
    -> attributes:(PropertyDescriptor.t, any ThisType.t) intersection2
    -> any

  val defineProperties
    :  t
    -> o:any
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any

  val seal : o:'T -> 'T

  val freeze : a:'T list -> 'T list

  val freeze' : f:'T -> 'T

  val freeze'' : o:'T -> 'T Readonly.t

  val preventExtensions : o:'T -> 'T

  val isSealed : o:any -> bool

  val isFrozen : o:any -> bool

  val isExtensible : o:any -> bool

  val keys : o:untyped_object -> string list
end

module ObjectConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> Object.t

  val apply : t -> any

  val apply' : t -> value:any -> any

  val get_prototype : t -> Object.t

  val getPrototypeOf : t -> o:any -> any

  val getOwnPropertyDescriptor
    :  t
    -> o:any
    -> p:PropertyKey.t
    -> PropertyDescriptor.t or_undefined

  val getOwnPropertyNames : t -> o:any -> string list

  val create_ : t -> o:untyped_object or_null -> any

  val create_'
    :  t
    -> o:untyped_object or_null
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any

  val defineProperty
    :  t
    -> o:any
    -> p:PropertyKey.t
    -> attributes:(PropertyDescriptor.t, any ThisType.t) intersection2
    -> any

  val defineProperties
    :  t
    -> o:any
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any

  val seal : t -> o:'T -> 'T

  val freeze : t -> a:'T list -> 'T list

  val freeze' : t -> f:'T -> 'T

  val freeze'' : t -> o:'T -> 'T Readonly.t

  val preventExtensions : t -> o:'T -> 'T

  val isSealed : t -> o:any -> bool

  val isFrozen : t -> o:any -> bool

  val isExtensible : t -> o:any -> bool

  val keys : t -> o:untyped_object -> string list
end

val object_ : ObjectConstructor.t

module FunctionConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> args:string list -> Function.t

  val apply : t -> args:string list -> Function.t

  val get_prototype : t -> Function.t
end

val function_ : FunctionConstructor.t

module ThisParameterType : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module OmitThisParameter : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module CallableFunction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply_ : t -> this:(this:'T -> 'R) -> thisArg:'T -> 'R

  val apply_'
    :  t
    -> this:
         (this:'T
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               any list
          -> 'R)
    -> thisArg:'T
    -> args:'A
    -> 'R

  val call
    :  t
    -> this:
         (this:'T
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               any list
          -> 'R)
    -> thisArg:'T
    -> args:(* FIXME: type ''A' cannot be used for variadic argument *)
         any list
    -> 'R

  val bind
    :  t
    -> this:'T
    -> thisArg:'T ThisParameterType.t
    -> 'T OmitThisParameter.t

  val bind'
    :  t
    -> this:
         (this:'T
          -> arg0:'A0
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               any list
          -> 'R)
    -> thisArg:'T
    -> arg0:'A0
    -> (args:(* FIXME: type ''A' cannot be used for variadic argument *)
          any list
        -> 'R
       [@js.dummy])

  val bind''
    :  t
    -> this:
         (this:'T
          -> arg0:'A0
          -> arg1:'A1
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               any list
          -> 'R)
    -> thisArg:'T
    -> arg0:'A0
    -> arg1:'A1
    -> (args:(* FIXME: type ''A' cannot be used for variadic argument *)
          any list
        -> 'R
       [@js.dummy])

  val bind'''
    :  t
    -> this:
         (this:'T
          -> arg0:'A0
          -> arg1:'A1
          -> arg2:'A2
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               any list
          -> 'R)
    -> thisArg:'T
    -> arg0:'A0
    -> arg1:'A1
    -> arg2:'A2
    -> (args:(* FIXME: type ''A' cannot be used for variadic argument *)
          any list
        -> 'R
       [@js.dummy])

  val bind''''
    :  t
    -> this:
         (this:'T
          -> arg0:'A0
          -> arg1:'A1
          -> arg2:'A2
          -> arg3:'A3
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               any list
          -> 'R)
    -> thisArg:'T
    -> arg0:'A0
    -> arg1:'A1
    -> arg2:'A2
    -> arg3:'A3
    -> (args:(* FIXME: type ''A' cannot be used for variadic argument *)
          any list
        -> 'R
       [@js.dummy])

  val cast : t -> Function.t
end

module NewableFunction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val bind : t -> this:'T -> thisArg:any -> 'T

  val cast : t -> Function.t
end

module IArguments : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> float -> any

  val set : t -> float -> any -> unit

  val get_length : t -> float

  val set_length : t -> float -> unit

  val get_callee : t -> Function.t

  val set_callee : t -> Function.t -> unit
end

module CollatorOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_usage : t -> string

  val set_usage : t -> string -> unit

  val get_localeMatcher : t -> string

  val set_localeMatcher : t -> string -> unit

  val get_numeric : t -> bool

  val set_numeric : t -> bool -> unit

  val get_caseFirst : t -> string

  val set_caseFirst : t -> string -> unit

  val get_sensitivity : t -> string

  val set_sensitivity : t -> string -> unit

  val get_ignorePunctuation : t -> bool

  val set_ignorePunctuation : t -> bool -> unit
end

module ResolvedCollatorOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_locale : t -> string

  val set_locale : t -> string -> unit

  val get_usage : t -> string

  val set_usage : t -> string -> unit

  val get_sensitivity : t -> string

  val set_sensitivity : t -> string -> unit

  val get_ignorePunctuation : t -> bool

  val set_ignorePunctuation : t -> bool -> unit

  val get_collation : t -> string

  val set_collation : t -> string -> unit

  val get_caseFirst : t -> string

  val set_caseFirst : t -> string -> unit

  val get_numeric : t -> bool

  val set_numeric : t -> bool -> unit
end

module Collator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val compare : t -> x:string -> y:string -> float

  val resolvedOptions : t -> ResolvedCollatorOptions.t
end

module NumberFormatOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_localeMatcher : t -> string

  val set_localeMatcher : t -> string -> unit

  val get_style : t -> string

  val set_style : t -> string -> unit

  val get_currency : t -> string

  val set_currency : t -> string -> unit

  val get_currencyDisplay : t -> string

  val set_currencyDisplay : t -> string -> unit

  val get_currencySign : t -> string

  val set_currencySign : t -> string -> unit

  val get_useGrouping : t -> bool

  val set_useGrouping : t -> bool -> unit

  val get_minimumIntegerDigits : t -> float

  val set_minimumIntegerDigits : t -> float -> unit

  val get_minimumFractionDigits : t -> float

  val set_minimumFractionDigits : t -> float -> unit

  val get_maximumFractionDigits : t -> float

  val set_maximumFractionDigits : t -> float -> unit

  val get_minimumSignificantDigits : t -> float

  val set_minimumSignificantDigits : t -> float -> unit

  val get_maximumSignificantDigits : t -> float

  val set_maximumSignificantDigits : t -> float -> unit
end

module ResolvedNumberFormatOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_locale : t -> string

  val set_locale : t -> string -> unit

  val get_numberingSystem : t -> string

  val set_numberingSystem : t -> string -> unit

  val get_style : t -> string

  val set_style : t -> string -> unit

  val get_currency : t -> string

  val set_currency : t -> string -> unit

  val get_currencyDisplay : t -> string

  val set_currencyDisplay : t -> string -> unit

  val get_minimumIntegerDigits : t -> float

  val set_minimumIntegerDigits : t -> float -> unit

  val get_minimumFractionDigits : t -> float

  val set_minimumFractionDigits : t -> float -> unit

  val get_maximumFractionDigits : t -> float

  val set_maximumFractionDigits : t -> float -> unit

  val get_minimumSignificantDigits : t -> float

  val set_minimumSignificantDigits : t -> float -> unit

  val get_maximumSignificantDigits : t -> float

  val set_maximumSignificantDigits : t -> float -> unit

  val get_useGrouping : t -> bool

  val set_useGrouping : t -> bool -> unit
end

module NumberFormat : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val format : t -> value:float -> string

  val resolvedOptions : t -> ResolvedNumberFormatOptions.t
end

module DateTimeFormatOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_localeMatcher
    :  t
    -> ([ `L_s2_best_fit [@js "best fit"] | `L_s4_lookup [@js "lookup"] ]
       [@js.enum])

  val set_localeMatcher
    :  t
    -> ([ `L_s2_best_fit | `L_s4_lookup ][@js.enum])
    -> unit

  val get_weekday
    :  t
    -> ([ `L_s3_long [@js "long"]
        | `L_s5_narrow [@js "narrow"]
        | `L_s7_short [@js "short"]
        ]
       [@js.enum])

  val set_weekday
    :  t
    -> ([ `L_s3_long | `L_s5_narrow | `L_s7_short ][@js.enum])
    -> unit

  val get_era
    :  t
    -> ([ `L_s3_long [@js "long"]
        | `L_s5_narrow [@js "narrow"]
        | `L_s7_short [@js "short"]
        ]
       [@js.enum])

  val set_era
    :  t
    -> ([ `L_s3_long | `L_s5_narrow | `L_s7_short ][@js.enum])
    -> unit

  val get_year
    :  t
    -> ([ `L_s0_2_digit [@js "2-digit"] | `L_s6_numeric [@js "numeric"] ]
       [@js.enum])

  val set_year : t -> ([ `L_s0_2_digit | `L_s6_numeric ][@js.enum]) -> unit

  val get_month
    :  t
    -> ([ `L_s0_2_digit [@js "2-digit"]
        | `L_s3_long [@js "long"]
        | `L_s5_narrow [@js "narrow"]
        | `L_s6_numeric [@js "numeric"]
        | `L_s7_short [@js "short"]
        ]
       [@js.enum])

  val set_month
    :  t
    -> ([ `L_s0_2_digit
        | `L_s3_long
        | `L_s5_narrow
        | `L_s6_numeric
        | `L_s7_short
        ]
       [@js.enum])
    -> unit

  val get_day
    :  t
    -> ([ `L_s0_2_digit [@js "2-digit"] | `L_s6_numeric [@js "numeric"] ]
       [@js.enum])

  val set_day : t -> ([ `L_s0_2_digit | `L_s6_numeric ][@js.enum]) -> unit

  val get_hour
    :  t
    -> ([ `L_s0_2_digit [@js "2-digit"] | `L_s6_numeric [@js "numeric"] ]
       [@js.enum])

  val set_hour : t -> ([ `L_s0_2_digit | `L_s6_numeric ][@js.enum]) -> unit

  val get_minute
    :  t
    -> ([ `L_s0_2_digit [@js "2-digit"] | `L_s6_numeric [@js "numeric"] ]
       [@js.enum])

  val set_minute : t -> ([ `L_s0_2_digit | `L_s6_numeric ][@js.enum]) -> unit

  val get_second
    :  t
    -> ([ `L_s0_2_digit [@js "2-digit"] | `L_s6_numeric [@js "numeric"] ]
       [@js.enum])

  val set_second : t -> ([ `L_s0_2_digit | `L_s6_numeric ][@js.enum]) -> unit

  val get_timeZoneName
    :  t
    -> ([ `L_s3_long [@js "long"] | `L_s7_short [@js "short"] ][@js.enum])

  val set_timeZoneName : t -> ([ `L_s3_long | `L_s7_short ][@js.enum]) -> unit

  val get_formatMatcher
    :  t
    -> ([ `L_s1_basic [@js "basic"] | `L_s2_best_fit [@js "best fit"] ]
       [@js.enum])

  val set_formatMatcher
    :  t
    -> ([ `L_s1_basic | `L_s2_best_fit ][@js.enum])
    -> unit

  val get_hour12 : t -> bool

  val set_hour12 : t -> bool -> unit

  val get_timeZone : t -> string

  val set_timeZone : t -> string -> unit
end

module ResolvedDateTimeFormatOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_locale : t -> string

  val set_locale : t -> string -> unit

  val get_calendar : t -> string

  val set_calendar : t -> string -> unit

  val get_numberingSystem : t -> string

  val set_numberingSystem : t -> string -> unit

  val get_timeZone : t -> string

  val set_timeZone : t -> string -> unit

  val get_hour12 : t -> bool

  val set_hour12 : t -> bool -> unit

  val get_weekday : t -> string

  val set_weekday : t -> string -> unit

  val get_era : t -> string

  val set_era : t -> string -> unit

  val get_year : t -> string

  val set_year : t -> string -> unit

  val get_month : t -> string

  val set_month : t -> string -> unit

  val get_day : t -> string

  val set_day : t -> string -> unit

  val get_hour : t -> string

  val set_hour : t -> string -> unit

  val get_minute : t -> string

  val set_minute : t -> string -> unit

  val get_second : t -> string

  val set_second : t -> string -> unit

  val get_timeZoneName : t -> string

  val set_timeZoneName : t -> string -> unit
end

module RegExpMatchArray : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_index : t -> float

  val set_index : t -> float -> unit

  val get_input : t -> string

  val set_input : t -> string -> unit

  val cast : t -> string Array.t
end

module RegExpExecArray : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_index : t -> float

  val set_index : t -> float -> unit

  val get_input : t -> string

  val set_input : t -> string -> unit

  val cast : t -> string Array.t
end

module RegExp : sig
  type t = regexp

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val exec : t -> string:string -> RegExpExecArray.t or_null

  val test : t -> string:string -> bool

  val get_source : t -> string

  val get_global : t -> bool

  val get_ignoreCase : t -> bool

  val get_multiline : t -> bool

  val get_lastIndex : t -> float

  val set_lastIndex : t -> float -> unit

  val compile : t -> t

  (* Constructor *)

  val create : pattern:t or_string -> t

  val create' : pattern:string -> ?flags:string -> unit -> t

  val get__1 : unit -> string

  val set__1 : string -> unit

  val get__2 : unit -> string

  val set__2 : string -> unit

  val get__3 : unit -> string

  val set__3 : string -> unit

  val get__4 : unit -> string

  val set__4 : string -> unit

  val get__5 : unit -> string

  val set__5 : string -> unit

  val get__6 : unit -> string

  val set__6 : string -> unit

  val get__7 : unit -> string

  val set__7 : string -> unit

  val get__8 : unit -> string

  val set__8 : string -> unit

  val get__9 : unit -> string

  val set__9 : string -> unit

  val get_lastMatch : unit -> string

  val set_lastMatch : string -> unit
end

module RegExpConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> pattern:RegExp.t or_string -> RegExp.t

  val create' : t -> pattern:string -> ?flags:string -> unit -> RegExp.t

  val apply : t -> pattern:RegExp.t or_string -> RegExp.t

  val apply' : t -> pattern:string -> ?flags:string -> unit -> RegExp.t

  val get_prototype : t -> RegExp.t

  val get__1 : t -> string

  val set__1 : t -> string -> unit

  val get__2 : t -> string

  val set__2 : t -> string -> unit

  val get__3 : t -> string

  val set__3 : t -> string -> unit

  val get__4 : t -> string

  val set__4 : t -> string -> unit

  val get__5 : t -> string

  val set__5 : t -> string -> unit

  val get__6 : t -> string

  val set__6 : t -> string -> unit

  val get__7 : t -> string

  val set__7 : t -> string -> unit

  val get__8 : t -> string

  val set__8 : t -> string -> unit

  val get__9 : t -> string

  val set__9 : t -> string -> unit

  val get_lastMatch : t -> string

  val set_lastMatch : t -> string -> unit
end

val regExp : RegExpConstructor.t

module String : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val localeCompare
    :  t
    -> that:string
    -> ?locales:string list or_string
    -> ?options:CollatorOptions.t
    -> unit
    -> float

  val toString : t -> string

  val charAt : t -> pos:float -> string

  val charCodeAt : t -> index:float -> float

  val concat : t -> strings:string list -> string

  val indexOf : t -> searchString:string -> ?position:float -> unit -> float

  val lastIndexOf : t -> searchString:string -> ?position:float -> unit -> float

  val localeCompare' : t -> that:string -> float

  val match_ : t -> regexp:RegExp.t or_string -> RegExpMatchArray.t or_null

  val replace
    :  t
    -> searchValue:RegExp.t or_string
    -> replaceValue:string
    -> string

  val replace'
    :  t
    -> searchValue:RegExp.t or_string
    -> replacer:(substring:string -> args:any list -> string)
    -> string

  val search : t -> regexp:RegExp.t or_string -> float

  val slice : t -> ?start:float -> ?end_:float -> unit -> string

  val split
    :  t
    -> separator:RegExp.t or_string
    -> ?limit:float
    -> unit
    -> string list

  val substring : t -> start:float -> ?end_:float -> unit -> string

  val toLowerCase : t -> string

  val toLocaleLowerCase : t -> ?locales:string list or_string -> unit -> string

  val toUpperCase : t -> string

  val toLocaleUpperCase : t -> ?locales:string list or_string -> unit -> string

  val trim : t -> string

  val get_length : t -> float

  val substr : t -> from:float -> ?length:float -> unit -> string

  val valueOf : t -> string

  val get : t -> float -> string

  val to_ml : t -> string

  val of_ml : string -> t

  (* Constructor *)

  val create : ?value:any -> unit -> t

  val fromCharCode : codes:float list -> string
end

module StringConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> String.t

  val apply : t -> ?value:any -> unit -> string

  val get_prototype : t -> String.t

  val fromCharCode : t -> codes:float list -> string
end

val string : StringConstructor.t

module Boolean : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val valueOf : t -> bool

  val to_ml : t -> bool

  val of_ml : bool -> t

  (* Constructor *)

  val create : ?value:any -> unit -> t
end

module BooleanConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> Boolean.t

  val apply : t -> ?value:'T -> unit -> bool

  val get_prototype : t -> Boolean.t
end

val boolean : BooleanConstructor.t

module Number : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toLocaleString
    :  t
    -> ?locales:string list or_string
    -> ?options:NumberFormatOptions.t
    -> unit
    -> string

  val toString : t -> ?radix:float -> unit -> string

  val toFixed : t -> ?fractionDigits:float -> unit -> string

  val toExponential : t -> ?fractionDigits:float -> unit -> string

  val toPrecision : t -> ?precision:float -> unit -> string

  val valueOf : t -> float

  val to_ml : t -> float

  val of_ml : float -> t

  (* Constructor *)

  val create : ?value:any -> unit -> t

  val get_MAX_VALUE : float

  val get_MIN_VALUE : float

  val get_NaN : float

  val get_NEGATIVE_INFINITY : float

  val get_POSITIVE_INFINITY : float
end

module NumberConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> Number.t

  val apply : t -> ?value:any -> unit -> float

  val get_prototype : t -> Number.t

  val get_MAX_VALUE : t -> float

  val get_MIN_VALUE : t -> float

  val get_NaN : t -> float

  val get_NEGATIVE_INFINITY : t -> float

  val get_POSITIVE_INFINITY : t -> float
end

val number : NumberConstructor.t

module TemplateStringsArray : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_raw : t -> string list

  val cast : t -> string ReadonlyArray.t
end

module ImportMeta : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Math : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_E : t -> float

  val get_LN10 : t -> float

  val get_LN2 : t -> float

  val get_LOG2E : t -> float

  val get_LOG10E : t -> float

  val get_PI : t -> float

  val get_SQRT1_2 : t -> float

  val get_SQRT2 : t -> float

  val abs : t -> x:float -> float

  val acos : t -> x:float -> float

  val asin : t -> x:float -> float

  val atan : t -> x:float -> float

  val atan2 : t -> y:float -> x:float -> float

  val ceil : t -> x:float -> float

  val cos : t -> x:float -> float

  val exp : t -> x:float -> float

  val floor : t -> x:float -> float

  val log : t -> x:float -> float

  val max : t -> values:float list -> float

  val min : t -> values:float list -> float

  val pow : t -> x:float -> y:float -> float

  val random : t -> float

  val round : t -> x:float -> float

  val sin : t -> x:float -> float

  val sqrt : t -> x:float -> float

  val tan : t -> x:float -> float
end

val math : Math.t

module Date : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toLocaleString
    :  t
    -> ?locales:string list or_string
    -> ?options:DateTimeFormatOptions.t
    -> unit
    -> string

  val toLocaleDateString
    :  t
    -> ?locales:string list or_string
    -> ?options:DateTimeFormatOptions.t
    -> unit
    -> string

  val toLocaleTimeString
    :  t
    -> ?locales:string list or_string
    -> ?options:DateTimeFormatOptions.t
    -> unit
    -> string

  val toString : t -> string

  val toDateString : t -> string

  val toTimeString : t -> string

  val toLocaleString' : t -> string

  val toLocaleDateString' : t -> string

  val toLocaleTimeString' : t -> string

  val valueOf : t -> float

  val getTime : t -> float

  val getFullYear : t -> float

  val getUTCFullYear : t -> float

  val getMonth : t -> float

  val getUTCMonth : t -> float

  val getDate : t -> float

  val getUTCDate : t -> float

  val getDay : t -> float

  val getUTCDay : t -> float

  val getHours : t -> float

  val getUTCHours : t -> float

  val getMinutes : t -> float

  val getUTCMinutes : t -> float

  val getSeconds : t -> float

  val getUTCSeconds : t -> float

  val getMilliseconds : t -> float

  val getUTCMilliseconds : t -> float

  val getTimezoneOffset : t -> float

  val setTime : t -> time:float -> float

  val setMilliseconds : t -> ms:float -> float

  val setUTCMilliseconds : t -> ms:float -> float

  val setSeconds : t -> sec:float -> ?ms:float -> unit -> float

  val setUTCSeconds : t -> sec:float -> ?ms:float -> unit -> float

  val setMinutes : t -> min:float -> ?sec:float -> ?ms:float -> unit -> float

  val setUTCMinutes : t -> min:float -> ?sec:float -> ?ms:float -> unit -> float

  val setHours
    :  t
    -> hours:float
    -> ?min:float
    -> ?sec:float
    -> ?ms:float
    -> unit
    -> float

  val setUTCHours
    :  t
    -> hours:float
    -> ?min:float
    -> ?sec:float
    -> ?ms:float
    -> unit
    -> float

  val setDate : t -> date:float -> float

  val setUTCDate : t -> date:float -> float

  val setMonth : t -> month:float -> ?date:float -> unit -> float

  val setUTCMonth : t -> month:float -> ?date:float -> unit -> float

  val setFullYear
    :  t
    -> year:float
    -> ?month:float
    -> ?date:float
    -> unit
    -> float

  val setUTCFullYear
    :  t
    -> year:float
    -> ?month:float
    -> ?date:float
    -> unit
    -> float

  val toUTCString : t -> string

  val toISOString : t -> string

  val toJSON : t -> ?key:any -> unit -> string

  (* Constructor *)

  val create : unit -> t

  val create' : value:string or_number -> t

  val create''
    :  t
    -> year:float
    -> month:float
    -> ?date:float
    -> ?hours:float
    -> ?minutes:float
    -> ?seconds:float
    -> ?ms:float
    -> unit
    -> t

  val parse : s:string -> float

  val utc
    :  year:float
    -> month:float
    -> ?date:float
    -> ?hours:float
    -> ?minutes:float
    -> ?seconds:float
    -> ?ms:float
    -> unit
    -> float

  val now : unit -> float
end

module DateConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Date.t

  val create' : t -> value:string or_number -> Date.t

  val create''
    :  t
    -> year:float
    -> month:float
    -> ?date:float
    -> ?hours:float
    -> ?minutes:float
    -> ?seconds:float
    -> ?ms:float
    -> unit
    -> Date.t

  val apply : t -> string

  val get_prototype : t -> Date.t

  val parse : t -> s:string -> float

  val utc
    :  t
    -> year:float
    -> month:float
    -> ?date:float
    -> ?hours:float
    -> ?minutes:float
    -> ?seconds:float
    -> ?ms:float
    -> unit
    -> float

  val now : t -> float
end

val date : DateConstructor.t

module Error : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string

  val set_name : t -> string -> unit

  val get_message : t -> string

  val set_message : t -> string -> unit

  val get_stack : t -> string

  val set_stack : t -> string -> unit

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module ErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> Error.t

  val apply : t -> ?message:string -> unit -> Error.t

  val get_prototype : t -> Error.t
end

val error : ErrorConstructor.t

module EvalError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Error.t

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module EvalErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> EvalError.t

  val apply : t -> ?message:string -> unit -> EvalError.t

  val get_prototype : t -> EvalError.t

  val cast : t -> ErrorConstructor.t
end

val evalError : EvalErrorConstructor.t

module RangeError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Error.t

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module RangeErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> RangeError.t

  val apply : t -> ?message:string -> unit -> RangeError.t

  val get_prototype : t -> RangeError.t

  val cast : t -> ErrorConstructor.t
end

val rangeError : RangeErrorConstructor.t

module ReferenceError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Error.t

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module ReferenceErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> ReferenceError.t

  val apply : t -> ?message:string -> unit -> ReferenceError.t

  val get_prototype : t -> ReferenceError.t

  val cast : t -> ErrorConstructor.t
end

val referenceError : ReferenceErrorConstructor.t

module SyntaxError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Error.t

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module SyntaxErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> SyntaxError.t

  val apply : t -> ?message:string -> unit -> SyntaxError.t

  val get_prototype : t -> SyntaxError.t

  val cast : t -> ErrorConstructor.t
end

val syntaxError : SyntaxErrorConstructor.t

module TypeError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Error.t

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module TypeErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> TypeError.t

  val apply : t -> ?message:string -> unit -> TypeError.t

  val get_prototype : t -> TypeError.t

  val cast : t -> ErrorConstructor.t
end

val typeError : TypeErrorConstructor.t

module URIError : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Error.t

  (* Constructor *)

  val create : ?message:string -> unit -> t
end

module URIErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> URIError.t

  val apply : t -> ?message:string -> unit -> URIError.t

  val get_prototype : t -> URIError.t

  val cast : t -> ErrorConstructor.t
end

val uriError : URIErrorConstructor.t

module JSON : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val parse
    :  text:string
    -> ?reviver:(this:any -> key:string -> value:any -> any)
    -> unit
    -> any

  val stringify
    :  value:any
    -> ?replacer:(this:any -> key:string -> value:any -> any)
    -> ?space:string or_number
    -> unit
    -> string

  val stringify'
    :  value:any
    -> ?replacer:string or_number list or_null
    -> ?space:string or_number
    -> unit
    -> string
end

module TypedPropertyDescriptor : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_enumerable : 'T t -> bool

  val set_enumerable : 'T t -> bool -> unit

  val get_configurable : 'T t -> bool

  val set_configurable : 'T t -> bool -> unit

  val get_writable : 'T t -> bool

  val set_writable : 'T t -> bool -> unit

  val get_value : 'T t -> 'T

  val set_value : 'T t -> 'T -> unit

  val get_ : 'T t -> 'T

  val set_ : 'T t -> value:'T -> unit
end

module ClassDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> target:'TFunction -> ('TFunction, unit) union2
end

module PropertyDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> target:Object.t -> propertyKey:symbol or_string -> unit
end

module MethodDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> target:Object.t
    -> propertyKey:symbol or_string
    -> descriptor:'T TypedPropertyDescriptor.t
    -> (unit, 'T TypedPropertyDescriptor.t) union2
end

module ParameterDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> target:Object.t
    -> propertyKey:symbol or_string
    -> parameterIndex:float
    -> unit
end

module Promise : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val then_
    :  'T t
    -> ?onfulfilled:('T -> 'TResult t)
    -> ?onrejected:(any -> 'TResult t)
    -> unit
    -> 'TResult t

  val catch : 'T t -> ?onrejected:(any -> 'T t) -> unit -> 'T t
end

module Partial : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Required : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Pick : sig
  type ('T, 'K) t

  val t_to_js : ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t
end

module Record : sig
  type ('K, 'T) t

  val t_to_js : ('K -> Ojs.t) -> ('T -> Ojs.t) -> ('K, 'T) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'T) -> Ojs.t -> ('K, 'T) t
end

module Exclude : sig
  type ('T, 'U) t

  val t_to_js : ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
end

module Extract : sig
  type ('T, 'U) t

  val t_to_js : ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t
end

module Omit : sig
  type ('T, 'K) t

  val t_to_js : ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t
end

module NonNullable : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Parameters : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module ConstructorParameters : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module ReturnType : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module InstanceType : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module ArrayBuffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_byteLength : t -> float

  val slice : t -> begin_:float -> ?end_:float -> unit -> t

  (* Constructor *)

  val create : byteLength:float -> t

  val isView : arg:any -> bool
end

module ArrayBufferTypes : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_ArrayBuffer : t -> ArrayBuffer.t

  val set_ArrayBuffer : t -> ArrayBuffer.t -> unit
end

module ArrayBufferConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> ArrayBuffer.t

  val create : t -> byteLength:float -> ArrayBuffer.t

  val isView : t -> arg:any -> bool
end

val arrayBuffer : ArrayBufferConstructor.t

module ArrayBufferView : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val set_buffer : t -> ArrayBuffer.t -> unit

  val get_byteLength : t -> float

  val set_byteLength : t -> float -> unit

  val get_byteOffset : t -> float

  val set_byteOffset : t -> float -> unit
end

module DataView : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val getFloat32 : t -> byteOffset:float -> ?littleEndian:bool -> unit -> float

  val getFloat64 : t -> byteOffset:float -> ?littleEndian:bool -> unit -> float

  val getInt8 : t -> byteOffset:float -> float

  val getInt16 : t -> byteOffset:float -> ?littleEndian:bool -> unit -> float

  val getInt32 : t -> byteOffset:float -> ?littleEndian:bool -> unit -> float

  val getUint8 : t -> byteOffset:float -> float

  val getUint16 : t -> byteOffset:float -> ?littleEndian:bool -> unit -> float

  val getUint32 : t -> byteOffset:float -> ?littleEndian:bool -> unit -> float

  val setFloat32
    :  t
    -> byteOffset:float
    -> value:float
    -> ?littleEndian:bool
    -> unit
    -> unit

  val setFloat64
    :  t
    -> byteOffset:float
    -> value:float
    -> ?littleEndian:bool
    -> unit
    -> unit

  val setInt8 : t -> byteOffset:float -> value:float -> unit

  val setInt16
    :  t
    -> byteOffset:float
    -> value:float
    -> ?littleEndian:bool
    -> unit
    -> unit

  val setInt32
    :  t
    -> byteOffset:float
    -> value:float
    -> ?littleEndian:bool
    -> unit
    -> unit

  val setUint8 : t -> byteOffset:float -> value:float -> unit

  val setUint16
    :  t
    -> byteOffset:float
    -> value:float
    -> ?littleEndian:bool
    -> unit
    -> unit

  val setUint32
    :  t
    -> byteOffset:float
    -> value:float
    -> ?littleEndian:bool
    -> unit
    -> unit

  (* Constructor *)

  val create
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?byteLength:float
    -> unit
    -> t
end

module DataViewConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> DataView.t

  val create
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?byteLength:float
    -> unit
    -> DataView.t
end

val dataView : DataViewConstructor.t

module Int8Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Int8ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Int8Array.t

  val create : t -> length:float -> Int8Array.t

  val create' : t -> array:(ArrayBuffer.t, float Array.t) union2 -> Int8Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Int8Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Int8Array.t

  val from : t -> array:float Array.t -> Int8Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int8Array.t
end

val int8Array : Int8ArrayConstructor.t

module Uint8Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Uint8ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint8Array.t

  val create : t -> length:float -> Uint8Array.t

  val create' : t -> array:(ArrayBuffer.t, float Array.t) union2 -> Uint8Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Uint8Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Uint8Array.t

  val from : t -> array:float Array.t -> Uint8Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8Array.t
end

val uint8Array : Uint8ArrayConstructor.t

module Uint8ClampedArray : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Uint8ClampedArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint8ClampedArray.t

  val create : t -> length:float -> Uint8ClampedArray.t

  val create'
    :  t
    -> array:(ArrayBuffer.t, float Array.t) union2
    -> Uint8ClampedArray.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Uint8ClampedArray.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Uint8ClampedArray.t

  val from : t -> array:float Array.t -> Uint8ClampedArray.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8ClampedArray.t
end

val uint8ClampedArray : Uint8ClampedArrayConstructor.t

module Int16Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Int16ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Int16Array.t

  val create : t -> length:float -> Int16Array.t

  val create' : t -> array:(ArrayBuffer.t, float Array.t) union2 -> Int16Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Int16Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Int16Array.t

  val from : t -> array:float Array.t -> Int16Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int16Array.t
end

val int16Array : Int16ArrayConstructor.t

module Uint16Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Uint16ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint16Array.t

  val create : t -> length:float -> Uint16Array.t

  val create'
    :  t
    -> array:(ArrayBuffer.t, float Array.t) union2
    -> Uint16Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Uint16Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Uint16Array.t

  val from : t -> array:float Array.t -> Uint16Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint16Array.t
end

val uint16Array : Uint16ArrayConstructor.t

module Int32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Int32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Int32Array.t

  val create : t -> length:float -> Int32Array.t

  val create' : t -> array:(ArrayBuffer.t, float Array.t) union2 -> Int32Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Int32Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Int32Array.t

  val from : t -> array:float Array.t -> Int32Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int32Array.t
end

val int32Array : Int32ArrayConstructor.t

module Uint32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Uint32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint32Array.t

  val create : t -> length:float -> Uint32Array.t

  val create'
    :  t
    -> array:(ArrayBuffer.t, float Array.t) union2
    -> Uint32Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Uint32Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Uint32Array.t

  val from : t -> array:float Array.t -> Uint32Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint32Array.t
end

val uint32Array : Uint32ArrayConstructor.t

module Float32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Float32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Float32Array.t

  val create : t -> length:float -> Float32Array.t

  val create'
    :  t
    -> array:(ArrayBuffer.t, float Array.t) union2
    -> Float32Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Float32Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Float32Array.t

  val from : t -> array:float Array.t -> Float32Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float32Array.t
end

val float32Array : Float32ArrayConstructor.t

module Float64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val every
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:float -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:float -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float or_undefined

  val findIndex
    :  t
    -> predicate:(value:float -> index:float -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val indexOf : t -> searchElement:float -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val lastIndexOf
    :  t
    -> searchElement:float
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:float -> index:float -> array:t -> float)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> float

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:float
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> float)
    -> initialValue:float
    -> float

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:float
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:float Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:float -> index:float -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort : t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toString : t -> string

  val valueOf : t -> t

  val get : t -> float -> float

  val set : t -> float -> float -> unit

  (* Constructor *)

  val create : length:float -> t

  val create' : array:(ArrayBuffer.t, float Array.t) union2 -> t

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val get_BYTES_PER_ELEMENT : float

  val of_ : items:float list -> t

  val from : array:float Array.t -> t

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
end

module Float64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Float64Array.t

  val create : t -> length:float -> Float64Array.t

  val create'
    :  t
    -> array:(ArrayBuffer.t, float Array.t) union2
    -> Float64Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> Float64Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:float list -> Float64Array.t

  val from : t -> array:float Array.t -> Float64Array.t

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float64Array.t
end

val float64Array : Float64ArrayConstructor.t

module DateTimeFormat : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val format : t -> ?date:Date.t or_number -> unit -> string

  val resolvedOptions : t -> ResolvedDateTimeFormatOptions.t
end
