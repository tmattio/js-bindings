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
        type _IPCMessageReader = [ `IPCMessageReader ] intf
        and _IPCMessageWriter = [ `IPCMessageWriter ] intf
        and _PipeTransport = [ `PipeTransport ] intf
        and _SocketMessageReader = [ `SocketMessageReader ] intf
        and _SocketMessageWriter = [ `SocketMessageWriter ] intf
        and _SocketTransport = [ `SocketTransport ] intf
        and _StreamMessageReader = [ `StreamMessageReader ] intf
        and _StreamMessageWriter = [ `StreamMessageWriter ] intf
        let rec _IPCMessageReader_of_js : Ojs.t -> _IPCMessageReader =
          Obj.magic
        and _IPCMessageReader_to_js : _IPCMessageReader -> Ojs.t = Obj.magic
        and _IPCMessageWriter_of_js : Ojs.t -> _IPCMessageWriter = Obj.magic
        and _IPCMessageWriter_to_js : _IPCMessageWriter -> Ojs.t = Obj.magic
        and _PipeTransport_of_js : Ojs.t -> _PipeTransport = Obj.magic
        and _PipeTransport_to_js : _PipeTransport -> Ojs.t = Obj.magic
        and _SocketMessageReader_of_js : Ojs.t -> _SocketMessageReader =
          Obj.magic
        and _SocketMessageReader_to_js : _SocketMessageReader -> Ojs.t =
          Obj.magic
        and _SocketMessageWriter_of_js : Ojs.t -> _SocketMessageWriter =
          Obj.magic
        and _SocketMessageWriter_to_js : _SocketMessageWriter -> Ojs.t =
          Obj.magic
        and _SocketTransport_of_js : Ojs.t -> _SocketTransport = Obj.magic
        and _SocketTransport_to_js : _SocketTransport -> Ojs.t = Obj.magic
        and _StreamMessageReader_of_js : Ojs.t -> _StreamMessageReader =
          Obj.magic
        and _StreamMessageReader_to_js : _StreamMessageReader -> Ojs.t =
          Obj.magic
        and _StreamMessageWriter_of_js : Ojs.t -> _StreamMessageWriter =
          Obj.magic
        and _StreamMessageWriter_to_js : _StreamMessageWriter -> Ojs.t =
          Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module IPCMessageReader =
  struct
    type t = _IPCMessageReader
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _IPCMessageReader_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _IPCMessageReader) -> _IPCMessageReader_to_js x1
    let (get_process : t -> any) =
      fun (x3 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x3) "process")
    let (set_process : t -> any -> unit) =
      fun (x4 : t) ->
        fun (x5 : any) ->
          Ojs.set_prop_ascii (t_to_js x4) "process" (any_to_js x5)
    let (create : process:(ChildProcess.t, NodeJS.Process.t) union2 -> t) =
      fun ~process:(x6 : (ChildProcess.t, NodeJS.Process.t) union2) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "IPCMessageReader")
             [|(union2_to_js ChildProcess.t_to_js NodeJS.Process.t_to_js x6)|])
    let (listen : t -> callback:DataCallback.t -> Disposable.t) =
      fun (x10 : t) ->
        fun ~callback:(x9 : DataCallback.t) ->
          Disposable.t_of_js
            (Ojs.call (t_to_js x10) "listen" [|(DataCallback.t_to_js x9)|])
    let (cast : t -> AbstractMessageReader.t) =
      fun (x11 : t) -> AbstractMessageReader.t_of_js (t_to_js x11)
  end
