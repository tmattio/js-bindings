[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Timers : sig
  val set_timeout
    :  callback:(args:(any list[@js.variadic]) -> unit)
    -> ?ms:int
    -> args:(any list[@js.variadic])
    -> Timeout.t
    [@@js.global "setTimeout"]

  module SetTimeout : sig
    val __promisify__ : ms:int -> unit Promise.t [@@js.global "__promisify__"]

    val __promisify__ : ms:int -> value:'T -> 'T Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "setTimeout"]

  val clear_timeout : timeout_id:Timeout.t -> unit [@@js.global "clearTimeout"]

  val set_interval
    :  callback:(args:(any list[@js.variadic]) -> unit)
    -> ?ms:int
    -> args:(any list[@js.variadic])
    -> Timeout.t
    [@@js.global "setInterval"]

  val clear_interval : interval_id:Timeout.t -> unit
    [@@js.global "clearInterval"]

  val set_immediate
    :  callback:(args:(any list[@js.variadic]) -> unit)
    -> args:(any list[@js.variadic])
    -> Immediate.t
    [@@js.global "setImmediate"]

  module SetImmediate : sig
    val __promisify__ : unit -> unit Promise.t [@@js.global "__promisify__"]

    val __promisify__ : value:'T -> 'T Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "setImmediate"]

  val clear_immediate : immediate_id:Immediate.t -> unit
    [@@js.global "clearImmediate"]
end
[@@js.scope Import.timers]
