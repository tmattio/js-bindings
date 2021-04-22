[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Event : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val apply
    :  'T t
    -> listener:(e:'T -> any)
    -> ?this_args:any
    -> ?disposables:Vscode_jsonrpc_disposable.Disposable.t list
    -> unit
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.apply]

  val none : any Event.t [@@js.global "None"]
end
[@@js.scope "Event"]

module EmitterOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_on_first_listener_add : t -> untyped_function
    [@@js.get "onFirstListenerAdd"]

  val set_on_first_listener_add : t -> untyped_function -> unit
    [@@js.set "onFirstListenerAdd"]

  val get_on_last_listener_remove : t -> untyped_function
    [@@js.get "onLastListenerRemove"]

  val set_on_last_listener_remove : t -> untyped_function -> unit
    [@@js.set "onLastListenerRemove"]
end
[@@js.scope "EmitterOptions"]

module Emitter : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get__options : 'T t -> (* FIXME: unknown type *) any [@@js.get "_options"]

  val set__options : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_options"]

  val get__noop : unit -> (* FIXME: unknown type *) any [@@js.get "_noop"]

  val set__noop : (* FIXME: unknown type *) any -> unit [@@js.set "_noop"]

  val get__event : 'T t -> (* FIXME: unknown type *) any [@@js.get "_event"]

  val set__event : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_event"]

  val get__callbacks : 'T t -> (* FIXME: unknown type *) any
    [@@js.get "_callbacks"]

  val set__callbacks : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_callbacks"]

  val create : ?_options:EmitterOptions.t or_undefined -> unit -> 'T t
    [@@js.create]

  val get_event : 'T t -> 'T Event.t [@@js.get "event"]

  val fire : 'T t -> event:'T -> any [@@js.call "fire"]

  val dispose : 'T t -> unit [@@js.call "dispose"]
end
[@@js.scope "Emitter"]
