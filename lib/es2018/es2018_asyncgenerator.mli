open Es2017
open Es2018_asynciterable

module AsyncGenerator : sig
  type ('T, 'TReturn, 'TNext) t

  val t_to_js
    :  ('T -> Ojs.t)
    -> ('TReturn -> Ojs.t)
    -> ('TNext -> Ojs.t)
    -> ('T, 'TReturn, 'TNext) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'T)
    -> (Ojs.t -> 'TReturn)
    -> (Ojs.t -> 'TNext)
    -> Ojs.t
    -> ('T, 'TReturn, 'TNext) t

  type ('T, 'TReturn) t_2 = ('T, 'TReturn, unknown) t

  val t_2_to_js
    :  ('T -> Ojs.t)
    -> ('TReturn -> Ojs.t)
    -> ('T, 'TReturn) t_2
    -> Ojs.t

  val t_2_of_js
    :  (Ojs.t -> 'T)
    -> (Ojs.t -> 'TReturn)
    -> Ojs.t
    -> ('T, 'TReturn) t_2

  type 'T t_1 = ('T, any, unknown) t

  val t_1_to_js : ('T -> Ojs.t) -> 'T t_1 -> Ojs.t

  val t_1_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t_1

  type t_0 = (unknown, any, unknown) t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val next
    :  ('T, 'TReturn, 'TNext) t
    -> args:
         (* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic
            argument *) any list
    -> ('T, 'TReturn) IteratorResult.t Promise.t

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> value:('TReturn, 'TReturn Promise.t) union2
    -> ('T, 'TReturn) IteratorResult.t Promise.t

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> e:any
    -> ('T, 'TReturn) IteratorResult.t Promise.t

  val cast : ('T, 'TReturn, 'TNext) t -> ('T, 'TReturn, 'TNext) AsyncIterator.t
end

module AsyncGeneratorFunction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> args:any list -> (unknown, any, unknown) AsyncGenerator.t

  val apply : t -> args:any list -> (unknown, any, unknown) AsyncGenerator.t

  val get_length : t -> float

  val get_name : t -> string

  val get_prototype : t -> (unknown, any, unknown) AsyncGenerator.t
end

module AsyncGeneratorFunctionConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> string list -> AsyncGeneratorFunction.t

  val apply : t -> string list -> AsyncGeneratorFunction.t

  val get_length : t -> float

  val get_name : t -> string

  val get_prototype : t -> AsyncGeneratorFunction.t
end
