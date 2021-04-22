[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module MessageWriter =
  struct
    type t = _MessageWriter
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _MessageWriter_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _MessageWriter) -> _MessageWriter_to_js x1
    let (get_onError :
      t ->
        (Error.t * Vscode_jsonrpc_messages.Message.t or_undefined * int
          or_undefined) Vscode_jsonrpc_events.Event.t)
      =
      fun (x3 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js
          (fun (x4 : Ojs.t) ->
             let x5 = x4 in
             ((Error.t_of_js (Ojs.array_get x5 0)),
               (or_undefined_of_js Vscode_jsonrpc_messages.Message.t_of_js
                  (Ojs.array_get x5 1)),
               (or_undefined_of_js Ojs.int_of_js (Ojs.array_get x5 2))))
          (Ojs.get_prop_ascii (t_to_js x3) "onError")
    let (get_onClose : t -> unit Vscode_jsonrpc_events.Event.t) =
      fun (x8 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Ojs.unit_of_js
          (Ojs.get_prop_ascii (t_to_js x8) "onClose")
    let (write :
      t -> msg:Vscode_jsonrpc_messages.Message.t -> unit Promise.t) =
      fun (x11 : t) ->
        fun ~msg:(x10 : Vscode_jsonrpc_messages.Message.t) ->
          Promise.t_of_js Ojs.unit_of_js
            (Ojs.call (t_to_js x11) "write"
               [|(Vscode_jsonrpc_messages.Message.t_to_js x10)|])
    let (end_ : t -> unit) =
      fun (x13 : t) -> ignore (Ojs.call (t_to_js x13) "end" [||])
    let (dispose : t -> unit) =
      fun (x14 : t) -> ignore (Ojs.call (t_to_js x14) "dispose" [||])
    let (is : value:any -> bool) =
      fun ~value:(x15 : any) ->
        Ojs.bool_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "MessageWriter") "is"
             [|(any_to_js x15)|])
  end
