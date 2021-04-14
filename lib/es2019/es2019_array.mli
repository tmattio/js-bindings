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

  val flat : 'T t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

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

  val flat : 'T t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end
