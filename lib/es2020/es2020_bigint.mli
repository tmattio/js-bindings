[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2019

module BigIntToLocaleStringOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_localeMatcher : t -> string [@@js.get "localeMatcher"]

  val set_localeMatcher : t -> string -> unit [@@js.set "localeMatcher"]

  val get_style : t -> string [@@js.get "style"]

  val set_style : t -> string -> unit [@@js.set "style"]

  val get_numberingSystem : t -> string [@@js.get "numberingSystem"]

  val set_numberingSystem : t -> string -> unit [@@js.set "numberingSystem"]

  val get_unit : t -> string [@@js.get "unit"]

  val set_unit : t -> string -> unit [@@js.set "unit"]

  val get_unitDisplay : t -> string [@@js.get "unitDisplay"]

  val set_unitDisplay : t -> string -> unit [@@js.set "unitDisplay"]

  val get_currency : t -> string [@@js.get "currency"]

  val set_currency : t -> string -> unit [@@js.set "currency"]

  val get_currencyDisplay : t -> string [@@js.get "currencyDisplay"]

  val set_currencyDisplay : t -> string -> unit [@@js.set "currencyDisplay"]

  val get_useGrouping : t -> bool [@@js.get "useGrouping"]

  val set_useGrouping : t -> bool -> unit [@@js.set "useGrouping"]

  val get_minimumIntegerDigits
    :  t
    -> ([ `L_n_1 [@js 1]
        | `L_n_2 [@js 2]
        | `L_n_3 [@js 3]
        | `L_n_4 [@js 4]
        | `L_n_5 [@js 5]
        | `L_n_6 [@js 6]
        | `L_n_7 [@js 7]
        | `L_n_8 [@js 8]
        | `L_n_9 [@js 9]
        | `L_n_10 [@js 10]
        | `L_n_11 [@js 11]
        | `L_n_12 [@js 12]
        | `L_n_13 [@js 13]
        | `L_n_14 [@js 14]
        | `L_n_15 [@js 15]
        | `L_n_16 [@js 16]
        | `L_n_17 [@js 17]
        | `L_n_18 [@js 18]
        | `L_n_19 [@js 19]
        | `L_n_20 [@js 20]
        | `L_n_21 [@js 21]
        ]
       [@js.enum])
    [@@js.get "minimumIntegerDigits"]

  val set_minimumIntegerDigits
    :  t
    -> ([ `L_n_1
        | `L_n_2
        | `L_n_3
        | `L_n_4
        | `L_n_5
        | `L_n_6
        | `L_n_7
        | `L_n_8
        | `L_n_9
        | `L_n_10
        | `L_n_11
        | `L_n_12
        | `L_n_13
        | `L_n_14
        | `L_n_15
        | `L_n_16
        | `L_n_17
        | `L_n_18
        | `L_n_19
        | `L_n_20
        | `L_n_21
        ]
       [@js.enum])
    -> unit
    [@@js.set "minimumIntegerDigits"]

  val get_minimumFractionDigits
    :  t
    -> ([ `L_n_0 [@js 0]
        | `L_n_1 [@js 1]
        | `L_n_2 [@js 2]
        | `L_n_3 [@js 3]
        | `L_n_4 [@js 4]
        | `L_n_5 [@js 5]
        | `L_n_6 [@js 6]
        | `L_n_7 [@js 7]
        | `L_n_8 [@js 8]
        | `L_n_9 [@js 9]
        | `L_n_10 [@js 10]
        | `L_n_11 [@js 11]
        | `L_n_12 [@js 12]
        | `L_n_13 [@js 13]
        | `L_n_14 [@js 14]
        | `L_n_15 [@js 15]
        | `L_n_16 [@js 16]
        | `L_n_17 [@js 17]
        | `L_n_18 [@js 18]
        | `L_n_19 [@js 19]
        | `L_n_20 [@js 20]
        ]
       [@js.enum])
    [@@js.get "minimumFractionDigits"]

  val set_minimumFractionDigits
    :  t
    -> ([ `L_n_0
        | `L_n_1
        | `L_n_2
        | `L_n_3
        | `L_n_4
        | `L_n_5
        | `L_n_6
        | `L_n_7
        | `L_n_8
        | `L_n_9
        | `L_n_10
        | `L_n_11
        | `L_n_12
        | `L_n_13
        | `L_n_14
        | `L_n_15
        | `L_n_16
        | `L_n_17
        | `L_n_18
        | `L_n_19
        | `L_n_20
        ]
       [@js.enum])
    -> unit
    [@@js.set "minimumFractionDigits"]

  val get_maximumFractionDigits
    :  t
    -> ([ `L_n_0 [@js 0]
        | `L_n_1 [@js 1]
        | `L_n_2 [@js 2]
        | `L_n_3 [@js 3]
        | `L_n_4 [@js 4]
        | `L_n_5 [@js 5]
        | `L_n_6 [@js 6]
        | `L_n_7 [@js 7]
        | `L_n_8 [@js 8]
        | `L_n_9 [@js 9]
        | `L_n_10 [@js 10]
        | `L_n_11 [@js 11]
        | `L_n_12 [@js 12]
        | `L_n_13 [@js 13]
        | `L_n_14 [@js 14]
        | `L_n_15 [@js 15]
        | `L_n_16 [@js 16]
        | `L_n_17 [@js 17]
        | `L_n_18 [@js 18]
        | `L_n_19 [@js 19]
        | `L_n_20 [@js 20]
        ]
       [@js.enum])
    [@@js.get "maximumFractionDigits"]

  val set_maximumFractionDigits
    :  t
    -> ([ `L_n_0
        | `L_n_1
        | `L_n_2
        | `L_n_3
        | `L_n_4
        | `L_n_5
        | `L_n_6
        | `L_n_7
        | `L_n_8
        | `L_n_9
        | `L_n_10
        | `L_n_11
        | `L_n_12
        | `L_n_13
        | `L_n_14
        | `L_n_15
        | `L_n_16
        | `L_n_17
        | `L_n_18
        | `L_n_19
        | `L_n_20
        ]
       [@js.enum])
    -> unit
    [@@js.set "maximumFractionDigits"]

  val get_minimumSignificantDigits
    :  t
    -> ([ `L_n_1 [@js 1]
        | `L_n_2 [@js 2]
        | `L_n_3 [@js 3]
        | `L_n_4 [@js 4]
        | `L_n_5 [@js 5]
        | `L_n_6 [@js 6]
        | `L_n_7 [@js 7]
        | `L_n_8 [@js 8]
        | `L_n_9 [@js 9]
        | `L_n_10 [@js 10]
        | `L_n_11 [@js 11]
        | `L_n_12 [@js 12]
        | `L_n_13 [@js 13]
        | `L_n_14 [@js 14]
        | `L_n_15 [@js 15]
        | `L_n_16 [@js 16]
        | `L_n_17 [@js 17]
        | `L_n_18 [@js 18]
        | `L_n_19 [@js 19]
        | `L_n_20 [@js 20]
        | `L_n_21 [@js 21]
        ]
       [@js.enum])
    [@@js.get "minimumSignificantDigits"]

  val set_minimumSignificantDigits
    :  t
    -> ([ `L_n_1
        | `L_n_2
        | `L_n_3
        | `L_n_4
        | `L_n_5
        | `L_n_6
        | `L_n_7
        | `L_n_8
        | `L_n_9
        | `L_n_10
        | `L_n_11
        | `L_n_12
        | `L_n_13
        | `L_n_14
        | `L_n_15
        | `L_n_16
        | `L_n_17
        | `L_n_18
        | `L_n_19
        | `L_n_20
        | `L_n_21
        ]
       [@js.enum])
    -> unit
    [@@js.set "minimumSignificantDigits"]

  val get_maximumSignificantDigits
    :  t
    -> ([ `L_n_1 [@js 1]
        | `L_n_2 [@js 2]
        | `L_n_3 [@js 3]
        | `L_n_4 [@js 4]
        | `L_n_5 [@js 5]
        | `L_n_6 [@js 6]
        | `L_n_7 [@js 7]
        | `L_n_8 [@js 8]
        | `L_n_9 [@js 9]
        | `L_n_10 [@js 10]
        | `L_n_11 [@js 11]
        | `L_n_12 [@js 12]
        | `L_n_13 [@js 13]
        | `L_n_14 [@js 14]
        | `L_n_15 [@js 15]
        | `L_n_16 [@js 16]
        | `L_n_17 [@js 17]
        | `L_n_18 [@js 18]
        | `L_n_19 [@js 19]
        | `L_n_20 [@js 20]
        | `L_n_21 [@js 21]
        ]
       [@js.enum])
    [@@js.get "maximumSignificantDigits"]

  val set_maximumSignificantDigits
    :  t
    -> ([ `L_n_1
        | `L_n_2
        | `L_n_3
        | `L_n_4
        | `L_n_5
        | `L_n_6
        | `L_n_7
        | `L_n_8
        | `L_n_9
        | `L_n_10
        | `L_n_11
        | `L_n_12
        | `L_n_13
        | `L_n_14
        | `L_n_15
        | `L_n_16
        | `L_n_17
        | `L_n_18
        | `L_n_19
        | `L_n_20
        | `L_n_21
        ]
       [@js.enum])
    -> unit
    [@@js.set "maximumSignificantDigits"]

  val get_notation : t -> string [@@js.get "notation"]

  val set_notation : t -> string -> unit [@@js.set "notation"]

  val get_compactDisplay : t -> string [@@js.get "compactDisplay"]

  val set_compactDisplay : t -> string -> unit [@@js.set "compactDisplay"]
end
[@@js.scope "BigIntToLocaleStringOptions"]

module BigInt : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toString : t -> ?radix:int -> unit -> string [@@js.call "toString"]

  val toLocaleString
    :  t
    -> ?locales:string
    -> ?options:BigIntToLocaleStringOptions.t
    -> unit
    -> string
    [@@js.call "toLocaleString"]

  val valueOf : t -> bigint [@@js.call "valueOf"]

  (* Constructor *)

  val asIntN : bits:int -> int:bigint -> bigint [@@js.global "BitInt.asIntN"]

  val asUintN : bits:int -> int:bigint -> bigint
    [@@js.global "BitInt.asUintN"]
end

module BigIntConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> ?value:any -> unit -> bigint [@@js.apply]

  val get_prototype : t -> BigInt.t [@@js.get "prototype"]

  val asIntN : t -> bits:int -> int:bigint -> bigint [@@js.call "asIntN"]

  val asUintN : t -> bits:int -> int:bigint -> bigint [@@js.call "asUintN"]
end
[@@js.scope "BigIntConstructor"]

val bigInt : BigIntConstructor.t [@@js.global "BigInt"]

module BigInt64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val entries : t -> (int * bigint) IterableIterator.t [@@js.call "entries"]

  val every
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:bigint -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bigint or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:bigint -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val includes : t -> searchElement:bigint -> ?fromIndex:int -> unit -> bool
    [@@js.call "includes"]

  val indexOf : t -> searchElement:bigint -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val keys : t -> int IterableIterator.t [@@js.call "keys"]

  val lastIndexOf
    :  t
    -> searchElement:bigint
    -> ?fromIndex:int
    -> unit
    -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:bigint -> index:int -> array:t -> bigint)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> bigint)
    -> bigint
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> bigint)
    -> bigint
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:bigint Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort
    :  t
    -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number)
    -> unit
    -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val values : t -> bigint IterableIterator.t [@@js.call "values"]

  val get : t -> int -> bigint [@@js.index_get]

  val set : t -> int -> bigint -> unit [@@js.index_set]

  (* Constructor *)

  val create : ?length:int -> unit -> t [@@js.new "BigInt64Array"]

  val create' : array:bigint Iterable.t -> t [@@js.new "BigInt64Array"]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "BigInt64Array"]

  val of_ : items:(bigint list[@js.variadic]) -> t
    [@@js.global "BigInt64Array.of"]

  val from : array:bigint Array.t -> t [@@js.global "BigInt64Array.from"]

  val from'
    :  array:'U Array.t
    -> mapfn:(v:'U -> k:int -> bigint)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "BigInt64Array.from"]
end

module BigInt64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> BigInt64Array.t [@@js.get "prototype"]

  val create : t -> ?length:int -> unit -> BigInt64Array.t
    [@@js.apply_newable]

  val create' : t -> array:bigint Iterable.t -> BigInt64Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> BigInt64Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> items:(bigint list[@js.variadic]) -> BigInt64Array.t
    [@@js.call "of"]

  val from : t -> array:bigint Array.t -> BigInt64Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'U Array.t
    -> mapfn:(v:'U -> k:int -> bigint)
    -> ?thisArg:any
    -> unit
    -> BigInt64Array.t
    [@@js.call "from"]
end
[@@js.scope "BigInt64Array.Constructor"]

val bigInt64Array : BigInt64ArrayConstructor.t [@@js.global "BigInt64Array"]

module BigUint64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val entries : t -> (int * bigint) IterableIterator.t [@@js.call "entries"]

  val every
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:bigint -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bigint or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:bigint -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val includes : t -> searchElement:bigint -> ?fromIndex:int -> unit -> bool
    [@@js.call "includes"]

  val indexOf : t -> searchElement:bigint -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val keys : t -> int IterableIterator.t [@@js.call "keys"]

  val lastIndexOf
    :  t
    -> searchElement:bigint
    -> ?fromIndex:int
    -> unit
    -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:bigint -> index:int -> array:t -> bigint)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> bigint)
    -> bigint
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> bigint)
    -> bigint
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:bigint Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> predicate:(value:bigint -> index:int -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort
    :  t
    -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number)
    -> unit
    -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val values : t -> bigint IterableIterator.t [@@js.call "values"]

  val get : t -> int -> bigint [@@js.index_get]

  val set : t -> int -> bigint -> unit [@@js.index_set]

  (* Constructor *)

  val create : ?length:int -> unit -> t [@@js.new "BigUint64Array"]

  val create' : array:bigint Iterable.t -> t [@@js.new "BigUint64Array"]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "BigUint64Array"]

  val of_ : items:(bigint list[@js.variadic]) -> t
    [@@js.global "BigUint64Array.of"]

  val from : array:bigint Array.t -> t [@@js.global "BigUint64Array.from"]

  val from'
    :  array:'U Array.t
    -> mapfn:(v:'U -> k:int -> bigint)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "BigUint64Array.from"]
end

module BigUint64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> BigUint64Array.t [@@js.get "prototype"]

  val create : t -> ?length:int -> unit -> BigUint64Array.t
    [@@js.apply_newable]

  val create' : t -> array:bigint Iterable.t -> BigUint64Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> BigUint64Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> items:(bigint list[@js.variadic]) -> BigUint64Array.t
    [@@js.call "of"]

  val from : t -> array:bigint Array.t -> BigUint64Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'U Array.t
    -> mapfn:(v:'U -> k:int -> bigint)
    -> ?thisArg:any
    -> unit
    -> BigUint64Array.t
    [@@js.call "from"]
end
[@@js.scope "BigUint64ArrayConstructor"]

val bigUint64Array : BigUint64ArrayConstructor.t [@@js.global "BigUint64Array"]

module DataView : sig
  include module type of struct
    include DataView
  end

  val getBigInt64
    :  t
    -> byteOffset:int
    -> ?littleEndian:bool
    -> unit
    -> bigint
    [@@js.call "getBigInt64"]

  val getBigUint64
    :  t
    -> byteOffset:int
    -> ?littleEndian:bool
    -> unit
    -> bigint
    [@@js.call "getBigUint64"]

  val setBigInt64
    :  t
    -> byteOffset:int
    -> value:bigint
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setBigInt64"]

  val setBigUint64
    :  t
    -> byteOffset:int
    -> value:bigint
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setBigUint64"]
end
[@@js.scope "DataView"]

module Intl : sig
  module NumberFormat : sig
    include module type of struct
      include NumberFormat
    end

    val format : t -> value:bigint or_number -> string [@@js.call "format"]

    val resolvedOptions : t -> ResolvedNumberFormatOptions.t
      [@@js.call "resolvedOptions"]
  end
  [@@js.scope "NumberFormat"]
end
[@@js.scope "Intl"]

include module type of struct
  include Intl
end
