[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Tty : sig
  open Node_net

  val isatty : fd:int -> bool [@@js.global "isatty"]

  module ReadStream : sig
    type t = tty_ReadStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : fd:int -> ?options:Net.SocketConstructorOpts.t -> unit -> t
      [@@js.create]

    val get_isRaw : t -> bool [@@js.get "isRaw"]

    val set_isRaw : t -> bool -> unit [@@js.set "isRaw"]

    val setRawMode : t -> mode:bool -> t [@@js.call "setRawMode"]

    val get_isTTY : t -> bool [@@js.get "isTTY"]

    val set_isTTY : t -> bool -> unit [@@js.set "isTTY"]

    val cast : t -> Net.Socket.t [@@js.cast]
  end
  [@@js.scope "ReadStream"]

  module Direction : sig
    type t =
      ([ `L_n_minus1 [@js -1]
       | `L_n_0 [@js 0]
       | `L_n_1 [@js 1]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WriteStream : sig
    type t = tty_WriteStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : fd:int -> t [@@js.create]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `resize ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `resize ][@js.enum]) -> bool [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on' : t -> event:([ `resize ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `resize ][@js.enum])
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
      -> event:([ `resize ][@js.enum])
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
      -> event:([ `resize ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val clearLine
      :  t
      -> dir:tty_Direction
      -> ?callback:(unit -> unit)
      -> unit
      -> bool
      [@@js.call "clearLine"]

    val clearScreenDown : t -> ?callback:(unit -> unit) -> unit -> bool
      [@@js.call "clearScreenDown"]

    val cursorTo
      :  t
      -> x:int
      -> ?y:int
      -> ?callback:(unit -> unit)
      -> unit
      -> bool
      [@@js.call "cursorTo"]

    val cursorTo' : t -> x:int -> callback:(unit -> unit) -> bool
      [@@js.call "cursorTo"]

    val moveCursor
      :  t
      -> dx:int
      -> dy:int
      -> ?callback:(unit -> unit)
      -> unit
      -> bool
      [@@js.call "moveCursor"]

    val getColorDepth : t -> ?env:AnonymousInterface0.t -> unit -> int
      [@@js.call "getColorDepth"]

    val hasColors : t -> ?depth:int -> unit -> bool [@@js.call "hasColors"]

    val hasColors' : t -> ?env:AnonymousInterface0.t -> unit -> bool
      [@@js.call "hasColors"]

    val hasColors''
      :  t
      -> depth:int
      -> ?env:AnonymousInterface0.t
      -> unit
      -> bool
      [@@js.call "hasColors"]

    val getWindowSize : t -> int * int [@@js.call "getWindowSize"]

    val get_columns : t -> int [@@js.get "columns"]

    val set_columns : t -> int -> unit [@@js.set "columns"]

    val get_rows : t -> int [@@js.get "rows"]

    val set_rows : t -> int -> unit [@@js.set "rows"]

    val get_isTTY : t -> bool [@@js.get "isTTY"]

    val set_isTTY : t -> bool -> unit [@@js.set "isTTY"]

    val cast : t -> Net.Socket.t [@@js.cast]
  end
  [@@js.scope "WriteStream"]
end
[@@js.scope Import.tty]