module AbstractMessageWriter =
  struct
    type t = _AbstractMessageWriter
    let rec t_of_js : Ojs.t -> t =
      fun (x17 : Ojs.t) -> _AbstractMessageWriter_of_js x17
    and t_to_js : t -> Ojs.t =
      fun (x16 : _AbstractMessageWriter) -> _AbstractMessageWriter_to_js x16
    let (get_errorEmitter : t -> any) =
      fun (x18 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x18) "errorEmitter")
    let (set_errorEmitter : t -> any -> unit) =
      fun (x19 : t) ->
        fun (x20 : any) ->
          Ojs.set_prop_ascii (t_to_js x19) "errorEmitter" (any_to_js x20)
    let (get_closeEmitter : t -> any) =
      fun (x21 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x21) "closeEmitter")
    let (set_closeEmitter : t -> any -> unit) =
      fun (x22 : t) ->
        fun (x23 : any) ->
          Ojs.set_prop_ascii (t_to_js x22) "closeEmitter" (any_to_js x23)
    let (create : unit -> t) =
      fun () ->
        t_of_js
          (Ojs.new_obj
             (Ojs.get_prop_ascii Ojs.global "AbstractMessageWriter") 
             [||])
    let (dispose : t -> unit) =
      fun (x24 : t) -> ignore (Ojs.call (t_to_js x24) "dispose" [||])
    let (get_onError :
      t ->
        (Error.t * Vscode_jsonrpc_messages.Message.t or_undefined * int
          or_undefined) Vscode_jsonrpc_events.Event.t)
      =
      fun (x25 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js
          (fun (x26 : Ojs.t) ->
             let x27 = x26 in
             ((Error.t_of_js (Ojs.array_get x27 0)),
               (or_undefined_of_js Vscode_jsonrpc_messages.Message.t_of_js
                  (Ojs.array_get x27 1)),
               (or_undefined_of_js Ojs.int_of_js (Ojs.array_get x27 2))))
          (Ojs.get_prop_ascii (t_to_js x25) "onError")
    let (fireError :
      t ->
        error:any ->
          ?message:Vscode_jsonrpc_messages.Message.t ->
            ?count:int -> unit -> unit)
      =
      fun (x36 : t) ->
        fun ~error:(x30 : any) ->
          fun ?message:(x31 : Vscode_jsonrpc_messages.Message.t option) ->
            fun ?count:(x32 : int option) ->
              fun () ->
                ignore
                  (let x37 = t_to_js x36 in
                   Ojs.call (Ojs.get_prop_ascii x37 "fireError") "apply"
                     [|x37;((let x33 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore (Ojs.call x33 "push" [|(any_to_js x30)|]);
                             (match x31 with
                              | Some x35 ->
                                  ignore
                                    (Ojs.call x33 "push"
                                       [|(Vscode_jsonrpc_messages.Message.t_to_js
                                            x35)|])
                              | None -> ());
                             (match x32 with
                              | Some x34 ->
                                  ignore
                                    (Ojs.call x33 "push"
                                       [|(Ojs.int_to_js x34)|])
                              | None -> ());
                             x33))|])
    let (get_onClose : t -> unit Vscode_jsonrpc_events.Event.t) =
      fun (x38 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Ojs.unit_of_js
          (Ojs.get_prop_ascii (t_to_js x38) "onClose")
    let (fireClose : t -> unit) =
      fun (x40 : t) -> ignore (Ojs.call (t_to_js x40) "fireClose" [||])
    let (get_asError : t -> any) =
      fun (x41 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x41) "asError")
    let (set_asError : t -> any -> unit) =
      fun (x42 : t) ->
        fun (x43 : any) ->
          Ojs.set_prop_ascii (t_to_js x42) "asError" (any_to_js x43)
  end
module MessageWriterOptions =
  struct
    type t = _MessageWriterOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x45 : Ojs.t) -> _MessageWriterOptions_of_js x45
    and t_to_js : t -> Ojs.t =
      fun (x44 : _MessageWriterOptions) -> _MessageWriterOptions_to_js x44
    let (get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) =
      fun (x46 : t) ->
        Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_of_js
          (Ojs.get_prop_ascii (t_to_js x46) "charset")
    let (set_charset :
      t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit) =
      fun (x47 : t) ->
        fun (x48 : Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) ->
          Ojs.set_prop_ascii (t_to_js x47) "charset"
            (Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_to_js x48)
    let (get_contentEncoder : t -> Vscode_jsonrpc_encoding.ContentEncoder.t)
      =
      fun (x49 : t) ->
        Vscode_jsonrpc_encoding.ContentEncoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x49) "contentEncoder")
    let (set_contentEncoder :
      t -> Vscode_jsonrpc_encoding.ContentEncoder.t -> unit) =
      fun (x50 : t) ->
        fun (x51 : Vscode_jsonrpc_encoding.ContentEncoder.t) ->
          Ojs.set_prop_ascii (t_to_js x50) "contentEncoder"
            (Vscode_jsonrpc_encoding.ContentEncoder.t_to_js x51)
    let (get_contentTypeEncoder :
      t -> Vscode_jsonrpc_encoding.ContentTypeEncoder.t) =
      fun (x52 : t) ->
        Vscode_jsonrpc_encoding.ContentTypeEncoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x52) "contentTypeEncoder")
    let (set_contentTypeEncoder :
      t -> Vscode_jsonrpc_encoding.ContentTypeEncoder.t -> unit) =
      fun (x53 : t) ->
        fun (x54 : Vscode_jsonrpc_encoding.ContentTypeEncoder.t) ->
          Ojs.set_prop_ascii (t_to_js x53) "contentTypeEncoder"
            (Vscode_jsonrpc_encoding.ContentTypeEncoder.t_to_js x54)
  end
