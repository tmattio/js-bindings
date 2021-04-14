open Es2019

module BigIntToLocaleStringOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_localeMatcher : t -> string

  val set_localeMatcher : t -> string -> unit

  val get_style : t -> string

  val set_style : t -> string -> unit

  val get_numberingSystem : t -> string

  val set_numberingSystem : t -> string -> unit

  val get_unit : t -> string

  val set_unit : t -> string -> unit

  val get_unitDisplay : t -> string

  val set_unitDisplay : t -> string -> unit

  val get_currency : t -> string

  val set_currency : t -> string -> unit

  val get_currencyDisplay : t -> string

  val set_currencyDisplay : t -> string -> unit

  val get_useGrouping : t -> bool

  val set_useGrouping : t -> bool -> unit

  val get_minimumIntegerDigits
    :  t
    -> [ `L_n_1 [@js 1]
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

  val set_minimumIntegerDigits
    :  t
    -> [ `L_n_1
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
    -> unit

  val get_minimumFractionDigits
    :  t
    -> [ `L_n_0 [@js 0]
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

  val set_minimumFractionDigits
    :  t
    -> [ `L_n_0
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
    -> unit

  val get_maximumFractionDigits
    :  t
    -> [ `L_n_0 [@js 0]
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

  val set_maximumFractionDigits
    :  t
    -> [ `L_n_0
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
    -> unit

  val get_minimumSignificantDigits
    :  t
    -> [ `L_n_1 [@js 1]
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

  val set_minimumSignificantDigits
    :  t
    -> [ `L_n_1
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
    -> unit

  val get_maximumSignificantDigits
    :  t
    -> [ `L_n_1 [@js 1]
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

  val set_maximumSignificantDigits
    :  t
    -> [ `L_n_1
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
    -> unit

  val get_notation : t -> string

  val set_notation : t -> string -> unit

  val get_compactDisplay : t -> string

  val set_compactDisplay : t -> string -> unit
end

module BigInt : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toString : t -> ?radix:float -> unit -> string

  val toLocaleString
    :  t
    -> ?locales:string
    -> ?options:BigIntToLocaleStringOptions.t
    -> unit
    -> string

  val valueOf : t -> bigint

  (* Constructor *)

  val asIntN : bits:float -> int:bigint -> bigint

  val asUintN : bits:float -> int:bigint -> bigint
end

module BigIntConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> ?value:any -> unit -> bigint

  val get_prototype : t -> BigInt.t

  val asIntN : t -> bits:float -> int:bigint -> bigint

  val asUintN : t -> bits:float -> int:bigint -> bigint
end

val bigInt : BigIntConstructor.t

module BigInt64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> float

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val entries : t -> (float * bigint) IterableIterator.t

  val every
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:bigint -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bigint or_undefined

  val findIndex
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:bigint -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val includes : t -> searchElement:bigint -> ?fromIndex:float -> unit -> bool

  val indexOf : t -> searchElement:bigint -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val keys : t -> float IterableIterator.t

  val lastIndexOf
    :  t
    -> searchElement:bigint
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:bigint -> index:float -> array:t -> bigint)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> bigint)
    -> bigint

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> bigint)
    -> bigint

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:bigint Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort
    :  t
    -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number)
    -> unit
    -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val values : t -> bigint IterableIterator.t

  val get : t -> float -> bigint

  val set : t -> float -> bigint -> unit

  (* Constructor *)

  val create : ?length:float -> unit -> t

  val create' : array:bigint Iterable.t -> t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val of_ : items:(bigint list[@js.variadic]) -> t

  val from : array:bigint Array.t -> t

  val from'
    :  array:'U Array.t
    -> mapfn:(v:'U -> k:float -> bigint)
    -> ?thisArg:any
    -> unit
    -> t
end

module BigInt64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> BigInt64Array.t

  val create : t -> ?length:float -> unit -> BigInt64Array.t

  val create' : t -> array:bigint Iterable.t -> BigInt64Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> BigInt64Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:(bigint list[@js.variadic]) -> BigInt64Array.t

  val from : t -> array:bigint Array.t -> BigInt64Array.t

  val from'
    :  t
    -> array:'U Array.t
    -> mapfn:(v:'U -> k:float -> bigint)
    -> ?thisArg:any
    -> unit
    -> BigInt64Array.t
end

val bigInt64Array : BigInt64ArrayConstructor.t

module BigUint64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> float

  val get_buffer : t -> ArrayBuffer.t

  val get_byteLength : t -> float

  val get_byteOffset : t -> float

  val copyWithin : t -> target:float -> start:float -> ?end_:float -> unit -> t

  val entries : t -> (float * bigint) IterableIterator.t

  val every
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool

  val fill : t -> value:bigint -> ?start:float -> ?end_:float -> unit -> t

  val filter
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t

  val find
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bigint or_undefined

  val findIndex
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> float

  val forEach
    :  t
    -> callbackfn:(value:bigint -> index:float -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit

  val includes : t -> searchElement:bigint -> ?fromIndex:float -> unit -> bool

  val indexOf : t -> searchElement:bigint -> ?fromIndex:float -> unit -> float

  val join : t -> ?separator:string -> unit -> string

  val keys : t -> float IterableIterator.t

  val lastIndexOf
    :  t
    -> searchElement:bigint
    -> ?fromIndex:float
    -> unit
    -> float

  val get_length : t -> float

  val map
    :  t
    -> callbackfn:(value:bigint -> index:float -> array:t -> bigint)
    -> ?thisArg:any
    -> unit
    -> t

  val reduce
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> bigint)
    -> bigint

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:bigint
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> bigint)
    -> bigint

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:bigint
          -> currentIndex:float
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U

  val reverse : t -> t

  val set_ : t -> array:bigint Array.t -> ?offset:float -> unit -> unit

  val slice : t -> ?start:float -> ?end_:float -> unit -> t

  val some
    :  t
    -> predicate:(value:bigint -> index:float -> array:t -> bool)
    -> ?thisArg:any
    -> unit
    -> bool

  val sort
    :  t
    -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number)
    -> unit
    -> t

  val subarray : t -> ?begin_:float -> ?end_:float -> unit -> t

  val toLocaleString : t -> string

  val toString : t -> string

  val valueOf : t -> t

  val values : t -> bigint IterableIterator.t

  val get : t -> float -> bigint

  val set : t -> float -> bigint -> unit

  (* Constructor *)

  val create : ?length:float -> unit -> t

  val create' : array:bigint Iterable.t -> t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> t

  val of_ : items:(bigint list[@js.variadic]) -> t

  val from : array:bigint Array.t -> t

  val from'
    :  array:'U Array.t
    -> mapfn:(v:'U -> k:float -> bigint)
    -> ?thisArg:any
    -> unit
    -> t
end

module BigUint64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> BigUint64Array.t

  val create : t -> ?length:float -> unit -> BigUint64Array.t

  val create' : t -> array:bigint Iterable.t -> BigUint64Array.t

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:float
    -> ?length:float
    -> unit
    -> BigUint64Array.t

  val get_BYTES_PER_ELEMENT : t -> float

  val of_ : t -> items:(bigint list[@js.variadic]) -> BigUint64Array.t

  val from : t -> array:bigint Array.t -> BigUint64Array.t

  val from'
    :  t
    -> array:'U Array.t
    -> mapfn:(v:'U -> k:float -> bigint)
    -> ?thisArg:any
    -> unit
    -> BigUint64Array.t
end

val bigUint64Array : BigUint64ArrayConstructor.t

module DataView : sig
  include module type of struct
    include DataView
  end

  val getBigInt64
    :  t
    -> byteOffset:float
    -> ?littleEndian:bool
    -> unit
    -> bigint

  val getBigUint64
    :  t
    -> byteOffset:float
    -> ?littleEndian:bool
    -> unit
    -> bigint

  val setBigInt64
    :  t
    -> byteOffset:float
    -> value:bigint
    -> ?littleEndian:bool
    -> unit
    -> unit

  val setBigUint64
    :  t
    -> byteOffset:float
    -> value:bigint
    -> ?littleEndian:bool
    -> unit
    -> unit
end

module Intl : sig
  module NumberFormat : sig
    include module type of struct
      include NumberFormat
    end

    val format : t -> value:bigint or_number -> string

    val resolvedOptions : t -> ResolvedNumberFormatOptions.t
  end
end

include module type of struct
  include Intl
end
