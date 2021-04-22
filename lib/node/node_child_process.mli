[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals
open Node_events
open Node_net

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

  val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
    [@@js.get "encoding"]

  val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
    [@@js.set "encoding"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stdout : t -> Buffer.t [@@js.get "stdout"]

  val set_stdout : t -> Buffer.t -> unit [@@js.set "stdout"]

  val get_stderr : t -> Buffer.t [@@js.get "stderr"]

  val set_stderr : t -> Buffer.t -> unit [@@js.set "stderr"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stdout : t -> string [@@js.get "stdout"]

  val set_stdout : t -> string -> unit [@@js.set "stdout"]

  val get_stderr : t -> string [@@js.get "stderr"]

  val set_stderr : t -> string -> unit [@@js.set "stderr"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stdout : t -> Buffer.t or_string [@@js.get "stdout"]

  val set_stdout : t -> Buffer.t or_string -> unit [@@js.set "stdout"]

  val get_stderr : t -> Buffer.t or_string [@@js.get "stderr"]

  val set_stderr : t -> Buffer.t or_string -> unit [@@js.set "stderr"]
end

module Child_process : sig
  module Serializable : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SendHandle : sig
    type t = (Net.Server.t, Net.Socket.t) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessageOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_keep_open : t -> bool [@@js.get "keepOpen"]

    val set_keep_open : t -> bool -> unit [@@js.set "keepOpen"]
  end
  [@@js.scope "MessageOptions"]

  module ChildProcess : sig
    type t

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

    val get_pid : t -> int [@@js.get "pid"]

    val get_connected : t -> bool [@@js.get "connected"]

    val get_exit_code : t -> int or_null [@@js.get "exitCode"]

    val get_signal_code : t -> Node_process.Process.Signals.t or_null
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
      -> message:Serializable.t
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val send'
      :  t
      -> message:Serializable.t
      -> ?send_handle:SendHandle.t
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val send''
      :  t
      -> message:Serializable.t
      -> ?send_handle:SendHandle.t
      -> ?options:MessageOptions.t
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val unref : t -> unit [@@js.call "unref"]

    val ref : t -> unit [@@js.call "ref"]

    val add_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(message:Serializable.t -> send_handle:SendHandle.t -> unit)
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
      -> code:int or_null
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
      -> code:int or_null
      -> signal:Node_process.Process.Signals.t or_null
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> message:Serializable.t
      -> send_handle:SendHandle.t
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
           (code:int or_null
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
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(message:Serializable.t -> send_handle:SendHandle.t -> unit)
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
           (code:int or_null
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
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(message:Serializable.t -> send_handle:SendHandle.t -> unit)
      -> t
      [@@js.call "once"]

    val prepend_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(message:Serializable.t -> send_handle:SendHandle.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:
           (code:int or_null
            -> signal:Node_process.Process.Signals.t or_null
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(message:Serializable.t -> send_handle:SendHandle.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "ChildProcess"]

  module ChildProcessWithoutNullStreams : sig
    type t

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

    val cast : t -> ChildProcess.t [@@js.cast]
  end
  [@@js.scope "ChildProcessWithoutNullStreams"]

  module ChildProcessByStdio : sig
    type ('I, 'O, 'E) t

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

    val cast : ('I, 'O, 'E) t -> ChildProcess.t [@@js.cast]
  end
  [@@js.scope "ChildProcessByStdio"]

  module StdioOptions : sig
    type t =
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

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SerializationType : sig
    type t =
      ([ `advanced [@js "advanced"]
       | `json [@js "json"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessagingOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_serialization : t -> SerializationType.t [@@js.get "serialization"]

    val set_serialization : t -> SerializationType.t -> unit
      [@@js.set "serialization"]
  end
  [@@js.scope "MessagingOptions"]

  module ProcessEnvOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_uid : t -> int [@@js.get "uid"]

    val set_uid : t -> int -> unit [@@js.set "uid"]

    val get_gid : t -> int [@@js.get "gid"]

    val set_gid : t -> int -> unit [@@js.set "gid"]

    val get_cwd : t -> string [@@js.get "cwd"]

    val set_cwd : t -> string -> unit [@@js.set "cwd"]

    val get_env : t -> Node_process.Process.ProcessEnv.t [@@js.get "env"]

    val set_env : t -> Node_process.Process.ProcessEnv.t -> unit
      [@@js.set "env"]
  end
  [@@js.scope "ProcessEnvOptions"]

  module CommonOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_windows_hide : t -> bool [@@js.get "windowsHide"]

    val set_windows_hide : t -> bool -> unit [@@js.set "windowsHide"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val cast : t -> ProcessEnvOptions.t [@@js.cast]
  end
  [@@js.scope "CommonOptions"]

  module CommonSpawnOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_argv0 : t -> string [@@js.get "argv0"]

    val set_argv0 : t -> string -> unit [@@js.set "argv0"]

    val get_stdio : t -> StdioOptions.t [@@js.get "stdio"]

    val set_stdio : t -> StdioOptions.t -> unit [@@js.set "stdio"]

    val get_shell : t -> bool or_string [@@js.get "shell"]

    val set_shell : t -> bool or_string -> unit [@@js.set "shell"]

    val get_windows_verbatim_arguments : t -> bool
      [@@js.get "windowsVerbatimArguments"]

    val set_windows_verbatim_arguments : t -> bool -> unit
      [@@js.set "windowsVerbatimArguments"]

    val cast : t -> CommonOptions.t [@@js.cast]

    val cast' : t -> MessagingOptions.t [@@js.cast]
  end
  [@@js.scope "CommonSpawnOptions"]

  module SpawnOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_detached : t -> bool [@@js.get "detached"]

    val set_detached : t -> bool -> unit [@@js.set "detached"]

    val cast : t -> CommonSpawnOptions.t [@@js.cast]
  end
  [@@js.scope "SpawnOptions"]

  module SpawnOptionsWithoutStdio : sig
    type t

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

    val cast : t -> SpawnOptions.t [@@js.cast]
  end
  [@@js.scope "SpawnOptionsWithoutStdio"]

  module StdioNull : sig
    type t =
      ( Node_stream.Stream.Stream.t
      , ([ `ignore [@js "ignore"] | `inherit_ [@js "inherit"] ][@js.enum]) )
      or_enum

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module StdioPipe : sig
    type t = ([ `pipe [@js "pipe"] ][@js.enum]) or_null_or_undefined

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SpawnOptionsWithStdioTuple : sig
    type ('Stdin, 'Stdout, 'Stderr) t

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

    val get_stdio : ('Stdin, 'Stdout, 'Stderr) t -> 'Stdin * 'Stdout * 'Stderr
      [@@js.get "stdio"]

    val set_stdio
      :  ('Stdin, 'Stdout, 'Stderr) t
      -> 'Stdin * 'Stdout * 'Stderr
      -> unit
      [@@js.set "stdio"]

    val cast : ('Stdin, 'Stdout, 'Stderr) t -> SpawnOptions.t [@@js.cast]
  end
  [@@js.scope "SpawnOptionsWithStdioTuple"]

  val spawn
    :  command:string
    -> ?args:string list
    -> ?options:SpawnOptionsWithoutStdio.t
    -> unit
    -> ChildProcessWithoutNullStreams.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioPipe.t, StdioPipe.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioPipe.t, StdioPipe.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , never or_null )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioPipe.t, StdioNull.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioNull.t, StdioPipe.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioPipe.t, StdioNull.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , never or_null )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioNull.t, StdioPipe.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , never or_null )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioNull.t, StdioNull.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( never or_null
       , never or_null
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> options:
         (StdioNull.t, StdioNull.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> (never or_null, never or_null, never or_null) ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn' : command:string -> options:SpawnOptions.t -> ChildProcess.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> ?args:string list
    -> ?options:SpawnOptionsWithoutStdio.t
    -> unit
    -> ChildProcessWithoutNullStreams.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioPipe.t, StdioPipe.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioPipe.t, StdioPipe.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , Node_stream.Stream.Readable.t
       , never or_null )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioPipe.t, StdioNull.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioNull.t, StdioPipe.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioPipe.t, StdioNull.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> ( Node_stream.Stream.Writable.t
       , never or_null
       , never or_null )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioNull.t, StdioPipe.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> ( never or_null
       , Node_stream.Stream.Readable.t
       , never or_null )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioNull.t, StdioNull.t, StdioPipe.t) SpawnOptionsWithStdioTuple.t
    -> ( never or_null
       , never or_null
       , Node_stream.Stream.Readable.t )
       ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:
         (StdioNull.t, StdioNull.t, StdioNull.t) SpawnOptionsWithStdioTuple.t
    -> (never or_null, never or_null, never or_null) ChildProcessByStdio.t
    [@@js.global "spawn"]

  val spawn'
    :  command:string
    -> args:string list
    -> options:SpawnOptions.t
    -> ChildProcess.t
    [@@js.global "spawn"]

  module ExecOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_shell : t -> string [@@js.get "shell"]

    val set_shell : t -> string -> unit [@@js.set "shell"]

    val get_max_buffer : t -> int [@@js.get "maxBuffer"]

    val set_max_buffer : t -> int -> unit [@@js.set "maxBuffer"]

    val get_kill_signal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_kill_signal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val cast : t -> CommonOptions.t [@@js.cast]
  end
  [@@js.scope "ExecOptions"]

  module ExecOptionsWithStringEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> ExecOptions.t [@@js.cast]
  end
  [@@js.scope "ExecOptionsWithStringEncoding"]

  module ExecOptionsWithBufferEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t or_null [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> ExecOptions.t [@@js.cast]
  end
  [@@js.scope "ExecOptionsWithBufferEncoding"]

  module ExecException : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_cmd : t -> string [@@js.get "cmd"]

    val set_cmd : t -> string -> unit [@@js.set "cmd"]

    val get_killed : t -> bool [@@js.get "killed"]

    val set_killed : t -> bool -> unit [@@js.set "killed"]

    val get_code : t -> int [@@js.get "code"]

    val set_code : t -> int -> unit [@@js.set "code"]

    val get_signal : t -> Node_process.Process.Signals.t [@@js.get "signal"]

    val set_signal : t -> Node_process.Process.Signals.t -> unit
      [@@js.set "signal"]

    val cast : t -> Error.t [@@js.cast]
  end
  [@@js.scope "ExecException"]

  val exec
    :  command:string
    -> ?callback:
         (error:ExecException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> unit
    -> ChildProcess.t
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:(AnonymousInterface1.t, ExecOptions.t) intersection2
    -> ?callback:
         (error:ExecException.t or_null
          -> stdout:Buffer.t
          -> stderr:Buffer.t
          -> unit)
    -> unit
    -> ChildProcess.t
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:(AnonymousInterface0.t, ExecOptions.t) intersection2
    -> ?callback:
         (error:ExecException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> unit
    -> ChildProcess.t
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:(AnonymousInterface0.t, ExecOptions.t) intersection2
    -> ?callback:
         (error:ExecException.t or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> unit
    -> ChildProcess.t
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:ExecOptions.t
    -> ?callback:
         (error:ExecException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> unit
    -> ChildProcess.t
    [@@js.global "exec"]

  val exec
    :  command:string
    -> options:
         (Node_fs.Fs.BaseEncodingOptions.t, ExecOptions.t) intersection2
         or_null_or_undefined
    -> ?callback:
         (error:ExecException.t or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> unit
    -> ChildProcess.t
    [@@js.global "exec"]

  module PromiseWithChild : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_child : 'T t -> ChildProcess.t [@@js.get "child"]

    val set_child : 'T t -> ChildProcess.t -> unit [@@js.set "child"]

    val cast : 'T t -> 'T Promise.t [@@js.cast]
  end
  [@@js.scope "PromiseWithChild"]

  module Exec : sig
    val __promisify__
      :  command:string
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> options:(AnonymousInterface1.t, ExecOptions.t) intersection2
      -> AnonymousInterface2.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> options:(AnonymousInterface0.t, ExecOptions.t) intersection2
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> options:ExecOptions.t
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  command:string
      -> ?options:
           (Node_fs.Fs.BaseEncodingOptions.t, ExecOptions.t) intersection2
           or_null
      -> unit
      -> AnonymousInterface4.t PromiseWithChild.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "exec"]

  module ExecFileOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_max_buffer : t -> int [@@js.get "maxBuffer"]

    val set_max_buffer : t -> int -> unit [@@js.set "maxBuffer"]

    val get_kill_signal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_kill_signal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_windows_verbatim_arguments : t -> bool
      [@@js.get "windowsVerbatimArguments"]

    val set_windows_verbatim_arguments : t -> bool -> unit
      [@@js.set "windowsVerbatimArguments"]

    val get_shell : t -> bool or_string [@@js.get "shell"]

    val set_shell : t -> bool or_string -> unit [@@js.set "shell"]

    val cast : t -> CommonOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileOptions"]

  module ExecFileOptionsWithStringEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> ExecFileOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileOptionsWithStringEncoding"]

  module ExecFileOptionsWithBufferEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> ExecFileOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileOptionsWithBufferEncoding"]

  module ExecFileOptionsWithOtherEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> ExecFileOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileOptionsWithOtherEncoding"]

  module ExecFileException : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val exec_file : file:string -> ChildProcess.t [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> options:
         (Node_fs.Fs.BaseEncodingOptions.t, ExecFileOptions.t) intersection2
         or_null_or_undefined
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> ?args:string list or_null
    -> unit
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:
         (Node_fs.Fs.BaseEncodingOptions.t, ExecFileOptions.t) intersection2
         or_null_or_undefined
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> options:ExecFileOptionsWithBufferEncoding.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:Buffer.t
          -> stderr:Buffer.t
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:ExecFileOptionsWithBufferEncoding.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:Buffer.t
          -> stderr:Buffer.t
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> options:ExecFileOptionsWithStringEncoding.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:ExecFileOptionsWithStringEncoding.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> options:ExecFileOptionsWithOtherEncoding.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:ExecFileOptionsWithOtherEncoding.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> options:ExecFileOptions.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:ExecFileOptions.t
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:string
          -> stderr:string
          -> unit)
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> options:
         (Node_fs.Fs.BaseEncodingOptions.t, ExecFileOptions.t) intersection2
         or_null_or_undefined
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
         or_null_or_undefined
    -> ChildProcess.t
    [@@js.global "execFile"]

  val exec_file
    :  file:string
    -> args:string list or_null_or_undefined
    -> options:
         (Node_fs.Fs.BaseEncodingOptions.t, ExecFileOptions.t) intersection2
         or_null_or_undefined
    -> callback:
         (error:ExecFileException.t or_null
          -> stdout:Buffer.t or_string
          -> stderr:Buffer.t or_string
          -> unit)
         or_null_or_undefined
    -> ChildProcess.t
    [@@js.global "execFile"]

  module ExecFile : sig
    val __promisify__ : file:string -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:ExecFileOptionsWithBufferEncoding.t
      -> AnonymousInterface2.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:ExecFileOptionsWithBufferEncoding.t
      -> AnonymousInterface2.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:ExecFileOptionsWithStringEncoding.t
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:ExecFileOptionsWithStringEncoding.t
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:ExecFileOptionsWithOtherEncoding.t
      -> AnonymousInterface4.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:ExecFileOptionsWithOtherEncoding.t
      -> AnonymousInterface4.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:ExecFileOptions.t
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:ExecFileOptions.t
      -> AnonymousInterface3.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> options:
           (Node_fs.Fs.BaseEncodingOptions.t, ExecFileOptions.t) intersection2
           or_null_or_undefined
      -> AnonymousInterface4.t PromiseWithChild.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  file:string
      -> args:string list or_null_or_undefined
      -> options:
           (Node_fs.Fs.BaseEncodingOptions.t, ExecFileOptions.t) intersection2
           or_null_or_undefined
      -> AnonymousInterface4.t PromiseWithChild.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "execFile"]

  module ForkOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_exec_path : t -> string [@@js.get "execPath"]

    val set_exec_path : t -> string -> unit [@@js.set "execPath"]

    val get_exec_argv : t -> string list [@@js.get "execArgv"]

    val set_exec_argv : t -> string list -> unit [@@js.set "execArgv"]

    val get_silent : t -> bool [@@js.get "silent"]

    val set_silent : t -> bool -> unit [@@js.set "silent"]

    val get_stdio : t -> StdioOptions.t [@@js.get "stdio"]

    val set_stdio : t -> StdioOptions.t -> unit [@@js.set "stdio"]

    val get_detached : t -> bool [@@js.get "detached"]

    val set_detached : t -> bool -> unit [@@js.set "detached"]

    val get_windows_verbatim_arguments : t -> bool
      [@@js.get "windowsVerbatimArguments"]

    val set_windows_verbatim_arguments : t -> bool -> unit
      [@@js.set "windowsVerbatimArguments"]

    val cast : t -> ProcessEnvOptions.t [@@js.cast]

    val cast' : t -> MessagingOptions.t [@@js.cast]
  end
  [@@js.scope "ForkOptions"]

  val fork
    :  module_path:string
    -> ?options:ForkOptions.t
    -> unit
    -> ChildProcess.t
    [@@js.global "fork"]

  val fork
    :  module_path:string
    -> ?args:string list
    -> ?options:ForkOptions.t
    -> unit
    -> ChildProcess.t
    [@@js.global "fork"]

  module SpawnSyncOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> ArrayBufferView.t or_string [@@js.get "input"]

    val set_input : t -> ArrayBufferView.t or_string -> unit [@@js.set "input"]

    val get_kill_signal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_kill_signal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_max_buffer : t -> int [@@js.get "maxBuffer"]

    val set_max_buffer : t -> int -> unit [@@js.set "maxBuffer"]

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

    val cast : t -> CommonSpawnOptions.t [@@js.cast]
  end
  [@@js.scope "SpawnSyncOptions"]

  module SpawnSyncOptionsWithStringEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> SpawnSyncOptions.t [@@js.cast]
  end
  [@@js.scope "SpawnSyncOptionsWithStringEncoding"]

  module SpawnSyncOptionsWithBufferEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> SpawnSyncOptions.t [@@js.cast]
  end
  [@@js.scope "SpawnSyncOptionsWithBufferEncoding"]

  module SpawnSyncReturns : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_pid : 'T t -> int [@@js.get "pid"]

    val set_pid : 'T t -> int -> unit [@@js.set "pid"]

    val get_output : 'T t -> string list [@@js.get "output"]

    val set_output : 'T t -> string list -> unit [@@js.set "output"]

    val get_stdout : 'T t -> 'T [@@js.get "stdout"]

    val set_stdout : 'T t -> 'T -> unit [@@js.set "stdout"]

    val get_stderr : 'T t -> 'T [@@js.get "stderr"]

    val set_stderr : 'T t -> 'T -> unit [@@js.set "stderr"]

    val get_status : 'T t -> int or_null [@@js.get "status"]

    val set_status : 'T t -> int or_null -> unit [@@js.set "status"]

    val get_signal : 'T t -> Node_process.Process.Signals.t or_null
      [@@js.get "signal"]

    val set_signal : 'T t -> Node_process.Process.Signals.t or_null -> unit
      [@@js.set "signal"]

    val get_error : 'T t -> Error.t [@@js.get "error"]

    val set_error : 'T t -> Error.t -> unit [@@js.set "error"]
  end
  [@@js.scope "SpawnSyncReturns"]

  val spawn'Sync : command:string -> Buffer.t SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  val spawn'Sync
    :  command:string
    -> ?options:SpawnSyncOptionsWithStringEncoding.t
    -> unit
    -> string SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  val spawn'Sync
    :  command:string
    -> ?options:SpawnSyncOptionsWithBufferEncoding.t
    -> unit
    -> Buffer.t SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  val spawn'Sync
    :  command:string
    -> ?options:SpawnSyncOptions.t
    -> unit
    -> Buffer.t SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  val spawn'Sync
    :  command:string
    -> ?args:string list
    -> ?options:SpawnSyncOptionsWithStringEncoding.t
    -> unit
    -> string SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  val spawn'Sync
    :  command:string
    -> ?args:string list
    -> ?options:SpawnSyncOptionsWithBufferEncoding.t
    -> unit
    -> Buffer.t SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  val spawn'Sync
    :  command:string
    -> ?args:string list
    -> ?options:SpawnSyncOptions.t
    -> unit
    -> Buffer.t SpawnSyncReturns.t
    [@@js.global "spawnSync"]

  module ExecSyncOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> Uint8Array.t or_string [@@js.get "input"]

    val set_input : t -> Uint8Array.t or_string -> unit [@@js.set "input"]

    val get_stdio : t -> StdioOptions.t [@@js.get "stdio"]

    val set_stdio : t -> StdioOptions.t -> unit [@@js.set "stdio"]

    val get_shell : t -> string [@@js.get "shell"]

    val set_shell : t -> string -> unit [@@js.set "shell"]

    val get_kill_signal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_kill_signal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_max_buffer : t -> int [@@js.get "maxBuffer"]

    val set_max_buffer : t -> int -> unit [@@js.set "maxBuffer"]

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

    val cast : t -> CommonOptions.t [@@js.cast]
  end
  [@@js.scope "ExecSyncOptions"]

  module ExecSyncOptionsWithStringEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> ExecSyncOptions.t [@@js.cast]
  end
  [@@js.scope "ExecSyncOptionsWithStringEncoding"]

  module ExecSyncOptionsWithBufferEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum]) or_null
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) or_null -> unit
      [@@js.set "encoding"]

    val cast : t -> ExecSyncOptions.t [@@js.cast]
  end
  [@@js.scope "ExecSyncOptionsWithBufferEncoding"]

  val exec_sync : command:string -> Buffer.t [@@js.global "execSync"]

  val exec_sync
    :  command:string
    -> ?options:ExecSyncOptionsWithStringEncoding.t
    -> unit
    -> string
    [@@js.global "execSync"]

  val exec_sync
    :  command:string
    -> ?options:ExecSyncOptionsWithBufferEncoding.t
    -> unit
    -> Buffer.t
    [@@js.global "execSync"]

  val exec_sync
    :  command:string
    -> ?options:ExecSyncOptions.t
    -> unit
    -> Buffer.t
    [@@js.global "execSync"]

  module ExecFileSyncOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> ArrayBufferView.t or_string [@@js.get "input"]

    val set_input : t -> ArrayBufferView.t or_string -> unit [@@js.set "input"]

    val get_stdio : t -> StdioOptions.t [@@js.get "stdio"]

    val set_stdio : t -> StdioOptions.t -> unit [@@js.set "stdio"]

    val get_kill_signal : t -> Node_process.Process.Signals.t or_number
      [@@js.get "killSignal"]

    val set_kill_signal : t -> Node_process.Process.Signals.t or_number -> unit
      [@@js.set "killSignal"]

    val get_max_buffer : t -> int [@@js.get "maxBuffer"]

    val set_max_buffer : t -> int -> unit [@@js.set "maxBuffer"]

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_shell : t -> bool or_string [@@js.get "shell"]

    val set_shell : t -> bool or_string -> unit [@@js.set "shell"]

    val cast : t -> CommonOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileSyncOptions"]

  module ExecFileSyncOptionsWithStringEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> ExecFileSyncOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileSyncOptionsWithStringEncoding"]

  module ExecFileSyncOptionsWithBufferEncoding : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val cast : t -> ExecFileSyncOptions.t [@@js.cast]
  end
  [@@js.scope "ExecFileSyncOptionsWithBufferEncoding"]

  val exec_file_sync : command:string -> Buffer.t [@@js.global "execFileSync"]

  val exec_file_sync
    :  command:string
    -> ?options:ExecFileSyncOptionsWithStringEncoding.t
    -> unit
    -> string
    [@@js.global "execFileSync"]

  val exec_file_sync
    :  command:string
    -> ?options:ExecFileSyncOptionsWithBufferEncoding.t
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]

  val exec_file_sync
    :  command:string
    -> ?options:ExecFileSyncOptions.t
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]

  val exec_file_sync
    :  command:string
    -> ?args:string list
    -> ?options:ExecFileSyncOptionsWithStringEncoding.t
    -> unit
    -> string
    [@@js.global "execFileSync"]

  val exec_file_sync
    :  command:string
    -> ?args:string list
    -> ?options:ExecFileSyncOptionsWithBufferEncoding.t
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]

  val exec_file_sync
    :  command:string
    -> ?args:string list
    -> ?options:ExecFileSyncOptions.t
    -> unit
    -> Buffer.t
    [@@js.global "execFileSync"]
end
[@@js.scope Import.child_process]
