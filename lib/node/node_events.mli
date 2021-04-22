[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_once : t -> bool [@@js.get "once"]

  val set_once : t -> bool -> unit [@@js.set "once"]
end

module Events : sig
  module EventEmitterOptions : sig
    type t = events_EventEmitterOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_captureRejections : t -> bool [@@js.get "captureRejections"]

    val set_captureRejections : t -> bool -> unit [@@js.set "captureRejections"]
  end
  [@@js.scope "EventEmitterOptions"]

  module NodeEventTarget : sig
    type t = events_NodeEventTarget

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val once
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]
  end
  [@@js.scope "NodeEventTarget"]

  module DOMEventTarget : sig
    type t = events_DOMEventTarget

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val addEventListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> ?opts:AnonymousInterface0.t
      -> unit
      -> any
      [@@js.call "addEventListener"]
  end
  [@@js.scope "DOMEventTarget"]

  module EventEmitter : sig
    type t = events_EventEmitter

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?options:events_EventEmitterOptions -> unit -> t [@@js.create]

    val once
      :  emitter:events_NodeEventTarget
      -> event:symbol or_string
      -> any list Promise.t
      [@@js.global "once"]

    val once'
      :  emitter:events_DOMEventTarget
      -> event:string
      -> any list Promise.t
      [@@js.global "once"]

    val on : emitter:t -> event:string -> any AsyncIterableIterator.t
      [@@js.global "on"]

    val listenerCount : emitter:t -> event:symbol or_string -> int
      [@@js.global "listenerCount"]

    val get_errorMonitor : unit -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "errorMonitor"]

    val get_captureRejectionSymbol
      :  unit
      -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "captureRejectionSymbol"]

    val get_captureRejections : unit -> bool [@@js.get "captureRejections"]

    val set_captureRejections : bool -> unit [@@js.set "captureRejections"]

    val get_defaultMaxListeners : unit -> int [@@js.get "defaultMaxListeners"]

    val set_defaultMaxListeners : int -> unit [@@js.set "defaultMaxListeners"]
  end
  [@@js.scope "EventEmitter"]
end
[@@js.scope Import.events]

module EventEmitter : sig
  type t = events_global_NodeJS_EventEmitter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val addListener
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "addListener"]

  val on
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "on"]

  val once
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "once"]

  val removeListener
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "removeListener"]

  val off
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "off"]

  val removeAllListeners : t -> ?event:symbol or_string -> unit -> t
    [@@js.call "removeAllListeners"]

  val setMaxListeners : t -> n:int -> t [@@js.call "setMaxListeners"]

  val getMaxListeners : t -> int [@@js.call "getMaxListeners"]

  val listeners : t -> event:symbol or_string -> untyped_function list
    [@@js.call "listeners"]

  val rawListeners : t -> event:symbol or_string -> untyped_function list
    [@@js.call "rawListeners"]

  val emit
    :  t
    -> event:symbol or_string
    -> args:(any list[@js.variadic])
    -> bool
    [@@js.call "emit"]

  val listenerCount : t -> event:symbol or_string -> int
    [@@js.call "listenerCount"]

  val prependListener
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "prependListener"]

  val prependOnceListener
    :  t
    -> event:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> t
    [@@js.call "prependOnceListener"]

  val eventNames : t -> symbol or_string list [@@js.call "eventNames"]
end
[@@js.scope "EventEmitter"]
