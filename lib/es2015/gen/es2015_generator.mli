[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Es2015_iterable

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type ('T, 'TReturn, 'TNext) _Generator =
      [ `Generator of 'T * 'TReturn * 'TNext ] intf
    [@@js.custom
      { of_js = (fun _T _TReturn _TNext -> Obj.magic)
      ; to_js = (fun _T _TReturn _TNext -> Obj.magic)
      }]

    and _GeneratorFunction = [ `GeneratorFunction ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _GeneratorFunctionConstructor = [ `GeneratorFunctionConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Generator : sig
  include module type of struct
    include Iterator
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
    -> ('T, 'TReturn) IteratorResult.t
    [@@js.call "next"]

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> value:'TReturn
    -> ('T, 'TReturn) IteratorResult.t
    [@@js.call "return"]

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> e:any
    -> ('T, 'TReturn) IteratorResult.t
    [@@js.call "throw"]
end
[@@js.scope "Generator"]

module GeneratorFunction : sig
  type t = _GeneratorFunction

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  t
    -> args:(any list[@js.variadic])
    -> (unknown, any, unknown) _Generator
    [@@js.apply_newable]

  val apply
    :  t
    -> args:(any list[@js.variadic])
    -> (unknown, any, unknown) _Generator
    [@@js.apply]

  val get_length : t -> float [@@js.get "length"]

  val get_name : t -> string [@@js.get "name"]

  val get_prototype : t -> (unknown, any, unknown) _Generator
    [@@js.get "prototype"]

  (* Constructor *)

  val create : (string list[@js.variadic]) -> _GeneratorFunction
    [@@js.new "GeneratorFunction"]

  val get_length : unit -> float [@@js.global "GeneratorFunction.length"]

  val get_name : unit -> string [@@js.global "GeneratorFunction.name"]
end

module GeneratorFunctionConstructor : sig
  type t = _GeneratorFunctionConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> (string list[@js.variadic]) -> _GeneratorFunction
    [@@js.apply_newable]

  val apply : t -> (string list[@js.variadic]) -> _GeneratorFunction
    [@@js.apply]

  val get_length : t -> float [@@js.get "length"]

  val get_name : t -> string [@@js.get "name"]

  val get_prototype : t -> _GeneratorFunction [@@js.get "prototype"]
end
[@@js.scope "GeneratorFunctionConstructor"]
