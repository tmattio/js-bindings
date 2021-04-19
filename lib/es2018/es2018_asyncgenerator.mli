[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017
open Es2018_asynciterable

module AsyncGenerator : sig
  include module type of struct
    include AsyncIterator
  end

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
            argument *) (any list[@js.variadic])
    -> ('T, 'TReturn) IteratorResult.t Promise.t
    [@@js.call "next"]

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> value:('TReturn, 'TReturn Promise.t) union2
    -> ('T, 'TReturn) IteratorResult.t Promise.t
    [@@js.call "return"]

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> e:any
    -> ('T, 'TReturn) IteratorResult.t Promise.t
    [@@js.call "throw"]
end
[@@js.scope "AsyncGenerator"]

module AsyncGeneratorFunction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  t
    -> args:(any list[@js.variadic])
    -> (unknown, any, unknown) AsyncGenerator.t
    [@@js.apply_newable]

  val apply
    :  t
    -> args:(any list[@js.variadic])
    -> (unknown, any, unknown) AsyncGenerator.t
    [@@js.apply]

  val get_length : t -> int [@@js.get "length"]

  val get_name : t -> string [@@js.get "name"]

  val get_prototype : t -> (unknown, any, unknown) AsyncGenerator.t
    [@@js.get "prototype"]
end

module AsyncGeneratorFunctionConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> (string list[@js.variadic]) -> AsyncGeneratorFunction.t
    [@@js.apply_newable]

  val apply : t -> (string list[@js.variadic]) -> AsyncGeneratorFunction.t
    [@@js.apply]

  val get_length : t -> int [@@js.get "length"]

  val get_name : t -> string [@@js.get "name"]

  val get_prototype : t -> AsyncGeneratorFunction.t [@@js.get "prototype"]
end
[@@js.scope "AsyncGeneratorFunctionConstructor"]
