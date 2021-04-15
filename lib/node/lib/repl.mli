[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type repl_REPLCommand = [ `Repl_REPLCommand ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and repl_REPLCommandAction = [ `Repl_REPLCommandAction ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and repl_REPLEval = [ `Repl_REPLEval ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and repl_REPLServer = [ `Repl_REPLServer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and repl_REPLWriter = [ `Repl_REPLWriter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and repl_Recoverable = [ `Repl_Recoverable ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and repl_ReplOptions = [ `Repl_ReplOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_options : t -> Util.Util.InspectOptions.t [@@js.get "options"]

  val set_options : t -> Util.Util.InspectOptions.t -> unit [@@js.set "options"]
end

module Repl : sig
  module ReplOptions : sig
    type t = repl_ReplOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_prompt : t -> string [@@js.get "prompt"]

    val set_prompt : t -> string -> unit [@@js.set "prompt"]

    val get_input : t -> ReadableStream.t [@@js.get "input"]

    val set_input : t -> ReadableStream.t -> unit [@@js.set "input"]

    val get_output : t -> WritableStream.t [@@js.get "output"]

    val set_output : t -> WritableStream.t -> unit [@@js.set "output"]

    val get_terminal : t -> bool [@@js.get "terminal"]

    val set_terminal : t -> bool -> unit [@@js.set "terminal"]

    val get_eval : t -> repl_REPLEval [@@js.get "eval"]

    val set_eval : t -> repl_REPLEval -> unit [@@js.set "eval"]

    val get_preview : t -> bool [@@js.get "preview"]

    val set_preview : t -> bool -> unit [@@js.set "preview"]

    val get_useColors : t -> bool [@@js.get "useColors"]

    val set_useColors : t -> bool -> unit [@@js.set "useColors"]

    val get_useGlobal : t -> bool [@@js.get "useGlobal"]

    val set_useGlobal : t -> bool -> unit [@@js.set "useGlobal"]

    val get_ignoreUndefined : t -> bool [@@js.get "ignoreUndefined"]

    val set_ignoreUndefined : t -> bool -> unit [@@js.set "ignoreUndefined"]

    val get_writer : t -> repl_REPLWriter [@@js.get "writer"]

    val set_writer : t -> repl_REPLWriter -> unit [@@js.set "writer"]

    val get_completer
      :  t
      -> ( Readline.Readline.AsyncCompleter.t
         , Readline.Readline.Completer.t )
         union2
      [@@js.get "completer"]

    val set_completer
      :  t
      -> ( Readline.Readline.AsyncCompleter.t
         , Readline.Readline.Completer.t )
         union2
      -> unit
      [@@js.set "completer"]

    val get_replMode : t -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "replMode"]

    val set_replMode
      :  t
      -> (* FIXME: unknown type 'unique symbol' *) any
      -> unit
      [@@js.set "replMode"]

    val get_breakEvalOnSigint : t -> bool [@@js.get "breakEvalOnSigint"]

    val set_breakEvalOnSigint : t -> bool -> unit [@@js.set "breakEvalOnSigint"]
  end
  [@@js.scope "ReplOptions"]

  module REPLEval : sig
    type t = repl_REPLEval

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> this:repl_REPLServer
      -> evalCmd:string
      -> context:Vm.Vm.Context.t
      -> file:string
      -> cb:(err:Error.t or_null -> result:any -> unit)
      -> unit
      [@@js.apply]
  end
  [@@js.scope "REPLEval"]

  module REPLWriter : sig
    type t = repl_REPLWriter

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> this:repl_REPLServer -> obj:any -> string [@@js.apply]
  end
  [@@js.scope "REPLWriter"]

  val writer : (repl_REPLWriter, anonymous_interface_0) intersection2
    [@@js.global "writer"]

  module REPLCommandAction : sig
    type t = repl_REPLCommandAction

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> this:repl_REPLServer -> text:string -> unit [@@js.apply]
  end
  [@@js.scope "REPLCommandAction"]

  module REPLCommand : sig
    type t = repl_REPLCommand

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_help : t -> string [@@js.get "help"]

    val set_help : t -> string -> unit [@@js.set "help"]

    val get_action : t -> repl_REPLCommandAction [@@js.get "action"]

    val set_action : t -> repl_REPLCommandAction -> unit [@@js.set "action"]
  end
  [@@js.scope "REPLCommand"]

  module REPLServer : sig
    type t = repl_REPLServer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_context : t -> Vm.Vm.Context.t [@@js.get "context"]

    val get_inputStream : t -> ReadableStream.t [@@js.get "inputStream"]

    val get_outputStream : t -> WritableStream.t [@@js.get "outputStream"]

    val get_input : t -> ReadableStream.t [@@js.get "input"]

    val get_output : t -> WritableStream.t [@@js.get "output"]

    val get_commands : t -> repl_REPLCommand ReadOnlyDict.t
      [@@js.get "commands"]

    val get_editorMode : t -> bool [@@js.get "editorMode"]

    val get_underscoreAssigned : t -> bool [@@js.get "underscoreAssigned"]

    val get_last : t -> any [@@js.get "last"]

    val get_underscoreErrAssigned : t -> bool [@@js.get "underscoreErrAssigned"]

    val get_lastError : t -> any [@@js.get "lastError"]

    val get_eval : t -> repl_REPLEval [@@js.get "eval"]

    val get_useColors : t -> bool [@@js.get "useColors"]

    val get_useGlobal : t -> bool [@@js.get "useGlobal"]

    val get_ignoreUndefined : t -> bool [@@js.get "ignoreUndefined"]

    val get_writer : t -> repl_REPLWriter [@@js.get "writer"]

    val get_completer
      :  t
      -> ( Readline.Readline.AsyncCompleter.t
         , Readline.Readline.Completer.t )
         union2
      [@@js.get "completer"]

    val get_replMode : t -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "replMode"]

    val create : unit -> t [@@js.create]

    val defineCommand
      :  t
      -> keyword:string
      -> cmd:(repl_REPLCommand, repl_REPLCommandAction) union2
      -> unit
      [@@js.call "defineCommand"]

    val displayPrompt : t -> ?preserveCursor:bool -> unit -> unit
      [@@js.call "displayPrompt"]

    val clearBufferedCommand : t -> unit [@@js.call "clearBufferedCommand"]

    val setupHistory
      :  t
      -> path:string
      -> cb:(err:Error.t or_null -> repl:t -> unit)
      -> unit
      [@@js.call "setupHistory"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Vm.Vm.Context.t -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'' : t -> event:([ `line ][@js.enum]) -> input:string -> bool
      [@@js.call "emit"]

    val emit''' : t -> event:([ `pause ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'''' : t -> event:([ `resume ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''''' : t -> event:([ `SIGCONT ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''''' : t -> event:([ `SIGINT ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''' : t -> event:([ `SIGTSTP ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''''''' : t -> event:([ `exit ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> context:Vm.Vm.Context.t
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on' : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Vm.Vm.Context.t -> unit)
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
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Vm.Vm.Context.t -> unit)
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
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Vm.Vm.Context.t -> unit)
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
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Vm.Vm.Context.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Readline.Readline.Interface.t [@@js.cast]
  end
  [@@js.scope "REPLServer"]

  val rEPL_MODE_SLOPPY : (* FIXME: unknown type 'unique symbol' *) any
    [@@js.global "REPL_MODE_SLOPPY"]

  val rEPL_MODE_STRICT : (* FIXME: unknown type 'unique symbol' *) any
    [@@js.global "REPL_MODE_STRICT"]

  val start : ?options:repl_ReplOptions or_string -> unit -> repl_REPLServer
    [@@js.global "start"]

  module Recoverable : sig
    type t = repl_Recoverable

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_err : t -> Error.t [@@js.get "err"]

    val set_err : t -> Error.t -> unit [@@js.set "err"]

    val create : err:Error.t -> t [@@js.create]

    val cast : t -> SyntaxError.t [@@js.cast]
  end
  [@@js.scope "Recoverable"]
end
[@@js.scope Import.repl]
