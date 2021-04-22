[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_options : t -> Node_util.Util.InspectOptions.t [@@js.get "options"]

  val set_options : t -> Node_util.Util.InspectOptions.t -> unit
    [@@js.set "options"]
end

module Repl : sig
  module ReplOptions : sig
    type t

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

    val get_eval : t -> REPLEval.t [@@js.get "eval"]

    val set_eval : t -> REPLEval.t -> unit [@@js.set "eval"]

    val get_preview : t -> bool [@@js.get "preview"]

    val set_preview : t -> bool -> unit [@@js.set "preview"]

    val get_use_colors : t -> bool [@@js.get "useColors"]

    val set_use_colors : t -> bool -> unit [@@js.set "useColors"]

    val get_use_global : t -> bool [@@js.get "useGlobal"]

    val set_use_global : t -> bool -> unit [@@js.set "useGlobal"]

    val get_ignore_undefined : t -> bool [@@js.get "ignoreUndefined"]

    val set_ignore_undefined : t -> bool -> unit [@@js.set "ignoreUndefined"]

    val get_writer : t -> REPLWriter.t [@@js.get "writer"]

    val set_writer : t -> REPLWriter.t -> unit [@@js.set "writer"]

    val get_completer
      :  t
      -> ( Node_readline.Readline.AsyncCompleter.t
         , Node_readline.Readline.Completer.t )
         union2
      [@@js.get "completer"]

    val set_completer
      :  t
      -> ( Node_readline.Readline.AsyncCompleter.t
         , Node_readline.Readline.Completer.t )
         union2
      -> unit
      [@@js.set "completer"]

    val get_repl_mode : t -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "replMode"]

    val set_repl_mode
      :  t
      -> (* FIXME: unknown type 'unique symbol' *) any
      -> unit
      [@@js.set "replMode"]

    val get_break_eval_on_sigint : t -> bool [@@js.get "breakEvalOnSigint"]

    val set_break_eval_on_sigint : t -> bool -> unit
      [@@js.set "breakEvalOnSigint"]
  end
  [@@js.scope "ReplOptions"]

  module REPLEval : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> this:REPLServer.t
      -> eval_cmd:string
      -> context:Node_vm.Vm.Context.t
      -> file:string
      -> cb:(err:Error.t or_null -> result:any -> unit)
      -> unit
      [@@js.apply]
  end
  [@@js.scope "REPLEval"]

  module REPLWriter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> this:REPLServer.t -> obj:any -> string [@@js.apply]
  end
  [@@js.scope "REPLWriter"]

  val writer : (REPLWriter.t, AnonymousInterface0.t) intersection2
    [@@js.global "writer"]

  module REPLCommandAction : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> this:REPLServer.t -> text:string -> unit [@@js.apply]
  end
  [@@js.scope "REPLCommandAction"]

  module REPLCommand : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_help : t -> string [@@js.get "help"]

    val set_help : t -> string -> unit [@@js.set "help"]

    val get_action : t -> REPLCommandAction.t [@@js.get "action"]

    val set_action : t -> REPLCommandAction.t -> unit [@@js.set "action"]
  end
  [@@js.scope "REPLCommand"]

  module REPLServer : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_context : t -> Node_vm.Vm.Context.t [@@js.get "context"]

    val get_input_stream : t -> ReadableStream.t [@@js.get "inputStream"]

    val get_output_stream : t -> WritableStream.t [@@js.get "outputStream"]

    val get_input : t -> ReadableStream.t [@@js.get "input"]

    val get_output : t -> WritableStream.t [@@js.get "output"]

    val get_commands : t -> REPLCommand.t ReadOnlyDict.t [@@js.get "commands"]

    val get_editor_mode : t -> bool [@@js.get "editorMode"]

    val get_underscore_assigned : t -> bool [@@js.get "underscoreAssigned"]

    val get_last : t -> any [@@js.get "last"]

    val get_underscore_err_assigned : t -> bool
      [@@js.get "underscoreErrAssigned"]

    val get_last_error : t -> any [@@js.get "lastError"]

    val get_eval : t -> REPLEval.t [@@js.get "eval"]

    val get_use_colors : t -> bool [@@js.get "useColors"]

    val get_use_global : t -> bool [@@js.get "useGlobal"]

    val get_ignore_undefined : t -> bool [@@js.get "ignoreUndefined"]

    val get_writer : t -> REPLWriter.t [@@js.get "writer"]

    val get_completer
      :  t
      -> ( Node_readline.Readline.AsyncCompleter.t
         , Node_readline.Readline.Completer.t )
         union2
      [@@js.get "completer"]

    val get_repl_mode : t -> (* FIXME: unknown type 'unique symbol' *) any
      [@@js.get "replMode"]

    val create : unit -> t [@@js.create]

    val define_command
      :  t
      -> keyword:string
      -> cmd:(REPLCommand.t, REPLCommandAction.t) union2
      -> unit
      [@@js.call "defineCommand"]

    val display_prompt : t -> ?preserve_cursor:bool -> unit -> unit
      [@@js.call "displayPrompt"]

    val clear_buffered_command : t -> unit [@@js.call "clearBufferedCommand"]

    val setup_history
      :  t
      -> path:string
      -> cb:(err:Error.t or_null -> repl:t -> unit)
      -> unit
      [@@js.call "setupHistory"]

    val add_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Node_vm.Vm.Context.t -> unit)
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
      -> context:Node_vm.Vm.Context.t
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
      -> listener:(context:Node_vm.Vm.Context.t -> unit)
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
      -> listener:(context:Node_vm.Vm.Context.t -> unit)
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
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Node_vm.Vm.Context.t -> unit)
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
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `line ][@js.enum])
      -> listener:(input:string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `SIGCONT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `SIGINT ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:([ `SIGTSTP ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''
      :  t
      -> event:([ `reset ][@js.enum])
      -> listener:(context:Node_vm.Vm.Context.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Node_readline.Readline.Interface.t [@@js.cast]
  end
  [@@js.scope "REPLServer"]

  val r_epl_mode_sloppy : (* FIXME: unknown type 'unique symbol' *) any
    [@@js.global "REPL_MODE_SLOPPY"]

  val r_epl_mode_strict : (* FIXME: unknown type 'unique symbol' *) any
    [@@js.global "REPL_MODE_STRICT"]

  val start : ?options:ReplOptions.t or_string -> unit -> REPLServer.t
    [@@js.global "start"]

  module Recoverable : sig
    type t

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
