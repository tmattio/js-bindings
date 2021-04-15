[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type readline_AsyncCompleter = [ `Readline_AsyncCompleter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and readline_Completer = [ `Readline_Completer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and readline_CompleterResult = string list * string

    and readline_CursorPos = [ `Readline_CursorPos ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and readline_Direction =
      ([ `L_n_minus1 [@js -1]
       | `L_n_0 [@js 0]
       | `L_n_1 [@js 1]
       ]
      [@js.enum])

    and readline_Interface = [ `Readline_Interface ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and readline_Key = [ `Readline_Key ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and readline_ReadLine = readline_Interface

    and readline_ReadLineOptions = [ `Readline_ReadLineOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Readline : sig
  module Key : sig
    type t = readline_Key

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_sequence : t -> string [@@js.get "sequence"]

    val set_sequence : t -> string -> unit [@@js.set "sequence"]

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val get_ctrl : t -> bool [@@js.get "ctrl"]

    val set_ctrl : t -> bool -> unit [@@js.set "ctrl"]

    val get_meta : t -> bool [@@js.get "meta"]

    val set_meta : t -> bool -> unit [@@js.set "meta"]

    val get_shift : t -> bool [@@js.get "shift"]

    val set_shift : t -> bool -> unit [@@js.set "shift"]
  end
  [@@js.scope "Key"]

  module Interface : sig
    type t = readline_Interface

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_terminal : t -> bool [@@js.get "terminal"]

    val get_line : t -> string [@@js.get "line"]

    val get_cursor : t -> float [@@js.get "cursor"]

    val create
      :  input:ReadableStream.t
      -> ?output:WritableStream.t
      -> ?completer:(readline_AsyncCompleter, readline_Completer) union2
      -> ?terminal:bool
      -> unit
      -> t
      [@@js.create]

    val create' : options:readline_ReadLineOptions -> t [@@js.create]

    val setPrompt : t -> prompt:string -> unit [@@js.call "setPrompt"]

    val prompt : t -> ?preserveCursor:bool -> unit -> unit [@@js.call "prompt"]

    val question : t -> query:string -> callback:(answer:string -> unit) -> unit
      [@@js.call "question"]

    val pause : t -> t [@@js.call "pause"]

    val resume : t -> t [@@js.call "resume"]

    val close : t -> unit [@@js.call "close"]

    val write
      :  t
      -> data:Buffer.t or_string
      -> ?key:readline_Key
      -> unit
      -> unit
      [@@js.call "write"]

    val getCursorPos : t -> readline_CursorPos [@@js.call "getCursorPos"]

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

    val cast : t -> Events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "Interface"]

  module ReadLine : sig
    type t = readline_ReadLine

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Completer : sig
    type t = readline_Completer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> line:string -> readline_CompleterResult [@@js.apply]
  end
  [@@js.scope "Completer"]

  module AsyncCompleter : sig
    type t = readline_AsyncCompleter

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> line:string
      -> callback:
           (?err:Error.t or_null
            -> ?result:readline_CompleterResult
            -> unit
            -> unit)
      -> any
      [@@js.apply]
  end
  [@@js.scope "AsyncCompleter"]

  module CompleterResult : sig
    type t = readline_CompleterResult

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ReadLineOptions : sig
    type t = readline_ReadLineOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_input : t -> ReadableStream.t [@@js.get "input"]

    val set_input : t -> ReadableStream.t -> unit [@@js.set "input"]

    val get_output : t -> WritableStream.t [@@js.get "output"]

    val set_output : t -> WritableStream.t -> unit [@@js.set "output"]

    val get_completer
      :  t
      -> (readline_AsyncCompleter, readline_Completer) union2
      [@@js.get "completer"]

    val set_completer
      :  t
      -> (readline_AsyncCompleter, readline_Completer) union2
      -> unit
      [@@js.set "completer"]

    val get_terminal : t -> bool [@@js.get "terminal"]

    val set_terminal : t -> bool -> unit [@@js.set "terminal"]

    val get_historySize : t -> float [@@js.get "historySize"]

    val set_historySize : t -> float -> unit [@@js.set "historySize"]

    val get_prompt : t -> string [@@js.get "prompt"]

    val set_prompt : t -> string -> unit [@@js.set "prompt"]

    val get_crlfDelay : t -> float [@@js.get "crlfDelay"]

    val set_crlfDelay : t -> float -> unit [@@js.set "crlfDelay"]

    val get_removeHistoryDuplicates : t -> bool
      [@@js.get "removeHistoryDuplicates"]

    val set_removeHistoryDuplicates : t -> bool -> unit
      [@@js.set "removeHistoryDuplicates"]

    val get_escapeCodeTimeout : t -> float [@@js.get "escapeCodeTimeout"]

    val set_escapeCodeTimeout : t -> float -> unit
      [@@js.set "escapeCodeTimeout"]

    val get_tabSize : t -> float [@@js.get "tabSize"]

    val set_tabSize : t -> float -> unit [@@js.set "tabSize"]
  end
  [@@js.scope "ReadLineOptions"]

  val createInterface
    :  input:ReadableStream.t
    -> ?output:WritableStream.t
    -> ?completer:(readline_AsyncCompleter, readline_Completer) union2
    -> ?terminal:bool
    -> unit
    -> readline_Interface
    [@@js.global "createInterface"]

  val createInterface : options:readline_ReadLineOptions -> readline_Interface
    [@@js.global "createInterface"]

  val emitKeypressEvents
    :  stream:ReadableStream.t
    -> ?readlineInterface:readline_Interface
    -> unit
    -> unit
    [@@js.global "emitKeypressEvents"]

  module Direction : sig
    type t = readline_Direction

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CursorPos : sig
    type t = readline_CursorPos

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_rows : t -> float [@@js.get "rows"]

    val set_rows : t -> float -> unit [@@js.set "rows"]

    val get_cols : t -> float [@@js.get "cols"]

    val set_cols : t -> float -> unit [@@js.set "cols"]
  end
  [@@js.scope "CursorPos"]

  val clearLine
    :  stream:WritableStream.t
    -> dir:readline_Direction
    -> ?callback:(unit -> unit)
    -> unit
    -> bool
    [@@js.global "clearLine"]

  val clearScreenDown
    :  stream:WritableStream.t
    -> ?callback:(unit -> unit)
    -> unit
    -> bool
    [@@js.global "clearScreenDown"]

  val cursorTo
    :  stream:WritableStream.t
    -> x:float
    -> ?y:float
    -> ?callback:(unit -> unit)
    -> unit
    -> bool
    [@@js.global "cursorTo"]

  val moveCursor
    :  stream:WritableStream.t
    -> dx:float
    -> dy:float
    -> ?callback:(unit -> unit)
    -> unit
    -> bool
    [@@js.global "moveCursor"]
end
[@@js.scope Import.readline]
