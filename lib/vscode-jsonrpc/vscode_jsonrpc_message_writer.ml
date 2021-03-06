[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module MessageWriter =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get_on_error :
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
    let (get_on_close : t -> unit Vscode_jsonrpc_events.Event.t) =
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
          (Ojs.call
             (Ojs.get_prop_ascii
                (Ojs.get_prop_ascii Ojs.global
                   "__LIB__VSCODE_JSONRPC__IMPORTS") "MessageWriter") "is"
             [|(any_to_js x15)|])
  end
module AbstractMessageWriter =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x17 : Ojs.t) -> x17
    and t_to_js : t -> Ojs.t = fun (x16 : Ojs.t) -> x16
    let (get_error_emitter : t -> any) =
      fun (x18 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x18) "errorEmitter")
    let (set_error_emitter : t -> any -> unit) =
      fun (x19 : t) ->
        fun (x20 : any) ->
          Ojs.set_prop_ascii (t_to_js x19) "errorEmitter" (any_to_js x20)
    let (get_close_emitter : t -> any) =
      fun (x21 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x21) "closeEmitter")
    let (set_close_emitter : t -> any -> unit) =
      fun (x22 : t) ->
        fun (x23 : any) ->
          Ojs.set_prop_ascii (t_to_js x22) "closeEmitter" (any_to_js x23)
    let (create : unit -> t) =
      fun () ->
        t_of_js
          (Ojs.new_obj
             (Ojs.get_prop_ascii
                (Ojs.get_prop_ascii Ojs.global
                   "__LIB__VSCODE_JSONRPC__IMPORTS") "AbstractMessageWriter")
             [||])
    let (dispose : t -> unit) =
      fun (x24 : t) -> ignore (Ojs.call (t_to_js x24) "dispose" [||])
    let (get_on_error :
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
    let (fire_error :
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
    let (get_on_close : t -> unit Vscode_jsonrpc_events.Event.t) =
      fun (x38 : t) ->
        Vscode_jsonrpc_events.Event.t_of_js Ojs.unit_of_js
          (Ojs.get_prop_ascii (t_to_js x38) "onClose")
    let (fire_close : t -> unit) =
      fun (x40 : t) -> ignore (Ojs.call (t_to_js x40) "fireClose" [||])
    let (get_as_error : t -> any) =
      fun (x41 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x41) "asError")
    let (set_as_error : t -> any -> unit) =
      fun (x42 : t) ->
        fun (x43 : any) ->
          Ojs.set_prop_ascii (t_to_js x42) "asError" (any_to_js x43)
  end
module MessageWriterOptions =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x45 : Ojs.t) -> x45
    and t_to_js : t -> Ojs.t = fun (x44 : Ojs.t) -> x44
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
    let (get_content_encoder : t -> Vscode_jsonrpc_encoding.ContentEncoder.t)
      =
      fun (x49 : t) ->
        Vscode_jsonrpc_encoding.ContentEncoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x49) "contentEncoder")
    let (set_content_encoder :
      t -> Vscode_jsonrpc_encoding.ContentEncoder.t -> unit) =
      fun (x50 : t) ->
        fun (x51 : Vscode_jsonrpc_encoding.ContentEncoder.t) ->
          Ojs.set_prop_ascii (t_to_js x50) "contentEncoder"
            (Vscode_jsonrpc_encoding.ContentEncoder.t_to_js x51)
    let (get_content_type_encoder :
      t -> Vscode_jsonrpc_encoding.ContentTypeEncoder.t) =
      fun (x52 : t) ->
        Vscode_jsonrpc_encoding.ContentTypeEncoder.t_of_js
          (Ojs.get_prop_ascii (t_to_js x52) "contentTypeEncoder")
    let (set_content_type_encoder :
      t -> Vscode_jsonrpc_encoding.ContentTypeEncoder.t -> unit) =
      fun (x53 : t) ->
        fun (x54 : Vscode_jsonrpc_encoding.ContentTypeEncoder.t) ->
          Ojs.set_prop_ascii (t_to_js x53) "contentTypeEncoder"
            (Vscode_jsonrpc_encoding.ContentTypeEncoder.t_to_js x54)
  end
