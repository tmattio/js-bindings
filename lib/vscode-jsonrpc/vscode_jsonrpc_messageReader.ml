[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type _AbstractMessageReader =
          [ `AbstractMessageReader  | `MessageReader ] intf
        and _DataCallback = [ `DataCallback ] intf
        and _MessageReader = [ `MessageReader ] intf
        and _MessageReaderOptions = [ `MessageReaderOptions ] intf
        and _PartialMessageInfo = [ `PartialMessageInfo ] intf
        and _ReadableStreamMessageReader =
          [ `ReadableStreamMessageReader  | `AbstractMessageReader 
          | `MessageReader ] intf
        let rec _AbstractMessageReader_of_js :
          Ojs.t -> _AbstractMessageReader = Obj.magic
        and _AbstractMessageReader_to_js : _AbstractMessageReader -> Ojs.t =
          Obj.magic
        and _DataCallback_of_js : Ojs.t -> _DataCallback = Obj.magic
        and _DataCallback_to_js : _DataCallback -> Ojs.t = Obj.magic
        and _MessageReader_of_js : Ojs.t -> _MessageReader = Obj.magic
        and _MessageReader_to_js : _MessageReader -> Ojs.t = Obj.magic
        and _MessageReaderOptions_of_js : Ojs.t -> _MessageReaderOptions =
          Obj.magic
        and _MessageReaderOptions_to_js : _MessageReaderOptions -> Ojs.t =
          Obj.magic
        and _PartialMessageInfo_of_js : Ojs.t -> _PartialMessageInfo =
          Obj.magic
        and _PartialMessageInfo_to_js : _PartialMessageInfo -> Ojs.t =
          Obj.magic
        and _ReadableStreamMessageReader_of_js :
          Ojs.t -> _ReadableStreamMessageReader = Obj.magic
        and _ReadableStreamMessageReader_to_js :
          _ReadableStreamMessageReader -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module DataCallback =
  struct
    type t = _DataCallback
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> _DataCallback_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _DataCallback) -> _DataCallback_to_js x1
    let (apply : t -> data:Vscode_jsonrpc_messages.Message.t -> unit) =
      fun (x4 : t) ->
        fun ~data:(x3 : Vscode_jsonrpc_messages.Message.t) ->
          ignore
            (Ojs.apply (t_to_js x4)
               [|(Vscode_jsonrpc_messages.Message.t_to_js x3)|])
  end
module PartialMessageInfo =
  struct
    type t = _PartialMessageInfo
    let rec t_of_js : Ojs.t -> t =
      fun (x6 : Ojs.t) -> _PartialMessageInfo_of_js x6
    and t_to_js : t -> Ojs.t =
      fun (x5 : _PartialMessageInfo) -> _PartialMessageInfo_to_js x5
    let (get_messageToken : t -> int) =
      fun (x7 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x7) "messageToken")
    let (get_waitingTime : t -> int) =
      fun (x8 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x8) "waitingTime")
  end
module MessageReader =
  struct
    type t = _MessageReader
    let rec t_of_js : Ojs.t -> t =
      fun (x10 : Ojs.t) -> _MessageReader_of_js x10
    and t_to_js : t -> Ojs.t =
      fun (x9 : _MessageReader) -> _MessageReader_to_js x9
    let (get_onError : t -> Error.t Vscode_jsonrpc_events.Event.t) =
      fun (x11 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Error.t_of_js
          (Ojs.get_prop_ascii (t_to_js x11) "onError")
    let (get_onClose : t -> unit Vscode_jsonrpc_events.Event.t) =
      fun (x13 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Ojs.unit_of_js
          (Ojs.get_prop_ascii (t_to_js x13) "onClose")
    let (get_onPartialMessage :
      t -> _PartialMessageInfo Vscode_jsonrpc_events.Event.t) =
      fun (x15 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js _PartialMessageInfo_of_js
          (Ojs.get_prop_ascii (t_to_js x15) "onPartialMessage")
    let (listen :
      t -> callback:_DataCallback -> Vscode_jsonrpc_disposable.Disposable.t)
      =
      fun (x18 : t) ->
        fun ~callback:(x17 : _DataCallback) ->
          Vscode_jsonrpc_disposable.Disposable.t_of_js
            (Ojs.call (t_to_js x18) "listen" [|(_DataCallback_to_js x17)|])
    let (dispose : t -> unit) =
      fun (x19 : t) -> ignore (Ojs.call (t_to_js x19) "dispose" [||])
    let (is : value:any -> bool) =
      fun ~value:(x20 : any) ->
        Ojs.bool_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "MessageReader") "is"
             [|(any_to_js x20)|])
  end
module AbstractMessageReader =
  struct
    type t = _AbstractMessageReader
    let rec t_of_js : Ojs.t -> t =
      fun (x22 : Ojs.t) -> _AbstractMessageReader_of_js x22
    and t_to_js : t -> Ojs.t =
      fun (x21 : _AbstractMessageReader) -> _AbstractMessageReader_to_js x21
    let (get_errorEmitter : t -> any) =
      fun (x23 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x23) "errorEmitter")
    let (set_errorEmitter : t -> any -> unit) =
      fun (x24 : t) ->
        fun (x25 : any) ->
          Ojs.set_prop_ascii (t_to_js x24) "errorEmitter" (any_to_js x25)
    let (get_closeEmitter : t -> any) =
      fun (x26 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x26) "closeEmitter")
    let (set_closeEmitter : t -> any -> unit) =
      fun (x27 : t) ->
        fun (x28 : any) ->
          Ojs.set_prop_ascii (t_to_js x27) "closeEmitter" (any_to_js x28)
    let (get_partialMessageEmitter : t -> any) =
      fun (x29 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x29) "partialMessageEmitter")
    let (set_partialMessageEmitter : t -> any -> unit) =
      fun (x30 : t) ->
        fun (x31 : any) ->
          Ojs.set_prop_ascii (t_to_js x30) "partialMessageEmitter"
            (any_to_js x31)
    let (create : unit -> t) =
      fun () ->
        t_of_js
          (Ojs.new_obj
             (Ojs.get_prop_ascii Ojs.global "AbstractMessageReader") 
             [||])
    let (dispose : t -> unit) =
      fun (x32 : t) -> ignore (Ojs.call (t_to_js x32) "dispose" [||])
    let (get_onError : t -> Error.t Vscode_jsonrpc_events.Event.t) =
      fun (x33 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Error.t_of_js
          (Ojs.get_prop_ascii (t_to_js x33) "onError")
    let (fireError : t -> error:any -> unit) =
      fun (x36 : t) ->
        fun ~error:(x35 : any) ->
          ignore (Ojs.call (t_to_js x36) "fireError" [|(any_to_js x35)|])
    let (get_onClose : t -> unit Vscode_jsonrpc_events.Event.t) =
      fun (x37 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Ojs.unit_of_js
          (Ojs.get_prop_ascii (t_to_js x37) "onClose")
    let (fireClose : t -> unit) =
      fun (x39 : t) -> ignore (Ojs.call (t_to_js x39) "fireClose" [||])
    let (get_onPartialMessage :
      t -> _PartialMessageInfo Vscode_jsonrpc_events.Event.t) =
      fun (x40 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js _PartialMessageInfo_of_js
          (Ojs.get_prop_ascii (t_to_js x40) "onPartialMessage")
    let (firePartialMessage : t -> info:_PartialMessageInfo -> unit) =
      fun (x43 : t) ->
        fun ~info:(x42 : _PartialMessageInfo) ->
          ignore
            (Ojs.call (t_to_js x43) "firePartialMessage"
               [|(_PartialMessageInfo_to_js x42)|])
    let (get_asError : t -> any) =
      fun (x44 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x44) "asError")
    let (set_asError : t -> any -> unit) =
      fun (x45 : t) ->
        fun (x46 : any) ->
          Ojs.set_prop_ascii (t_to_js x45) "asError" (any_to_js x46)
    let (listen :
      t -> callback:_DataCallback -> Vscode_jsonrpc_disposable.Disposable.t)
      =
      fun (x48 : t) ->
        fun ~callback:(x47 : _DataCallback) ->
          Vscode_jsonrpc_disposable.Disposable.t_of_js
            (Ojs.call (t_to_js x48) "listen" [|(_DataCallback_to_js x47)|])
    let (cast : t -> _MessageReader) =
      fun (x49 : t) -> _MessageReader_of_js (t_to_js x49)
  end
module MessageReaderOptions =
  struct
    type t = _MessageReaderOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x51 : Ojs.t) -> _MessageReaderOptions_of_js x51
    and t_to_js : t -> Ojs.t =
      fun (x50 : _MessageReaderOptions) -> _MessageReaderOptions_to_js x50
    let (get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) =
      fun (x52 : t) ->
        Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_of_js
          (Ojs.get_prop_ascii (t_to_js x52) "charset")
    let (set_charset :
      t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit) =
      fun (x53 : t) ->
        fun (x54 : Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) ->
          Ojs.set_prop_ascii (t_to_js x53) "charset"
            (Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_to_js x54)
    let (get_contentDecoder : t -> Vscode_jsonrpc_encoding.ContentDecoder.t)
      =
      fun (x55 : t) ->
        Vscode_jsonrpc_encoding.ContentDecoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x55) "contentDecoder")
    let (set_contentDecoder :
      t -> Vscode_jsonrpc_encoding.ContentDecoder.t -> unit) =
      fun (x56 : t) ->
        fun (x57 : Vscode_jsonrpc_encoding.ContentDecoder.t) ->
          Ojs.set_prop_ascii (t_to_js x56) "contentDecoder"
            (Vscode_jsonrpc_encoding.ContentDecoder.t_to_js x57)
    let (get_contentDecoders :
      t -> Vscode_jsonrpc_encoding.ContentDecoder.t list) =
      fun (x58 : t) ->
        Ojs.list_of_js Vscode_jsonrpc_encoding.ContentDecoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x58) "contentDecoders")
    let (set_contentDecoders :
      t -> Vscode_jsonrpc_encoding.ContentDecoder.t list -> unit) =
      fun (x60 : t) ->
        fun (x61 : Vscode_jsonrpc_encoding.ContentDecoder.t list) ->
          Ojs.set_prop_ascii (t_to_js x60) "contentDecoders"
            (Ojs.list_to_js Vscode_jsonrpc_encoding.ContentDecoder.t_to_js
               x61)
    let (get_contentTypeDecoder :
      t -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t) =
      fun (x63 : t) ->
        Vscode_jsonrpc_encoding.ContentTypeDecoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x63) "contentTypeDecoder")
    let (set_contentTypeDecoder :
      t -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t -> unit) =
      fun (x64 : t) ->
        fun (x65 : Vscode_jsonrpc_encoding.ContentTypeDecoder.t) ->
          Ojs.set_prop_ascii (t_to_js x64) "contentTypeDecoder"
            (Vscode_jsonrpc_encoding.ContentTypeDecoder.t_to_js x65)
    let (get_contentTypeDecoders :
      t -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t list) =
      fun (x66 : t) ->
        Ojs.list_of_js Vscode_jsonrpc_encoding.ContentTypeDecoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x66) "contentTypeDecoders")
    let (set_contentTypeDecoders :
      t -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t list -> unit) =
      fun (x68 : t) ->
        fun (x69 : Vscode_jsonrpc_encoding.ContentTypeDecoder.t list) ->
          Ojs.set_prop_ascii (t_to_js x68) "contentTypeDecoders"
            (Ojs.list_to_js
               Vscode_jsonrpc_encoding.ContentTypeDecoder.t_to_js x69)
  end
module ReadableStreamMessageReader =
  struct
    type t = _ReadableStreamMessageReader
    let rec t_of_js : Ojs.t -> t =
      fun (x72 : Ojs.t) -> _ReadableStreamMessageReader_of_js x72
    and t_to_js : t -> Ojs.t =
      fun (x71 : _ReadableStreamMessageReader) ->
        _ReadableStreamMessageReader_to_js x71
    let (get_readable : t -> any) =
      fun (x73 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x73) "readable")
    let (set_readable : t -> any -> unit) =
      fun (x74 : t) ->
        fun (x75 : any) ->
          Ojs.set_prop_ascii (t_to_js x74) "readable" (any_to_js x75)
    let (get_options : t -> any) =
      fun (x76 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x76) "options")
    let (set_options : t -> any -> unit) =
      fun (x77 : t) ->
        fun (x78 : any) ->
          Ojs.set_prop_ascii (t_to_js x77) "options" (any_to_js x78)
    let (get_callback : t -> any) =
      fun (x79 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x79) "callback")
    let (set_callback : t -> any -> unit) =
      fun (x80 : t) ->
        fun (x81 : any) ->
          Ojs.set_prop_ascii (t_to_js x80) "callback" (any_to_js x81)
    let (get_nextMessageLength : t -> any) =
      fun (x82 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x82) "nextMessageLength")
    let (set_nextMessageLength : t -> any -> unit) =
      fun (x83 : t) ->
        fun (x84 : any) ->
          Ojs.set_prop_ascii (t_to_js x83) "nextMessageLength"
            (any_to_js x84)
    let (get_messageToken : t -> any) =
      fun (x85 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x85) "messageToken")
    let (set_messageToken : t -> any -> unit) =
      fun (x86 : t) ->
        fun (x87 : any) ->
          Ojs.set_prop_ascii (t_to_js x86) "messageToken" (any_to_js x87)
    let (get_buffer : t -> any) =
      fun (x88 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x88) "buffer")
    let (set_buffer : t -> any -> unit) =
      fun (x89 : t) ->
        fun (x90 : any) ->
          Ojs.set_prop_ascii (t_to_js x89) "buffer" (any_to_js x90)
    let (get_partialMessageTimer : t -> any) =
      fun (x91 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x91) "partialMessageTimer")
    let (set_partialMessageTimer : t -> any -> unit) =
      fun (x92 : t) ->
        fun (x93 : any) ->
          Ojs.set_prop_ascii (t_to_js x92) "partialMessageTimer"
            (any_to_js x93)
    let (get__partialMessageTimeout : t -> any) =
      fun (x94 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x94) "_partialMessageTimeout")
    let (set__partialMessageTimeout : t -> any -> unit) =
      fun (x95 : t) ->
        fun (x96 : any) ->
          Ojs.set_prop_ascii (t_to_js x95) "_partialMessageTimeout"
            (any_to_js x96)
    let (create :
      readable:Vscode_jsonrpc_ral.RAL.ReadableStream.t ->
        ?options:(_MessageReaderOptions,
          Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) union2 -> unit -> t)
      =
      fun ~readable:(x97 : Vscode_jsonrpc_ral.RAL.ReadableStream.t) ->
        fun
          ?options:(x98 :
                     (_MessageReaderOptions,
                       Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) union2
                       option)
          ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii Ojs.global "ReadableStreamMessageReader")
                 (let x99 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore
                    (Ojs.call x99 "push"
                       [|(Vscode_jsonrpc_ral.RAL.ReadableStream.t_to_js x97)|]);
                  (match x98 with
                   | Some x100 ->
                       ignore
                         (Ojs.call x99 "push"
                            [|(union2_to_js _MessageReaderOptions_to_js
                                 Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_to_js
                                 x100)|])
                   | None -> ());
                  x99))
    let (set_partialMessageTimeout : t -> int -> unit) =
      fun (x103 : t) ->
        fun (x104 : int) ->
          Ojs.set_prop_ascii (t_to_js x103) "partialMessageTimeout"
            (Ojs.int_to_js x104)
    let (get_partialMessageTimeout : t -> int) =
      fun (x105 : t) ->
        Ojs.int_of_js
          (Ojs.get_prop_ascii (t_to_js x105) "partialMessageTimeout")
    let (listen :
      t -> callback:_DataCallback -> Vscode_jsonrpc_disposable.Disposable.t)
      =
      fun (x107 : t) ->
        fun ~callback:(x106 : _DataCallback) ->
          Vscode_jsonrpc_disposable.Disposable.t_of_js
            (Ojs.call (t_to_js x107) "listen" [|(_DataCallback_to_js x106)|])
    let (get_onData : t -> any) =
      fun (x108 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x108) "onData")
    let (set_onData : t -> any -> unit) =
      fun (x109 : t) ->
        fun (x110 : any) ->
          Ojs.set_prop_ascii (t_to_js x109) "onData" (any_to_js x110)
    let (get_clearPartialMessageTimer : t -> any) =
      fun (x111 : t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js x111) "clearPartialMessageTimer")
    let (set_clearPartialMessageTimer : t -> any -> unit) =
      fun (x112 : t) ->
        fun (x113 : any) ->
          Ojs.set_prop_ascii (t_to_js x112) "clearPartialMessageTimer"
            (any_to_js x113)
    let (get_setPartialMessageTimer : t -> any) =
      fun (x114 : t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js x114) "setPartialMessageTimer")
    let (set_setPartialMessageTimer : t -> any -> unit) =
      fun (x115 : t) ->
        fun (x116 : any) ->
          Ojs.set_prop_ascii (t_to_js x115) "setPartialMessageTimer"
            (any_to_js x116)
    let (cast : t -> _AbstractMessageReader) =
      fun (x117 : t) -> _AbstractMessageReader_of_js (t_to_js x117)
  end