module IPCMessageWriter =
  struct
    type t = _IPCMessageWriter
    let rec t_of_js : Ojs.t -> t =
      fun (x13 : Ojs.t) -> _IPCMessageWriter_of_js x13
    and t_to_js : t -> Ojs.t =
      fun (x12 : _IPCMessageWriter) -> _IPCMessageWriter_to_js x12
    let (get_process : t -> any) =
      fun (x14 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x14) "process")
    let (set_process : t -> any -> unit) =
      fun (x15 : t) ->
        fun (x16 : any) ->
          Ojs.set_prop_ascii (t_to_js x15) "process" (any_to_js x16)
    let (get_errorCount : t -> any) =
      fun (x17 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x17) "errorCount")
    let (set_errorCount : t -> any -> unit) =
      fun (x18 : t) ->
        fun (x19 : any) ->
          Ojs.set_prop_ascii (t_to_js x18) "errorCount" (any_to_js x19)
    let (create : process:(ChildProcess.t, NodeJS.Process.t) union2 -> t) =
      fun ~process:(x20 : (ChildProcess.t, NodeJS.Process.t) union2) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "IPCMessageWriter")
             [|(union2_to_js ChildProcess.t_to_js NodeJS.Process.t_to_js x20)|])
    let (write : t -> msg:Message.t -> unit Promise.t) =
      fun (x24 : t) ->
        fun ~msg:(x23 : Message.t) ->
          Promise.t_of_js Ojs.unit_of_js
            (Ojs.call (t_to_js x24) "write" [|(Message.t_to_js x23)|])
    let (get_handleError : t -> any) =
      fun (x26 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x26) "handleError")
    let (set_handleError : t -> any -> unit) =
      fun (x27 : t) ->
        fun (x28 : any) ->
          Ojs.set_prop_ascii (t_to_js x27) "handleError" (any_to_js x28)
    let (end_ : t -> unit) =
      fun (x29 : t) -> ignore (Ojs.call (t_to_js x29) "end" [||])
    let (cast : t -> AbstractMessageWriter.t) =
      fun (x30 : t) -> AbstractMessageWriter.t_of_js (t_to_js x30)
    let (cast' : t -> MessageWriter.t) =
      fun (x31 : t) -> MessageWriter.t_of_js (t_to_js x31)
  end
module SocketMessageReader =
  struct
    type t = _SocketMessageReader
    let rec t_of_js : Ojs.t -> t =
      fun (x33 : Ojs.t) -> _SocketMessageReader_of_js x33
    and t_to_js : t -> Ojs.t =
      fun (x32 : _SocketMessageReader) -> _SocketMessageReader_to_js x32
    let (create :
      socket:Socket.t -> ?encoding:RAL.MessageBufferEncoding.t -> unit -> t)
      =
      fun ~socket:(x34 : Socket.t) ->
        fun ?encoding:(x35 : RAL.MessageBufferEncoding.t option) ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii Ojs.global "SocketMessageReader")
                 (let x36 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore (Ojs.call x36 "push" [|(Socket.t_to_js x34)|]);
                  (match x35 with
                   | Some x37 ->
                       ignore
                         (Ojs.call x36 "push"
                            [|(RAL.MessageBufferEncoding.t_to_js x37)|])
                   | None -> ());
                  x36))
    let (cast : t -> ReadableStreamMessageReader.t) =
      fun (x38 : t) -> ReadableStreamMessageReader.t_of_js (t_to_js x38)
  end
module SocketMessageWriter =
  struct
    type t = _SocketMessageWriter
    let rec t_of_js : Ojs.t -> t =
      fun (x40 : Ojs.t) -> _SocketMessageWriter_of_js x40
    and t_to_js : t -> Ojs.t =
      fun (x39 : _SocketMessageWriter) -> _SocketMessageWriter_to_js x39
    let (get_socket : t -> any) =
      fun (x41 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x41) "socket")
    let (set_socket : t -> any -> unit) =
      fun (x42 : t) ->
        fun (x43 : any) ->
          Ojs.set_prop_ascii (t_to_js x42) "socket" (any_to_js x43)
    let (create :
      socket:Socket.t ->
        ?options:(MessageWriterOptions.t, RAL.MessageBufferEncoding.t) union2
          -> unit -> t)
      =
      fun ~socket:(x44 : Socket.t) ->
        fun
          ?options:(x45 :
                     (MessageWriterOptions.t, RAL.MessageBufferEncoding.t)
                       union2 option)
          ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii Ojs.global "SocketMessageWriter")
                 (let x46 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore (Ojs.call x46 "push" [|(Socket.t_to_js x44)|]);
                  (match x45 with
                   | Some x47 ->
                       ignore
                         (Ojs.call x46 "push"
                            [|(union2_to_js MessageWriterOptions.t_to_js
                                 RAL.MessageBufferEncoding.t_to_js x47)|])
                   | None -> ());
                  x46))
    let (dispose : t -> unit) =
      fun (x50 : t) -> ignore (Ojs.call (t_to_js x50) "dispose" [||])
    let (cast : t -> WriteableStreamMessageWriter.t) =
      fun (x51 : t) -> WriteableStreamMessageWriter.t_of_js (t_to_js x51)
  end
