[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_chunk : t -> any [@@js.get "chunk"]

  val set_chunk : t -> any -> unit [@@js.set "chunk"]

  val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

  val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_end : t -> bool [@@js.get "end"]

  val set_end : t -> bool -> unit [@@js.set "end"]
end

module Stream : sig
  module Internal : sig
    module Base : sig
      include module type of struct
        include Node_events.Events.EventEmitter
      end

      val pipe : t -> 'T -> ?options:AnonymousInterface1.t -> unit -> 'T
        [@@js.call "pipe"]
    end

    module Stream : sig
      include module type of struct
        include Base
      end

      val create : ?opts:stream_internal_ReadableOptions -> unit -> t
        [@@js.create]

      val cast : t -> stream_internal [@@js.cast]
    end
    [@@js.scope "Stream"]

    module ReadableOptions : sig
      type t = stream_internal_ReadableOptions

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_highWaterMark : t -> int [@@js.get "highWaterMark"]

      val set_highWaterMark : t -> int -> unit [@@js.set "highWaterMark"]

      val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

      val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

      val get_objectMode : t -> bool [@@js.get "objectMode"]

      val set_objectMode : t -> bool -> unit [@@js.set "objectMode"]

      val read : t -> this:stream_internal_Readable -> size:int -> unit
        [@@js.call "read"]

      val destroy
        :  t
        -> this:stream_internal_Readable
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val get_autoDestroy : t -> bool [@@js.get "autoDestroy"]

      val set_autoDestroy : t -> bool -> unit [@@js.set "autoDestroy"]
    end
    [@@js.scope "ReadableOptions"]

    module Readable : sig
      include module type of struct
        include Stream
      end

      val from
        :  iterable:(any AsyncIterable.t, any Iterable.t) union2
        -> ?options:stream_internal_ReadableOptions
        -> unit
        -> t
        [@@js.global "from"]

      val get_readable : t -> bool [@@js.get "readable"]

      val set_readable : t -> bool -> unit [@@js.set "readable"]

      val get_readableEncoding : t -> BufferEncoding.t or_null
        [@@js.get "readableEncoding"]

      val get_readableEnded : t -> bool [@@js.get "readableEnded"]

      val get_readableFlowing : t -> bool or_null [@@js.get "readableFlowing"]

      val get_readableHighWaterMark : t -> int
        [@@js.get "readableHighWaterMark"]

      val get_readableLength : t -> int [@@js.get "readableLength"]

      val get_readableObjectMode : t -> bool [@@js.get "readableObjectMode"]

      val get_destroyed : t -> bool [@@js.get "destroyed"]

      val set_destroyed : t -> bool -> unit [@@js.set "destroyed"]

      val create : ?opts:stream_internal_ReadableOptions -> unit -> t
        [@@js.create]

      val _read : t -> size:int -> unit [@@js.call "_read"]

      val read : t -> ?size:int -> unit -> any [@@js.call "read"]

      val setEncoding : t -> encoding:BufferEncoding.t -> t
        [@@js.call "setEncoding"]

      val pause : t -> t [@@js.call "pause"]

      val resume : t -> t [@@js.call "resume"]

      val isPaused : t -> bool [@@js.call "isPaused"]

      val unpipe : t -> ?destination:WritableStream.t -> unit -> t
        [@@js.call "unpipe"]

      val unshift : t -> chunk:any -> ?encoding:BufferEncoding.t -> unit -> unit
        [@@js.call "unshift"]

      val wrap : t -> oldStream:ReadableStream.t -> t [@@js.call "wrap"]

      val push : t -> chunk:any -> ?encoding:BufferEncoding.t -> unit -> bool
        [@@js.call "push"]

      val _destroy
        :  t
        -> error:Error.t or_null
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_destroy"]

      val destroy : t -> ?error:Error.t -> unit -> unit [@@js.call "destroy"]

      val addListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "addListener"]

      val emit : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

      val emit' : t -> event:([ `data ][@js.enum]) -> chunk:any -> bool
        [@@js.call "emit"]

      val emit'' : t -> event:([ `end_ ][@js.enum]) -> bool [@@js.call "emit"]

      val emit''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
        [@@js.call "emit"]

      val emit'''' : t -> event:([ `pause ][@js.enum]) -> bool
        [@@js.call "emit"]

      val emit''''' : t -> event:([ `readable ][@js.enum]) -> bool
        [@@js.call "emit"]

      val emit'''''' : t -> event:([ `resume ][@js.enum]) -> bool
        [@@js.call "emit"]

      val emit'''''''
        :  t
        -> event:symbol or_string
        -> args:(any list[@js.variadic])
        -> bool
        [@@js.call "emit"]

      val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
        [@@js.call "on"]

      val on'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "on"]

      val on''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "on"]

      val on'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "on"]

      val on''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "on"]

      val on'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "on"]

      val once
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "once"]

      val once''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "once"]

      val prependListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependOnceListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val removeListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener''
        :  t
        -> event:([ `end_ ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener''''
        :  t
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "removeListener"]

      val cast : t -> stream_internal_Stream [@@js.cast]

      val cast' : t -> ReadableStream.t [@@js.cast]
    end
    [@@js.scope "Readable"]

    module WritableOptions : sig
      type t = stream_internal_WritableOptions

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_highWaterMark : t -> int [@@js.get "highWaterMark"]

      val set_highWaterMark : t -> int -> unit [@@js.set "highWaterMark"]

      val get_decodeStrings : t -> bool [@@js.get "decodeStrings"]

      val set_decodeStrings : t -> bool -> unit [@@js.set "decodeStrings"]

      val get_defaultEncoding : t -> BufferEncoding.t
        [@@js.get "defaultEncoding"]

      val set_defaultEncoding : t -> BufferEncoding.t -> unit
        [@@js.set "defaultEncoding"]

      val get_objectMode : t -> bool [@@js.get "objectMode"]

      val set_objectMode : t -> bool -> unit [@@js.set "objectMode"]

      val get_emitClose : t -> bool [@@js.get "emitClose"]

      val set_emitClose : t -> bool -> unit [@@js.set "emitClose"]

      val write
        :  t
        -> this:stream_internal_Writable
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "write"]

      val writev
        :  t
        -> this:stream_internal_Writable
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "writev"]

      val destroy
        :  t
        -> this:stream_internal_Writable
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val final
        :  t
        -> this:stream_internal_Writable
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "final"]

      val get_autoDestroy : t -> bool [@@js.get "autoDestroy"]

      val set_autoDestroy : t -> bool -> unit [@@js.set "autoDestroy"]
    end
    [@@js.scope "WritableOptions"]

    module Writable : sig
      include module type of struct
        include Stream
      end

      val get_writable : t -> bool [@@js.get "writable"]

      val get_writableEnded : t -> bool [@@js.get "writableEnded"]

      val get_writableFinished : t -> bool [@@js.get "writableFinished"]

      val get_writableHighWaterMark : t -> int
        [@@js.get "writableHighWaterMark"]

      val get_writableLength : t -> int [@@js.get "writableLength"]

      val get_writableObjectMode : t -> bool [@@js.get "writableObjectMode"]

      val get_writableCorked : t -> int [@@js.get "writableCorked"]

      val get_destroyed : t -> bool [@@js.get "destroyed"]

      val set_destroyed : t -> bool -> unit [@@js.set "destroyed"]

      val create : ?opts:stream_internal_WritableOptions -> unit -> t
        [@@js.create]

      val _write
        :  t
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_write"]

      val _writev
        :  t
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_writev"]

      val _destroy
        :  t
        -> error:Error.t or_null
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_destroy"]

      val _final
        :  t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_final"]

      val write
        :  t
        -> chunk:any
        -> ?cb:(error:Error.t or_null_or_undefined -> unit)
        -> unit
        -> bool
        [@@js.call "write"]

      val write'
        :  t
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> ?cb:(error:Error.t or_null_or_undefined -> unit)
        -> unit
        -> bool
        [@@js.call "write"]

      val setDefaultEncoding : t -> encoding:BufferEncoding.t -> t
        [@@js.call "setDefaultEncoding"]

      val end_ : t -> ?cb:(unit -> unit) -> unit -> unit [@@js.call "end"]

      val end_' : t -> chunk:any -> ?cb:(unit -> unit) -> unit -> unit
        [@@js.call "end"]

      val end_''
        :  t
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> ?cb:(unit -> unit)
        -> unit
        -> unit
        [@@js.call "end"]

      val cork : t -> unit [@@js.call "cork"]

      val uncork : t -> unit [@@js.call "uncork"]

      val destroy : t -> ?error:Error.t -> unit -> unit [@@js.call "destroy"]

      val addListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "addListener"]

      val addListener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "addListener"]

      val emit : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

      val emit' : t -> event:([ `drain ][@js.enum]) -> bool [@@js.call "emit"]

      val emit'' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
        [@@js.call "emit"]

      val emit''' : t -> event:([ `finish ][@js.enum]) -> bool
        [@@js.call "emit"]

      val emit''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> src:stream_internal_Readable
        -> bool
        [@@js.call "emit"]

      val emit'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> src:stream_internal_Readable
        -> bool
        [@@js.call "emit"]

      val emit''''''
        :  t
        -> event:symbol or_string
        -> args:(any list[@js.variadic])
        -> bool
        [@@js.call "emit"]

      val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
        [@@js.call "on"]

      val on'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "on"]

      val on''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "on"]

      val on'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "on"]

      val on''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "on"]

      val on'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "on"]

      val on''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "on"]

      val once
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "once"]

      val once'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "once"]

      val once''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "once"]

      val once'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "once"]

      val once''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "once"]

      val prependListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependListener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependListener"]

      val prependOnceListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prependOnceListener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val removeListener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:stream_internal_Readable -> unit)
        -> t
        [@@js.call "removeListener"]

      val removeListener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "removeListener"]

      val cast : t -> stream_internal_Stream [@@js.cast]

      val cast' : t -> WritableStream.t [@@js.cast]
    end
    [@@js.scope "Writable"]

    module DuplexOptions : sig
      type t = stream_internal_DuplexOptions

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_allowHalfOpen : t -> bool [@@js.get "allowHalfOpen"]

      val set_allowHalfOpen : t -> bool -> unit [@@js.set "allowHalfOpen"]

      val get_readableObjectMode : t -> bool [@@js.get "readableObjectMode"]

      val set_readableObjectMode : t -> bool -> unit
        [@@js.set "readableObjectMode"]

      val get_writableObjectMode : t -> bool [@@js.get "writableObjectMode"]

      val set_writableObjectMode : t -> bool -> unit
        [@@js.set "writableObjectMode"]

      val get_readableHighWaterMark : t -> int
        [@@js.get "readableHighWaterMark"]

      val set_readableHighWaterMark : t -> int -> unit
        [@@js.set "readableHighWaterMark"]

      val get_writableHighWaterMark : t -> int
        [@@js.get "writableHighWaterMark"]

      val set_writableHighWaterMark : t -> int -> unit
        [@@js.set "writableHighWaterMark"]

      val get_writableCorked : t -> int [@@js.get "writableCorked"]

      val set_writableCorked : t -> int -> unit [@@js.set "writableCorked"]

      val read : t -> this:stream_internal_Duplex -> size:int -> unit
        [@@js.call "read"]

      val write
        :  t
        -> this:stream_internal_Duplex
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "write"]

      val writev
        :  t
        -> this:stream_internal_Duplex
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "writev"]

      val final
        :  t
        -> this:stream_internal_Duplex
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "final"]

      val destroy
        :  t
        -> this:stream_internal_Duplex
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val cast : t -> stream_internal_ReadableOptions [@@js.cast]

      val cast' : t -> stream_internal_WritableOptions [@@js.cast]
    end
    [@@js.scope "DuplexOptions"]

    module Duplex : sig
      include module type of struct
        include Stream
      end

      val get_writable : t -> bool [@@js.get "writable"]

      val get_writableEnded : t -> bool [@@js.get "writableEnded"]

      val get_writableFinished : t -> bool [@@js.get "writableFinished"]

      val get_writableHighWaterMark : t -> int
        [@@js.get "writableHighWaterMark"]

      val get_writableLength : t -> int [@@js.get "writableLength"]

      val get_writableObjectMode : t -> bool [@@js.get "writableObjectMode"]

      val get_writableCorked : t -> int [@@js.get "writableCorked"]

      val create : ?opts:stream_internal_DuplexOptions -> unit -> t
        [@@js.create]

      val _write
        :  t
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_write"]

      val _writev
        :  t
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_writev"]

      val _destroy
        :  t
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "_destroy"]

      val _final
        :  t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_final"]

      val write
        :  t
        -> chunk:any
        -> ?encoding:BufferEncoding.t
        -> ?cb:(error:Error.t or_null_or_undefined -> unit)
        -> unit
        -> bool
        [@@js.call "write"]

      val write'
        :  t
        -> chunk:any
        -> ?cb:(error:Error.t or_null_or_undefined -> unit)
        -> unit
        -> bool
        [@@js.call "write"]

      val setDefaultEncoding : t -> encoding:BufferEncoding.t -> t
        [@@js.call "setDefaultEncoding"]

      val end_ : t -> ?cb:(unit -> unit) -> unit -> unit [@@js.call "end"]

      val end_' : t -> chunk:any -> ?cb:(unit -> unit) -> unit -> unit
        [@@js.call "end"]

      val end_''
        :  t
        -> chunk:any
        -> ?encoding:BufferEncoding.t
        -> ?cb:(unit -> unit)
        -> unit
        -> unit
        [@@js.call "end"]

      val cork : t -> unit [@@js.call "cork"]

      val uncork : t -> unit [@@js.call "uncork"]

      val cast : t -> stream_internal_Readable [@@js.cast]

      val cast' : t -> stream_internal_Writable [@@js.cast]
    end
    [@@js.scope "Duplex"]

    module TransformCallback : sig
      type t = stream_internal_TransformCallback

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val apply : t -> ?error:Error.t or_null -> ?data:any -> unit -> unit
        [@@js.apply]
    end
    [@@js.scope "TransformCallback"]

    module TransformOptions : sig
      include module type of struct
        include DuplexOptions
      end

      val read : t -> this:stream_internal_Transform -> size:int -> unit
        [@@js.call "read"]

      val write
        :  t
        -> this:stream_internal_Transform
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "write"]

      val writev
        :  t
        -> this:stream_internal_Transform
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "writev"]

      val final
        :  t
        -> this:stream_internal_Transform
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "final"]

      val destroy
        :  t
        -> this:stream_internal_Transform
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val transform
        :  t
        -> this:stream_internal_Transform
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:stream_internal_TransformCallback
        -> unit
        [@@js.call "transform"]

      val flush
        :  t
        -> this:stream_internal_Transform
        -> callback:stream_internal_TransformCallback
        -> unit
        [@@js.call "flush"]
    end
    [@@js.scope "TransformOptions"]

    module Transform : sig
      include module type of struct
        include Duplex
      end

      val create : ?opts:stream_internal_TransformOptions -> unit -> t
        [@@js.create]

      val _transform
        :  t
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:stream_internal_TransformCallback
        -> unit
        [@@js.call "_transform"]

      val _flush : t -> callback:stream_internal_TransformCallback -> unit
        [@@js.call "_flush"]
    end
    [@@js.scope "Transform"]

    module PassThrough : sig
      include module type of struct
        include Transform
      end
    end

    module FinishedOptions : sig
      type t = stream_internal_FinishedOptions

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_error : t -> bool [@@js.get "error"]

      val set_error : t -> bool -> unit [@@js.set "error"]

      val get_readable : t -> bool [@@js.get "readable"]

      val set_readable : t -> bool -> unit [@@js.set "readable"]

      val get_writable : t -> bool [@@js.get "writable"]

      val set_writable : t -> bool -> unit [@@js.set "writable"]
    end
    [@@js.scope "FinishedOptions"]

    val finished
      :  stream:(ReadWriteStream.t, ReadableStream.t, WritableStream.t) union3
      -> options:stream_internal_FinishedOptions
      -> callback:(?err:ErrnoException.t or_null -> unit -> unit)
      -> (unit -> unit[@js.dummy])
      [@@js.global "finished"]

    val finished
      :  stream:(ReadWriteStream.t, ReadableStream.t, WritableStream.t) union3
      -> callback:(?err:ErrnoException.t or_null -> unit -> unit)
      -> (unit -> unit[@js.dummy])
      [@@js.global "finished"]

    module Finished : sig
      val __promisify__
        :  stream:(ReadWriteStream.t, ReadableStream.t, WritableStream.t) union3
        -> ?options:stream_internal_FinishedOptions
        -> unit
        -> unit Promise.t
        [@@js.global "__promisify__"]
    end
    [@@js.scope "finished"]

    val pipeline
      :  stream1:ReadableStream.t
      -> stream2:'T
      -> ?callback:(err:ErrnoException.t or_null -> unit)
      -> unit
      -> 'T
      [@@js.global "pipeline"]

    val pipeline
      :  stream1:ReadableStream.t
      -> stream2:ReadWriteStream.t
      -> stream3:'T
      -> ?callback:(err:ErrnoException.t or_null -> unit)
      -> unit
      -> 'T
      [@@js.global "pipeline"]

    val pipeline
      :  stream1:ReadableStream.t
      -> stream2:ReadWriteStream.t
      -> stream3:ReadWriteStream.t
      -> stream4:'T
      -> ?callback:(err:ErrnoException.t or_null -> unit)
      -> unit
      -> 'T
      [@@js.global "pipeline"]

    val pipeline
      :  stream1:ReadableStream.t
      -> stream2:ReadWriteStream.t
      -> stream3:ReadWriteStream.t
      -> stream4:ReadWriteStream.t
      -> stream5:'T
      -> ?callback:(err:ErrnoException.t or_null -> unit)
      -> unit
      -> 'T
      [@@js.global "pipeline"]

    val pipeline
      :  streams:
           (ReadWriteStream.t, ReadableStream.t, WritableStream.t) union3 list
      -> ?callback:(err:ErrnoException.t or_null -> unit)
      -> unit
      -> WritableStream.t
      [@@js.global "pipeline"]

    val pipeline
      :  stream1:ReadableStream.t
      -> stream2:(ReadWriteStream.t, WritableStream.t) union2
      -> streams:
           (* FIXME: type 'Array<union<?ReadWriteStream | ?WritableStream |
              (~err:union<?ErrnoException | Null> -> Void)>>' cannot be used for
              variadic argument *)
           (any list[@js.variadic])
      -> WritableStream.t
      [@@js.global "pipeline"]

    module Pipeline : sig
      val __promisify__
        :  stream1:ReadableStream.t
        -> stream2:WritableStream.t
        -> unit Promise.t
        [@@js.global "__promisify__"]

      val __promisify__
        :  stream1:ReadableStream.t
        -> stream2:ReadWriteStream.t
        -> stream3:WritableStream.t
        -> unit Promise.t
        [@@js.global "__promisify__"]

      val __promisify__
        :  stream1:ReadableStream.t
        -> stream2:ReadWriteStream.t
        -> stream3:ReadWriteStream.t
        -> stream4:WritableStream.t
        -> unit Promise.t
        [@@js.global "__promisify__"]

      val __promisify__
        :  stream1:ReadableStream.t
        -> stream2:ReadWriteStream.t
        -> stream3:ReadWriteStream.t
        -> stream4:ReadWriteStream.t
        -> stream5:WritableStream.t
        -> unit Promise.t
        [@@js.global "__promisify__"]

      val __promisify__
        :  streams:
             (ReadWriteStream.t, ReadableStream.t, WritableStream.t) union3 list
        -> unit Promise.t
        [@@js.global "__promisify__"]

      val __promisify__
        :  stream1:ReadableStream.t
        -> stream2:(ReadWriteStream.t, WritableStream.t) union2
        -> streams:
             (* FIXME: type 'Array<union<?ReadWriteStream | ?WritableStream>>'
                cannot be used for variadic argument *)
             (any list[@js.variadic])
        -> unit Promise.t
        [@@js.global "__promisify__"]
    end
    [@@js.scope "pipeline"]

    module Pipe : sig
      type t = stream_internal_Pipe

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val close : t -> unit [@@js.call "close"]

      val hasRef : t -> bool [@@js.call "hasRef"]

      val ref : t -> unit [@@js.call "ref"]

      val unref : t -> unit [@@js.call "unref"]
    end
    [@@js.scope "Pipe"]
  end
  [@@js.scope "internal"]
  (* export = internal *)

  include module type of struct
    include Internal
  end
end
[@@js.scope Import.stream]
