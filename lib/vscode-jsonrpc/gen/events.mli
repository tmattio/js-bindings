[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Disposable
 *)
[@@@js.stop]
module type Missing = sig
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type 'T _Emitter = [`Emitter of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _EmitterOptions = [`EmitterOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Event = [`Event of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Disposable } from './disposable'; *)
  module[@js.scope "Event"] Event : sig
    type 'T t = 'T _Event
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val apply: 'T t -> listener:(e:'T -> any) -> ?thisArgs:any -> ?disposables:Disposable.t_0 list -> unit -> Disposable.t_0 [@@js.apply]
  end
  module[@js.scope "Event"] Event : sig
    val none: any _Event [@@js.global "None"]
  end
  module[@js.scope "EmitterOptions"] EmitterOptions : sig
    type t = _EmitterOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_onFirstListenerAdd: t -> untyped_function [@@js.get "onFirstListenerAdd"]
    val set_onFirstListenerAdd: t -> untyped_function -> unit [@@js.set "onFirstListenerAdd"]
    val get_onLastListenerRemove: t -> untyped_function [@@js.get "onLastListenerRemove"]
    val set_onLastListenerRemove: t -> untyped_function -> unit [@@js.set "onLastListenerRemove"]
  end
  module[@js.scope "Emitter"] Emitter : sig
    type 'T t = 'T _Emitter
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__options: 'T t -> (* FIXME: unknown type *)any [@@js.get "_options"]
    val set__options: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "_options"]
    val get__noop: unit -> (* FIXME: unknown type *)any [@@js.get "_noop"]
    val set__noop: (* FIXME: unknown type *)any -> unit [@@js.set "_noop"]
    val get__event: 'T t -> (* FIXME: unknown type *)any [@@js.get "_event"]
    val set__event: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "_event"]
    val get__callbacks: 'T t -> (* FIXME: unknown type *)any [@@js.get "_callbacks"]
    val set__callbacks: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "_callbacks"]
    val create: ?_options:_EmitterOptions or_undefined -> unit -> 'T t [@@js.create]
    val get_event: 'T t -> 'T _Event [@@js.get "event"]
    val fire: 'T t -> event:'T -> any [@@js.call "fire"]
    val dispose: 'T t -> unit [@@js.call "dispose"]
  end
end
