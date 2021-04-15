[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _AbstractCancellationTokenSource =
      [ `AbstractCancellationTokenSource ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CancellationToken = [ `CancellationToken ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CancellationTokenSource =
      [ `CancellationTokenSource | `AbstractCancellationTokenSource ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Event } from './events'; *)
(* import { Disposable } from './disposable'; *)
module CancellationToken : sig
  type t = _CancellationToken

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_isCancellationRequested : t -> bool
    [@@js.get "isCancellationRequested"]

  val get_onCancellationRequested : t -> any Event.t_1
    [@@js.get "onCancellationRequested"]
end
[@@js.scope "CancellationToken"]

module CancellationToken : sig
  val none : _CancellationToken [@@js.global "None"]

  val cancelled : _CancellationToken [@@js.global "Cancelled"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationToken"]

module AbstractCancellationTokenSource : sig
  type t = _AbstractCancellationTokenSource

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_token : t -> _CancellationToken [@@js.get "token"]

  val set_token : t -> _CancellationToken -> unit [@@js.set "token"]

  val cancel : t -> unit [@@js.call "cancel"]

  val cast : t -> Disposable.t [@@js.cast]
end
[@@js.scope "AbstractCancellationTokenSource"]

module CancellationTokenSource : sig
  type t = _CancellationTokenSource

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__token : t -> (* FIXME: unknown type *) any [@@js.get "_token"]

  val set__token : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_token"]

  val get_token : t -> _CancellationToken [@@js.get "token"]

  val cancel : t -> unit [@@js.call "cancel"]

  val dispose : t -> unit [@@js.call "dispose"]

  val cast : t -> _AbstractCancellationTokenSource [@@js.cast]
end
[@@js.scope "CancellationTokenSource"]