module StreamMessageReader =
  struct
    type t = _StreamMessageReader
    let rec t_of_js : Ojs.t -> t =
      fun (x53 : Ojs.t) -> _StreamMessageReader_of_js x53
    and t_to_js : t -> Ojs.t =
      fun (x52 : _StreamMessageReader) -> _StreamMessageReader_to_js x52
    let (create :
      readble:NodeJS.ReadableStream.t ->
        ?encoding:(MessageReaderOptions.t, RAL.MessageBufferEncoding.t)
          union2 -> unit -> t)
      =
      fun ~readble:(x54 : NodeJS.ReadableStream.t) ->
        fun
          ?encoding:(x55 :
                      (MessageReaderOptions.t, RAL.MessageBufferEncoding.t)
                        union2 option)
          ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii Ojs.global "StreamMessageReader")
                 (let x56 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore
                    (Ojs.call x56 "push"
                       [|(NodeJS.ReadableStream.t_to_js x54)|]);
                  (match x55 with
                   | Some x57 ->
                       ignore
                         (Ojs.call x56 "push"
                            [|(union2_to_js MessageReaderOptions.t_to_js
                                 RAL.MessageBufferEncoding.t_to_js x57)|])
                   | None -> ());
                  x56))
    let (cast : t -> ReadableStreamMessageReader.t) =
      fun (x60 : t) -> ReadableStreamMessageReader.t_of_js (t_to_js x60)
  end
module StreamMessageWriter =
  struct
    type t = _StreamMessageWriter
    let rec t_of_js : Ojs.t -> t =
      fun (x62 : Ojs.t) -> _StreamMessageWriter_of_js x62
    and t_to_js : t -> Ojs.t =
      fun (x61 : _StreamMessageWriter) -> _StreamMessageWriter_to_js x61
    let (create :
      writable:NodeJS.WritableStream.t ->
        ?options:(MessageWriterOptions.t, RAL.MessageBufferEncoding.t) union2
          -> unit -> t)
      =
      fun ~writable:(x63 : NodeJS.WritableStream.t) ->
        fun
          ?options:(x64 :
                     (MessageWriterOptions.t, RAL.MessageBufferEncoding.t)
                       union2 option)
          ->
          fun () ->
            t_of_js
              (Ojs.new_obj_arr
                 (Ojs.get_prop_ascii Ojs.global "StreamMessageWriter")
                 (let x65 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore
                    (Ojs.call x65 "push"
                       [|(NodeJS.WritableStream.t_to_js x63)|]);
                  (match x64 with
                   | Some x66 ->
                       ignore
                         (Ojs.call x65 "push"
                            [|(union2_to_js MessageWriterOptions.t_to_js
                                 RAL.MessageBufferEncoding.t_to_js x66)|])
                   | None -> ());
                  x65))
    let (cast : t -> WriteableStreamMessageWriter.t) =
      fun (x69 : t) -> WriteableStreamMessageWriter.t_of_js (t_to_js x69)
  end
let (generateRandomPipeName : unit -> string) =
  fun () ->
    Ojs.string_of_js (Ojs.call Ojs.global "generateRandomPipeName" [||])
