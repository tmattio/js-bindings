[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_run : t -> Executable.t [@@js.get "run"]

  val set_run : t -> Executable.t -> unit [@@js.set "run"]

  val get_debug : t -> Executable.t [@@js.get "debug"]

  val set_debug : t -> Executable.t -> unit [@@js.set "debug"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_run : t -> NodeModule.t [@@js.get "run"]

  val set_run : t -> NodeModule.t -> unit [@@js.set "run"]

  val get_debug : t -> NodeModule.t [@@js.get "debug"]

  val set_debug : t -> NodeModule.t -> unit [@@js.set "debug"]
end

(* import * as cp from 'child_process'; *)
(* import ChildProcess = cp.ChildProcess; *)
(* import { Disposable } from 'vscode'; *)
(* import { CommonLanguageClient } from '../common/commonClient'; *)
(* import { LanguageClientOptions, MessageTransports } from '../common/client'; *)
(* import { InitializeParams } from 'vscode-languageserver-protocol/node'; *)
(* export * from 'vscode-languageserver-protocol/node'; *)
(* export * from '../common/api'; *)
module ExecutableOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cwd : t -> string [@@js.get "cwd"]

  val set_cwd : t -> string -> unit [@@js.set "cwd"]

  val get_env : t -> any [@@js.get "env"]

  val set_env : t -> any -> unit [@@js.set "env"]

  val get_detached : t -> bool [@@js.get "detached"]

  val set_detached : t -> bool -> unit [@@js.set "detached"]

  val get_shell : t -> bool [@@js.get "shell"]

  val set_shell : t -> bool -> unit [@@js.set "shell"]
end
[@@js.scope "ExecutableOptions"]

module Executable : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_command : t -> string [@@js.get "command"]

  val set_command : t -> string -> unit [@@js.set "command"]

  val get_args : t -> string list [@@js.get "args"]

  val set_args : t -> string list -> unit [@@js.set "args"]

  val get_options : t -> ExecutableOptions.t [@@js.get "options"]

  val set_options : t -> ExecutableOptions.t -> unit [@@js.set "options"]
end
[@@js.scope "Executable"]

module ForkOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cwd : t -> string [@@js.get "cwd"]

  val set_cwd : t -> string -> unit [@@js.set "cwd"]

  val get_env : t -> any [@@js.get "env"]

  val set_env : t -> any -> unit [@@js.set "env"]

  val get_encoding : t -> string [@@js.get "encoding"]

  val set_encoding : t -> string -> unit [@@js.set "encoding"]

  val get_exec_argv : t -> string list [@@js.get "execArgv"]

  val set_exec_argv : t -> string list -> unit [@@js.set "execArgv"]
end
[@@js.scope "ForkOptions"]

module TransportKind : sig
  type t =
    ([ `stdio [@js 0]
     | `ipc [@js 1]
     | `pipe [@js 2]
     | `socket [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SocketTransport : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> TransportKind_socket.t [@@js.get "kind"]

  val set_kind : t -> TransportKind_socket.t -> unit [@@js.set "kind"]

  val get_port : t -> int [@@js.get "port"]

  val set_port : t -> int -> unit [@@js.set "port"]
end
[@@js.scope "SocketTransport"]

module Transport : sig
  type t =
    ( SocketTransport.t
    , ([ `ipc [@js 1] | `pipe [@js 2] | `socket [@js 3] | `stdio [@js 0] ]
      [@js.enum]) )
    or_enum

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module NodeModule : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_module : t -> string [@@js.get "module"]

  val set_module : t -> string -> unit [@@js.set "module"]

  val get_transport : t -> Transport.t [@@js.get "transport"]

  val set_transport : t -> Transport.t -> unit [@@js.set "transport"]

  val get_args : t -> string list [@@js.get "args"]

  val set_args : t -> string list -> unit [@@js.set "args"]

  val get_runtime : t -> string [@@js.get "runtime"]

  val set_runtime : t -> string -> unit [@@js.set "runtime"]

  val get_options : t -> ForkOptions.t [@@js.get "options"]

  val set_options : t -> ForkOptions.t -> unit [@@js.set "options"]
end
[@@js.scope "NodeModule"]

module StreamInfo : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_writer : t -> Node.WritableStream.t [@@js.get "writer"]

  val set_writer : t -> Node.WritableStream.t -> unit [@@js.set "writer"]

  val get_reader : t -> Node.ReadableStream.t [@@js.get "reader"]

  val set_reader : t -> Node.ReadableStream.t -> unit [@@js.set "reader"]

  val get_detached : t -> bool [@@js.get "detached"]

  val set_detached : t -> bool -> unit [@@js.set "detached"]
end
[@@js.scope "StreamInfo"]

module ChildProcessInfo : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_process : t -> ChildProcess.t [@@js.get "process"]

  val set_process : t -> ChildProcess.t -> unit [@@js.set "process"]

  val get_detached : t -> bool [@@js.get "detached"]

  val set_detached : t -> bool -> unit [@@js.set "detached"]
end
[@@js.scope "ChildProcessInfo"]

module ServerOptions : sig
  type t =
    ( Executable.t
    , NodeModule.t
    , AnonymousInterface0.t
    , AnonymousInterface1.t
    , unit
      -> ( ChildProcess.t
         , ChildProcessInfo.t
         , MessageTransports.t
         , StreamInfo.t )
         union4
         Promise.t )
    union5

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module LanguageClient : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_server_options : t -> (* FIXME: unknown type *) any
    [@@js.get "_serverOptions"]

  val set_server_options : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_serverOptions"]

  val get_force_debug : t -> (* FIXME: unknown type *) any
    [@@js.get "_forceDebug"]

  val set_force_debug : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_forceDebug"]

  val get_server_process : t -> (* FIXME: unknown type *) any
    [@@js.get "_serverProcess"]

  val set_server_process : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_serverProcess"]

  val get_is_detached : t -> (* FIXME: unknown type *) any
    [@@js.get "_isDetached"]

  val set_is_detached : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_isDetached"]

  val get_is_in_debug_mode : t -> (* FIXME: unknown type *) any
    [@@js.get "_isInDebugMode"]

  val set_is_in_debug_mode : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_isInDebugMode"]

  val create
    :  name:string
    -> server_options:ServerOptions.t
    -> client_options:LanguageClientOptions.t
    -> ?force_debug:bool
    -> unit
    -> t
    [@@js.create]

  val create'
    :  id:string
    -> name:string
    -> server_options:ServerOptions.t
    -> client_options:LanguageClientOptions.t
    -> ?force_debug:bool
    -> unit
    -> t
    [@@js.create]

  val get_check_version : t -> (* FIXME: unknown type *) any
    [@@js.get "checkVersion"]

  val set_check_version : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "checkVersion"]

  val get_is_in_debug_mode : t -> bool [@@js.get "isInDebugMode"]

  val stop : t -> unit Promise.t [@@js.call "stop"]

  val get_check_process_died : t -> (* FIXME: unknown type *) any
    [@@js.get "checkProcessDied"]

  val set_check_process_died : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "checkProcessDied"]

  val handle_connection_closed : t -> unit [@@js.call "handleConnectionClosed"]

  val fill_initialize_params : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val create_message_transports
    :  t
    -> encoding:string
    -> MessageTransports.t Promise.t
    [@@js.call "createMessageTransports"]

  val get_get_runtime_path : t -> (* FIXME: unknown type *) any
    [@@js.get "_getRuntimePath"]

  val set_get_runtime_path : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_getRuntimePath"]

  val get_main_get_root_path : t -> (* FIXME: unknown type *) any
    [@@js.get "_mainGetRootPath"]

  val set_main_get_root_path : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_mainGetRootPath"]

  val get_get_server_working_dir : t -> (* FIXME: unknown type *) any
    [@@js.get "_getServerWorkingDir"]

  val set_get_server_working_dir : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_getServerWorkingDir"]

  val get_locale : t -> string [@@js.call "getLocale"]

  (* TODO: Move me*)
  include module type of struct
    include CommonLanguageClient
  end
end
[@@js.scope "LanguageClient"]

module SettingMonitor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val get__setting : t -> (* FIXME: unknown type *) any [@@js.get "_setting"]

  val set__setting : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_setting"]

  val get__listeners : t -> (* FIXME: unknown type *) any
    [@@js.get "_listeners"]

  val set__listeners : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_listeners"]

  val create : _client:LanguageClient.t -> _setting:string -> t [@@js.create]

  val start : t -> Disposable.t [@@js.call "start"]

  val get_on_did_change_configuration : t -> (* FIXME: unknown type *) any
    [@@js.get "onDidChangeConfiguration"]

  val set_on_did_change_configuration
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "onDidChangeConfiguration"]
end
[@@js.scope "SettingMonitor"]
