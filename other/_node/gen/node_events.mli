[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type events_DOMEventTarget = [ `Events_DOMEventTarget ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and events_EventEmitter = [ `Events_EventEmitter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and events_EventEmitter = [ `Events_EventEmitter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and events_EventEmitterOptions = [ `Events_EventEmitterOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and events_NodeEventTarget = [ `Events_NodeEventTarget ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and events_global_NodeJS_EventEmitter =
      [ `Events_global_NodeJS_EventEmitter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_once : t -> bool [@@js.get "once"]

  val set_once : t -> bool -> unit [@@js.set "once"]
end

module Node_events : sig
  (* import EventEmitter = require('events'); *)
  (* export = EventEmitter *)
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
      -> ?opts:anonymous_interface_0
      -> unit
      -> any
      [@@js.call "addEventListener"]
  end
  [@@js.scope "DOMEventTarget"]

  module EventEmitter : sig
    type t = events_EventEmitter

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> NodeJS.EventEmitter.t_0 [@@js.cast]
  end
  [@@js.scope "EventEmitter"]

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

    val on
      :  emitter:NodeJS.EventEmitter.t_0
      -> event:string
      -> any AsyncIterableIterator.t
      [@@js.global "on"]

    val listenerCount
      :  emitter:NodeJS.EventEmitter.t_0
      -> event:symbol or_string
      -> float
      [@@js.global "listenerCount"]

    val get_errorMonitor : unit -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "errorMonitor"]

    val get_captureRejectionSymbol
      :  unit
      -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "captureRejectionSymbol"]

    val get_captureRejections : unit -> bool [@@js.get "captureRejections"]

    val set_captureRejections : bool -> unit [@@js.set "captureRejections"]

    val get_defaultMaxListeners : unit -> float [@@js.get "defaultMaxListeners"]

    val set_defaultMaxListeners : float -> unit [@@js.set "defaultMaxListeners"]
  end
  [@@js.scope "EventEmitter"]

  (* import internal = require('events'); *)
  module EventEmitter : sig
    (* export { internal as EventEmitter }; *)
  end

  module Global : sig
    module NodeJS : sig
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

        val setMaxListeners : t -> n:float -> t [@@js.call "setMaxListeners"]

        val getMaxListeners : t -> float [@@js.call "getMaxListeners"]

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

        val listenerCount : t -> event:symbol or_string -> float
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
    end
    [@@js.scope "NodeJS"]
  end
  [@@js.scope "global"]
  (* export = EventEmitter *)
end
[@@js.scope "events"]