module WriteableStreamMessageWriter =
  struct
    type t = _WriteableStreamMessageWriter
    let rec t_of_js : Ojs.t -> t =
      fun (x56 : Ojs.t) -> _WriteableStreamMessageWriter_of_js x56
    and t_to_js : t -> Ojs.t =
      fun (x55 : _WriteableStreamMessageWriter) ->
        _WriteableStreamMessageWriter_to_js x55
    let (get_writable : t -> any) =
      fun (x57 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x57) "writable")
    let (set_writable : t -> any -> unit) =
      fun (x58 : t) ->
        fun (x59 : any) ->
          Ojs.set_prop_ascii (t_to_js x58) "writable" (any_to_js x59)
    let (get_options : t -> any) =
      fun (x60 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x60) "options")
    let (set_options : t -> any -> unit) =
      fun (x61 : t) ->
        fun (x62 : any) ->
          Ojs.set_prop_ascii (t_to_js x61) "options" (any_to_js x62)
    let (get_errorCount : t -> any) =
      fun (x63 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x63) "errorCount")
    let (set_errorCount : t -> any -> unit) =
      fun (x64 : t) ->
        fun (x65 : any) ->
          Ojs.set_prop_ascii (t_to_js x64) "errorCount" (any_to_js x65)
    let (get_writeSemaphore : t -> any) =
      fun (x66 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x66) "writeSemaphore")
    let (set_writeSemaphore : t -> any -> unit) =
      fun (x67 : t) ->
        fun (x68 : any) ->
          Ojs.set_prop_ascii (t_to_js x67) "writeSemaphore" (any_to_js x68)
    let (create :
      writable:Vscode_jsonrpc_ral.RAL.WritableStream.t ->
        ?options:(_MessageWriterOptions,
          Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) union2 -> unit -> t)
      =
      fun ~writable:(x69 : Vscode_jsonrpc_ral.RAL.WritableStream.t) ->
        fun
          ?options:(x70 :
                     (_MessageWriterOptions,
                       Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) union2
                       option)
          ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii Ojs.global
                    "WriteableStreamMessageWriter")
                 (let x71 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore
                    (Ojs.call x71 "push"
                       [|(Vscode_jsonrpc_ral.RAL.WritableStream.t_to_js x69)|]);
                  (match x70 with
                   | Some x72 ->
                       ignore
                         (Ojs.call x71 "push"
                            [|(union2_to_js _MessageWriterOptions_to_js
                                 Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_to_js
                                 x72)|])
                   | None -> ());
                  x71))
    let (write :
      t -> msg:Vscode_jsonrpc_messages.Message.t -> unit Promise.t) =
      fun (x76 : t) ->
        fun ~msg:(x75 : Vscode_jsonrpc_messages.Message.t) ->
          Promise.t_of_js Ojs.unit_of_js
            (Ojs.call (t_to_js x76) "write"
               [|(Vscode_jsonrpc_messages.Message.t_to_js x75)|])
    let (get_doWrite : t -> any) =
      fun (x78 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x78) "doWrite")
    let (set_doWrite : t -> any -> unit) =
      fun (x79 : t) ->
        fun (x80 : any) ->
          Ojs.set_prop_ascii (t_to_js x79) "doWrite" (any_to_js x80)
    let (get_handleError : t -> any) =
      fun (x81 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x81) "handleError")
    let (set_handleError : t -> any -> unit) =
      fun (x82 : t) ->
        fun (x83 : any) ->
          Ojs.set_prop_ascii (t_to_js x82) "handleError" (any_to_js x83)
    let (end_ : t -> unit) =
      fun (x84 : t) -> ignore (Ojs.call (t_to_js x84) "end" [||])
    let (cast : t -> _AbstractMessageWriter) =
      fun (x85 : t) -> _AbstractMessageWriter_of_js (t_to_js x85)
    let (cast' : t -> _MessageWriter) =
      fun (x86 : t) -> _MessageWriter_of_js (t_to_js x86)
  end
