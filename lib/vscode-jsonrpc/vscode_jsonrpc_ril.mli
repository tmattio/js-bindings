[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020



module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val asReadableStream
    :  t
    -> stream:Node.ReadableStream.t
    -> Vscode_jsonrpc_ral.RAL.ReadableStream.t
    [@@js.call "asReadableStream"]

  val asWritableStream
    :  t
    -> stream:Node.WritableStream.t
    -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "asWritableStream"]
end

module RIL : sig
  type t = _RIL

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stream : t -> AnonymousInterface0.t [@@js.get "stream"]

  val cast : t -> Vscode_jsonrpc_ral.RAL.t [@@js.cast]

  val install : unit -> unit [@@js.global "install"]
end
[@@js.scope "RIL"]

val ril : unit -> _RIL [@@js.global "RIL"]

(* export = RIL *)
