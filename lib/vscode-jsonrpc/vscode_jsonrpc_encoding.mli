[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module FunctionContentEncoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val encode : t -> input:Uint8Array.t -> Uint8Array.t Promise.t
    [@@js.call "encode"]
end
[@@js.scope "FunctionContentEncoder"]

module StreamContentEncoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_ : t -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentEncoder"]

module ContentEncoder : sig
  type t = FunctionContentEncoder.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FunctionContentDecoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val decode : t -> buffer:Uint8Array.t -> Uint8Array.t Promise.t
    [@@js.call "decode"]
end
[@@js.scope "FunctionContentDecoder"]

module StreamContentDecoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_ : t -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentDecoder"]

module ContentDecoder : sig
  type t = FunctionContentDecoder.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ContentTypeEncoderOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "charset"]

  val set_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]
end
[@@js.scope "ContentTypeEncoderOptions"]

module FunctionContentTypeEncoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val encode
    :  t
    -> msg:Vscode_jsonrpc_messages.Message.t
    -> options:ContentTypeEncoderOptions.t
    -> Uint8Array.t Promise.t
    [@@js.call "encode"]
end
[@@js.scope "FunctionContentTypeEncoder"]

module StreamContentTypeEncoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_
    :  t
    -> options:ContentTypeEncoderOptions.t
    -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentTypeEncoder"]

module ContentTypeEncoder : sig
  type t = FunctionContentTypeEncoder.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ContentTypeDecoderOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "charset"]

  val set_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]
end
[@@js.scope "ContentTypeDecoderOptions"]

module FunctionContentTypeDecoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val decode
    :  t
    -> buffer:Uint8Array.t
    -> options:ContentTypeDecoderOptions.t
    -> Vscode_jsonrpc_messages.Message.t Promise.t
    [@@js.call "decode"]
end
[@@js.scope "FunctionContentTypeDecoder"]

module StreamContentTypeDecoder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_
    :  t
    -> options:ContentTypeDecoderOptions.t
    -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentTypeDecoder"]

module ContentTypeDecoder : sig
  type t = FunctionContentTypeDecoder.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Named : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]
end
[@@js.scope "Named"]

module Encodings : sig
  val get_encoding_header_value : encodings:Named.t list -> string or_undefined
    [@@js.global "getEncodingHeaderValue"]

  val parse_encoding_header_value : value:string -> string list
    [@@js.global "parseEncodingHeaderValue"]
end
[@@js.scope "Encodings"]
(* export {}; *)
