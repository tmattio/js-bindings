[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS.cancellation"]

open Es2020



module CancellationToken : sig
  type t = _CancellationToken

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_isCancellationRequested : t -> bool
    [@@js.get "isCancellationRequested"]

  val get_onCancellationRequested : t -> any Vscode_jsonrpc_events.Event.t
    [@@js.get "onCancellationRequested"]

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

  val cast : t -> Vscode_jsonrpc_disposable.Disposable.t [@@js.cast]
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
