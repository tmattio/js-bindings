[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _ChildProcessInfo = [ `ChildProcessInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Executable = [ `Executable ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ExecutableOptions = [ `ExecutableOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ForkOptions = [ `ForkOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LanguageClient = [ `LanguageClient ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _NodeModule = [ `NodeModule ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ServerOptions =
      ( _Executable
      , _NodeModule
      , anonymous_interface_0
      , anonymous_interface_1
      , unit
        -> ( ChildProcess.t
           , _ChildProcessInfo
           , MessageTransports.t
           , _StreamInfo )
           union4
           Promise.t )
      union5

    and _SettingMonitor = [ `SettingMonitor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SocketTransport = [ `SocketTransport ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamInfo = [ `StreamInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Transport =
      ( _SocketTransport
      , ([ `ipc [@js 1] | `pipe [@js 2] | `socket [@js 3] | `stdio [@js 0] ]
        [@js.enum]) )
      or_enum

    and _TransportKind =
      ([ `stdio [@js 0]
       | `ipc [@js 1]
       | `pipe [@js 2]
       | `socket [@js 3]
       ]
      [@js.enum])

    and _TransportKind_stdio = ([ `stdio [@js 0] ][@js.enum])

    and _TransportKind_ipc = ([ `ipc [@js 1] ][@js.enum])

    and _TransportKind_pipe = ([ `pipe [@js 2] ][@js.enum])

    and _TransportKind_socket = ([ `socket [@js 3] ][@js.enum])
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_run : t -> _Executable [@@js.get "run"]

  val set_run : t -> _Executable -> unit [@@js.set "run"]

  val get_debug : t -> _Executable [@@js.get "debug"]

  val set_debug : t -> _Executable -> unit [@@js.set "debug"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_run : t -> _NodeModule [@@js.get "run"]

  val set_run : t -> _NodeModule -> unit [@@js.set "run"]

  val get_debug : t -> _NodeModule [@@js.get "debug"]

  val set_debug : t -> _NodeModule -> unit [@@js.set "debug"]
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
  type t = _ExecutableOptions

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
  type t = _Executable

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_command : t -> string [@@js.get "command"]

  val set_command : t -> string -> unit [@@js.set "command"]

  val get_args : t -> string list [@@js.get "args"]

  val set_args : t -> string list -> unit [@@js.set "args"]

  val get_options : t -> _ExecutableOptions [@@js.get "options"]

  val set_options : t -> _ExecutableOptions -> unit [@@js.set "options"]
end
[@@js.scope "Executable"]

module ForkOptions : sig
  type t = _ForkOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cwd : t -> string [@@js.get "cwd"]

  val set_cwd : t -> string -> unit [@@js.set "cwd"]

  val get_env : t -> any [@@js.get "env"]

  val set_env : t -> any -> unit [@@js.set "env"]

  val get_encoding : t -> string [@@js.get "encoding"]

  val set_encoding : t -> string -> unit [@@js.set "encoding"]

  val get_execArgv : t -> string list [@@js.get "execArgv"]

  val set_execArgv : t -> string list -> unit [@@js.set "execArgv"]
end
[@@js.scope "ForkOptions"]

module TransportKind : sig
  type t = _TransportKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SocketTransport : sig
  type t = _SocketTransport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> _TransportKind_socket [@@js.get "kind"]

  val set_kind : t -> _TransportKind_socket -> unit [@@js.set "kind"]

  val get_port : t -> int [@@js.get "port"]

  val set_port : t -> int -> unit [@@js.set "port"]
end
[@@js.scope "SocketTransport"]

module Transport : sig
  type t = _Transport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module NodeModule : sig
  type t = _NodeModule

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_module : t -> string [@@js.get "module"]

  val set_module : t -> string -> unit [@@js.set "module"]

  val get_transport : t -> _Transport [@@js.get "transport"]

  val set_transport : t -> _Transport -> unit [@@js.set "transport"]

  val get_args : t -> string list [@@js.get "args"]

  val set_args : t -> string list -> unit [@@js.set "args"]

  val get_runtime : t -> string [@@js.get "runtime"]

  val set_runtime : t -> string -> unit [@@js.set "runtime"]

  val get_options : t -> _ForkOptions [@@js.get "options"]

  val set_options : t -> _ForkOptions -> unit [@@js.set "options"]
end
[@@js.scope "NodeModule"]

module StreamInfo : sig
  type t = _StreamInfo

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
  type t = _ChildProcessInfo

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_process : t -> ChildProcess.t [@@js.get "process"]

  val set_process : t -> ChildProcess.t -> unit [@@js.set "process"]

  val get_detached : t -> bool [@@js.get "detached"]

  val set_detached : t -> bool -> unit [@@js.set "detached"]
end
[@@js.scope "ChildProcessInfo"]

module ServerOptions : sig
  type t = _ServerOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module LanguageClient : sig
  type t = _LanguageClient

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__serverOptions : t -> (* FIXME: unknown type *) any
    [@@js.get "_serverOptions"]

  val set__serverOptions : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_serverOptions"]

  val get__forceDebug : t -> (* FIXME: unknown type *) any
    [@@js.get "_forceDebug"]

  val set__forceDebug : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_forceDebug"]

  val get__serverProcess : t -> (* FIXME: unknown type *) any
    [@@js.get "_serverProcess"]

  val set__serverProcess : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_serverProcess"]

  val get__isDetached : t -> (* FIXME: unknown type *) any
    [@@js.get "_isDetached"]

  val set__isDetached : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_isDetached"]

  val get__isInDebugMode : t -> (* FIXME: unknown type *) any
    [@@js.get "_isInDebugMode"]

  val set__isInDebugMode : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_isInDebugMode"]

  val create
    :  name:string
    -> serverOptions:_ServerOptions
    -> clientOptions:LanguageClientOptions.t
    -> ?forceDebug:bool
    -> unit
    -> t
    [@@js.create]

  val create'
    :  id:string
    -> name:string
    -> serverOptions:_ServerOptions
    -> clientOptions:LanguageClientOptions.t
    -> ?forceDebug:bool
    -> unit
    -> t
    [@@js.create]

  val get_checkVersion : t -> (* FIXME: unknown type *) any
    [@@js.get "checkVersion"]

  val set_checkVersion : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "checkVersion"]

  val get_isInDebugMode : t -> bool [@@js.get "isInDebugMode"]

  val stop : t -> unit Promise.t [@@js.call "stop"]

  val get_checkProcessDied : t -> (* FIXME: unknown type *) any
    [@@js.get "checkProcessDied"]

  val set_checkProcessDied : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "checkProcessDied"]

  val handleConnectionClosed : t -> unit [@@js.call "handleConnectionClosed"]

  val fillInitializeParams : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val createMessageTransports
    :  t
    -> encoding:string
    -> MessageTransports.t Promise.t
    [@@js.call "createMessageTransports"]

  val get__getRuntimePath : t -> (* FIXME: unknown type *) any
    [@@js.get "_getRuntimePath"]

  val set__getRuntimePath : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_getRuntimePath"]

  val get__mainGetRootPath : t -> (* FIXME: unknown type *) any
    [@@js.get "_mainGetRootPath"]

  val set__mainGetRootPath : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_mainGetRootPath"]

  val get__getServerWorkingDir : t -> (* FIXME: unknown type *) any
    [@@js.get "_getServerWorkingDir"]

  val set__getServerWorkingDir : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_getServerWorkingDir"]

  val getLocale : t -> string [@@js.call "getLocale"]

  val cast : t -> CommonLanguageClient.t [@@js.cast]
end
[@@js.scope "LanguageClient"]

module SettingMonitor : sig
  type t = _SettingMonitor

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

  val create : _client:_LanguageClient -> _setting:string -> t [@@js.create]

  val start : t -> Disposable.t [@@js.call "start"]

  val get_onDidChangeConfiguration : t -> (* FIXME: unknown type *) any
    [@@js.get "onDidChangeConfiguration"]

  val set_onDidChangeConfiguration : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "onDidChangeConfiguration"]
end
[@@js.scope "SettingMonitor"]