module WriteableStreamMessageWriter =
  struct
    include struct include AbstractMessageWriter end
    let (get_writable : t -> any) =
      fun (x55 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x55) "writable")
    let (set_writable : t -> any -> unit) =
      fun (x56 : t) ->
        fun (x57 : any) ->
          Ojs.set_prop_ascii (t_to_js x56) "writable" (any_to_js x57)
    let (get_options : t -> any) =
      fun (x58 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x58) "options")
    let (set_options : t -> any -> unit) =
      fun (x59 : t) ->
        fun (x60 : any) ->
          Ojs.set_prop_ascii (t_to_js x59) "options" (any_to_js x60)
    let (get_error_count : t -> any) =
      fun (x61 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x61) "errorCount")
    let (set_error_count : t -> any -> unit) =
      fun (x62 : t) ->
        fun (x63 : any) ->
          Ojs.set_prop_ascii (t_to_js x62) "errorCount" (any_to_js x63)
    let (get_write_semaphore : t -> any) =
      fun (x64 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x64) "writeSemaphore")
    let (set_write_semaphore : t -> any -> unit) =
      fun (x65 : t) ->
        fun (x66 : any) ->
          Ojs.set_prop_ascii (t_to_js x65) "writeSemaphore" (any_to_js x66)
    let (create :
      writable:Vscode_jsonrpc_ral.RAL.WritableStream.t ->
        ?options:(MessageWriterOptions.t,
          Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) union2 -> unit -> t)
      =
      fun ~writable:(x67 : Vscode_jsonrpc_ral.RAL.WritableStream.t) ->
        fun
          ?options:(x68 :
                     (MessageWriterOptions.t,
                       Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t) union2
                       option)
          ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii
                    (Ojs.get_prop_ascii Ojs.global
                       "__LIB__VSCODE_JSONRPC__IMPORTS")
                    "WriteableStreamMessageWriter")
                 (let x69 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore
                    (Ojs.call x69 "push"
                       [|(Vscode_jsonrpc_ral.RAL.WritableStream.t_to_js x67)|]);
                  (match x68 with
                   | Some x70 ->
                       ignore
                         (Ojs.call x69 "push"
                            [|(union2_to_js MessageWriterOptions.t_to_js
                                 Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t_to_js
                                 x70)|])
                   | None -> ());
                  x69))
    let (write :
      t -> msg:Vscode_jsonrpc_messages.Message.t -> unit Promise.t) =
      fun (x74 : t) ->
        fun ~msg:(x73 : Vscode_jsonrpc_messages.Message.t) ->
          Promise.t_of_js Ojs.unit_of_js
            (Ojs.call (t_to_js x74) "write"
               [|(Vscode_jsonrpc_messages.Message.t_to_js x73)|])
    let (get_do_write : t -> any) =
      fun (x76 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x76) "doWrite")
    let (set_do_write : t -> any -> unit) =
      fun (x77 : t) ->
        fun (x78 : any) ->
          Ojs.set_prop_ascii (t_to_js x77) "doWrite" (any_to_js x78)
    let (get_handle_error : t -> any) =
      fun (x79 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x79) "handleError")
    let (set_handle_error : t -> any -> unit) =
      fun (x80 : t) ->
        fun (x81 : any) ->
          Ojs.set_prop_ascii (t_to_js x80) "handleError" (any_to_js x81)
    let (end_ : t -> unit) =
      fun (x82 : t) -> ignore (Ojs.call (t_to_js x82) "end" [||])
    let (cast' : t -> MessageWriter.t) =
      fun (x83 : t) -> MessageWriter.t_of_js (t_to_js x83)
  end
