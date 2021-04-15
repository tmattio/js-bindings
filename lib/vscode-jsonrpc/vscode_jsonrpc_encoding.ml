[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type _ContentDecoder = _FunctionContentDecoder
        and _ContentEncoder = _FunctionContentEncoder
        and _ContentTypeDecoder = _FunctionContentTypeDecoder
        and _ContentTypeDecoderOptions = [ `ContentTypeDecoderOptions ] intf
        and _ContentTypeEncoder = _FunctionContentTypeEncoder
        and _ContentTypeEncoderOptions = [ `ContentTypeEncoderOptions ] intf
        and _FunctionContentDecoder = [ `FunctionContentDecoder ] intf
        and _FunctionContentEncoder = [ `FunctionContentEncoder ] intf
        and _FunctionContentTypeDecoder =
          [ `FunctionContentTypeDecoder ] intf
        and _FunctionContentTypeEncoder =
          [ `FunctionContentTypeEncoder ] intf
        and _Named = [ `Named ] intf
        and _StreamContentDecoder = [ `StreamContentDecoder ] intf
        and _StreamContentEncoder = [ `StreamContentEncoder ] intf
        and _StreamContentTypeDecoder = [ `StreamContentTypeDecoder ] intf
        and _StreamContentTypeEncoder = [ `StreamContentTypeEncoder ] intf
        let rec _ContentDecoder_of_js : Ojs.t -> _ContentDecoder =
          fun (x2 : Ojs.t) -> _FunctionContentDecoder_of_js x2
        and _ContentDecoder_to_js : _ContentDecoder -> Ojs.t =
          fun (x1 : _FunctionContentDecoder) ->
            _FunctionContentDecoder_to_js x1
        and _ContentEncoder_of_js : Ojs.t -> _ContentEncoder =
          fun (x4 : Ojs.t) -> _FunctionContentEncoder_of_js x4
        and _ContentEncoder_to_js : _ContentEncoder -> Ojs.t =
          fun (x3 : _FunctionContentEncoder) ->
            _FunctionContentEncoder_to_js x3
        and _ContentTypeDecoder_of_js : Ojs.t -> _ContentTypeDecoder =
          fun (x6 : Ojs.t) -> _FunctionContentTypeDecoder_of_js x6
        and _ContentTypeDecoder_to_js : _ContentTypeDecoder -> Ojs.t =
          fun (x5 : _FunctionContentTypeDecoder) ->
            _FunctionContentTypeDecoder_to_js x5
        and _ContentTypeDecoderOptions_of_js :
          Ojs.t -> _ContentTypeDecoderOptions = Obj.magic
        and _ContentTypeDecoderOptions_to_js :
          _ContentTypeDecoderOptions -> Ojs.t = Obj.magic
        and _ContentTypeEncoder_of_js : Ojs.t -> _ContentTypeEncoder =
          fun (x8 : Ojs.t) -> _FunctionContentTypeEncoder_of_js x8
        and _ContentTypeEncoder_to_js : _ContentTypeEncoder -> Ojs.t =
          fun (x7 : _FunctionContentTypeEncoder) ->
            _FunctionContentTypeEncoder_to_js x7
        and _ContentTypeEncoderOptions_of_js :
          Ojs.t -> _ContentTypeEncoderOptions = Obj.magic
        and _ContentTypeEncoderOptions_to_js :
          _ContentTypeEncoderOptions -> Ojs.t = Obj.magic
        and _FunctionContentDecoder_of_js : Ojs.t -> _FunctionContentDecoder
          = Obj.magic
        and _FunctionContentDecoder_to_js : _FunctionContentDecoder -> Ojs.t
          = Obj.magic
        and _FunctionContentEncoder_of_js : Ojs.t -> _FunctionContentEncoder
          = Obj.magic
        and _FunctionContentEncoder_to_js : _FunctionContentEncoder -> Ojs.t
          = Obj.magic
        and _FunctionContentTypeDecoder_of_js :
          Ojs.t -> _FunctionContentTypeDecoder = Obj.magic
        and _FunctionContentTypeDecoder_to_js :
          _FunctionContentTypeDecoder -> Ojs.t = Obj.magic
        and _FunctionContentTypeEncoder_of_js :
          Ojs.t -> _FunctionContentTypeEncoder = Obj.magic
        and _FunctionContentTypeEncoder_to_js :
          _FunctionContentTypeEncoder -> Ojs.t = Obj.magic
        and _Named_of_js : Ojs.t -> _Named = Obj.magic
        and _Named_to_js : _Named -> Ojs.t = Obj.magic
        and _StreamContentDecoder_of_js : Ojs.t -> _StreamContentDecoder =
          Obj.magic
        and _StreamContentDecoder_to_js : _StreamContentDecoder -> Ojs.t =
          Obj.magic
        and _StreamContentEncoder_of_js : Ojs.t -> _StreamContentEncoder =
          Obj.magic
        and _StreamContentEncoder_to_js : _StreamContentEncoder -> Ojs.t =
          Obj.magic
        and _StreamContentTypeDecoder_of_js :
          Ojs.t -> _StreamContentTypeDecoder = Obj.magic
        and _StreamContentTypeDecoder_to_js :
          _StreamContentTypeDecoder -> Ojs.t = Obj.magic
        and _StreamContentTypeEncoder_of_js :
          Ojs.t -> _StreamContentTypeEncoder = Obj.magic
        and _StreamContentTypeEncoder_to_js :
          _StreamContentTypeEncoder -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module FunctionContentEncoder =
  struct
    type t = _FunctionContentEncoder
    let rec t_of_js : Ojs.t -> t =
      fun (x10 : Ojs.t) -> _FunctionContentEncoder_of_js x10
    and t_to_js : t -> Ojs.t =
      fun (x9 : _FunctionContentEncoder) -> _FunctionContentEncoder_to_js x9
    let (get_name : t -> string) =
      fun (x11 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x11) "name")
    let (set_name : t -> string -> unit) =
      fun (x12 : t) ->
        fun (x13 : string) ->
          Ojs.set_prop_ascii (t_to_js x12) "name" (Ojs.string_to_js x13)
    let (encode : t -> input:Uint8Array.t -> Uint8Array.t Promise.t) =
      fun (x15 : t) ->
        fun ~input:(x14 : Uint8Array.t) ->
          Promise.t_of_js Uint8Array.t_of_js
            (Ojs.call (t_to_js x15) "encode" [|(Uint8Array.t_to_js x14)|])
  end
module StreamContentEncoder =
  struct
    type t = _StreamContentEncoder
    let rec t_of_js : Ojs.t -> t =
      fun (x18 : Ojs.t) -> _StreamContentEncoder_of_js x18
    and t_to_js : t -> Ojs.t =
      fun (x17 : _StreamContentEncoder) -> _StreamContentEncoder_to_js x17
    let (get_name : t -> string) =
      fun (x19 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x19) "name")
    let (set_name : t -> string -> unit) =
      fun (x20 : t) ->
        fun (x21 : string) ->
          Ojs.set_prop_ascii (t_to_js x20) "name" (Ojs.string_to_js x21)
    let (create_ : t -> RAL.WritableStream.t) =
      fun (x22 : t) ->
        RAL.WritableStream.t_of_js (Ojs.call (t_to_js x22) "create" [||])
  end
module ContentEncoder =
  struct
    type t = _ContentEncoder
    let rec t_of_js : Ojs.t -> t =
      fun (x24 : Ojs.t) -> _ContentEncoder_of_js x24
    and t_to_js : t -> Ojs.t =
      fun (x23 : _ContentEncoder) -> _ContentEncoder_to_js x23
  end
module FunctionContentDecoder =
  struct
    type t = _FunctionContentDecoder
    let rec t_of_js : Ojs.t -> t =
      fun (x26 : Ojs.t) -> _FunctionContentDecoder_of_js x26
    and t_to_js : t -> Ojs.t =
      fun (x25 : _FunctionContentDecoder) ->
        _FunctionContentDecoder_to_js x25
    let (get_name : t -> string) =
      fun (x27 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x27) "name")
    let (set_name : t -> string -> unit) =
      fun (x28 : t) ->
        fun (x29 : string) ->
          Ojs.set_prop_ascii (t_to_js x28) "name" (Ojs.string_to_js x29)
    let (decode : t -> buffer:Uint8Array.t -> Uint8Array.t Promise.t) =
      fun (x31 : t) ->
        fun ~buffer:(x30 : Uint8Array.t) ->
          Promise.t_of_js Uint8Array.t_of_js
            (Ojs.call (t_to_js x31) "decode" [|(Uint8Array.t_to_js x30)|])
  end
module StreamContentDecoder =
  struct
    type t = _StreamContentDecoder
    let rec t_of_js : Ojs.t -> t =
      fun (x34 : Ojs.t) -> _StreamContentDecoder_of_js x34
    and t_to_js : t -> Ojs.t =
      fun (x33 : _StreamContentDecoder) -> _StreamContentDecoder_to_js x33
    let (get_name : t -> string) =
      fun (x35 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x35) "name")
    let (set_name : t -> string -> unit) =
      fun (x36 : t) ->
        fun (x37 : string) ->
          Ojs.set_prop_ascii (t_to_js x36) "name" (Ojs.string_to_js x37)
    let (create_ : t -> RAL.WritableStream.t) =
      fun (x38 : t) ->
        RAL.WritableStream.t_of_js (Ojs.call (t_to_js x38) "create" [||])
  end
module ContentDecoder =
  struct
    type t = _ContentDecoder
    let rec t_of_js : Ojs.t -> t =
      fun (x40 : Ojs.t) -> _ContentDecoder_of_js x40
    and t_to_js : t -> Ojs.t =
      fun (x39 : _ContentDecoder) -> _ContentDecoder_to_js x39
  end
module ContentTypeEncoderOptions =
  struct
    type t = _ContentTypeEncoderOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x42 : Ojs.t) -> _ContentTypeEncoderOptions_of_js x42
    and t_to_js : t -> Ojs.t =
      fun (x41 : _ContentTypeEncoderOptions) ->
        _ContentTypeEncoderOptions_to_js x41
    let (get_charset : t -> RAL.MessageBufferEncoding.t) =
      fun (x43 : t) ->
        RAL.MessageBufferEncoding.t_of_js
          (Ojs.get_prop_ascii (t_to_js x43) "charset")
    let (set_charset : t -> RAL.MessageBufferEncoding.t -> unit) =
      fun (x44 : t) ->
        fun (x45 : RAL.MessageBufferEncoding.t) ->
          Ojs.set_prop_ascii (t_to_js x44) "charset"
            (RAL.MessageBufferEncoding.t_to_js x45)
  end
module FunctionContentTypeEncoder =
  struct
    type t = _FunctionContentTypeEncoder
    let rec t_of_js : Ojs.t -> t =
      fun (x47 : Ojs.t) -> _FunctionContentTypeEncoder_of_js x47
    and t_to_js : t -> Ojs.t =
      fun (x46 : _FunctionContentTypeEncoder) ->
        _FunctionContentTypeEncoder_to_js x46
    let (get_name : t -> string) =
      fun (x48 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x48) "name")
    let (set_name : t -> string -> unit) =
      fun (x49 : t) ->
        fun (x50 : string) ->
          Ojs.set_prop_ascii (t_to_js x49) "name" (Ojs.string_to_js x50)
    let (encode :
      t ->
        msg:Message.t ->
          options:_ContentTypeEncoderOptions -> Uint8Array.t Promise.t)
      =
      fun (x53 : t) ->
        fun ~msg:(x51 : Message.t) ->
          fun ~options:(x52 : _ContentTypeEncoderOptions) ->
            Promise.t_of_js Uint8Array.t_of_js
              (Ojs.call (t_to_js x53) "encode"
                 [|(Message.t_to_js x51);(_ContentTypeEncoderOptions_to_js
                                            x52)|])
  end
module StreamContentTypeEncoder =
  struct
    type t = _StreamContentTypeEncoder
    let rec t_of_js : Ojs.t -> t =
      fun (x56 : Ojs.t) -> _StreamContentTypeEncoder_of_js x56
    and t_to_js : t -> Ojs.t =
      fun (x55 : _StreamContentTypeEncoder) ->
        _StreamContentTypeEncoder_to_js x55
    let (get_name : t -> string) =
      fun (x57 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x57) "name")
    let (set_name : t -> string -> unit) =
      fun (x58 : t) ->
        fun (x59 : string) ->
          Ojs.set_prop_ascii (t_to_js x58) "name" (Ojs.string_to_js x59)
    let (create_ :
      t -> options:_ContentTypeEncoderOptions -> RAL.WritableStream.t) =
      fun (x61 : t) ->
        fun ~options:(x60 : _ContentTypeEncoderOptions) ->
          RAL.WritableStream.t_of_js
            (Ojs.call (t_to_js x61) "create"
               [|(_ContentTypeEncoderOptions_to_js x60)|])
  end
module ContentTypeEncoder =
  struct
    type t = _ContentTypeEncoder
    let rec t_of_js : Ojs.t -> t =
      fun (x63 : Ojs.t) -> _ContentTypeEncoder_of_js x63
    and t_to_js : t -> Ojs.t =
      fun (x62 : _ContentTypeEncoder) -> _ContentTypeEncoder_to_js x62
  end
module ContentTypeDecoderOptions =
  struct
    type t = _ContentTypeDecoderOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x65 : Ojs.t) -> _ContentTypeDecoderOptions_of_js x65
    and t_to_js : t -> Ojs.t =
      fun (x64 : _ContentTypeDecoderOptions) ->
        _ContentTypeDecoderOptions_to_js x64
    let (get_charset : t -> RAL.MessageBufferEncoding.t) =
      fun (x66 : t) ->
        RAL.MessageBufferEncoding.t_of_js
          (Ojs.get_prop_ascii (t_to_js x66) "charset")
    let (set_charset : t -> RAL.MessageBufferEncoding.t -> unit) =
      fun (x67 : t) ->
        fun (x68 : RAL.MessageBufferEncoding.t) ->
          Ojs.set_prop_ascii (t_to_js x67) "charset"
            (RAL.MessageBufferEncoding.t_to_js x68)
  end
module FunctionContentTypeDecoder =
  struct
    type t = _FunctionContentTypeDecoder
    let rec t_of_js : Ojs.t -> t =
      fun (x70 : Ojs.t) -> _FunctionContentTypeDecoder_of_js x70
    and t_to_js : t -> Ojs.t =
      fun (x69 : _FunctionContentTypeDecoder) ->
        _FunctionContentTypeDecoder_to_js x69
    let (get_name : t -> string) =
      fun (x71 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x71) "name")
    let (set_name : t -> string -> unit) =
      fun (x72 : t) ->
        fun (x73 : string) ->
          Ojs.set_prop_ascii (t_to_js x72) "name" (Ojs.string_to_js x73)
    let (decode :
      t ->
        buffer:Uint8Array.t ->
          options:_ContentTypeDecoderOptions -> Message.t Promise.t)
      =
      fun (x76 : t) ->
        fun ~buffer:(x74 : Uint8Array.t) ->
          fun ~options:(x75 : _ContentTypeDecoderOptions) ->
            Promise.t_of_js Message.t_of_js
              (Ojs.call (t_to_js x76) "decode"
                 [|(Uint8Array.t_to_js x74);(_ContentTypeDecoderOptions_to_js
                                               x75)|])
  end
module StreamContentTypeDecoder =
  struct
    type t = _StreamContentTypeDecoder
    let rec t_of_js : Ojs.t -> t =
      fun (x79 : Ojs.t) -> _StreamContentTypeDecoder_of_js x79
    and t_to_js : t -> Ojs.t =
      fun (x78 : _StreamContentTypeDecoder) ->
        _StreamContentTypeDecoder_to_js x78
    let (get_name : t -> string) =
      fun (x80 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x80) "name")
    let (set_name : t -> string -> unit) =
      fun (x81 : t) ->
        fun (x82 : string) ->
          Ojs.set_prop_ascii (t_to_js x81) "name" (Ojs.string_to_js x82)
    let (create_ :
      t -> options:_ContentTypeDecoderOptions -> RAL.WritableStream.t) =
      fun (x84 : t) ->
        fun ~options:(x83 : _ContentTypeDecoderOptions) ->
          RAL.WritableStream.t_of_js
            (Ojs.call (t_to_js x84) "create"
               [|(_ContentTypeDecoderOptions_to_js x83)|])
  end
module ContentTypeDecoder =
  struct
    type t = _ContentTypeDecoder
    let rec t_of_js : Ojs.t -> t =
      fun (x86 : Ojs.t) -> _ContentTypeDecoder_of_js x86
    and t_to_js : t -> Ojs.t =
      fun (x85 : _ContentTypeDecoder) -> _ContentTypeDecoder_to_js x85
  end
module Named =
  struct
    type t = _Named
    let rec t_of_js : Ojs.t -> t = fun (x88 : Ojs.t) -> _Named_of_js x88
    and t_to_js : t -> Ojs.t = fun (x87 : _Named) -> _Named_to_js x87
    let (get_name : t -> string) =
      fun (x89 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x89) "name")
    let (set_name : t -> string -> unit) =
      fun (x90 : t) ->
        fun (x91 : string) ->
          Ojs.set_prop_ascii (t_to_js x90) "name" (Ojs.string_to_js x91)
  end
module Encodings =
  struct
    let (getEncodingHeaderValue :
      encodings:_Named list -> string or_undefined) =
      fun ~encodings:(x92 : _Named list) ->
        or_undefined_of_js Ojs.string_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Encodings")
             "getEncodingHeaderValue" [|(Ojs.list_to_js _Named_to_js x92)|])
    let (parseEncodingHeaderValue : value:string -> string list) =
      fun ~value:(x95 : string) ->
        Ojs.list_of_js Ojs.string_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Encodings")
             "parseEncodingHeaderValue" [|(Ojs.string_to_js x95)|])
  end
