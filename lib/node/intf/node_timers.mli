[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces
  end
end

open Internal
open AnonymousInterfaces
open Types

module Timers : sig
  val setTimeout
    :  callback:(args:(any list[@js.variadic]) -> unit)
    -> ?ms:float
    -> args:(any list[@js.variadic])
    -> Timeout.t
    [@@js.global "setTimeout"]

  module SetTimeout : sig
    val __promisify__ : ms:float -> unit Promise.t [@@js.global "__promisify__"]

    val __promisify__ : ms:float -> value:'T -> 'T Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "setTimeout"]

  val clearTimeout : timeoutId:Timeout.t -> unit [@@js.global "clearTimeout"]

  val setInterval
    :  callback:(args:(any list[@js.variadic]) -> unit)
    -> ?ms:float
    -> args:(any list[@js.variadic])
    -> Timeout.t
    [@@js.global "setInterval"]

  val clearInterval : intervalId:Timeout.t -> unit [@@js.global "clearInterval"]

  val setImmediate
    :  callback:(args:(any list[@js.variadic]) -> unit)
    -> args:(any list[@js.variadic])
    -> Immediate.t
    [@@js.global "setImmediate"]

  module SetImmediate : sig
    val __promisify__ : unit -> unit Promise.t [@@js.global "__promisify__"]

    val __promisify__ : value:'T -> 'T Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "setImmediate"]

  val clearImmediate : immediateId:Immediate.t -> unit
    [@@js.global "clearImmediate"]
end
[@@js.scope Import.timers]
