[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS"]

open Es2020

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val as_readable_stream
    :  t
    -> stream:Node.ReadableStream.t
    -> Vscode_jsonrpc_ral.RAL.ReadableStream.t
    [@@js.call "asReadableStream"]

  val as_writable_stream
    :  t
    -> stream:Node.WritableStream.t
    -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "asWritableStream"]
end

module RIL : sig
  include module type of struct
    include Vscode_jsonrpc_ral.RAL
  end

  val get_stream : t -> AnonymousInterface0.t [@@js.get "stream"]

  val install : unit -> unit [@@js.global "install"]
end
[@@js.scope "RIL"]

val ril : unit -> RIL.t [@@js.global "RIL"]

(* export = RIL *)
