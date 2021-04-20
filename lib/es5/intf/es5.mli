[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

(* Ts2ocaml_baselib *)

type never = private Ojs.t

val never_to_js : never -> Ojs.t

val never_of_js : Ojs.t -> never

module Never : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val absurd : t -> 'a
    [@@js.custom
      exception Ts_Never

      let absurd _ = raise Ts_Never]
end

type any = private Ojs.t

val any_to_js : any -> Ojs.t

val any_of_js : Ojs.t -> any

module Any : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val unsafe_cast : t -> 'a [@@js.custom let unsafe_cast x = Obj.magic x]
end

type unknown = private Ojs.t

val unknown_to_js : unknown -> Ojs.t

val unknown_of_js : Ojs.t -> unknown

module Unknown : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val unsafe_cast : t -> 'a [@@js.custom let unsafe_cast x = Obj.magic x]
end

[@@@js.stop]

type -'a intf

val intf_to_js : ('a -> Ojs.t) -> 'a intf -> Ojs.t

val intf_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a intf

[@@@js.start]

[@@@js.implem
type -'a intf = Ojs.t

let intf_to_js _ x : Ojs.t = x

let intf_of_js _ x : _ intf = x]

[@@@js.stop]

type ('t, +'a) enum

val enum_to_js : ('t -> Ojs.t) -> ('a -> Ojs.t) -> ('t, 'a) enum -> Ojs.t

val enum_of_js : (Ojs.t -> 't) -> (Ojs.t -> 'a) -> Ojs.t -> ('t, 'a) enum

[@@@js.start]

[@@@js.implem
type ('t, +'a) enum = 'a

let enum_to_js (_ : 't -> Ojs.t) (f : 'a -> Ojs.t) (e : ('t, 'a) enum) : Ojs.t =
  f e

let enum_of_js (_ : Ojs.t -> 't) (f : Ojs.t -> 'a) (e : Ojs.t) : ('t, 'a) enum =
  f e]

module Enum : sig
  [@@@js.stop]

  type ('t, +'a) t = ('t, 'a) enum

  val t_to_js : ('t -> Ojs.t) -> ('a -> Ojs.t) -> ('t, 'a) t -> Ojs.t

  val t_of_js : (Ojs.t -> 't) -> (Ojs.t -> 'a) -> Ojs.t -> ('t, 'a) t

  [@@@js.start]

  [@@@js.implem
  type ('t, +'a) t = ('t, 'a) enum

  let t_to_js = enum_to_js

  let t_of_js = enum_of_js]

  val get_value : ('t, 'a) t -> 'a [@@js.custom let get_value x = x]
end

type untyped_object = [ `Object ] intf
[@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

val untyped_object_of_js : Ojs.t -> untyped_object

val untyped_object_to_js : untyped_object -> Ojs.t

type untyped_function = [ `Function ] intf
[@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

val untyped_function_of_js : Ojs.t -> untyped_function

val untyped_function_to_js : untyped_function -> Ojs.t

type symbol = [ `Symbol ] intf
[@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

val symbol_of_js : Ojs.t -> symbol

val symbol_to_js : symbol -> Ojs.t

type regexp = [ `RegExp ] intf
[@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

val regexp_of_js : Ojs.t -> regexp

val regexp_to_js : regexp -> Ojs.t

type bigint = [ `BigInt ] intf
[@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

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
    [@@js.custom let car (x : ('a, 'b) t) : 'a = Obj.magic x]

  val cdr : ('a, 'b) t -> 'b
    [@@js.custom let cdr (x : ('a, 'b) t) : 'b = Obj.magic x]
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
    [@@js.custom let get_0 x = Obj.magic x]

  val get_1 : ('a, 'b, 'c) intersection3 -> 'b
    [@@js.custom let get_1 x = Obj.magic x]

  val get_2 : ('a, 'b, 'c, 'd) intersection4 -> 'c
    [@@js.custom let get_2 x = Obj.magic x]

  val get_3 : ('a, 'b, 'c, 'd, 'e) intersection5 -> 'd
    [@@js.custom let get_3 x = Obj.magic x]

  val get_4 : ('a, 'b, 'c, 'd, 'e, 'f) intersection6 -> 'e
    [@@js.custom let get_4 x = Obj.magic x]

  val get_5 : ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 -> 'f
    [@@js.custom let get_5 x = Obj.magic x]

  val get_6 : ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 -> 'g
    [@@js.custom let get_6 x = Obj.magic x]
end

[@@@js.stop]

type ('a, 'b) or_

val or__to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) or_ -> Ojs.t

val or__of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) or_

[@@@js.start]

[@@@js.implem
type ('a, 'b) or_from_js =
  { a_of_js : Ojs.t -> 'a
  ; b_of_js : Ojs.t -> 'b
  ; value : Ojs.t
  }

type ('a, 'b) or_ =
  | A of 'a
  | B of 'b
  | FromJS of ('a, 'b) or_from_js

let or__to_js a_to_js b_to_js = function
  | A a ->
    a_to_js a
  | B b ->
    b_to_js b
  | FromJS x ->
    x.value

let or__of_js a_of_js b_of_js value = FromJS { a_of_js; b_of_js; value }]

module Or : sig
  type ('a, 'b) t = ('a, 'b) or_

  val t_to_js : ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) t

  val inl : 'a -> ('a, 'b) t [@@js.custom let inl (x : 'a) : ('a, 'b) t = A x]

  val inr : 'b -> ('a, 'b) t [@@js.custom let inr (x : 'b) : ('a, 'b) t = B x]

  val test
    :  is_left:(Ojs.t -> bool)
    -> is_right:(Ojs.t -> bool)
    -> ('a, 'b) t
    -> [ `Left of 'a | `Right of 'b | `Other of Ojs.t ]
    [@@js.custom
      let test ~is_left ~is_right = function
        | A a ->
          `Left a
        | B b ->
          `Right b
        | FromJS x ->
          if is_left x.value then
            `Left (x.a_of_js x.value)
          else if is_right x.value then
            `Right (x.b_of_js x.value)
          else
            `Other x.value]
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
    [@@js.custom let inject_0 x = Obj.magic x]

  val inject_1 : 'b -> ('a, 'b, 'c) union3
    [@@js.custom let inject_1 x = Obj.magic x]

  val inject_2 : 'c -> ('a, 'b, 'c, 'd) union4
    [@@js.custom let inject_2 x = Obj.magic x]

  val inject_3 : 'd -> ('a, 'b, 'c, 'd, 'e) union5
    [@@js.custom let inject_3 x = Obj.magic x]

  val inject_4 : 'e -> ('a, 'b, 'c, 'd, 'e, 'f) union6
    [@@js.custom let inject_4 x = Obj.magic x]

  val inject_5 : 'f -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7
    [@@js.custom let inject_5 x = Obj.magic x]

  val inject_6 : 'g -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8
    [@@js.custom let inject_6 x = Obj.magic x]
end

type 'a or_string =
  [ `String of string
  | `Other of 'a
  ]
[@@js.custom
  { of_js =
      (fun a_of_js x ->
        match Ojs.type_of x with
        | "string" ->
          `String (Ojs.string_of_js x)
        | _ ->
          `Other (a_of_js x))
  ; to_js =
      (fun a_to_js -> function
        | `String x ->
          Ojs.string_to_js x
        | `Other x ->
          a_to_js x)
  }]

val or_string_to_js : ('a -> Ojs.t) -> 'a or_string -> Ojs.t

val or_string_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_string

type 'a or_number =
  [ `Number of int
  | `Other of 'a
  ]
[@@js.custom
  { of_js =
      (fun a_of_js x ->
        match Ojs.type_of x with
        | "number" ->
          `Number (Ojs.float_of_js x)
        | _ ->
          `Other (a_of_js x))
  ; to_js =
      (fun a_to_js -> function
        | `Number x ->
          Ojs.float_to_js x
        | `Other x ->
          a_to_js x)
  }]

val or_number_to_js : ('a -> Ojs.t) -> 'a or_number -> Ojs.t

val or_number_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_number

type 'a or_boolean =
  [ `Boolean of bool
  | `Other of 'a
  ]
[@@js.custom
  { of_js =
      (fun a_of_js x ->
        match Ojs.type_of x with
        | "boolean" ->
          `Boolean (Ojs.bool_of_js x)
        | _ ->
          `Other (a_of_js x))
  ; to_js =
      (fun a_to_js -> function
        | `Boolean x ->
          Ojs.bool_to_js x
        | `Other x ->
          a_to_js x)
  }]

val or_boolean_to_js : ('a -> Ojs.t) -> 'a or_boolean -> Ojs.t

val or_boolean_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_boolean

type 'a or_symbol =
  [ `Symbol of symbol
  | `Other of 'a
  ]
[@@js.custom
  { of_js =
      (fun a_of_js x ->
        match Ojs.type_of x with
        | "symbol" ->
          `Symbol (symbol_of_js x)
        | _ ->
          `Other (a_of_js x))
  ; to_js =
      (fun a_to_js -> function
        | `Symbol x ->
          symbol_to_js x
        | `Other x ->
          a_to_js x)
  }]

val or_symbol_to_js : ('a -> Ojs.t) -> 'a or_symbol -> Ojs.t

val or_symbol_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_symbol

type 'a or_bigint =
  [ `BigInt of bigint
  | `Other of 'a
  ]
[@@js.custom
  { of_js =
      (fun a_of_js x ->
        match Ojs.type_of x with
        | "bigint" ->
          `BigInt (bigint_of_js x)
        | _ ->
          `Other (a_of_js x))
  ; to_js =
      (fun a_to_js -> function
        | `BigInt x ->
          bigint_to_js x
        | `Other x ->
          a_to_js x)
  }]

val or_bigint_to_js : ('a -> Ojs.t) -> 'a or_bigint -> Ojs.t

val or_bigint_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a or_bigint

val is_array : Ojs.t -> bool [@@js.global "Array.isArray"]

type ('a, 't) or_array =
  [ `Array of 't list
  | `Other of 'a
  ]
[@@js.custom
  { of_js =
      (fun a_of_js t_of_js x ->
        if is_array x then
          `Array (Ojs.list_of_js t_of_js x)
        else
          `Other (a_of_js x))
  ; to_js =
      (fun a_to_js t_to_js -> function
        | `Array x ->
          Ojs.list_to_js t_to_js x
        | `Other x ->
          a_to_js x)
  }]

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
[@@js.custom
  { of_js =
      (fun a_of_js cases_of_js x ->
        try `Enum (cases_of_js x) with _ -> `Other (a_of_js x))
  ; to_js =
      (fun a_to_js cases_to_js -> function
        | `Enum cases ->
          cases_to_js cases
        | `Other x ->
          a_to_js x)
  }]

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

[@@@js.stop]

external pure_js_expr : string -> Ojs.t = "caml_pure_js_expr"

[@@@js.start]

[@@@js.implem external pure_js_expr : string -> Ojs.t = "caml_pure_js_expr"]

(* lib_es5.d.ts *)

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_3 = [ `anonymous_interface_3 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_4 = [ `anonymous_interface_4 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type ('A, 'A0, 'A1, 'A2, 'A3, 'R) anonymous_interface_5 =
      [ `anonymous_interface_5 ] intf
    [@@js.custom
      { of_js = (fun _A _A0 _A1 _A2 _A3 _R -> Obj.magic)
      ; to_js = (fun _A _A0 _A1 _A2 _A3 _R -> Obj.magic)
      }]

    type ('A, 'A0, 'A1, 'A2, 'R) anonymous_interface_6 =
      [ `anonymous_interface_6 ] intf
    [@@js.custom
      { of_js = (fun _A _A0 _A1 _A2 _R -> Obj.magic)
      ; to_js = (fun _A _A0 _A1 _A2 _R -> Obj.magic)
      }]

    type ('A, 'A0, 'A1, 'R) anonymous_interface_7 =
      [ `anonymous_interface_7 ] intf
    [@@js.custom
      { of_js = (fun _A _A0 _A1 _R -> Obj.magic)
      ; to_js = (fun _A _A0 _A1 _R -> Obj.magic)
      }]

    type ('A, 'A0, 'R) anonymous_interface_8 = [ `anonymous_interface_8 ] intf
    [@@js.custom
      { of_js = (fun _A _A0 _R -> Obj.magic)
      ; to_js = (fun _A _A0 _R -> Obj.magic)
      }]

    type ('A, 'R) anonymous_interface_9 = [ `anonymous_interface_9 ] intf
    [@@js.custom
      { of_js = (fun _A _R -> Obj.magic); to_js = (fun _A _R -> Obj.magic) }]

    type ('A, 'T) anonymous_interface_10 = [ `anonymous_interface_10 ] intf
    [@@js.custom
      { of_js = (fun _A _T -> Obj.magic); to_js = (fun _A _T -> Obj.magic) }]

    type ('AX, 'R) anonymous_interface_11 = [ `anonymous_interface_11 ] intf
    [@@js.custom
      { of_js = (fun _AX _R -> Obj.magic); to_js = (fun _AX _R -> Obj.magic) }]

    type 'T anonymous_interface_12 = [ `anonymous_interface_12 ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]
  end
end

open Internal
open AnonymousInterfaces

val naN : int [@@js.global "NaN"]

val infinity : int [@@js.global "Infinity"]

val eval : string -> any [@@js.global "eval"]

val parseInt : string -> ?radix:int -> unit -> int [@@js.global "parseInt"]

val parseFloat : string:string -> int [@@js.global "parseFloat"]

val isNaN : int -> bool [@@js.global "isNaN"]

val isFinite : int -> bool [@@js.global "isFinite"]

val decodeURI : string -> string [@@js.global "decodeURI"]

val decodeURIComponent : string -> string [@@js.global "decodeURIComponent"]

val encodeURI : string -> string [@@js.global "encodeURI"]

val encodeURIComponent : bool or_string or_number -> string
  [@@js.global "encodeURIComponent"]

val escape : string -> string [@@js.global "escape"]

val unescape : string -> string [@@js.global "unescape"]

module Symbol : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> symbol [@@js.call "valueOf"]
end
[@@js.scope "Symbol"]

module PropertyKey : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module PropertyDescriptor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_configurable : t -> bool [@@js.get "configurable"]

  val set_configurable : t -> bool -> unit [@@js.set "configurable"]

  val get_enumerable : t -> bool [@@js.get "enumerable"]

  val set_enumerable : t -> bool -> unit [@@js.set "enumerable"]

  val get_value : t -> any [@@js.get "value"]

  val set_value : t -> any -> unit [@@js.set "value"]

  val get_writable : t -> bool [@@js.get "writable"]

  val set_writable : t -> bool -> unit [@@js.set "writable"]

  val get_ : t -> any [@@js.call "get"]

  val set_ : t -> any -> unit [@@js.call "set"]
end
[@@js.scope "PropertyDescriptor"]

module PropertyDescriptorMap : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> PropertyDescriptor.t [@@js.index_get]

  val set : t -> string -> PropertyDescriptor.t -> unit [@@js.index_set]
end
[@@js.scope "PropertyDescriptorMap"]

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

module Readonly : sig
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

  val t_of_js : (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
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

module ThisType : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Function : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply_ : t -> this:t -> thisArg:any -> ?argArray:any -> unit -> any
    [@@js.call "apply"]

  val call
    :  t
    -> this:t
    -> thisArg:any
    -> argArray:(any list[@js.variadic])
    -> any
    [@@js.call "call"]

  val bind
    :  t
    -> this:t
    -> thisArg:any
    -> argArray:(any list[@js.variadic])
    -> any
    [@@js.call "bind"]

  val toString : t -> string [@@js.call "toString"]

  val get_prototype : t -> any [@@js.get "prototype"]

  val set_prototype : t -> any -> unit [@@js.set "prototype"]

  val get_length : t -> int [@@js.get "length"]

  val get_arguments : t -> any [@@js.get "arguments"]

  val set_arguments : t -> any -> unit [@@js.set "arguments"]

  val get_caller : t -> t [@@js.get "caller"]

  val set_caller : t -> t -> unit [@@js.set "caller"]

  (* Constructor *)

  val create : (string list[@js.variadic]) -> t [@@js.new "Function"]
end

module FunctionConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> (string list[@js.variadic]) -> Function.t
    [@@js.apply_newable]

  val apply : t -> (string list[@js.variadic]) -> Function.t [@@js.apply]

  val get_prototype : t -> Function.t [@@js.get "prototype"]
end
[@@js.scope "FunctionConstructor"]

val function_ : FunctionConstructor.t [@@js.global "Function"]

module Object : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_constructor : t -> Function.t [@@js.get "constructor"]

  val set_constructor : t -> Function.t -> unit [@@js.set "constructor"]

  val toString : t -> string [@@js.call "toString"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val hasOwnProperty : t -> PropertyKey.t -> bool [@@js.call "hasOwnProperty"]

  val isPrototypeOf : t -> t -> bool [@@js.call "isPrototypeOf"]

  val propertyIsEnumerable : t -> PropertyKey.t -> bool
    [@@js.call "propertyIsEnumerable"]

  (* Constructor *)

  val create : ?value:any -> unit -> t [@@js.new "Object"]

  val getPrototypeOf : any -> any [@@js.global "Object.getPrototypeOf"]

  val getOwnPropertyDescriptor
    :  any
    -> p:PropertyKey.t
    -> PropertyDescriptor.t or_undefined
    [@@js.global "Object.getOwnPropertyDescriptor"]

  val getOwnPropertyNames : any -> string list
    [@@js.global "Object.getOwnPropertyNames"]

  val create_ : untyped_object or_null -> any [@@js.new "Object"]

  val create_'
    :  untyped_object or_null
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any
    [@@js.new "Object"]

  val defineProperty
    :  t
    -> any
    -> p:PropertyKey.t
    -> attributes:(PropertyDescriptor.t, any ThisType.t) intersection2
    -> any
    [@@js.global "Object.defineProperty"]

  val defineProperties
    :  t
    -> any
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any
    [@@js.global "Object.defineProperties"]

  val seal : 'T -> 'T [@@js.global "Object.seal"]

  val freeze : 'T list -> 'T list [@@js.global "Object.freeze"]

  val freeze' : 'T -> 'T [@@js.global "Object.freeze"]

  val freeze'' : 'T -> 'T Readonly.t [@@js.global "Object.freeze"]

  val preventExtensions : 'T -> 'T [@@js.global "Object.preventExtensions"]

  val isSealed : any -> bool [@@js.global "Object.isSealed"]

  val isFrozen : any -> bool [@@js.global "Object.isFrozen"]

  val isExtensible : any -> bool [@@js.global "Object.isExtensible"]

  val keys : untyped_object -> string list [@@js.global "Object.keys"]
end

module ObjectConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> Object.t [@@js.apply_newable]

  val apply : t -> any [@@js.apply]

  val apply' : t -> any -> any [@@js.apply]

  val get_prototype : t -> Object.t [@@js.get "prototype"]

  val getPrototypeOf : t -> any -> any [@@js.call "getPrototypeOf"]

  val getOwnPropertyDescriptor
    :  t
    -> any
    -> p:PropertyKey.t
    -> PropertyDescriptor.t or_undefined
    [@@js.call "getOwnPropertyDescriptor"]

  val getOwnPropertyNames : t -> any -> string list
    [@@js.call "getOwnPropertyNames"]

  val create_ : t -> untyped_object or_null -> any [@@js.call "create"]

  val create_'
    :  t
    -> untyped_object or_null
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any
    [@@js.call "create"]

  val defineProperty
    :  t
    -> any
    -> p:PropertyKey.t
    -> attributes:(PropertyDescriptor.t, any ThisType.t) intersection2
    -> any
    [@@js.call "defineProperty"]

  val defineProperties
    :  t
    -> any
    -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2
    -> any
    [@@js.call "defineProperties"]

  val seal : t -> 'T -> 'T [@@js.call "seal"]

  val freeze : t -> 'T list -> 'T list [@@js.call "freeze"]

  val freeze' : t -> 'T -> 'T [@@js.call "freeze"]

  val freeze'' : t -> 'T -> 'T Readonly.t [@@js.call "freeze"]

  val preventExtensions : t -> 'T -> 'T [@@js.call "preventExtensions"]

  val isSealed : t -> any -> bool [@@js.call "isSealed"]

  val isFrozen : t -> any -> bool [@@js.call "isFrozen"]

  val isExtensible : t -> any -> bool [@@js.call "isExtensible"]

  val keys : t -> untyped_object -> string list [@@js.call "keys"]
end
[@@js.scope "ObjectConstructor"]

val object_ : ObjectConstructor.t [@@js.global "Object"]

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
  include module type of struct
    include Function
  end

  val apply_ : t -> this:(this:'T -> 'R) -> thisArg:'T -> 'R [@@js.call "apply"]

  val apply_all
    :  t
    -> this:
         (this:'T
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               (any list[@js.variadic])
          -> 'R)
    -> thisArg:'T
    -> args:'A
    -> 'R
    [@@js.call "apply"]

  val call
    :  t
    -> this:
         (this:'T
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               (any list[@js.variadic])
          -> 'R)
    -> thisArg:'T
    -> args:
         (* FIXME: type ''A' cannot be used for variadic argument *)
         (any list[@js.variadic])
    -> 'R
    [@@js.call "call"]

  val bind
    :  t
    -> this:'T
    -> thisArg:'T ThisParameterType.t
    -> 'T OmitThisParameter.t
    [@@js.call "bind"]

  val bind_all
    :  t
    -> this:
         (this:'T
          -> args:
               (* FIXME: type ''A' cannot be used for variadic argument *)
               (any list[@js.variadic])
          -> 'R)
    -> thisArg:'T
    -> (args:
          (* FIXME: type ''A' cannot be used for variadic argument *)
          (any list[@js.variadic])
        -> 'R
       [@js.dummy])
    [@@js.call "bind"]
end
[@@js.scope "CallableFunction"]

module NewableFunction : sig
  include module type of struct
    include Function
  end

  (* val apply_ : t -> this:'T anonymous_interface_12 -> thisArg:'T -> unit
     [@@js.call "apply"] *)

  (* val apply_' : t -> this:('A, 'T) anonymous_interface_10 -> thisArg:'T -> 'A
     -> unit [@@js.call "apply"] *)

  (* val call : t -> this:('A, 'T) anonymous_interface_10 -> thisArg:'T -> (*
     FIXME: type ''A' cannot be used for variadic argument *) (any
     list[@js.variadic]) -> unit [@@js.call "call"] *)

  val bind : t -> this:'T -> thisArg:any -> 'T [@@js.call "bind"]

  (* val bind' : t -> this:('A, 'A0, 'R) anonymous_interface_8 -> thisArg:any ->
     arg0:'A0 -> ('A, 'R) anonymous_interface_9 [@@js.call "bind"] *)

  (* val bind'' : t -> this:('A, 'A0, 'A1, 'R) anonymous_interface_7 ->
     thisArg:any -> arg0:'A0 -> arg1:'A1 -> ('A, 'R) anonymous_interface_9
     [@@js.call "bind"] *)

  (* val bind''' : t -> this:('A, 'A0, 'A1, 'A2, 'R) anonymous_interface_6 ->
     thisArg:any -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> ('A, 'R)
     anonymous_interface_9 [@@js.call "bind"] *)

  (* val bind'''' : t -> this:('A, 'A0, 'A1, 'A2, 'A3, 'R) anonymous_interface_5
     -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> ('A, 'R)
     anonymous_interface_9 [@@js.call "bind"] *)

  (* val bind''''' : t -> this:('AX, 'R) anonymous_interface_11 -> thisArg:any
     -> ('AX list[@js.variadic]) -> ('AX, 'R) anonymous_interface_11 [@@js.call
     "bind"] *)
end

module IArguments : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> int -> any [@@js.index_get]

  val set : t -> int -> any -> unit [@@js.index_set]

  val get_length : t -> int [@@js.get "length"]

  val set_length : t -> int -> unit [@@js.set "length"]

  val get_callee : t -> Function.t [@@js.get "callee"]

  val set_callee : t -> Function.t -> unit [@@js.set "callee"]
end
[@@js.scope "IArguments"]

module Intl : sig
  module CollatorOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_usage : t -> string [@@js.get "usage"]

    val set_usage : t -> string -> unit [@@js.set "usage"]

    val get_localeMatcher : t -> string [@@js.get "localeMatcher"]

    val set_localeMatcher : t -> string -> unit [@@js.set "localeMatcher"]

    val get_numeric : t -> bool [@@js.get "numeric"]

    val set_numeric : t -> bool -> unit [@@js.set "numeric"]

    val get_caseFirst : t -> string [@@js.get "caseFirst"]

    val set_caseFirst : t -> string -> unit [@@js.set "caseFirst"]

    val get_sensitivity : t -> string [@@js.get "sensitivity"]

    val set_sensitivity : t -> string -> unit [@@js.set "sensitivity"]

    val get_ignorePunctuation : t -> bool [@@js.get "ignorePunctuation"]

    val set_ignorePunctuation : t -> bool -> unit [@@js.set "ignorePunctuation"]
  end
  [@@js.scope "CollatorOptions"]

  module ResolvedCollatorOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> string [@@js.get "locale"]

    val set_locale : t -> string -> unit [@@js.set "locale"]

    val get_usage : t -> string [@@js.get "usage"]

    val set_usage : t -> string -> unit [@@js.set "usage"]

    val get_sensitivity : t -> string [@@js.get "sensitivity"]

    val set_sensitivity : t -> string -> unit [@@js.set "sensitivity"]

    val get_ignorePunctuation : t -> bool [@@js.get "ignorePunctuation"]

    val set_ignorePunctuation : t -> bool -> unit [@@js.set "ignorePunctuation"]

    val get_collation : t -> string [@@js.get "collation"]

    val set_collation : t -> string -> unit [@@js.set "collation"]

    val get_caseFirst : t -> string [@@js.get "caseFirst"]

    val set_caseFirst : t -> string -> unit [@@js.set "caseFirst"]

    val get_numeric : t -> bool [@@js.get "numeric"]

    val set_numeric : t -> bool -> unit [@@js.set "numeric"]
  end
  [@@js.scope "ResolvedCollatorOptions"]

  module Collator : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val compare : t -> x:string -> y:string -> int [@@js.call "compare"]

    val resolvedOptions : t -> ResolvedCollatorOptions.t
      [@@js.call "resolvedOptions"]
  end
  [@@js.scope "Collator"]

  val collator : anonymous_interface_2 [@@js.global "Collator"]

  module NumberFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localeMatcher : t -> string [@@js.get "localeMatcher"]

    val set_localeMatcher : t -> string -> unit [@@js.set "localeMatcher"]

    val get_style : t -> string [@@js.get "style"]

    val set_style : t -> string -> unit [@@js.set "style"]

    val get_currency : t -> string [@@js.get "currency"]

    val set_currency : t -> string -> unit [@@js.set "currency"]

    val get_currencyDisplay : t -> string [@@js.get "currencyDisplay"]

    val set_currencyDisplay : t -> string -> unit [@@js.set "currencyDisplay"]

    val get_currencySign : t -> string [@@js.get "currencySign"]

    val set_currencySign : t -> string -> unit [@@js.set "currencySign"]

    val get_useGrouping : t -> bool [@@js.get "useGrouping"]

    val set_useGrouping : t -> bool -> unit [@@js.set "useGrouping"]

    val get_minimumIntegerDigits : t -> int [@@js.get "minimumIntegerDigits"]

    val set_minimumIntegerDigits : t -> int -> unit
      [@@js.set "minimumIntegerDigits"]

    val get_minimumFractionDigits : t -> int [@@js.get "minimumFractionDigits"]

    val set_minimumFractionDigits : t -> int -> unit
      [@@js.set "minimumFractionDigits"]

    val get_maximumFractionDigits : t -> int [@@js.get "maximumFractionDigits"]

    val set_maximumFractionDigits : t -> int -> unit
      [@@js.set "maximumFractionDigits"]

    val get_minimumSignificantDigits : t -> int
      [@@js.get "minimumSignificantDigits"]

    val set_minimumSignificantDigits : t -> int -> unit
      [@@js.set "minimumSignificantDigits"]

    val get_maximumSignificantDigits : t -> int
      [@@js.get "maximumSignificantDigits"]

    val set_maximumSignificantDigits : t -> int -> unit
      [@@js.set "maximumSignificantDigits"]
  end
  [@@js.scope "NumberFormatOptions"]

  module ResolvedNumberFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> string [@@js.get "locale"]

    val set_locale : t -> string -> unit [@@js.set "locale"]

    val get_numberingSystem : t -> string [@@js.get "numberingSystem"]

    val set_numberingSystem : t -> string -> unit [@@js.set "numberingSystem"]

    val get_style : t -> string [@@js.get "style"]

    val set_style : t -> string -> unit [@@js.set "style"]

    val get_currency : t -> string [@@js.get "currency"]

    val set_currency : t -> string -> unit [@@js.set "currency"]

    val get_currencyDisplay : t -> string [@@js.get "currencyDisplay"]

    val set_currencyDisplay : t -> string -> unit [@@js.set "currencyDisplay"]

    val get_minimumIntegerDigits : t -> int [@@js.get "minimumIntegerDigits"]

    val set_minimumIntegerDigits : t -> int -> unit
      [@@js.set "minimumIntegerDigits"]

    val get_minimumFractionDigits : t -> int [@@js.get "minimumFractionDigits"]

    val set_minimumFractionDigits : t -> int -> unit
      [@@js.set "minimumFractionDigits"]

    val get_maximumFractionDigits : t -> int [@@js.get "maximumFractionDigits"]

    val set_maximumFractionDigits : t -> int -> unit
      [@@js.set "maximumFractionDigits"]

    val get_minimumSignificantDigits : t -> int
      [@@js.get "minimumSignificantDigits"]

    val set_minimumSignificantDigits : t -> int -> unit
      [@@js.set "minimumSignificantDigits"]

    val get_maximumSignificantDigits : t -> int
      [@@js.get "maximumSignificantDigits"]

    val set_maximumSignificantDigits : t -> int -> unit
      [@@js.set "maximumSignificantDigits"]

    val get_useGrouping : t -> bool [@@js.get "useGrouping"]

    val set_useGrouping : t -> bool -> unit [@@js.set "useGrouping"]
  end
  [@@js.scope "ResolvedNumberFormatOptions"]

  module NumberFormat : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val format : t -> value:int -> string [@@js.call "format"]

    val resolvedOptions : t -> ResolvedNumberFormatOptions.t
      [@@js.call "resolvedOptions"]
  end
  [@@js.scope "NumberFormat"]

  val numberFormat : anonymous_interface_4 [@@js.global "NumberFormat"]

  module DateTimeFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localeMatcher
      :  t
      -> ([ `best_fit [@js "best fit"] | `lookup [@js "lookup"] ][@js.enum])
      [@@js.get "localeMatcher"]

    val set_localeMatcher : t -> ([ `best_fit | `lookup ][@js.enum]) -> unit
      [@@js.set "localeMatcher"]

    val get_weekday
      :  t
      -> ([ `long [@js "long"] | `narrow [@js "narrow"] | `short [@js "short"] ]
         [@js.enum])
      [@@js.get "weekday"]

    val set_weekday : t -> ([ `long | `narrow | `short ][@js.enum]) -> unit
      [@@js.set "weekday"]

    val get_era
      :  t
      -> ([ `long [@js "long"] | `narrow [@js "narrow"] | `short [@js "short"] ]
         [@js.enum])
      [@@js.get "era"]

    val set_era : t -> ([ `long | `narrow | `short ][@js.enum]) -> unit
      [@@js.set "era"]

    val get_year
      :  t
      -> ([ `two_digit [@js "2-digit"] | `numeric [@js "numeric"] ][@js.enum])
      [@@js.get "year"]

    val set_year : t -> ([ `two_digit | `numeric ][@js.enum]) -> unit
      [@@js.set "year"]

    val get_month
      :  t
      -> ([ `two_digit [@js "2-digit"]
          | `long [@js "long"]
          | `narrow [@js "narrow"]
          | `numeric [@js "numeric"]
          | `short [@js "short"]
          ]
         [@js.enum])
      [@@js.get "month"]

    val set_month
      :  t
      -> ([ `two_digit | `long | `narrow | `numeric | `short ][@js.enum])
      -> unit
      [@@js.set "month"]

    val get_day
      :  t
      -> ([ `two_digit [@js "2-digit"] | `numeric [@js "numeric"] ][@js.enum])
      [@@js.get "day"]

    val set_day : t -> ([ `two_digit | `numeric ][@js.enum]) -> unit
      [@@js.set "day"]

    val get_hour
      :  t
      -> ([ `two_digit [@js "2-digit"] | `numeric [@js "numeric"] ][@js.enum])
      [@@js.get "hour"]

    val set_hour : t -> ([ `two_digit | `numeric ][@js.enum]) -> unit
      [@@js.set "hour"]

    val get_minute
      :  t
      -> ([ `two_digit [@js "2-digit"] | `numeric [@js "numeric"] ][@js.enum])
      [@@js.get "minute"]

    val set_minute : t -> ([ `two_digit | `numeric ][@js.enum]) -> unit
      [@@js.set "minute"]

    val get_second
      :  t
      -> ([ `two_digit [@js "2-digit"] | `numeric [@js "numeric"] ][@js.enum])
      [@@js.get "second"]

    val set_second : t -> ([ `two_digit | `numeric ][@js.enum]) -> unit
      [@@js.set "second"]

    val get_timeZoneName
      :  t
      -> ([ `long [@js "long"] | `short [@js "short"] ][@js.enum])
      [@@js.get "timeZoneName"]

    val set_timeZoneName : t -> ([ `long | `short ][@js.enum]) -> unit
      [@@js.set "timeZoneName"]

    val get_formatMatcher
      :  t
      -> ([ `basic [@js "basic"] | `best_fit [@js "best fit"] ][@js.enum])
      [@@js.get "formatMatcher"]

    val set_formatMatcher : t -> ([ `basic | `best_fit ][@js.enum]) -> unit
      [@@js.set "formatMatcher"]

    val get_hour12 : t -> bool [@@js.get "hour12"]

    val set_hour12 : t -> bool -> unit [@@js.set "hour12"]

    val get_timeZone : t -> string [@@js.get "timeZone"]

    val set_timeZone : t -> string -> unit [@@js.set "timeZone"]
  end
  [@@js.scope "DateTimeFormatOptions"]

  module ResolvedDateTimeFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> string [@@js.get "locale"]

    val set_locale : t -> string -> unit [@@js.set "locale"]

    val get_calendar : t -> string [@@js.get "calendar"]

    val set_calendar : t -> string -> unit [@@js.set "calendar"]

    val get_numberingSystem : t -> string [@@js.get "numberingSystem"]

    val set_numberingSystem : t -> string -> unit [@@js.set "numberingSystem"]

    val get_timeZone : t -> string [@@js.get "timeZone"]

    val set_timeZone : t -> string -> unit [@@js.set "timeZone"]

    val get_hour12 : t -> bool [@@js.get "hour12"]

    val set_hour12 : t -> bool -> unit [@@js.set "hour12"]

    val get_weekday : t -> string [@@js.get "weekday"]

    val set_weekday : t -> string -> unit [@@js.set "weekday"]

    val get_era : t -> string [@@js.get "era"]

    val set_era : t -> string -> unit [@@js.set "era"]

    val get_year : t -> string [@@js.get "year"]

    val set_year : t -> string -> unit [@@js.set "year"]

    val get_month : t -> string [@@js.get "month"]

    val set_month : t -> string -> unit [@@js.set "month"]

    val get_day : t -> string [@@js.get "day"]

    val set_day : t -> string -> unit [@@js.set "day"]

    val get_hour : t -> string [@@js.get "hour"]

    val set_hour : t -> string -> unit [@@js.set "hour"]

    val get_minute : t -> string [@@js.get "minute"]

    val set_minute : t -> string -> unit [@@js.set "minute"]

    val get_second : t -> string [@@js.get "second"]

    val set_second : t -> string -> unit [@@js.set "second"]

    val get_timeZoneName : t -> string [@@js.get "timeZoneName"]

    val set_timeZoneName : t -> string -> unit [@@js.set "timeZoneName"]
  end
  [@@js.scope "ResolvedDateTimeFormatOptions"]
end
[@@js.scope "Intl"]

module ConcatArray : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_length : 'T t -> int [@@js.get "length"]

  val get : 'T t -> int -> 'T [@@js.index_get]

  val join : 'T t -> ?separator:string -> unit -> string [@@js.call "join"]

  val slice : 'T t -> ?start:int -> ?end_:int -> unit -> 'T list
    [@@js.call "slice"]
end
[@@js.scope "ConcatArray"]

module ReadonlyArray : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_length : 'T t -> int [@@js.get "length"]

  val toString : 'T t -> string [@@js.call "toString"]

  val toLocaleString : 'T t -> string [@@js.call "toLocaleString"]

  val concat : 'T t -> ('T ConcatArray.t list[@js.variadic]) -> 'T list
    [@@js.call "concat"]

  val concat'
    :  'T t
    -> (('T, 'T ConcatArray.t) union2 list[@js.variadic])
    -> 'T list
    [@@js.call "concat"]

  val join : 'T t -> ?separator:string -> unit -> string [@@js.call "join"]

  val slice : 'T t -> ?start:int -> ?end_:int -> unit -> 'T list
    [@@js.call "slice"]

  val indexOf : 'T t -> searchElement:'T -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val lastIndexOf : 'T t -> searchElement:'T -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val every
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val every'
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val some
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> index:int -> array:'T list -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val map
    :  'T t
    -> callbackfn:(value:'T -> index:int -> array:'T list -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
    [@@js.call "map"]

  val filter
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S list
    [@@js.call "filter"]

  val filter'
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T list
    [@@js.call "filter"]

  val reduce
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> 'T
    [@@js.call "reduce"]

  val reduce'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T
    [@@js.call "reduce"]

  val reduce''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> 'T
    [@@js.call "reduceRight"]

  val reduceRight'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T
    [@@js.call "reduceRight"]

  val reduceRight''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val get : 'T t -> int -> 'T [@@js.index_get]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module TemplateStringsArray : sig
  include module type of struct
    include ReadonlyArray
  end

  type t = string ReadonlyArray.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_raw : t -> string list [@@js.get "raw"]
end
[@@js.scope "TemplateStringsArray"]

module Array : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_length : 'T t -> int [@@js.get "length"]

  val set_length : 'T t -> int -> unit [@@js.set "length"]

  val toString : 'T t -> string [@@js.call "toString"]

  val toLocaleString : 'T t -> string [@@js.call "toLocaleString"]

  val pop : 'T t -> 'T or_undefined [@@js.call "pop"]

  val push : 'T t -> ('T list[@js.variadic]) -> int [@@js.call "push"]

  val concat : 'T t -> ('T ConcatArray.t list[@js.variadic]) -> 'T list
    [@@js.call "concat"]

  val concat'
    :  'T t
    -> (('T, 'T ConcatArray.t) union2 list[@js.variadic])
    -> 'T list
    [@@js.call "concat"]

  val join : 'T t -> ?separator:string -> unit -> string [@@js.call "join"]

  val reverse : 'T t -> 'T list [@@js.call "reverse"]

  val shift : 'T t -> 'T or_undefined [@@js.call "shift"]

  val slice : 'T t -> ?start:int -> ?end_:int -> unit -> 'T list
    [@@js.call "slice"]

  val sort : 'T t -> ?compareFn:(a:'T -> b:'T -> int) -> unit -> 'T t
    [@@js.call "sort"]

  val splice : 'T t -> start:int -> ?deleteCount:int -> unit -> 'T list
    [@@js.call "splice"]

  val splice'
    :  'T t
    -> start:int
    -> deleteCount:int
    -> ('T list[@js.variadic])
    -> 'T list
    [@@js.call "splice"]

  val unshift : 'T t -> ('T list[@js.variadic]) -> int [@@js.call "unshift"]

  val indexOf : 'T t -> searchElement:'T -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val lastIndexOf : 'T t -> searchElement:'T -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val every
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val every'
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val some
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val forEach
    :  'T t
    -> callbackfn:(value:'T -> index:int -> array:'T list -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val map
    :  'T t
    -> callbackfn:(value:'T -> index:int -> array:'T list -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
    [@@js.call "map"]

  val filter
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> bool)
    -> ?thisArg:any
    -> unit
    -> 'S list
    [@@js.call "filter"]

  val filter'
    :  'T t
    -> (value:'T -> index:int -> array:'T list -> unknown)
    -> ?thisArg:any
    -> unit
    -> 'T list
    [@@js.call "filter"]

  val reduce
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> 'T
    [@@js.call "reduce"]

  val reduce'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T
    [@@js.call "reduce"]

  val reduce''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> 'T
    [@@js.call "reduceRight"]

  val reduceRight'
    :  'T t
    -> callbackfn:
         (previousValue:'T
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'T)
    -> initialValue:'T
    -> 'T
    [@@js.call "reduceRight"]

  val reduceRight''
    :  'T t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:'T
          -> currentIndex:int
          -> array:'T list
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val get : 'T t -> int -> 'T [@@js.index_get]

  val set : 'T t -> int -> 'T -> unit [@@js.index_set]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]

  (* Constructor *)

  val create : ?arrayLength:int -> unit -> any list [@@js.new "Array"]

  val create' : arrayLength:int -> 'T list [@@js.new "Array"]

  val create'' : ('T list[@js.variadic]) -> 'T list [@@js.new "Array"]

  val isArray : any -> bool [@@js.global "Array.isArray"]
end

module ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?arrayLength:int -> unit -> any list [@@js.apply_newable]

  val create' : t -> arrayLength:int -> 'T list [@@js.apply_newable]

  val create'' : t -> ('T list[@js.variadic]) -> 'T list [@@js.apply_newable]

  val apply : t -> ?arrayLength:int -> unit -> any list [@@js.apply]

  val apply' : t -> arrayLength:int -> 'T list [@@js.apply]

  val apply'' : t -> ('T list[@js.variadic]) -> 'T list [@@js.apply]

  val isArray : t -> any -> bool [@@js.call "isArray"]

  val get_prototype : t -> any list [@@js.get "prototype"]
end
[@@js.scope "ArrayConstructor"]

val array : ArrayConstructor.t [@@js.global "Array"]

module RegExpMatchArray : sig
  include module type of struct
    include Array
  end

  type t = string Array.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_index : t -> int [@@js.get "index"]

  val set_index : t -> int -> unit [@@js.set "index"]

  val get_input : t -> string [@@js.get "input"]

  val set_input : t -> string -> unit [@@js.set "input"]
end
[@@js.scope "RegExpMatchArray"]

module RegExpExecArray : sig
  include module type of struct
    include Array
  end

  type t = string Array.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_index : t -> int [@@js.get "index"]

  val set_index : t -> int -> unit [@@js.set "index"]

  val get_input : t -> string [@@js.get "input"]

  val set_input : t -> string -> unit [@@js.set "input"]
end
[@@js.scope "RegExpExecArray"]

module RegExp : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val exec : t -> string:string -> RegExpExecArray.t or_null [@@js.call "exec"]

  val test : t -> string:string -> bool [@@js.call "test"]

  val get_source : t -> string [@@js.get "source"]

  val get_global : t -> bool [@@js.get "global"]

  val get_ignoreCase : t -> bool [@@js.get "ignoreCase"]

  val get_multiline : t -> bool [@@js.get "multiline"]

  val get_lastIndex : t -> int [@@js.get "lastIndex"]

  val set_lastIndex : t -> int -> unit [@@js.set "lastIndex"]

  val compile : t -> t [@@js.call "compile"]

  (* Constructor *)

  val create : pattern:t or_string -> t [@@js.new "RegExp"]

  val create' : pattern:string -> ?flags:string -> unit -> t [@@js.new "RegExp"]

  val get__1 : unit -> string [@@js.global "RegExp.$1"]

  val set__1 : string -> unit [@@js.global "RegExp.$1"]

  val get__2 : unit -> string [@@js.global "RegExp.$2"]

  val set__2 : string -> unit [@@js.global "RegExp.$2"]

  val get__3 : unit -> string [@@js.global "RegExp.$3"]

  val set__3 : string -> unit [@@js.global "RegExp.$3"]

  val get__4 : unit -> string [@@js.global "RegExp.$4"]

  val set__4 : string -> unit [@@js.global "RegExp.$4"]

  val get__5 : unit -> string [@@js.global "RegExp.$5"]

  val set__5 : string -> unit [@@js.global "RegExp.$5"]

  val get__6 : unit -> string [@@js.global "RegExp.$6"]

  val set__6 : string -> unit [@@js.global "RegExp.$6"]

  val get__7 : unit -> string [@@js.global "RegExp.$7"]

  val set__7 : string -> unit [@@js.global "RegExp.$7"]

  val get__8 : unit -> string [@@js.global "RegExp.$8"]

  val set__8 : string -> unit [@@js.global "RegExp.$8"]

  val get__9 : unit -> string [@@js.global "RegExp.$9"]

  val set__9 : string -> unit [@@js.global "RegExp.$9"]

  val get_lastMatch : unit -> string [@@js.global "RegExp.lastMatch"]

  val set_lastMatch : string -> unit [@@js.global "RegExp.lastMatch"]
end

module RegExpConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> pattern:RegExp.t or_string -> RegExp.t [@@js.apply_newable]

  val create' : t -> pattern:string -> ?flags:string -> unit -> RegExp.t
    [@@js.apply_newable]

  val apply : t -> pattern:RegExp.t or_string -> RegExp.t [@@js.apply]

  val apply' : t -> pattern:string -> ?flags:string -> unit -> RegExp.t
    [@@js.apply]

  val get_prototype : t -> RegExp.t [@@js.get "prototype"]

  val get__1 : t -> string [@@js.get "$1"]

  val set__1 : t -> string -> unit [@@js.set "$1"]

  val get__2 : t -> string [@@js.get "$2"]

  val set__2 : t -> string -> unit [@@js.set "$2"]

  val get__3 : t -> string [@@js.get "$3"]

  val set__3 : t -> string -> unit [@@js.set "$3"]

  val get__4 : t -> string [@@js.get "$4"]

  val set__4 : t -> string -> unit [@@js.set "$4"]

  val get__5 : t -> string [@@js.get "$5"]

  val set__5 : t -> string -> unit [@@js.set "$5"]

  val get__6 : t -> string [@@js.get "$6"]

  val set__6 : t -> string -> unit [@@js.set "$6"]

  val get__7 : t -> string [@@js.get "$7"]

  val set__7 : t -> string -> unit [@@js.set "$7"]

  val get__8 : t -> string [@@js.get "$8"]

  val set__8 : t -> string -> unit [@@js.set "$8"]

  val get__9 : t -> string [@@js.get "$9"]

  val set__9 : t -> string -> unit [@@js.set "$9"]

  val get_lastMatch : t -> string [@@js.get "lastMatch"]

  val set_lastMatch : t -> string -> unit [@@js.set "lastMatch"]
end
[@@js.scope "RegExpConstructor"]

val regExp : RegExpConstructor.t [@@js.global "RegExp"]

module String : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val localeCompare
    :  t
    -> that:string
    -> ?locales:string list or_string
    -> ?options:Intl.CollatorOptions.t
    -> unit
    -> int
    [@@js.call "localeCompare"]

  val toString : t -> string [@@js.call "toString"]

  val charAt : t -> pos:int -> string [@@js.call "charAt"]

  val charCodeAt : t -> index:int -> int [@@js.call "charCodeAt"]

  val concat : t -> strings:(string list[@js.variadic]) -> string
    [@@js.call "concat"]

  val indexOf : t -> searchString:string -> ?position:int -> unit -> int
    [@@js.call "indexOf"]

  val lastIndexOf : t -> searchString:string -> ?position:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val localeCompare' : t -> that:string -> int [@@js.call "localeCompare"]

  val match_ : t -> regexp:RegExp.t or_string -> RegExpMatchArray.t or_null
    [@@js.call "match"]

  val replace
    :  t
    -> searchValue:RegExp.t or_string
    -> replaceValue:string
    -> string
    [@@js.call "replace"]

  val replace'
    :  t
    -> searchValue:RegExp.t or_string
    -> replacer:(substring:string -> args:(any list[@js.variadic]) -> string)
    -> string
    [@@js.call "replace"]

  val search : t -> regexp:RegExp.t or_string -> int [@@js.call "search"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> string [@@js.call "slice"]

  val split
    :  t
    -> separator:RegExp.t or_string
    -> ?limit:int
    -> unit
    -> string list
    [@@js.call "split"]

  val substring : t -> start:int -> ?end_:int -> unit -> string
    [@@js.call "substring"]

  val toLowerCase : t -> string [@@js.call "toLowerCase"]

  val toLocaleLowerCase : t -> ?locales:string list or_string -> unit -> string
    [@@js.call "toLocaleLowerCase"]

  val toUpperCase : t -> string [@@js.call "toUpperCase"]

  val toLocaleUpperCase : t -> ?locales:string list or_string -> unit -> string
    [@@js.call "toLocaleUpperCase"]

  val trim : t -> string [@@js.call "trim"]

  val get_length : t -> int [@@js.get "length"]

  val substr : t -> from:int -> ?length:int -> unit -> string
    [@@js.call "substr"]

  val valueOf : t -> string [@@js.call "valueOf"]

  val get : t -> int -> string [@@js.index_get]

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]

  (* Constructor *)

  val create : ?value:any -> unit -> t [@@js.new "String"]

  val fromCharCode : codes:(int list[@js.variadic]) -> string
    [@@js.global "String.fromCharCode"]
end

module StringConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> String.t [@@js.apply_newable]

  val apply : t -> ?value:any -> unit -> string [@@js.apply]

  val get_prototype : t -> String.t [@@js.get "prototype"]

  val fromCharCode : t -> codes:(int list[@js.variadic]) -> string
    [@@js.call "fromCharCode"]
end
[@@js.scope "StringConstructor"]

val string : StringConstructor.t [@@js.global "String"]

module Boolean : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val valueOf : t -> bool [@@js.call "valueOf"]

  val to_ml : t -> bool [@@js.cast]

  val of_ml : bool -> t [@@js.cast]

  (* Constructor *)

  val create : ?value:any -> unit -> t [@@js.new "Boolean"]
end

module BooleanConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> Boolean.t [@@js.apply_newable]

  val apply : t -> ?value:'T -> unit -> bool [@@js.apply]

  val get_prototype : t -> Boolean.t [@@js.get "prototype"]
end
[@@js.scope "BooleanConstructor"]

val boolean : BooleanConstructor.t [@@js.global "Boolean"]

module Number : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toLocaleString
    :  t
    -> ?locales:string list or_string
    -> ?options:Intl.NumberFormatOptions.t
    -> unit
    -> string
    [@@js.call "toLocaleString"]

  val toString : t -> ?radix:int -> unit -> string [@@js.call "toString"]

  val toFixed : t -> ?fractionDigits:int -> unit -> string [@@js.call "toFixed"]

  val toExponential : t -> ?fractionDigits:int -> unit -> string
    [@@js.call "toExponential"]

  val toPrecision : t -> ?precision:int -> unit -> string
    [@@js.call "toPrecision"]

  val valueOf : t -> int [@@js.call "valueOf"]

  val to_ml : t -> int [@@js.cast]

  val of_ml : int -> t [@@js.cast]

  (* Constructor *)

  val create : ?value:any -> unit -> t [@@js.new "Number"]

  val get_MAX_VALUE : int [@@js.global "Number.MAX_VALUE"]

  val get_MIN_VALUE : int [@@js.global "Number.MIN_VALUE"]

  val get_NaN : int [@@js.global "Number.NaN"]

  val get_NEGATIVE_INFINITY : int [@@js.global "Number.NEGATIVE_INFINITY"]

  val get_POSITIVE_INFINITY : int [@@js.global "Number.POSITIVE_INFINITY"]
end

module NumberConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?value:any -> unit -> Number.t [@@js.apply_newable]

  val apply : t -> ?value:any -> unit -> int [@@js.apply]

  val get_prototype : t -> Number.t [@@js.get "prototype"]

  val get_MAX_VALUE : t -> int [@@js.get "MAX_VALUE"]

  val get_MIN_VALUE : t -> int [@@js.get "MIN_VALUE"]

  val get_NaN : t -> int [@@js.get "NaN"]

  val get_NEGATIVE_INFINITY : t -> int [@@js.get "NEGATIVE_INFINITY"]

  val get_POSITIVE_INFINITY : t -> int [@@js.get "POSITIVE_INFINITY"]
end
[@@js.scope "NumberConstructor"]

val number : NumberConstructor.t [@@js.global "Number"]

module ImportMeta : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Math : sig
  val get_E : int [@@js.global "Math.E"]

  val get_LN10 : int [@@js.global "Math.LN10"]

  val get_LN2 : int [@@js.global "Math.LN2"]

  val get_LOG2E : int [@@js.global "Math.LOG2E"]

  val get_LOG10E : int [@@js.global "Math.LOG10E"]

  val get_PI : int [@@js.global "Math.PI"]

  val get_SQRT1_2 : int [@@js.global "Math.SQRT1_2"]

  val get_SQRT2 : int [@@js.global "Math.SQRT2"]

  val abs : int -> int [@@js.global "Math.abs"]

  val acos : int -> int [@@js.global "Math.acos"]

  val asin : int -> int [@@js.global "Math.asin"]

  val atan : int -> int [@@js.global "Math.atan"]

  val atan2 : y:int -> x:int -> int [@@js.global "Math.atan2"]

  val ceil : int -> int [@@js.global "Math.ceil"]

  val cos : int -> int [@@js.global "Math.cos"]

  val exp : int -> int [@@js.global "Math.exp"]

  val floor : int -> int [@@js.global "Math.floor"]

  val log : int -> int [@@js.global "Math.log"]

  val max : (int list[@js.variadic]) -> int [@@js.global "Math.max"]

  val min : (int list[@js.variadic]) -> int [@@js.global "Math.min"]

  val pow : x:int -> y:int -> int [@@js.global "Math.pow"]

  val random : int [@@js.global "Math.random"]

  val round : int -> int [@@js.global "Math.round"]

  val sin : int -> int [@@js.global "Math.sin"]

  val sqrt : int -> int [@@js.global "Math.sqrt"]

  val tan : int -> int [@@js.global "Math.tan"]
end

module Date : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val toLocaleString
    :  t
    -> ?locales:string list or_string
    -> ?options:Intl.DateTimeFormatOptions.t
    -> unit
    -> string
    [@@js.call "toLocaleString"]

  val toLocaleDateString
    :  t
    -> ?locales:string list or_string
    -> ?options:Intl.DateTimeFormatOptions.t
    -> unit
    -> string
    [@@js.call "toLocaleDateString"]

  val toLocaleTimeString
    :  t
    -> ?locales:string list or_string
    -> ?options:Intl.DateTimeFormatOptions.t
    -> unit
    -> string
    [@@js.call "toLocaleTimeString"]

  val toString : t -> string [@@js.call "toString"]

  val toDateString : t -> string [@@js.call "toDateString"]

  val toTimeString : t -> string [@@js.call "toTimeString"]

  val toLocaleString' : t -> string [@@js.call "toLocaleString"]

  val toLocaleDateString' : t -> string [@@js.call "toLocaleDateString"]

  val toLocaleTimeString' : t -> string [@@js.call "toLocaleTimeString"]

  val valueOf : t -> int [@@js.call "valueOf"]

  val getTime : t -> int [@@js.call "getTime"]

  val getFullYear : t -> int [@@js.call "getFullYear"]

  val getUTCFullYear : t -> int [@@js.call "getUTCFullYear"]

  val getMonth : t -> int [@@js.call "getMonth"]

  val getUTCMonth : t -> int [@@js.call "getUTCMonth"]

  val getDate : t -> int [@@js.call "getDate"]

  val getUTCDate : t -> int [@@js.call "getUTCDate"]

  val getDay : t -> int [@@js.call "getDay"]

  val getUTCDay : t -> int [@@js.call "getUTCDay"]

  val getHours : t -> int [@@js.call "getHours"]

  val getUTCHours : t -> int [@@js.call "getUTCHours"]

  val getMinutes : t -> int [@@js.call "getMinutes"]

  val getUTCMinutes : t -> int [@@js.call "getUTCMinutes"]

  val getSeconds : t -> int [@@js.call "getSeconds"]

  val getUTCSeconds : t -> int [@@js.call "getUTCSeconds"]

  val getMilliseconds : t -> int [@@js.call "getMilliseconds"]

  val getUTCMilliseconds : t -> int [@@js.call "getUTCMilliseconds"]

  val getTimezoneOffset : t -> int [@@js.call "getTimezoneOffset"]

  val setTime : t -> time:int -> int [@@js.call "setTime"]

  val setMilliseconds : t -> ms:int -> int [@@js.call "setMilliseconds"]

  val setUTCMilliseconds : t -> ms:int -> int [@@js.call "setUTCMilliseconds"]

  val setSeconds : t -> sec:int -> ?ms:int -> unit -> int
    [@@js.call "setSeconds"]

  val setUTCSeconds : t -> sec:int -> ?ms:int -> unit -> int
    [@@js.call "setUTCSeconds"]

  val setMinutes : t -> min:int -> ?sec:int -> ?ms:int -> unit -> int
    [@@js.call "setMinutes"]

  val setUTCMinutes : t -> min:int -> ?sec:int -> ?ms:int -> unit -> int
    [@@js.call "setUTCMinutes"]

  val setHours
    :  t
    -> hours:int
    -> ?min:int
    -> ?sec:int
    -> ?ms:int
    -> unit
    -> int
    [@@js.call "setHours"]

  val setUTCHours
    :  t
    -> hours:int
    -> ?min:int
    -> ?sec:int
    -> ?ms:int
    -> unit
    -> int
    [@@js.call "setUTCHours"]

  val setDate : t -> date:int -> int [@@js.call "setDate"]

  val setUTCDate : t -> date:int -> int [@@js.call "setUTCDate"]

  val setMonth : t -> month:int -> ?date:int -> unit -> int
    [@@js.call "setMonth"]

  val setUTCMonth : t -> month:int -> ?date:int -> unit -> int
    [@@js.call "setUTCMonth"]

  val setFullYear : t -> year:int -> ?month:int -> ?date:int -> unit -> int
    [@@js.call "setFullYear"]

  val setUTCFullYear : t -> year:int -> ?month:int -> ?date:int -> unit -> int
    [@@js.call "setUTCFullYear"]

  val toUTCString : t -> string [@@js.call "toUTCString"]

  val toISOString : t -> string [@@js.call "toISOString"]

  val toJSON : t -> ?key:any -> unit -> string [@@js.call "toJSON"]

  (* Constructor *)

  val create : unit -> t [@@js.new "Date"]

  val create' : string or_number -> t [@@js.new "Date"]

  val create''
    :  t
    -> year:int
    -> month:int
    -> ?date:int
    -> ?hours:int
    -> ?minutes:int
    -> ?seconds:int
    -> ?ms:int
    -> unit
    -> t
    [@@js.new "Date"]

  val parse : string -> int [@@js.global "Date.parse"]

  val utc
    :  year:int
    -> month:int
    -> ?date:int
    -> ?hours:int
    -> ?minutes:int
    -> ?seconds:int
    -> ?ms:int
    -> unit
    -> int
    [@@js.global "Date.UTC"]

  val now : unit -> int [@@js.global "Date.now"]
end

module DateConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Date.t [@@js.apply_newable]

  val create' : t -> string or_number -> Date.t [@@js.apply_newable]

  val create''
    :  t
    -> year:int
    -> month:int
    -> ?date:int
    -> ?hours:int
    -> ?minutes:int
    -> ?seconds:int
    -> ?ms:int
    -> unit
    -> Date.t
    [@@js.apply_newable]

  val apply : t -> string [@@js.apply]

  val get_prototype : t -> Date.t [@@js.get "prototype"]

  val parse : t -> string -> int [@@js.call "parse"]

  val utc
    :  t
    -> year:int
    -> month:int
    -> ?date:int
    -> ?hours:int
    -> ?minutes:int
    -> ?seconds:int
    -> ?ms:int
    -> unit
    -> int
    [@@js.call "UTC"]

  val now : t -> int [@@js.call "now"]
end
[@@js.scope "DateConstructor"]

val date : DateConstructor.t [@@js.global "Date"]

module Error : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_stack : t -> string [@@js.get "stack"]

  val set_stack : t -> string -> unit [@@js.set "stack"]

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "Error"]
end

module ErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> Error.t [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> Error.t [@@js.apply]

  val get_prototype : t -> Error.t [@@js.get "prototype"]
end
[@@js.scope "ErrorConstructor"]

val error : ErrorConstructor.t [@@js.global "Error"]

module EvalError : sig
  include module type of struct
    include Error
  end

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "EvalError"]
end

module EvalErrorConstructor : sig
  include module type of struct
    include ErrorConstructor
  end

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> EvalError.t [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> EvalError.t [@@js.apply]

  val get_prototype : t -> EvalError.t [@@js.get "prototype"]
end
[@@js.scope "EvalErrorConstructor"]

val evalError : EvalErrorConstructor.t [@@js.global "EvalError"]

module RangeError : sig
  include module type of struct
    include Error
  end

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "RangeError"]
end

module RangeErrorConstructor : sig
  include module type of struct
    include ErrorConstructor
  end

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> RangeError.t [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> RangeError.t [@@js.apply]

  val get_prototype : t -> RangeError.t [@@js.get "prototype"]
end
[@@js.scope "RangeErrorConstructor"]

val rangeError : RangeErrorConstructor.t [@@js.global "RangeError"]

module ReferenceError : sig
  include module type of struct
    include Error
  end

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "ReferenceError"]
end

module ReferenceErrorConstructor : sig
  include module type of struct
    include ErrorConstructor
  end

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?message:string -> unit -> ReferenceError.t
    [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> ReferenceError.t [@@js.apply]

  val get_prototype : t -> ReferenceError.t [@@js.get "prototype"]
end
[@@js.scope "ReferenceErrorConstructor"]

val referenceError : ReferenceErrorConstructor.t [@@js.global "ReferenceError"]

module SyntaxError : sig
  include module type of struct
    include Error
  end

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "SyntaxError"]
end

module SyntaxErrorConstructor : sig
  include module type of struct
    include ErrorConstructor
  end

  val create : t -> ?message:string -> unit -> SyntaxError.t
    [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> SyntaxError.t [@@js.apply]

  val get_prototype : t -> SyntaxError.t [@@js.get "prototype"]
end
[@@js.scope "SyntaxErrorConstructor"]

val syntaxError : SyntaxErrorConstructor.t [@@js.global "SyntaxError"]

module TypeError : sig
  include module type of struct
    include Error
  end

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "TypeError"]
end

module TypeErrorConstructor : sig
  include module type of struct
    include ErrorConstructor
  end

  val create : t -> ?message:string -> unit -> TypeError.t [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> TypeError.t [@@js.apply]

  val get_prototype : t -> TypeError.t [@@js.get "prototype"]
end
[@@js.scope "TypeErrorConstructor"]

val typeError : TypeErrorConstructor.t [@@js.global "TypeError"]

module URIError : sig
  include module type of struct
    include Error
  end

  (* Constructor *)

  val create : ?message:string -> unit -> t [@@js.new "URIError"]
end

module URIErrorConstructor : sig
  include module type of struct
    include ErrorConstructor
  end

  val create : t -> ?message:string -> unit -> URIError.t [@@js.apply_newable]

  val apply : t -> ?message:string -> unit -> URIError.t [@@js.apply]

  val get_prototype : t -> URIError.t [@@js.get "prototype"]
end
[@@js.scope "URIErrorConstructor"]

val uriError : URIErrorConstructor.t [@@js.global "URIError"]

module JSON : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val parse
    :  string
    -> ?reviver:(this:any -> key:string -> value:any -> any)
    -> unit
    -> any
    [@@js.global "parse"]

  val stringify
    :  any
    -> ?replacer:(this:any -> key:string -> value:any -> any)
    -> ?space:string or_number
    -> unit
    -> string
    [@@js.global "stringify"]

  val stringify'
    :  any
    -> ?replacer:string or_number list or_null
    -> ?space:string or_number
    -> unit
    -> string
    [@@js.global "stringify"]
end
[@@js.scope "JSON"]

module TypedPropertyDescriptor : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_enumerable : 'T t -> bool [@@js.get "enumerable"]

  val set_enumerable : 'T t -> bool -> unit [@@js.set "enumerable"]

  val get_configurable : 'T t -> bool [@@js.get "configurable"]

  val set_configurable : 'T t -> bool -> unit [@@js.set "configurable"]

  val get_writable : 'T t -> bool [@@js.get "writable"]

  val set_writable : 'T t -> bool -> unit [@@js.set "writable"]

  val get_value : 'T t -> 'T [@@js.get "value"]

  val set_value : 'T t -> 'T -> unit [@@js.set "value"]

  val get_ : 'T t -> 'T [@@js.call "get"]

  val set_ : 'T t -> value:'T -> unit [@@js.call "set"]
end
[@@js.scope "TypedPropertyDescriptor"]

module ClassDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> target:'TFunction -> ('TFunction, unit) union2 [@@js.apply]
end
[@@js.scope "ClassDecorator"]

module PropertyDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> target:Object.t -> propertyKey:symbol or_string -> unit
    [@@js.apply]
end
[@@js.scope "PropertyDecorator"]

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
    [@@js.apply]
end
[@@js.scope "MethodDecorator"]

module ParameterDecorator : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> target:Object.t
    -> propertyKey:symbol or_string
    -> parameterIndex:int
    -> unit
    [@@js.apply]
end
[@@js.scope "ParameterDecorator"]

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
    [@@js.call "then"]

  val catch : 'T t -> ?onrejected:(any -> 'T t) -> unit -> 'T t
    [@@js.call "catch"]
end
[@@js.scope "Promise"]

module ArrayBuffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val slice : t -> begin_:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  (* Constructor *)

  val create : byteLength:int -> t [@@js.new "ArrayBuffer"]

  val isView : any -> bool [@@js.global "ArrayBuffer.isView"]
end

module ArrayBufferTypes : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_ArrayBuffer : t -> ArrayBuffer.t [@@js.get "ArrayBuffer"]

  val set_ArrayBuffer : t -> ArrayBuffer.t -> unit [@@js.set "ArrayBuffer"]
end
[@@js.scope "ArrayBufferTypes"]

module ArrayBufferConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> ArrayBuffer.t [@@js.get "prototype"]

  val create : t -> byteLength:int -> ArrayBuffer.t [@@js.apply_newable]

  val isView : t -> any -> bool [@@js.call "isView"]
end
[@@js.scope "ArrayBufferConstructor"]

val arrayBuffer : ArrayBufferConstructor.t [@@js.global "ArrayBuffer"]

module ArrayBufferView : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val set_buffer : t -> ArrayBuffer.t -> unit [@@js.set "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val set_byteLength : t -> int -> unit [@@js.set "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val set_byteOffset : t -> int -> unit [@@js.set "byteOffset"]
end
[@@js.scope "ArrayBufferView"]

module DataView : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val getFloat32 : t -> byteOffset:int -> ?littleEndian:bool -> unit -> int
    [@@js.call "getFloat32"]

  val getFloat64 : t -> byteOffset:int -> ?littleEndian:bool -> unit -> int
    [@@js.call "getFloat64"]

  val getInt8 : t -> byteOffset:int -> int [@@js.call "getInt8"]

  val getInt16 : t -> byteOffset:int -> ?littleEndian:bool -> unit -> int
    [@@js.call "getInt16"]

  val getInt32 : t -> byteOffset:int -> ?littleEndian:bool -> unit -> int
    [@@js.call "getInt32"]

  val getUint8 : t -> byteOffset:int -> int [@@js.call "getUint8"]

  val getUint16 : t -> byteOffset:int -> ?littleEndian:bool -> unit -> int
    [@@js.call "getUint16"]

  val getUint32 : t -> byteOffset:int -> ?littleEndian:bool -> unit -> int
    [@@js.call "getUint32"]

  val setFloat32
    :  t
    -> byteOffset:int
    -> value:int
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setFloat32"]

  val setFloat64
    :  t
    -> byteOffset:int
    -> value:int
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setFloat64"]

  val setInt8 : t -> byteOffset:int -> value:int -> unit [@@js.call "setInt8"]

  val setInt16
    :  t
    -> byteOffset:int
    -> value:int
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setInt16"]

  val setInt32
    :  t
    -> byteOffset:int
    -> value:int
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setInt32"]

  val setUint8 : t -> byteOffset:int -> value:int -> unit [@@js.call "setUint8"]

  val setUint16
    :  t
    -> byteOffset:int
    -> value:int
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setUint16"]

  val setUint32
    :  t
    -> byteOffset:int
    -> value:int
    -> ?littleEndian:bool
    -> unit
    -> unit
    [@@js.call "setUint32"]

  (* Constructor *)

  val create
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?byteLength:int
    -> unit
    -> t
    [@@js.new "DataView"]
end

module DataViewConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> DataView.t [@@js.get "prototype"]

  val create
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?byteLength:int
    -> unit
    -> DataView.t
    [@@js.apply_newable]
end
[@@js.scope "DataViewConstructor"]

val dataView : DataViewConstructor.t [@@js.global "DataView"]

module Int8Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> int -> ?start:int -> ?end_:int -> unit -> t [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Int8Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Int8Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Int8Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Int8Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Int8Array.of"]

  val from : array:int Array.t -> t [@@js.global "Int8Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Int8Array.from"]
end

module Int8ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Int8Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Int8Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Int8Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Int8Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Int8Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Int8Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Int8Array.t
    [@@js.call "from"]
end
[@@js.scope "Int8ArrayConstructor"]

val int8Array : Int8ArrayConstructor.t [@@js.global "Int8Array"]

module Uint8Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Uint8Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Uint8Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Uint8Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Uint8Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Uint8Array.of"]

  val from : array:int Array.t -> t [@@js.global "Uint8Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint8Array.from"]
end

module Uint8ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint8Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Uint8Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Uint8Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Uint8Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Uint8Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Uint8Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Uint8Array.t
    [@@js.call "from"]
end
[@@js.scope "Uint8ArrayConstructor"]

val uint8Array : Uint8ArrayConstructor.t [@@js.global "Uint8Array"]

module Uint8ClampedArray : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Uint8ClampedArray"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Uint8ClampedArray"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Uint8ClampedArray"]

  val get_BYTES_PER_ELEMENT : int
    [@@js.global "Uint8ClampedArray.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Uint8ClampedArray.of"]

  val from : array:int Array.t -> t [@@js.global "Uint8ClampedArray.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint8ClampedArray.from"]
end

module Uint8ClampedArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint8ClampedArray.t [@@js.get "prototype"]

  val create : t -> length:int -> Uint8ClampedArray.t [@@js.apply_newable]

  val create'
    :  t
    -> array:(ArrayBuffer.t, int Array.t) union2
    -> Uint8ClampedArray.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Uint8ClampedArray.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Uint8ClampedArray.t
    [@@js.call "of"]

  val from : t -> array:int Array.t -> Uint8ClampedArray.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Uint8ClampedArray.t
    [@@js.call "from"]
end
[@@js.scope "Uint8ClampedArrayConstructor"]

val uint8ClampedArray : Uint8ClampedArrayConstructor.t
  [@@js.global "Uint8ClampedArray"]

module Int16Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Int16Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Int16Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Int16Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Int16Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Int16Array.of"]

  val from : array:int Array.t -> t [@@js.global "Int16Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Int16Array.from"]
end

module Int16ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Int16Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Int16Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Int16Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Int16Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Int16Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Int16Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Int16Array.t
    [@@js.call "from"]
end
[@@js.scope "Int16ArrayConstructor"]

val int16Array : Int16ArrayConstructor.t [@@js.global "Int16Array"]

module Uint16Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Uint16Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Uint16Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Uint16Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Uint16Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Uint16Array.of"]

  val from : array:int Array.t -> t [@@js.global "Uint16Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint16Array.from"]
end

module Uint16ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint16Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Uint16Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Uint16Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Uint16Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Uint16Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Uint16Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Uint16Array.t
    [@@js.call "from"]
end
[@@js.scope "Uint16ArrayConstructor"]

val uint16Array : Uint16ArrayConstructor.t [@@js.global "Uint16Array"]

module Int32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Int32Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Int32Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Int32Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Int32Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Int32Array.of"]

  val from : array:int Array.t -> t [@@js.global "Int32Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Int32Array.from"]
end

module Int32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Int32Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Int32Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Int32Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Int32Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Int32Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Int32Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Int32Array.t
    [@@js.call "from"]
end
[@@js.scope "Int32ArrayConstructor"]

val int32Array : Int32ArrayConstructor.t [@@js.global "Int32Array"]

module Uint32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Uint32Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Uint32Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Uint32Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Uint32Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Uint32Array.of"]

  val from : array:int Array.t -> t [@@js.global "Uint32Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint32Array.from"]
end

module Uint32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Uint32Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Uint32Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Uint32Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Uint32Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Uint32Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Uint32Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Uint32Array.t
    [@@js.call "from"]
end
[@@js.scope "Uint32ArrayConstructor"]

val uint32Array : Uint32ArrayConstructor.t [@@js.global "Uint32Array"]

module Float32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toLocaleString : t -> string [@@js.call "toLocaleString"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Float32Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Float32Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Float32Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Float32Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Float32Array.of"]

  val from : array:int Array.t -> t [@@js.global "Float32Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Float32Array.from"]
end

module Float32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Float32Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Float32Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Float32Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Float32Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Float32Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Float32Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Float32Array.t
    [@@js.call "from"]
end
[@@js.scope "Float32ArrayConstructor"]

val float32Array : Float32ArrayConstructor.t [@@js.global "Float32Array"]

module Float64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val get_buffer : t -> ArrayBuffer.t [@@js.get "buffer"]

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val get_byteOffset : t -> int [@@js.get "byteOffset"]

  val copyWithin : t -> target:int -> start:int -> ?end_:int -> unit -> t
    [@@js.call "copyWithin"]

  val every
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "every"]

  val fill : t -> value:int -> ?start:int -> ?end_:int -> unit -> t
    [@@js.call "fill"]

  val filter
    :  t
    -> (value:int -> index:int -> array:t -> any)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "filter"]

  val find
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int or_undefined
    [@@js.call "find"]

  val findIndex
    :  t
    -> (value:int -> index:int -> obj:t -> bool)
    -> ?thisArg:any
    -> unit
    -> int
    [@@js.call "findIndex"]

  val forEach
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> unit)
    -> ?thisArg:any
    -> unit
    -> unit
    [@@js.call "forEach"]

  val indexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "indexOf"]

  val join : t -> ?separator:string -> unit -> string [@@js.call "join"]

  val lastIndexOf : t -> searchElement:int -> ?fromIndex:int -> unit -> int
    [@@js.call "lastIndexOf"]

  val get_length : t -> int [@@js.get "length"]

  val map
    :  t
    -> callbackfn:(value:int -> index:int -> array:t -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.call "map"]

  val reduce
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduce"]

  val reduce'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduce"]

  val reduce''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduce"]

  val reduceRight
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> int
    [@@js.call "reduceRight"]

  val reduceRight'
    :  t
    -> callbackfn:
         (previousValue:int
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> int)
    -> initialValue:int
    -> int
    [@@js.call "reduceRight"]

  val reduceRight''
    :  t
    -> callbackfn:
         (previousValue:'U
          -> currentValue:int
          -> currentIndex:int
          -> array:t
          -> 'U)
    -> initialValue:'U
    -> 'U
    [@@js.call "reduceRight"]

  val reverse : t -> t [@@js.call "reverse"]

  val set_ : t -> array:int Array.t -> ?offset:int -> unit -> unit
    [@@js.call "set"]

  val slice : t -> ?start:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val some
    :  t
    -> (value:int -> index:int -> array:t -> unknown)
    -> ?thisArg:any
    -> unit
    -> bool
    [@@js.call "some"]

  val sort : t -> ?compareFn:(a:int -> b:int -> int) -> unit -> t
    [@@js.call "sort"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val toString : t -> string [@@js.call "toString"]

  val valueOf : t -> t [@@js.call "valueOf"]

  val get : t -> int -> int [@@js.index_get]

  val set : t -> int -> int -> unit [@@js.index_set]

  (* Constructor *)

  val create : length:int -> t [@@js.new "Float64Array"]

  val create' : array:(ArrayBuffer.t, int Array.t) union2 -> t
    [@@js.new "Float64Array"]

  val create''
    :  buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.new "Float64Array"]

  val get_BYTES_PER_ELEMENT : int [@@js.global "Float64Array.BYTES_PER_ELEMENT"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "Float64Array.of"]

  val from : array:int Array.t -> t [@@js.global "Float64Array.from"]

  val from'
    :  array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Float64Array.from"]
end

module Float64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> Float64Array.t [@@js.get "prototype"]

  val create : t -> length:int -> Float64Array.t [@@js.apply_newable]

  val create' : t -> array:(ArrayBuffer.t, int Array.t) union2 -> Float64Array.t
    [@@js.apply_newable]

  val create''
    :  t
    -> buffer:ArrayBuffer.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> Float64Array.t
    [@@js.apply_newable]

  val get_BYTES_PER_ELEMENT : t -> int [@@js.get "BYTES_PER_ELEMENT"]

  val of_ : t -> (int list[@js.variadic]) -> Float64Array.t [@@js.call "of"]

  val from : t -> array:int Array.t -> Float64Array.t [@@js.call "from"]

  val from'
    :  t
    -> array:'T Array.t
    -> mapfn:(v:'T -> k:int -> int)
    -> ?thisArg:any
    -> unit
    -> Float64Array.t
    [@@js.call "from"]
end
[@@js.scope "Float64ArrayConstructor"]

val float64Array : Float64ArrayConstructor.t [@@js.global "Float64Array"]

include module type of struct
  include Intl
end

module DateTimeFormat : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val format : t -> ?date:Date.t or_number -> unit -> string
    [@@js.call "format"]

  val resolvedOptions : t -> ResolvedDateTimeFormatOptions.t
    [@@js.call "resolvedOptions"]
end
[@@js.scope "DateTimeFormat"]

val dateTimeFormat : anonymous_interface_3 [@@js.global "DateTimeFormat"]
