[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals
open Node_events
open Node_net

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_3 = [ `anonymous_interface_3 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_4 = [ `anonymous_interface_4 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type child_process_ChildProcess = [ `Child_process_ChildProcess ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('I, 'O, 'E) child_process_ChildProcessByStdio =
      [ `Child_process_ChildProcessByStdio of 'I * 'O * 'E
      | `Child_process_ChildProcess
      ]
      intf
    [@@js.custom
      { of_js = (fun _I _O _E -> Obj.magic)
      ; to_js = (fun _I _O _E -> Obj.magic)
      }]

    and child_process_ChildProcessWithoutNullStreams =
      [ `Child_process_ChildProcessWithoutNullStreams
      | `Child_process_ChildProcess
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_CommonOptions =
      [ `Child_process_CommonOptions | `Child_process_ProcessEnvOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_CommonSpawnOptions =
      [ `Child_process_CommonSpawnOptions
      | `Child_process_CommonOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecException = [ `Child_process_ExecException ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileException =
      (child_process_ExecException, ErrnoException.t) intersection2

    and child_process_ExecFileOptions =
      [ `Child_process_ExecFileOptions
      | `Child_process_CommonOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileOptionsWithBufferEncoding =
      [ `Child_process_ExecFileOptionsWithBufferEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecFileOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileOptionsWithOtherEncoding =
      [ `Child_process_ExecFileOptionsWithOtherEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecFileOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileOptionsWithStringEncoding =
      [ `Child_process_ExecFileOptionsWithStringEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecFileOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileSyncOptions =
      [ `Child_process_ExecFileSyncOptions
      | `Child_process_CommonOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileSyncOptionsWithBufferEncoding =
      [ `Child_process_ExecFileSyncOptionsWithBufferEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecFileSyncOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecFileSyncOptionsWithStringEncoding =
      [ `Child_process_ExecFileSyncOptionsWithStringEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecFileSyncOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecOptions =
      [ `Child_process_ExecOptions
      | `Child_process_CommonOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecOptionsWithBufferEncoding =
      [ `Child_process_ExecOptionsWithBufferEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecOptionsWithStringEncoding =
      [ `Child_process_ExecOptionsWithStringEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecSyncOptions =
      [ `Child_process_ExecSyncOptions
      | `Child_process_CommonOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecSyncOptionsWithBufferEncoding =
      [ `Child_process_ExecSyncOptionsWithBufferEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecSyncOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ExecSyncOptionsWithStringEncoding =
      [ `Child_process_ExecSyncOptionsWithStringEncoding
      | `Child_process_CommonOptions
      | `Child_process_ExecSyncOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ForkOptions =
      [ `Child_process_ForkOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_MessageOptions = [ `Child_process_MessageOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_MessagingOptions =
      [ `Child_process_MessagingOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_ProcessEnvOptions =
      [ `Child_process_ProcessEnvOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T child_process_PromiseWithChild =
      [ `Child_process_PromiseWithChild of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and child_process_SendHandle = (Net.Server.t, Net.Socket.t) union2

    and child_process_Serializable =
      untyped_object or_boolean or_string or_number

    and child_process_SerializationType =
      ([ `advanced [@js "advanced"]
       | `json [@js "json"]
       ]
      [@js.enum])

    and child_process_SpawnOptions =
      [ `Child_process_SpawnOptions
      | `Child_process_CommonOptions
      | `Child_process_CommonSpawnOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('Stdin, 'Stdout, 'Stderr) child_process_SpawnOptionsWithStdioTuple =
      [ `Child_process_SpawnOptionsWithStdioTuple of 'Stdin * 'Stdout * 'Stderr
      | `Child_process_CommonOptions
      | `Child_process_CommonSpawnOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      | `Child_process_SpawnOptions
      ]
      intf
    [@@js.custom
      { of_js = (fun _Stdin _Stdout _Stderr -> Obj.magic)
      ; to_js = (fun _Stdin _Stdout _Stderr -> Obj.magic)
      }]

    and child_process_SpawnOptionsWithoutStdio =
      [ `Child_process_SpawnOptionsWithoutStdio
      | `Child_process_CommonOptions
      | `Child_process_CommonSpawnOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      | `Child_process_SpawnOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_SpawnSyncOptions =
      [ `Child_process_SpawnSyncOptions
      | `Child_process_CommonOptions
      | `Child_process_CommonSpawnOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_SpawnSyncOptionsWithBufferEncoding =
      [ `Child_process_SpawnSyncOptionsWithBufferEncoding
      | `Child_process_CommonOptions
      | `Child_process_CommonSpawnOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      | `Child_process_SpawnSyncOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and child_process_SpawnSyncOptionsWithStringEncoding =
      [ `Child_process_SpawnSyncOptionsWithStringEncoding
      | `Child_process_CommonOptions
      | `Child_process_CommonSpawnOptions
      | `Child_process_MessagingOptions
      | `Child_process_ProcessEnvOptions
      | `Child_process_SpawnSyncOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T child_process_SpawnSyncReturns =
      [ `Child_process_SpawnSyncReturns of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and child_process_StdioNull =
      ( Node_stream.Stream.Stream.t
      , ([ `ignore [@js "ignore"] | `inherit_ [@js "inherit"] ][@js.enum]) )
      or_enum

    and child_process_StdioOptions =
      ( ( Node_stream.Stream.Stream.t
        , ([ `ignore [@js "ignore"]
           | `inherit_ [@js "inherit"]
           | `ipc [@js "ipc"]
           | `pipe [@js "pipe"]
           ]
          [@js.enum]) )
        or_enum
        or_number
        or_null_or_undefined
        list
      , ([ `ignore [@js "ignore"]
         | `inherit_ [@js "inherit"]
         | `pipe [@js "pipe"]
         ]
        [@js.enum]) )
      or_enum

    and child_process_StdioPipe =
      ([ `pipe [@js "pipe"] ][@js.enum]) or_null_or_undefined
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

  val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
    [@@js.get "encoding"]

  val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
    [@@js.set "encoding"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stdout : t -> Buffer.t [@@js.get "stdout"]

  val set_stdout : t -> Buffer.t -> unit [@@js.set "stdout"]

  val get_stderr : t -> Buffer.t [@@js.get "stderr"]

  val set_stderr : t -> Buffer.t -> unit [@@js.set "stderr"]
end

module AnonymousInterface3 : sig
  type t = anonymous_interface_3

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stdout : t -> string [@@js.get "stdout"]

  val set_stdout : t -> string -> unit [@@js.set "stdout"]

  val get_stderr : t -> string [@@js.get "stderr"]

  val set_stderr : t -> string -> unit [@@js.set "stderr"]
end

module AnonymousInterface4 : sig
  type t = anonymous_interface_4

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stdout : t -> Buffer.t or_string [@@js.get "stdout"]

  val set_stdout : t -> Buffer.t or_string -> unit [@@js.set "stdout"]

  val get_stderr : t -> Buffer.t or_string [@@js.get "stderr"]

  val set_stderr : t -> Buffer.t or_string -> unit [@@js.set "stderr"]
end

module Child_process : sig
  module Serializable : sig
    type t = child_process_Serializable

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SendHandle : sig
    type t = child_process_SendHandle

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ChildProcess : sig
    type t = child_process_ChildProcess

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_stdin : t -> Node_stream.Stream.Writable.t or_null
      [@@js.get "stdin"]

    val set_stdin : t -> Node_stream.Stream.Writable.t or_null -> unit
      [@@js.set "stdin"]

    val get_stdout : t -> Node_stream.Stream.Readable.t or_null
      [@@js.get "stdout"]

    val set_stdout : t -> Node_stream.Stream.Readable.t or_null -> unit
      [@@js.set "stdout"]

    val get_stderr : t -> Node_stream.Stream.Readable.t or_null
      [@@js.get "stderr"]

    val set_stderr : t -> Node_stream.Stream.Readable.t or_null -> unit
      [@@js.set "stderr"]

    val get_channel : t -> Node_stream.Stream.Pipe.t or_null
      [@@js.get "channel"]

    val get_stdio
      :  t
      -> Node_stream.Stream.Writable.t or_null
         * Node_stream.Stream.Readable.t or_null
         * Node_stream.Stream.Readable.t or_null
         * (Node_stream.Stream.Readable.t, Node_stream.Stream.Writable.t) union2
           or_null_or_undefined
         * (Node_stream.Stream.Readable.t, Node_stream.Stream.Writable.t) union2
           or_null_or_undefined
      [@@js.get "stdio"]

    val get_killed : t -> bool [@@js.get "killed"]

    val get_pid : t -> float [@@js.get "pid"]

    val get_connected : t -> bool [@@js.get "connected"]

    val get_exitCode : t -> float or_null [@@js.get "exitCode"]

    val get_signalCode : t -> Node_process.Process.Signals.t or_null
      [@@js.get "signalCode"]

    val get_spawnargs : t -> string list [@@js.get "spawnargs"]

    val get_spawnfile : t -> string [@@js.get "spawnfile"]

    val kill
      :  t
      -> ?signal:Node_process.Process.Signals.t or_number
      -> unit
      -> bool
      [@@js.call "kill"]

    val send
      :  t
      -> message:child_process_Serializable
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val send'
      :  t
      -> message:child_process_Serializable
      -> ?sendHandle:child_process_SendHandle
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val send''
      :  t
      -> message:child_process_Serializable
      -> ?sendHandle:child_process_SendHandle
      -> ?options:child_process_MessageOptions
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val unref : t -> unit [@@js.call "unref"]

    val ref : t -> unit [@@js.call "ref"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:child_process_Serializable
            -> sendHandle:child_process_SendHandle
            -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `close ][@js.enum])
      -> code:float or_null
      -> signal:Node_process.Process.Signals.t or_null
      -> bool
      [@@js.call "emit"]

    val emit'' : t -> event:([ `disconnect ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> code:float or_null
      -> signal:Node_process.Process.Signals.t or_null
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> message:child_process_Serializable
      -> sendHandle:child_process_SendHandle
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:child_process_Serializable
            -> sendHandle:child_process_SendHandle
            -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:child_process_Serializable
            -> sendHandle:child_process_SendHandle
            -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:child_process_Serializable
            -> sendHandle:child_process_SendHandle
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:float or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:child_process_Serializable
            -> sendHandle:child_process_SendHandle
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "ChildProcess"]

  module ChildProcessWithoutNullStreams : sig
    type t = child_process_ChildProcessWithoutNullStreams

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_stdin : t -> Node_stream.Stream.Writable.t [@@js.get "stdin"]

    val set_stdin : t -> Node_stream.Stream.Writable.t -> unit
      [@@js.set "stdin"]

    val get_stdout : t -> Node_stream.Stream.Readable.t [@@js.get "stdout"]

    val set_stdout : t -> Node_stream.Stream.Readable.t -> unit
      [@@js.set "stdout"]

    val get_stderr : t -> Node_stream.Stream.Readable.t [@@js.get "stderr"]

    val set_stderr : t -> Node_stream.Stream.Readable.t -> unit
      [@@js.set "stderr"]

    val get_stdio
      :  t
      -> Node_stream.Stream.Writable.t
         * Node_stream.Stream.Readable.t
         * Node_stream.Stream.Readable.t
         * (Node_stream.Stream.Readable.t, Node_stream.Stream.Writable.t) union2
           or_null_or_undefined
         * (Node_stream.Stream.Readable.t, Node_stream.Stream.Writable.t) union2
           or_null_or_undefined
      [@@js.get "stdio"]

    val cast : t -> child_process_ChildProcess [@@js.cast]
  end
  [@@js.scope "ChildProcessWithoutNullStreams"]

  module ChildProcessByStdio : sig
    type ('I, 'O, 'E) t = ('I, 'O, 'E) child_process_ChildProcessByStdio

    val t_to_js
      :  ('I -> Ojs.t)
      -> ('O -> Ojs.t)
      -> ('E -> Ojs.t)
      -> ('I, 'O, 'E) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'I)
      -> (Ojs.t -> 'O)
      -> (Ojs.t -> 'E)
      -> Ojs.t
      -> ('I, 'O, 'E) t

    val get_stdin : ('I, 'O, 'E) t -> 'I [@@js.get "stdin"]

    val set_stdin : ('I, 'O, 'E) t -> 'I -> unit [@@js.set "stdin"]

    val get_stdout : ('I, 'O, 'E) t -> 'O [@@js.get "stdout"]

    val set_stdout : ('I, 'O, 'E) t -> 'O -> unit [@@js.set "stdout"]

    val get_stderr : ('I, 'O, 'E) t -> 'E [@@js.get "stderr"]

    val set_stderr : ('I, 'O, 'E) t -> 'E -> unit [@@js.set "stderr"]

    val get_stdio
      :  ('I, 'O, 'E) t
      -> 'I
         * 'O
         * 'E
         * (Node_stream.Stream.Readable.t, Node_stream.Stream.Writable.t) union2
           or_null_or_undefined
         * (Node_stream.Stream.Readable.t, Node_stream.Stream.Writable.t) union2
           or_null_or_undefined
      [@@js.get "stdio"]

    val cast : ('I, 'O, 'E) t -> child_process_ChildProcess [@@js.cast]
  end
  [@@js.scope "ChildProcessByStdio"]

  module MessageOptions : sig
    type t = child_process_MessageOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_keepOpen : t -> bool [@@js.get "keepOpen"]

    val set_keepOpen : t -> bool -> unit [@@js.set "keepOpen"]
  end
  [@@js.scope "MessageOptions"]

  module StdioOptions : sig
    type t = child_process_StdioOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SerializationType : sig
    type t = child_process_SerializationType

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessagingOptions : sig
    type t = child_process_MessagingOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_serialization : t -> child_process_SerializationType
      [@@js.get "serialization"]

    val set_serialization : t -> child_process_SerializationType -> unit
      [@@js.set "serialization"]
  end
  [@@js.scope "MessagingOptions"]

  module ProcessEnvOptions : sig
    type t = child_process_ProcessEnvOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_uid : t -> float [@@js.get "uid"]

    val set_uid : t -> float -> unit [@@js.set "uid"]

    val get_gid : t -> float [@@js.get "gid"]

    val set_gid : t -> float -> unit [@@js.set "gid"]

    val get_cwd : t -> string [@@js.get "cwd"]

    val set_cwd : t -> string -> unit [@@js.set "cwd"]

    val get_env : t -> Node_process.Process.ProcessEnv.t [@@js.get "env"]

    val set_env : t -> Node_process.Process.ProcessEnv.t -> unit
      [@@js.set "env"]
  end
  [@@js.scope "ProcessEnvOptions"]

  module CommonOptions : sig
    type t = child_process_CommonOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_windowsHide : t -> bool [@@js.get "windowsHide"]

    val set_windowsHide : t -> bool -> unit [@@js.set "windowsHide"]

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]

    val cast : t -> child_process_ProcessEnvOptions [@@js.cast]
  end
  [@@js.scope "CommonOptions"]

  module CommonSpawnOptions : sig
    type t = child_process_CommonSpawnOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_argv0 : t -> string [@@js.get "argv0"]

    val set_argv0 : t -> string -> unit [@@js.set "argv0"]

    val get_stdio : t -> child_process_StdioOptions [@@js.get "stdio"]

    val set_stdio : t -> child_process_StdioOptions -> unit [@@js.set "stdio"]

    val get_shell : t -> bool or_string [@@js.get "shell"]

    val set_shell : t -> bool or_string -> unit [@@js.set "shell"]

    val get_windowsVerbatimArguments : t -> bool
      [@@js.get "windowsVerbatimArguments"]

    val set_windowsVerbatimArguments : t -> bool -> unit
      [@@js.set "windowsVerbatimArguments"]

    val cast : t -> child_process_CommonOptions [@@js.cast]

    val cast' : t -> child_process_MessagingOptions [@@js.cast]
  end
  [@@js.scope "CommonSpawnOptions"]

  module SpawnOptions : sig
    type t = child_process_SpawnOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_detached : t -> bool [@@js.get "detached"]

    val set_detached : t -> bool -> unit [@@js.set "detached"]

    val cast : t -> child_process_CommonSpawnOptions [@@js.cast]
  end
  [@@js.scope "SpawnOptions"]

  module SpawnOptionsWithoutStdio : sig
    type t = child_process_SpawnOptionsWithoutStdio

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_stdio
      :  t
      -> ( ([ `pipe [@js "pipe"] ][@js.enum]) or_null_or_undefined list
         , ([ `pipe [@js "pipe"] ][@js.enum]) )
         or_enum
      [@@js.get "stdio"]

    val set_stdio
      :  t
      -> ( ([ `pipe ][@js.enum]) or_null_or_undefined list
         , ([ `pipe ][@js.enum]) )
         or_enum
      -> unit
      [@@js.set "stdio"]

    val cast : t -> child_process_SpawnOptions [@@js.cast]
  end
  [@@js.scope "SpawnOptionsWithoutStdio"]

  module StdioNull : sig
    type t = child_process_StdioNull

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module StdioPipe : sig
    type t = child_process_StdioPipe

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SpawnOptionsWithStdioTuple : sig
    type ('Stdin, 'Stdout, 'Stderr) t =
      ('Stdin, 'Stdout, 'Stderr) child_process_SpawnOptionsWithStdioTuple

    val t_to_js
      :  ('Stdin -> Ojs.t)
      -> ('Stdout -> Ojs.t)
      -> ('Stderr -> Ojs.t)
      -> ('Stdin, 'Stdout, 'Stderr) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'Stdin)
      -> (Ojs.t -> 'Stdout)
      -> (Ojs.t -> 'Stderr)
      -> Ojs.t
      -> ('Stdin, 'Stdout, 'Stderr) t

    type ('Stdin, 'Stdout, 'Stderr) t_3 = ('Stdin, 'Stdout, 'Stderr) t

    val t_3_to_js
      :  ('Stdin -> Ojs.t)
      -> ('Stdout -> Ojs.t)
      -> ('Stderr -> Ojs.t)
      -> ('Stdin, 'Stdout, 'Stderr) t_3
      -> Ojs.t

    val t_3_of_js
      :  (Ojs.t -> 'Stdin)
      -> (Ojs.t -> 'Stdout)
      -> (Ojs.t -> 'Stderr)
      -> Ojs.t
      -> ('Stdin, 'Stdout, 'Stderr) t_3

    val get_stdio : ('Stdin, 'Stdout, 'Stderr) t -> 'Stdin * 'Stdout * 'Stderr
      [@@js.get "stdio"]

    val set_stdio
      :  ('Stdin, 'Stdout, 'Stderr) t
      -> 'Stdin * 'Stdout * 'Stderr
      -> unit
      [@@js.set "stdio"]

    val cast : ('Stdin, 'Stdout, 'Stderr) t -> child_process_SpawnOptions
      [@@js.cast]
  end
  [@@js.scope "SpawnOptionsWithStdioTuple"]

  val spawn
    :  command:string
    -> ?options:child_process_SpawnOptionsWithoutStdio
    -> unit
    -> child_process_ChildProcessWithoutNullStreams
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioPipe
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioPipe
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioNull
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioNull
         , child_process_StdioPipe
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioNull
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioNull
         , child_process_StdioPipe
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioNull
         , child_process_StdioNull
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , never or_null
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:
         ( child_process_StdioNull
         , child_process_StdioNull
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , never or_null
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> options:child_process_SpawnOptions
    -> child_process_ChildProcess
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> ?args:string list
    -> ?options:child_process_SpawnOptionsWithoutStdio
    -> unit
    -> child_process_ChildProcessWithoutNullStreams
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioPipe
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioPipe
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioNull
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioNull
         , child_process_StdioPipe
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioPipe
         , child_process_StdioNull
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioNull
         , child_process_StdioPipe
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioNull
         , child_process_StdioNull
         , child_process_StdioPipe )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , never or_null
       , Node_stream.Stream.Readable.t )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:
         ( child_process_StdioNull
         , child_process_StdioNull
         , child_process_StdioNull )
         child_process_SpawnOptionsWithStdioTuple
    -> ( never or_null
       , never or_null
       , never or_null )
       child_process_ChildProcessByStdio
    [@@js.global "spawn"]

  val spawn
    :  command:string
    -> args:string list
    -> options:child_process_SpawnOptions
    -> child_process_ChildProcess
    [@@js.global "spawn"]

  module ExecOptions : sig
    type t = child_process_ExecOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_shell : t -> string [@@js.get "shell"]

    val set_shell : t -> string -> unit [@@js.set "shell"]

    val get_maxBuffer : t -> float [@@js.get "maxBuffer"]

    val set_maxBuffer : t -> float -> unit [@@js.set "maxBuffer"]

    val get_killSignal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_killSignal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val cast : t -> child_process_CommonOptions [@@js.cast]
  end
  [@@js.scope "ExecOptions"]

  module ExecOptionsWithStringEncoding : sig
    type t = child_process_ExecOptionsWithStringEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_ExecOptions [@@js.cast]
  end
  [@@js.scope "ExecOptionsWithStringEncoding"]

  module ExecOptionsWithBufferEncoding : sig
    type t = child_process_ExecOptionsWithBufferEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t or_null [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> child_process_ExecOptions [@@js.cast]
  end
  [@@js.scope "ExecOptionsWithBufferEncoding"]

  module ExecException : sig
    type t = child_process_ExecException

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_cmd : t -> string [@@js.get "cmd"]

    val set_cmd : t -> string -> unit [@@js.set "cmd"]

    val get_killed : t -> bool [@@js.get "killed"]

    val set_killed : t -> bool -> unit [@@js.set "killed"]

    val get_code : t -> float [@@js.get "code"]

    val set_code : t -> float -> unit [@@js.set "code"]

    val get_signal : t -> Node_process.Process.Signals.t [@@js.get "signal"]

    val set_signal : t -> Node_process.Process.Signals.t -> unit
      [@@js.set "signal"]

    val cast : t -> Error.t [@@js.cast]
  end
  [@@js.scope "ExecException"]

  val exec
    :  command:string
    -> ?callback:
         (error:child_process_ExecException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> unit
    -> child_process_ChildProcess
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:(anonymous_interface_1, child_process_ExecOptions) intersection2
    -> ?callback:
         (error:child_process_ExecException or_null
          -> stdout:Buffer.t
          -> stderr:Buffer.t
          -> unit)
    -> unit
    -> child_process_ChildProcess
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:(anonymous_interface_0, child_process_ExecOptions) intersection2
    -> ?callback:
         (error:child_process_ExecException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> unit
    -> child_process_ChildProcess
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:(anonymous_interface_0, child_process_ExecOptions) intersection2
    -> ?callback:
         (error:child_process_ExecException or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> unit
    -> child_process_ChildProcess
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:child_process_ExecOptions
    -> ?callback:
         (error:child_process_ExecException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> unit
    -> child_process_ChildProcess
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:
         ( Node_fs.Fs.BaseEncodingOptions.t
         , child_process_ExecOptions )
         intersection2
         or_null_or_undefined
    -> ?callback:
         (error:child_process_ExecException or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> unit
    -> child_process_ChildProcess
    [@@js.global "exec"]

  module PromiseWithChild : sig
    type 'T t = 'T child_process_PromiseWithChild

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_child : 'T t -> child_process_ChildProcess [@@js.get "child"]

    val set_child : 'T t -> child_process_ChildProcess -> unit
      [@@js.set "child"]

    val cast : 'T t -> 'T Promise.t [@@js.cast]
  end
  [@@js.scope "PromiseWithChild"]

  module Exec : sig
    val __promisify__
      :  command:string
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> options:
           (anonymous_interface_1, child_process_ExecOptions) intersection2
      -> anonymous_interface_2 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> options:
           (anonymous_interface_0, child_process_ExecOptions) intersection2
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> options:child_process_ExecOptions
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> ?options:
           ( Node_fs.Fs.BaseEncodingOptions.t
           , child_process_ExecOptions )
           intersection2
           or_null
      -> unit
      -> anonymous_interface_4 child_process_PromiseWithChild
      [@@js.global "__promisify__"]
  end
  [@@js.scope "exec"]

  module ExecFileOptions : sig
    type t = child_process_ExecFileOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxBuffer : t -> float [@@js.get "maxBuffer"]

    val set_maxBuffer : t -> float -> unit [@@js.set "maxBuffer"]

    val get_killSignal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_killSignal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_windowsVerbatimArguments : t -> bool
      [@@js.get "windowsVerbatimArguments"]

    val set_windowsVerbatimArguments : t -> bool -> unit
      [@@js.set "windowsVerbatimArguments"]

    val get_shell : t -> bool or_string [@@js.get "shell"]

    val set_shell : t -> bool or_string -> unit [@@js.set "shell"]

    val cast : t -> child_process_CommonOptions [@@js.cast]
  end
  [@@js.scope "ExecFileOptions"]

  module ExecFileOptionsWithStringEncoding : sig
    type t = child_process_ExecFileOptionsWithStringEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_ExecFileOptions [@@js.cast]
  end
  [@@js.scope "ExecFileOptionsWithStringEncoding"]

  module ExecFileOptionsWithBufferEncoding : sig
    type t = child_process_ExecFileOptionsWithBufferEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> child_process_ExecFileOptions [@@js.cast]
  end
  [@@js.scope "ExecFileOptionsWithBufferEncoding"]

  module ExecFileOptionsWithOtherEncoding : sig
    type t = child_process_ExecFileOptionsWithOtherEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_ExecFileOptions [@@js.cast]
  end
  [@@js.scope "ExecFileOptionsWithOtherEncoding"]

  module ExecFileException : sig
    type t = child_process_ExecFileException

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val execFile : file:string -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> options:
         ( Node_fs.Fs.BaseEncodingOptions.t
         , child_process_ExecFileOptions )
         intersection2
         or_null_or_undefined
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> ?args:string list or_null
    -> unit
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:
         ( Node_fs.Fs.BaseEncodingOptions.t
         , child_process_ExecFileOptions )
         intersection2
         or_null_or_undefined
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> options:child_process_ExecFileOptionsWithBufferEncoding
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:Buffer.t
          -> stderr:Buffer.t
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:child_process_ExecFileOptionsWithBufferEncoding
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:Buffer.t
          -> stderr:Buffer.t
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> options:child_process_ExecFileOptionsWithStringEncoding
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:child_process_ExecFileOptionsWithStringEncoding
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> options:child_process_ExecFileOptionsWithOtherEncoding
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:child_process_ExecFileOptionsWithOtherEncoding
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> options:child_process_ExecFileOptions
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:child_process_ExecFileOptions
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> options:
         ( Node_fs.Fs.BaseEncodingOptions.t
         , child_process_ExecFileOptions )
         intersection2
         or_null_or_undefined
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
         or_null_or_undefined
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  val execFile
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:
         ( Node_fs.Fs.BaseEncodingOptions.t
         , child_process_ExecFileOptions )
         intersection2
         or_null_or_undefined
    -> callback:
         (error:child_process_ExecFileException or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
         or_null_or_undefined
    -> child_process_ChildProcess
    [@@js.global "execFile"]

  module ExecFile : sig
    val __promisify__
      :  file:string
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:child_process_ExecFileOptionsWithBufferEncoding
      -> anonymous_interface_2 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:child_process_ExecFileOptionsWithBufferEncoding
      -> anonymous_interface_2 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:child_process_ExecFileOptionsWithStringEncoding
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:child_process_ExecFileOptionsWithStringEncoding
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:child_process_ExecFileOptionsWithOtherEncoding
      -> anonymous_interface_4 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:child_process_ExecFileOptionsWithOtherEncoding
      -> anonymous_interface_4 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:child_process_ExecFileOptions
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:child_process_ExecFileOptions
      -> anonymous_interface_3 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:
           ( Node_fs.Fs.BaseEncodingOptions.t
           , child_process_ExecFileOptions )
           intersection2
           or_null_or_undefined
      -> anonymous_interface_4 child_process_PromiseWithChild
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:
           ( Node_fs.Fs.BaseEncodingOptions.t
           , child_process_ExecFileOptions )
           intersection2
           or_null_or_undefined
      -> anonymous_interface_4 child_process_PromiseWithChild
      [@@js.global "__promisify__"]
  end
  [@@js.scope "execFile"]

  module ForkOptions : sig
    type t = child_process_ForkOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_execPath : t -> string [@@js.get "execPath"]

    val set_execPath : t -> string -> unit [@@js.set "execPath"]

    val get_execArgv : t -> string list [@@js.get "execArgv"]

    val set_execArgv : t -> string list -> unit [@@js.set "execArgv"]

    val get_silent : t -> bool [@@js.get "silent"]

    val set_silent : t -> bool -> unit [@@js.set "silent"]

    val get_stdio : t -> child_process_StdioOptions [@@js.get "stdio"]

    val set_stdio : t -> child_process_StdioOptions -> unit [@@js.set "stdio"]

    val get_detached : t -> bool [@@js.get "detached"]

    val set_detached : t -> bool -> unit [@@js.set "detached"]

    val get_windowsVerbatimArguments : t -> bool
      [@@js.get "windowsVerbatimArguments"]

    val set_windowsVerbatimArguments : t -> bool -> unit
      [@@js.set "windowsVerbatimArguments"]

    val cast : t -> child_process_ProcessEnvOptions [@@js.cast]

    val cast' : t -> child_process_MessagingOptions [@@js.cast]
  end
  [@@js.scope "ForkOptions"]

  val fork
    :  modulePath:string
    -> ?options:child_process_ForkOptions
    -> unit
    -> child_process_ChildProcess
    [@@js.global "fork"]

  val fork
    :  modulePath:string
    -> ?args:string list
    -> ?options:child_process_ForkOptions
    -> unit
    -> child_process_ChildProcess
    [@@js.global "fork"]

  module SpawnSyncOptions : sig
    type t = child_process_SpawnSyncOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> ArrayBufferView.t or_string [@@js.get "input"]

    val set_input : t -> ArrayBufferView.t or_string -> unit [@@js.set "input"]

    val get_killSignal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_killSignal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_maxBuffer : t -> float [@@js.get "maxBuffer"]

    val set_maxBuffer : t -> float -> unit [@@js.set "maxBuffer"]

    val get_encoding
      :  t
      -> (BufferEncoding.t, ([ `buffer [@js "buffer"] ][@js.enum])) or_enum
         or_null
      [@@js.get "encoding"]

    val set_encoding
      :  t
      -> (BufferEncoding.t, ([ `buffer ][@js.enum])) or_enum or_null
      -> unit
      [@@js.set "encoding"]

    val cast : t -> child_process_CommonSpawnOptions [@@js.cast]
  end
  [@@js.scope "SpawnSyncOptions"]

  module SpawnSyncOptionsWithStringEncoding : sig
    type t = child_process_SpawnSyncOptionsWithStringEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_SpawnSyncOptions [@@js.cast]
  end
  [@@js.scope "SpawnSyncOptionsWithStringEncoding"]

  module SpawnSyncOptionsWithBufferEncoding : sig
    type t = child_process_SpawnSyncOptionsWithBufferEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> child_process_SpawnSyncOptions [@@js.cast]
  end
  [@@js.scope "SpawnSyncOptionsWithBufferEncoding"]

  module SpawnSyncReturns : sig
    type 'T t = 'T child_process_SpawnSyncReturns

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_pid : 'T t -> float [@@js.get "pid"]

    val set_pid : 'T t -> float -> unit [@@js.set "pid"]

    val get_output : 'T t -> string list [@@js.get "output"]

    val set_output : 'T t -> string list -> unit [@@js.set "output"]

    val get_stdout : 'T t -> 'T [@@js.get "stdout"]

    val set_stdout : 'T t -> 'T -> unit [@@js.set "stdout"]

    val get_stderr : 'T t -> 'T [@@js.get "stderr"]

    val set_stderr : 'T t -> 'T -> unit [@@js.set "stderr"]

    val get_status : 'T t -> float or_null [@@js.get "status"]

    val set_status : 'T t -> float or_null -> unit [@@js.set "status"]

    val get_signal : 'T t -> Node_process.Process.Signals.t or_null
      [@@js.get "signal"]

    val set_signal : 'T t -> Node_process.Process.Signals.t or_null -> unit
      [@@js.set "signal"]

    val get_error : 'T t -> Error.t [@@js.get "error"]

    val set_error : 'T t -> Error.t -> unit [@@js.set "error"]
  end
  [@@js.scope "SpawnSyncReturns"]

  val spawnSync : command:string -> Buffer.t child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  val spawnSync
    :  command:string
    -> ?options:child_process_SpawnSyncOptionsWithStringEncoding
    -> unit
    -> string child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  val spawnSync
    :  command:string
    -> ?options:child_process_SpawnSyncOptionsWithBufferEncoding
    -> unit
    -> Buffer.t child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  val spawnSync
    :  command:string
    -> ?options:child_process_SpawnSyncOptions
    -> unit
    -> Buffer.t child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  val spawnSync
    :  command:string
    -> ?args:string list
    -> ?options:child_process_SpawnSyncOptionsWithStringEncoding
    -> unit
    -> string child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  val spawnSync
    :  command:string
    -> ?args:string list
    -> ?options:child_process_SpawnSyncOptionsWithBufferEncoding
    -> unit
    -> Buffer.t child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  val spawnSync
    :  command:string
    -> ?args:string list
    -> ?options:child_process_SpawnSyncOptions
    -> unit
    -> Buffer.t child_process_SpawnSyncReturns
    [@@js.global "spawnSync"]

  module ExecSyncOptions : sig
    type t = child_process_ExecSyncOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> Uint8Array.t or_string [@@js.get "input"]

    val set_input : t -> Uint8Array.t or_string -> unit [@@js.set "input"]

    val get_stdio : t -> child_process_StdioOptions [@@js.get "stdio"]

    val set_stdio : t -> child_process_StdioOptions -> unit [@@js.set "stdio"]

    val get_shell : t -> string [@@js.get "shell"]

    val set_shell : t -> string -> unit [@@js.set "shell"]

    val get_killSignal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_killSignal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_maxBuffer : t -> float [@@js.get "maxBuffer"]

    val set_maxBuffer : t -> float -> unit [@@js.set "maxBuffer"]

    val get_encoding
      :  t
      -> (BufferEncoding.t, ([ `buffer [@js "buffer"] ][@js.enum])) or_enum
         or_null
      [@@js.get "encoding"]

    val set_encoding
      :  t
      -> (BufferEncoding.t, ([ `buffer ][@js.enum])) or_enum or_null
      -> unit
      [@@js.set "encoding"]

    val cast : t -> child_process_CommonOptions [@@js.cast]
  end
  [@@js.scope "ExecSyncOptions"]

  module ExecSyncOptionsWithStringEncoding : sig
    type t = child_process_ExecSyncOptionsWithStringEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_ExecSyncOptions [@@js.cast]
  end
  [@@js.scope "ExecSyncOptionsWithStringEncoding"]

  module ExecSyncOptionsWithBufferEncoding : sig
    type t = child_process_ExecSyncOptionsWithBufferEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> child_process_ExecSyncOptions [@@js.cast]
  end
  [@@js.scope "ExecSyncOptionsWithBufferEncoding"]

  val execSync : command:string -> Buffer.t [@@js.global "execSync"]

  val execSync
    :  command:string
    -> ?options:child_process_ExecSyncOptionsWithStringEncoding
    -> unit
    -> string
    [@@js.global "execSync"]

  val execSync
    :  command:string
    -> ?options:child_process_ExecSyncOptionsWithBufferEncoding
    -> unit
    -> Buffer.t
    [@@js.global "execSync"]

  val execSync
    :  command:string
    -> ?options:child_process_ExecSyncOptions
    -> unit
    -> Buffer.t
    [@@js.global "execSync"]

  module ExecFileSyncOptions : sig
    type t = child_process_ExecFileSyncOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> ArrayBufferView.t or_string [@@js.get "input"]

    val set_input : t -> ArrayBufferView.t or_string -> unit [@@js.set "input"]

    val get_stdio : t -> child_process_StdioOptions [@@js.get "stdio"]

    val set_stdio : t -> child_process_StdioOptions -> unit [@@js.set "stdio"]

    val get_killSignal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_killSignal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_maxBuffer : t -> float [@@js.get "maxBuffer"]

    val set_maxBuffer : t -> float -> unit [@@js.set "maxBuffer"]

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_shell : t -> bool or_string [@@js.get "shell"]

    val set_shell : t -> bool or_string -> unit [@@js.set "shell"]

    val cast : t -> child_process_CommonOptions [@@js.cast]
  end
  [@@js.scope "ExecFileSyncOptions"]

  module ExecFileSyncOptionsWithStringEncoding : sig
    type t = child_process_ExecFileSyncOptionsWithStringEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_ExecFileSyncOptions [@@js.cast]
  end
  [@@js.scope "ExecFileSyncOptionsWithStringEncoding"]

  module ExecFileSyncOptionsWithBufferEncoding : sig
    type t = child_process_ExecFileSyncOptionsWithBufferEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> child_process_ExecFileSyncOptions [@@js.cast]
  end
  [@@js.scope "ExecFileSyncOptionsWithBufferEncoding"]

  val execFileSync : command:string -> Buffer.t [@@js.global "execFileSync"]

  val execFileSync
    :  command:string
    -> ?options:child_process_ExecFileSyncOptionsWithStringEncoding
    -> unit
    -> string
    [@@js.global "execFileSync"]

  val execFileSync
    :  command:string
    -> ?options:child_process_ExecFileSyncOptionsWithBufferEncoding
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]

  val execFileSync
    :  command:string
    -> ?options:child_process_ExecFileSyncOptions
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]

  val execFileSync
    :  command:string
    -> ?args:string list
    -> ?options:child_process_ExecFileSyncOptionsWithStringEncoding
    -> unit
    -> string
    [@@js.global "execFileSync"]

  val execFileSync
    :  command:string
    -> ?args:string list
    -> ?options:child_process_ExecFileSyncOptionsWithBufferEncoding
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]

  val execFileSync
    :  command:string
    -> ?args:string list
    -> ?options:child_process_ExecFileSyncOptions
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]
end
[@@js.scope Import.child_process]
