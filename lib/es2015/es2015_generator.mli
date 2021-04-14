[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Es2015_iterable

module Generator : sig
  include module type of struct
    include Iterator
  end

  val next
    :  ('T, 'TReturn, 'TNext) t
    -> args:
         (* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic
            argument *) any list
    -> ('T, 'TReturn) IteratorResult.t

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> value:'TReturn
    -> ('T, 'TReturn) IteratorResult.t

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> e:any
    -> ('T, 'TReturn) IteratorResult.t
end

module GeneratorFunction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : string list -> t

  val get_length : unit -> float

  val get_name : unit -> string
end

module GeneratorFunctionConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> string list -> GeneratorFunction.t

  val apply : t -> string list -> GeneratorFunction.t

  val get_length : t -> float

  val get_name : t -> string

  val get_prototype : t -> GeneratorFunction.t
end
