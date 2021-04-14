open Es2017

module SymbolConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_asyncIterator : t -> symbol
end

module AsyncIterator : sig
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

  val next
    :  ('T, 'TReturn, 'TNext) t
    -> args:
         (* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic
            argument *) (any list[@js.variadic])
    -> ('T, 'TReturn) IteratorResult.t Promise.t

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> ?value:('TReturn, 'TReturn Promise.t) union2
    -> unit
    -> ('T, 'TReturn) IteratorResult.t Promise.t

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> ?e:any
    -> unit
    -> ('T, 'TReturn) IteratorResult.t Promise.t
end

module AsyncIterable : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module AsyncIterableIterator : sig
  type 'T t = ('T, any, never or_undefined) AsyncIterator.t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end
