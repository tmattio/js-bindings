[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Array : sig
  include module type of struct
    include Array
  end

  val find
    :  'T t
    -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S or_undefined

  val find'
    :  'T t
    -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T or_undefined

  val findIndex
    :  'T t
    -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> float

  val fill : 'T t -> value:'T -> ?start:float -> ?end_:float -> unit -> 'T t

  val copyWithin
    :  'T t
    -> target:float
    -> start:float
    -> ?end_:float
    -> unit
    -> 'T t

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module ArrayConstructor : sig
  include module type of struct
    include ArrayConstructor
  end

  val from : t -> array:'T Array.t -> 'T list

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list

  val of_ : t -> items:'T list -> 'T list
end

module DateConstructor : sig
  include module type of struct
    include DateConstructor
  end

  val create : t -> value:Date.t or_string or_number -> Date.t
end

module Function : sig
  include module type of struct
    include Function
  end

  val get_name : t -> string
end

module Math : sig
  include module type of struct
    include Math
  end

  val clz32 : t -> x:float -> float

  val imul : t -> x:float -> y:float -> float

  val sign : t -> x:float -> float

  val log10 : t -> x:float -> float

  val log2 : t -> x:float -> float

  val log1p : t -> x:float -> float

  val expm1 : t -> x:float -> float

  val cosh : t -> x:float -> float

  val sinh : t -> x:float -> float

  val tanh : t -> x:float -> float

  val acosh : t -> x:float -> float

  val asinh : t -> x:float -> float

  val atanh : t -> x:float -> float

  val hypot : t -> values:float list -> float

  val trunc : t -> x:float -> float

  val fround : t -> x:float -> float

  val cbrt : t -> x:float -> float
end

module NumberConstructor : sig
  include module type of struct
    include NumberConstructor
  end

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_EPSILON : t -> float

  val isFinite : t -> number:unknown -> bool

  val isInteger : t -> number:unknown -> bool

  val isNaN : t -> number:unknown -> bool

  val isSafeInteger : t -> number:unknown -> bool

  val get_MAX_SAFE_INTEGER : t -> float

  val get_MIN_SAFE_INTEGER : t -> float

  val parseFloat : t -> string:string -> float

  val parseInt : t -> string:string -> ?radix:float -> unit -> float
end

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  val assign : t -> target:'T -> source:'U -> ('T, 'U) intersection2

  val assign'
    :  t
    -> target:'T
    -> source1:'U
    -> source2:'V
    -> ('T, 'U, 'V) intersection3

  val assign''
    :  t
    -> target:'T
    -> source1:'U
    -> source2:'V
    -> source3:'W
    -> ('T, 'U, 'V, 'W) intersection4

  val assign''' : t -> target:untyped_object -> sources:any list -> any

  val getOwnPropertySymbols : t -> o:any -> symbol list

  val keys : t -> o:any -> string list

  val is : t -> value1:any -> value2:any -> bool

  val setPrototypeOf : t -> o:any -> proto:untyped_object or_null -> any
end

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val find
    :  'T t
    -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S or_undefined

  val find'
    :  'T t
    -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T or_undefined

  val findIndex
    :  'T t
    -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> float

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module RegExp : sig
  include module type of struct
    include RegExp
  end

  val get_flags : t -> string

  val get_sticky : t -> bool

  val get_unicode : t -> bool
end

module RegExpConstructor : sig
  include module type of struct
    include RegExpConstructor
  end

  val create
    :  t
    -> pattern:RegExp.t or_string
    -> ?flags:string
    -> unit
    -> RegExp.t

  val apply
    :  t
    -> pattern:RegExp.t or_string
    -> ?flags:string
    -> unit
    -> RegExp.t
end

module String : sig
  include module type of struct
    include String
  end

  val codePointAt : t -> pos:float -> float or_undefined

  val includes : t -> searchString:string -> ?position:float -> unit -> bool

  val endsWith : t -> searchString:string -> ?endPosition:float -> unit -> bool

  val normalize
    :  t
    -> form:[ `L_s0_NFC | `L_s1_NFD | `L_s2_NFKC | `L_s3_NFKD ]
    -> string

  val normalize' : t -> ?form:string -> unit -> string

  val repeat : t -> count:float -> string

  val startsWith : t -> searchString:string -> ?position:float -> unit -> bool

  val anchor : t -> name:string -> string

  val big : t -> string

  val blink : t -> string

  val bold : t -> string

  val fixed : t -> string

  val fontcolor : t -> color:string -> string

  val fontsize : t -> size:float -> string

  val fontsize' : t -> size:string -> string

  val italics : t -> string

  val link : t -> url:string -> string

  val small : t -> string

  val strike : t -> string

  val sub : t -> string

  val sup : t -> string

  val to_ml : t -> string

  val of_ml : string -> t
end

module StringConstructor : sig
  include module type of struct
    include StringConstructor
  end

  val fromCodePoint : t -> codePoints:float list -> string

  val raw
    :  t
    -> template:TemplateStringsArray.t
    -> substitutions:any list
    -> string
end
