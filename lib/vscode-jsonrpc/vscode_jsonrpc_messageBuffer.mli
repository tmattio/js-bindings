[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module AbstractMessageBuffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__encoding : t -> (* FIXME: unknown type *) any [@@js.get "_encoding"]

  val set__encoding : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_encoding"]

  val get__chunks : t -> (* FIXME: unknown type *) any [@@js.get "_chunks"]

  val set__chunks : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_chunks"]

  val get_total_length : t -> (* FIXME: unknown type *) any
    [@@js.get "_totalLength"]

  val set_total_length : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_totalLength"]

  val create
    :  ?encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    -> unit
    -> t
    [@@js.create]

  val empty_buffer : t -> Uint8Array.t [@@js.call "emptyBuffer"]

  val from_string
    :  t
    -> value:string
    -> encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    -> Uint8Array.t
    [@@js.call "fromString"]

  val to_string
    :  t
    -> value:Uint8Array.t
    -> encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    -> string
    [@@js.call "toString"]

  val as_native
    :  t
    -> buffer:Uint8Array.t
    -> ?length:int
    -> unit
    -> Uint8Array.t
    [@@js.call "asNative"]

  val alloc_native : t -> length:int -> Uint8Array.t [@@js.call "allocNative"]

  val get_encoding : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "encoding"]

  val append : t -> chunk:Uint8Array.t or_string -> unit [@@js.call "append"]

  val try_read_headers : t -> (string, string) Map.t or_undefined
    [@@js.call "tryReadHeaders"]

  val try_read_body : t -> length:int -> Uint8Array.t or_undefined
    [@@js.call "tryReadBody"]

  val get_number_of_bytes : t -> int [@@js.get "numberOfBytes"]

  val get__read : t -> (* FIXME: unknown type *) any [@@js.get "_read"]

  val set__read : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_read"]

  val cast : t -> Vscode_jsonrpc_ral.RAL.MessageBuffer.t [@@js.cast]
end
[@@js.scope "AbstractMessageBuffer"]
