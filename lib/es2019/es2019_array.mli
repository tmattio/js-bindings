[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2018

module FlatArray : sig
  type ('Arr, 'Depth) t

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

  val flat_map
    :  'T t
    -> callback:
         (this:'This
          -> value:'T
          -> index:int
          -> array:'T list
          -> ('U, 'U t) union2)
    -> ?this_arg:'This
    -> unit
    -> 'U list
    [@@js.call "flatMap"]

  val flat : 'T t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list
    [@@js.call "flat"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module Array : sig
  include module type of struct
    include Array
  end

  val flat_map
    :  'T t
    -> callback:
         (this:'This
          -> value:'T
          -> index:int
          -> array:'T list
          -> ('U, 'U ReadonlyArray.t) union2)
    -> ?this_arg:'This
    -> unit
    -> 'U list
    [@@js.call "flatMap"]

  val flat : 'T t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list
    [@@js.call "flat"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "Array"]