module PipeTransport =
  struct
    type t = _PipeTransport
    let rec t_of_js : Ojs.t -> t =
      fun (x71 : Ojs.t) -> _PipeTransport_of_js x71
    and t_to_js : t -> Ojs.t =
      fun (x70 : _PipeTransport) -> _PipeTransport_to_js x70
    let (onConnected : t -> (MessageReader.t * MessageWriter.t) Promise.t) =
      fun (x72 : t) ->
        Promise.t_of_js
          (fun (x73 : Ojs.t) ->
             let x74 = x73 in
             ((MessageReader.t_of_js (Ojs.array_get x74 0)),
               (MessageWriter.t_of_js (Ojs.array_get x74 1))))
          (Ojs.call (t_to_js x72) "onConnected" [||])
  end
let (createClientPipeTransport :
  pipeName:string ->
    ?encoding:RAL.MessageBufferEncoding.t -> unit -> _PipeTransport Promise.t)
  =
  fun ~pipeName:(x75 : string) ->
    fun ?encoding:(x76 : RAL.MessageBufferEncoding.t option) ->
      fun () ->
        Promise.t_of_js _PipeTransport_of_js
          (let x79 = Ojs.global in
           Ojs.call (Ojs.get_prop_ascii x79 "createClientPipeTransport")
             "apply"
             [|x79;((let x77 =
                       Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                         [||] in
                     ignore (Ojs.call x77 "push" [|(Ojs.string_to_js x75)|]);
                     (match x76 with
                      | Some x78 ->
                          ignore
                            (Ojs.call x77 "push"
                               [|(RAL.MessageBufferEncoding.t_to_js x78)|])
                      | None -> ());
                     x77))|])
let (createServerPipeTransport :
  pipeName:string ->
    ?encoding:RAL.MessageBufferEncoding.t ->
      unit -> (MessageReader.t * MessageWriter.t))
  =
  fun ~pipeName:(x81 : string) ->
    fun ?encoding:(x82 : RAL.MessageBufferEncoding.t option) ->
      fun () ->
        let x86 =
          let x85 = Ojs.global in
          Ojs.call (Ojs.get_prop_ascii x85 "createServerPipeTransport")
            "apply"
            [|x85;((let x83 =
                      Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                        [||] in
                    ignore (Ojs.call x83 "push" [|(Ojs.string_to_js x81)|]);
                    (match x82 with
                     | Some x84 ->
                         ignore
                           (Ojs.call x83 "push"
                              [|(RAL.MessageBufferEncoding.t_to_js x84)|])
                     | None -> ());
                    x83))|] in
        ((MessageReader.t_of_js (Ojs.array_get x86 0)),
          (MessageWriter.t_of_js (Ojs.array_get x86 1)))
module SocketTransport =
  struct
    type t = _SocketTransport
    let rec t_of_js : Ojs.t -> t =
      fun (x88 : Ojs.t) -> _SocketTransport_of_js x88
    and t_to_js : t -> Ojs.t =
      fun (x87 : _SocketTransport) -> _SocketTransport_to_js x87
    let (onConnected : t -> (MessageReader.t * MessageWriter.t) Promise.t) =
      fun (x89 : t) ->
        Promise.t_of_js
          (fun (x90 : Ojs.t) ->
             let x91 = x90 in
             ((MessageReader.t_of_js (Ojs.array_get x91 0)),
               (MessageWriter.t_of_js (Ojs.array_get x91 1))))
          (Ojs.call (t_to_js x89) "onConnected" [||])
  end
let (createClientSocketTransport :
  port:float ->
    ?encoding:RAL.MessageBufferEncoding.t ->
      unit -> _SocketTransport Promise.t)
  =
  fun ~port:(x92 : float) ->
    fun ?encoding:(x93 : RAL.MessageBufferEncoding.t option) ->
      fun () ->
        Promise.t_of_js _SocketTransport_of_js
          (let x96 = Ojs.global in
           Ojs.call (Ojs.get_prop_ascii x96 "createClientSocketTransport")
             "apply"
             [|x96;((let x94 =
                       Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                         [||] in
                     ignore (Ojs.call x94 "push" [|(Ojs.float_to_js x92)|]);
                     (match x93 with
                      | Some x95 ->
                          ignore
                            (Ojs.call x94 "push"
                               [|(RAL.MessageBufferEncoding.t_to_js x95)|])
                      | None -> ());
                     x94))|])
