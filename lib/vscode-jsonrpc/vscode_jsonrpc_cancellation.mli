[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS.cancellation"]

open Es2020

module CancellationToken : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_is_cancellation_requested : t -> bool
    [@@js.get "isCancellationRequested"]

  val get_on_cancellation_requested : t -> any Vscode_jsonrpc_events.Event.t
    [@@js.get "onCancellationRequested"]

  val none : t [@@js.global "None"]

  val cancelled : t [@@js.global "Cancelled"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationToken"]

module AbstractCancellationTokenSource : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_token : t -> CancellationToken.t [@@js.get "token"]

  val set_token : t -> CancellationToken.t -> unit [@@js.set "token"]

  val cancel : t -> unit [@@js.call "cancel"]

  val cast : t -> Vscode_jsonrpc_disposable.Disposable.t [@@js.cast]
end
[@@js.scope "AbstractCancellationTokenSource"]

module CancellationTokenSource : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__token : t -> (* FIXME: unknown type *) any [@@js.get "_token"]

  val set__token : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_token"]

  val get_token : t -> CancellationToken.t [@@js.get "token"]

  val cancel : t -> unit [@@js.call "cancel"]

  val dispose : t -> unit [@@js.call "dispose"]

  val cast : t -> AbstractCancellationTokenSource.t [@@js.cast]
end
[@@js.scope "CancellationTokenSource"]
