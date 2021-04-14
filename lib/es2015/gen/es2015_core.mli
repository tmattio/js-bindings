[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type 'T _Array = [ `Array of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _ArrayConstructor = [ `ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DateConstructor = [ `DateConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Function = untyped_function

    and _Math = [ `Math ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _NumberConstructor = [ `NumberConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ObjectConstructor = [ `ObjectConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _ReadonlyArray = [ `ReadonlyArray of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _RegExp = regexp

    and _RegExpConstructor = [ `RegExpConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _String = [ `String ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StringConstructor = [ `StringConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Array : sig
  include module type of struct
    include Array
  end

  val find
    :  'T t
    -> (this:unit -> value:'T -> index:float -> obj:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S or_undefined
    [@@js.call "find"]

  val find'
    :  'T t
    -> (value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T or_undefined
    [@@js.call "find"]

  val findIndex
    :  'T t
    -> (value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> float
    [@@js.call "findIndex"]

  val fill : 'T t -> value:'T -> ?start:float -> ?end_:float -> unit -> 'T t
    [@@js.call "fill"]

  val copyWithin
    :  'T t
    -> target:float
    -> start:float
    -> ?end_:float
    -> unit
    -> 'T t
    [@@js.call "copyWithin"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "Array"]

module ArrayConstructor : sig
  include module type of struct
    include ArrayConstructor
  end

  val from : t -> array:'T Array.t -> 'T list [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
    [@@js.call "from"]

  val of_ : t -> items:('T list[@js.variadic]) -> 'T list [@@js.call "of"]
end
[@@js.scope "ArrayConstructor"]

module DateConstructor : sig
  include module type of struct
    include DateConstructor
  end

  val create : t -> value:Date.t or_string or_number -> Date.t
    [@@js.apply_newable]
end
[@@js.scope "DateConstructor"]

module Function : sig
  include module type of struct
    include Function
  end

  val get_name : t -> string [@@js.get "name"]
end
[@@js.scope "Function"]

module Math : sig
  include module type of struct
    include Math
  end

  val clz32 : float -> float [@@js.global "Math.clz32"]

  val imul : x:float -> y:float -> float [@@js.global "Math.imul"]

  val sign : float -> float [@@js.global "Math.sign"]

  val log10 : float -> float [@@js.global "Math.log10"]

  val log2 : float -> float [@@js.global "Math.log2"]

  val log1p : float -> float [@@js.global "Math.log1p"]

  val expm1 : float -> float [@@js.global "Math.expm1"]

  val cosh : float -> float [@@js.global "Math.cosh"]

  val sinh : float -> float [@@js.global "Math.sinh"]

  val tanh : float -> float [@@js.global "Math.tanh"]

  val acosh : float -> float [@@js.global "Math.acosh"]

  val asinh : float -> float [@@js.global "Math.asinh"]

  val atanh : float -> float [@@js.global "Math.atanh"]

  val hypot : values:(float list[@js.variadic]) -> float
    [@@js.global "Math.hypot"]

  val trunc : float -> float [@@js.global "Math.trunc"]

  val fround : float -> float [@@js.global "Math.fround"]

  val cbrt : float -> float [@@js.global "Math.cbrt"]
end

module NumberConstructor : sig
  include module type of struct
    include NumberConstructor
  end

  val get_EPSILON : t -> float [@@js.get "EPSILON"]

  val isFinite : t -> number:unknown -> bool [@@js.call "isFinite"]

  val isInteger : t -> number:unknown -> bool [@@js.call "isInteger"]

  val isNaN : t -> number:unknown -> bool [@@js.call "isNaN"]

  val isSafeInteger : t -> number:unknown -> bool [@@js.call "isSafeInteger"]

  val get_MAX_SAFE_INTEGER : t -> float [@@js.get "MAX_SAFE_INTEGER"]

  val get_MIN_SAFE_INTEGER : t -> float [@@js.get "MIN_SAFE_INTEGER"]

  val parseFloat : t -> string:string -> float [@@js.call "parseFloat"]

  val parseInt : t -> string:string -> ?radix:float -> unit -> float
    [@@js.call "parseInt"]
end
[@@js.scope "NumberConstructor"]

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  val assign : t -> target:'T -> source:'U -> ('T, 'U) intersection2
    [@@js.call "assign"]

  val assign'
    :  t
    -> target:'T
    -> source1:'U
    -> source2:'V
    -> ('T, 'U, 'V) intersection3
    [@@js.call "assign"]

  val assign''
    :  t
    -> target:'T
    -> source1:'U
    -> source2:'V
    -> source3:'W
    -> ('T, 'U, 'V, 'W) intersection4
    [@@js.call "assign"]

  val assign'''
    :  t
    -> target:untyped_object
    -> sources:(any list[@js.variadic])
    -> any
    [@@js.call "assign"]

  val getOwnPropertySymbols : t -> any -> symbol list
    [@@js.call "getOwnPropertySymbols"]

  val keys : t -> any -> string list [@@js.call "keys"]

  val is : t -> value1:any -> value2:any -> bool [@@js.call "is"]

  val setPrototypeOf : t -> any -> proto:untyped_object or_null -> any
    [@@js.call "setPrototypeOf"]
end
[@@js.scope "ObjectConstructor"]

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val find
    :  'T t
    -> (this:unit -> value:'T -> index:float -> obj:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S or_undefined
    [@@js.call "find"]

  val find'
    :  'T t
    -> (value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T or_undefined
    [@@js.call "find"]

  val findIndex
    :  'T t
    -> (value:'T -> index:float -> obj:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> float
    [@@js.call "findIndex"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module RegExp : sig
  include module type of struct
    include RegExp
  end

  val get_flags : t -> string [@@js.get "flags"]

  val get_sticky : t -> bool [@@js.get "sticky"]

  val get_unicode : t -> bool [@@js.get "unicode"]
end
[@@js.scope "RegExp"]

module RegExpConstructor : sig
  include module type of struct
    include RegExpConstructor
  end

  val create
    :  t
    -> pattern:_RegExp or_string
    -> ?flags:string
    -> unit
    -> _RegExp
    [@@js.apply_newable]

  val apply : t -> pattern:_RegExp or_string -> ?flags:string -> unit -> _RegExp
    [@@js.apply]
end
[@@js.scope "RegExpConstructor"]

module String : sig
  include module type of struct
    include String
  end

  val codePointAt : t -> pos:float -> float or_undefined
    [@@js.call "codePointAt"]

  val includes : t -> searchString:string -> ?position:float -> unit -> bool
    [@@js.call "includes"]

  val endsWith : t -> searchString:string -> ?endPosition:float -> unit -> bool
    [@@js.call "endsWith"]

  val normalize
    :  t
    -> form:([ `NFC | `NFD | `NFKC | `NFKD ][@js.enum])
    -> string
    [@@js.call "normalize"]

  val normalize' : t -> ?form:string -> unit -> string [@@js.call "normalize"]

  val repeat : t -> count:float -> string [@@js.call "repeat"]

  val startsWith : t -> searchString:string -> ?position:float -> unit -> bool
    [@@js.call "startsWith"]

  val anchor : t -> name:string -> string [@@js.call "anchor"]

  val big : t -> string [@@js.call "big"]

  val blink : t -> string [@@js.call "blink"]

  val bold : t -> string [@@js.call "bold"]

  val fixed : t -> string [@@js.call "fixed"]

  val fontcolor : t -> color:string -> string [@@js.call "fontcolor"]

  val fontsize : t -> size:float -> string [@@js.call "fontsize"]

  val fontsize' : t -> size:string -> string [@@js.call "fontsize"]

  val italics : t -> string [@@js.call "italics"]

  val link : t -> url:string -> string [@@js.call "link"]

  val small : t -> string [@@js.call "small"]

  val strike : t -> string [@@js.call "strike"]

  val sub : t -> string [@@js.call "sub"]

  val sup : t -> string [@@js.call "sup"]

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]
end
[@@js.scope "String"]

module StringConstructor : sig
  include module type of struct
    include StringConstructor
  end

  val fromCodePoint : t -> codePoints:(float list[@js.variadic]) -> string
    [@@js.call "fromCodePoint"]

  val raw
    :  t
    -> template:TemplateStringsArray.t
    -> substitutions:(any list[@js.variadic])
    -> string
    [@@js.call "raw"]
end
[@@js.scope "StringConstructor"]