let (createServerSocketTransport :
  port:float ->
    ?encoding:RAL.MessageBufferEncoding.t ->
      unit -> (MessageReader.t * MessageWriter.t))
  =
  fun ~port:(x98 : float) ->
    fun ?encoding:(x99 : RAL.MessageBufferEncoding.t option) ->
      fun () ->
        let x103 =
          let x102 = Ojs.global in
          Ojs.call (Ojs.get_prop_ascii x102 "createServerSocketTransport")
            "apply"
            [|x102;((let x100 =
                       Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                         [||] in
                     ignore (Ojs.call x100 "push" [|(Ojs.float_to_js x98)|]);
                     (match x99 with
                      | Some x101 ->
                          ignore
                            (Ojs.call x100 "push"
                               [|(RAL.MessageBufferEncoding.t_to_js x101)|])
                      | None -> ());
                     x100))|] in
        ((MessageReader.t_of_js (Ojs.array_get x103 0)),
          (MessageWriter.t_of_js (Ojs.array_get x103 1)))
let (createMessageConnection :
  reader:MessageReader.t ->
    writer:MessageWriter.t ->
      ?logger:Logger.t ->
        ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2 ->
          unit -> MessageConnection.t)
  =
  fun ~reader:(x104 : MessageReader.t) ->
    fun ~writer:(x105 : MessageWriter.t) ->
      fun ?logger:(x106 : Logger.t option) ->
        fun
          ?options:(x107 :
                     (ConnectionOptions.t, ConnectionStrategy.t) union2
                       option)
          ->
          fun () ->
            MessageConnection.t_of_js
              (let x113 = Ojs.global in
               Ojs.call (Ojs.get_prop_ascii x113 "createMessageConnection")
                 "apply"
                 [|x113;((let x108 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x108 "push"
                               [|(MessageReader.t_to_js x104)|]);
                          ignore
                            (Ojs.call x108 "push"
                               [|(MessageWriter.t_to_js x105)|]);
                          (match x106 with
                           | Some x112 ->
                               ignore
                                 (Ojs.call x108 "push"
                                    [|(Logger.t_to_js x112)|])
                           | None -> ());
                          (match x107 with
                           | Some x109 ->
                               ignore
                                 (Ojs.call x108 "push"
                                    [|(union2_to_js ConnectionOptions.t_to_js
                                         ConnectionStrategy.t_to_js x109)|])
                           | None -> ());
                          x108))|])
let (createMessageConnection :
  inputStream:NodeJS.ReadableStream.t ->
    outputStream:NodeJS.WritableStream.t ->
      ?logger:Logger.t ->
        ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2 ->
          unit -> MessageConnection.t)
  =
  fun ~inputStream:(x114 : NodeJS.ReadableStream.t) ->
    fun ~outputStream:(x115 : NodeJS.WritableStream.t) ->
      fun ?logger:(x116 : Logger.t option) ->
        fun
          ?options:(x117 :
                     (ConnectionOptions.t, ConnectionStrategy.t) union2
                       option)
          ->
          fun () ->
            MessageConnection.t_of_js
              (let x123 = Ojs.global in
               Ojs.call (Ojs.get_prop_ascii x123 "createMessageConnection")
                 "apply"
                 [|x123;((let x118 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x118 "push"
                               [|(NodeJS.ReadableStream.t_to_js x114)|]);
                          ignore
                            (Ojs.call x118 "push"
                               [|(NodeJS.WritableStream.t_to_js x115)|]);
                          (match x116 with
                           | Some x122 ->
                               ignore
                                 (Ojs.call x118 "push"
                                    [|(Logger.t_to_js x122)|])
                           | None -> ());
                          (match x117 with
                           | Some x119 ->
                               ignore
                                 (Ojs.call x118 "push"
                                    [|(union2_to_js ConnectionOptions.t_to_js
                                         ConnectionStrategy.t_to_js x119)|])
                           | None -> ());
                          x118))|])