[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ContentDecoder = _FunctionContentDecoder

    and _ContentEncoder = _FunctionContentEncoder

    and _ContentTypeDecoder = _FunctionContentTypeDecoder

    and _ContentTypeDecoderOptions = [ `ContentTypeDecoderOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ContentTypeEncoder = _FunctionContentTypeEncoder

    and _ContentTypeEncoderOptions = [ `ContentTypeEncoderOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FunctionContentDecoder = [ `FunctionContentDecoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FunctionContentEncoder = [ `FunctionContentEncoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FunctionContentTypeDecoder = [ `FunctionContentTypeDecoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _FunctionContentTypeEncoder = [ `FunctionContentTypeEncoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Named = [ `Named ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamContentDecoder = [ `StreamContentDecoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamContentEncoder = [ `StreamContentEncoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamContentTypeDecoder = [ `StreamContentTypeDecoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamContentTypeEncoder = [ `StreamContentTypeEncoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module FunctionContentEncoder : sig
  type t = _FunctionContentEncoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val encode : t -> input:Uint8Array.t -> Uint8Array.t Promise.t
    [@@js.call "encode"]
end
[@@js.scope "FunctionContentEncoder"]

module StreamContentEncoder : sig
  type t = _StreamContentEncoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_ : t -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentEncoder"]

module ContentEncoder : sig
  type t = _ContentEncoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FunctionContentDecoder : sig
  type t = _FunctionContentDecoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val decode : t -> buffer:Uint8Array.t -> Uint8Array.t Promise.t
    [@@js.call "decode"]
end
[@@js.scope "FunctionContentDecoder"]

module StreamContentDecoder : sig
  type t = _StreamContentDecoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_ : t -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentDecoder"]

module ContentDecoder : sig
  type t = _ContentDecoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ContentTypeEncoderOptions : sig
  type t = _ContentTypeEncoderOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "charset"]

  val set_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]
end
[@@js.scope "ContentTypeEncoderOptions"]

module FunctionContentTypeEncoder : sig
  type t = _FunctionContentTypeEncoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val encode
    :  t
    -> msg:Vscode_jsonrpc_messages.Message.t
    -> options:_ContentTypeEncoderOptions
    -> Uint8Array.t Promise.t
    [@@js.call "encode"]
end
[@@js.scope "FunctionContentTypeEncoder"]

module StreamContentTypeEncoder : sig
  type t = _StreamContentTypeEncoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_
    :  t
    -> options:_ContentTypeEncoderOptions
    -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentTypeEncoder"]

module ContentTypeEncoder : sig
  type t = _ContentTypeEncoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ContentTypeDecoderOptions : sig
  type t = _ContentTypeDecoderOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "charset"]

  val set_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]
end
[@@js.scope "ContentTypeDecoderOptions"]

module FunctionContentTypeDecoder : sig
  type t = _FunctionContentTypeDecoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val decode
    :  t
    -> buffer:Uint8Array.t
    -> options:_ContentTypeDecoderOptions
    -> Vscode_jsonrpc_messages.Message.t Promise.t
    [@@js.call "decode"]
end
[@@js.scope "FunctionContentTypeDecoder"]

module StreamContentTypeDecoder : sig
  type t = _StreamContentTypeDecoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]

  val create_
    :  t
    -> options:_ContentTypeDecoderOptions
    -> Vscode_jsonrpc_ral.RAL.WritableStream.t
    [@@js.call "create"]
end
[@@js.scope "StreamContentTypeDecoder"]

module ContentTypeDecoder : sig
  type t = _ContentTypeDecoder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Named : sig
  type t = _Named

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]
end
[@@js.scope "Named"]

module Encodings : sig
  val getEncodingHeaderValue : encodings:_Named list -> string or_undefined
    [@@js.global "getEncodingHeaderValue"]

  val parseEncodingHeaderValue : value:string -> string list
    [@@js.global "parseEncodingHeaderValue"]
end
[@@js.scope "Encodings"]
(* export {}; *)
