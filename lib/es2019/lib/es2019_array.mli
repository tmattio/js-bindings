[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2018

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type 'T _Array = [ `Array of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and ('Arr, 'Depth) _FlatArray =
      (* FIXME: unknown type '{..}[?(Depth extends -1 ? "done" : "recur")]' *)
      any

    and 'T _ReadonlyArray = [ `ReadonlyArray of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module FlatArray : sig
  type ('Arr, 'Depth) t = ('Arr, 'Depth) _FlatArray

  val t_to_js
    :  ('Arr -> Ojs.t)
    -> ('Depth -> Ojs.t)
    -> ('Arr, 'Depth) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'Arr)
    -> (Ojs.t -> 'Depth)
    -> Ojs.t
    -> ('Arr, 'Depth) t
end

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val flatMap
    :  'T t
    -> callback:
         (this:'This
          -> value:'T
          -> index:float
          -> array:'T list
          -> ('U, 'U t) union2)
    -> ?thisArg:'This
    -> unit
    -> 'U list
    [@@js.call "flatMap"]

  val flat : 'T t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) _FlatArray list
    [@@js.call "flat"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module Array : sig
  include module type of struct
    include Array
  end

  val flatMap
    :  'T t
    -> callback:
         (this:'This
          -> value:'T
          -> index:float
          -> array:'T list
          -> ('U, 'U ReadonlyArray.t) union2)
    -> ?thisArg:'This
    -> unit
    -> 'U list
    [@@js.call "flatMap"]

  val flat : 'T t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) _FlatArray list
    [@@js.call "flat"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "Array"]
