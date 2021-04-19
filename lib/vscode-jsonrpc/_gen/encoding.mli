[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Message
  - Promise<T1>
  - RAL.MessageBufferEncoding
  - RAL.WritableStream
  - Uint8Array
 *)
[@@@js.stop]
module type Missing = sig
  module Message : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RAL : sig
    module MessageBufferEncoding : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WritableStream : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module Uint8Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Message : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RAL : sig
      module MessageBufferEncoding : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WritableStream : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module Uint8Array : sig
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
      type _ContentDecoder = _FunctionContentDecoder
      and _ContentEncoder = _FunctionContentEncoder
      and _ContentTypeDecoder = _FunctionContentTypeDecoder
      and _ContentTypeDecoderOptions = [`ContentTypeDecoderOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ContentTypeEncoder = _FunctionContentTypeEncoder
      and _ContentTypeEncoderOptions = [`ContentTypeEncoderOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FunctionContentDecoder = [`FunctionContentDecoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FunctionContentEncoder = [`FunctionContentEncoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FunctionContentTypeDecoder = [`FunctionContentTypeDecoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FunctionContentTypeEncoder = [`FunctionContentTypeEncoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Named = [`Named] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StreamContentDecoder = [`StreamContentDecoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StreamContentEncoder = [`StreamContentEncoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StreamContentTypeDecoder = [`StreamContentTypeDecoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StreamContentTypeEncoder = [`StreamContentTypeEncoder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import type RAL from './ral'; *)
  (* import { Message } from './messages'; *)
  module[@js.scope "FunctionContentEncoder"] FunctionContentEncoder : sig
    type t = _FunctionContentEncoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val encode: t -> input:Uint8Array.t_0 -> Uint8Array.t_0 Promise.t_1 [@@js.call "encode"]
  end
  module[@js.scope "StreamContentEncoder"] StreamContentEncoder : sig
    type t = _StreamContentEncoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val create_: t -> RAL.WritableStream.t_0 [@@js.call "create"]
  end
  module ContentEncoder : sig
    type t = _ContentEncoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "FunctionContentDecoder"] FunctionContentDecoder : sig
    type t = _FunctionContentDecoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val decode: t -> buffer:Uint8Array.t_0 -> Uint8Array.t_0 Promise.t_1 [@@js.call "decode"]
  end
  module[@js.scope "StreamContentDecoder"] StreamContentDecoder : sig
    type t = _StreamContentDecoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val create_: t -> RAL.WritableStream.t_0 [@@js.call "create"]
  end
  module ContentDecoder : sig
    type t = _ContentDecoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "ContentTypeEncoderOptions"] ContentTypeEncoderOptions : sig
    type t = _ContentTypeEncoderOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_charset: t -> RAL.MessageBufferEncoding.t_0 [@@js.get "charset"]
    val set_charset: t -> RAL.MessageBufferEncoding.t_0 -> unit [@@js.set "charset"]
  end
  module[@js.scope "FunctionContentTypeEncoder"] FunctionContentTypeEncoder : sig
    type t = _FunctionContentTypeEncoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val encode: t -> msg:Message.t_0 -> options:_ContentTypeEncoderOptions -> Uint8Array.t_0 Promise.t_1 [@@js.call "encode"]
  end
  module[@js.scope "StreamContentTypeEncoder"] StreamContentTypeEncoder : sig
    type t = _StreamContentTypeEncoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val create_: t -> options:_ContentTypeEncoderOptions -> RAL.WritableStream.t_0 [@@js.call "create"]
  end
  module ContentTypeEncoder : sig
    type t = _ContentTypeEncoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "ContentTypeDecoderOptions"] ContentTypeDecoderOptions : sig
    type t = _ContentTypeDecoderOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_charset: t -> RAL.MessageBufferEncoding.t_0 [@@js.get "charset"]
    val set_charset: t -> RAL.MessageBufferEncoding.t_0 -> unit [@@js.set "charset"]
  end
  module[@js.scope "FunctionContentTypeDecoder"] FunctionContentTypeDecoder : sig
    type t = _FunctionContentTypeDecoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val decode: t -> buffer:Uint8Array.t_0 -> options:_ContentTypeDecoderOptions -> Message.t_0 Promise.t_1 [@@js.call "decode"]
  end
  module[@js.scope "StreamContentTypeDecoder"] StreamContentTypeDecoder : sig
    type t = _StreamContentTypeDecoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
    val create_: t -> options:_ContentTypeDecoderOptions -> RAL.WritableStream.t_0 [@@js.call "create"]
  end
  module ContentTypeDecoder : sig
    type t = _ContentTypeDecoder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "Named"] Named : sig
    type t = _Named
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
  end
  module[@js.scope "Encodings"] Encodings : sig
    val getEncodingHeaderValue: encodings:_Named list -> string or_undefined [@@js.global "getEncodingHeaderValue"]
    val parseEncodingHeaderValue: value:string -> string list [@@js.global "parseEncodingHeaderValue"]
  end
  
end
