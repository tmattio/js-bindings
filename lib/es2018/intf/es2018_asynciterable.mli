[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type 'T _AsyncIterable = [ `AsyncIterable of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and 'T _AsyncIterableIterator =
      [ `AsyncIterableIterator of 'T | `AsyncIterator of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and ('T, 'TReturn, 'TNext) _AsyncIterator =
      [ `AsyncIterator of 'T * 'TReturn * 'TNext ] intf
    [@@js.custom
      { of_js = (fun _T _TReturn _TNext -> Obj.magic)
      ; to_js = (fun _T _TReturn _TNext -> Obj.magic)
      }]

    and _SymbolConstructor = [ `SymbolConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module SymbolConstructor : sig
  type t = _SymbolConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_asyncIterator : t -> symbol [@@js.get "asyncIterator"]
end
[@@js.scope "SymbolConstructor"]

module AsyncIterator : sig
  type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _AsyncIterator

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
    [@@js.call "next"]

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> ?value:('TReturn, 'TReturn Promise.t) union2
    -> unit
    -> ('T, 'TReturn) IteratorResult.t Promise.t
    [@@js.call "return"]

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> ?e:any
    -> unit
    -> ('T, 'TReturn) IteratorResult.t Promise.t
    [@@js.call "throw"]
end
[@@js.scope "AsyncIterator"]

module AsyncIterable : sig
  type 'T t = 'T _AsyncIterable

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module AsyncIterableIterator : sig
  type 'T t = ('T, any, never or_undefined) AsyncIterator.t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end
