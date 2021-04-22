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
    type stream = Node_events.Events.EventEmitter.t

    module Base : sig
      include module type of struct
          include Node_events.Events.EventEmitter
        end
        with type t = stream

      val pipe : t -> 'T -> ?options:AnonymousInterface1.t -> unit -> 'T
        [@@js.call "pipe"]
    end

    module ReadableOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_high_water_mark : t -> int [@@js.get "highWaterMark"]

      val set_high_water_mark : t -> int -> unit [@@js.set "highWaterMark"]

      val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

      val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

      val get_object_mode : t -> bool [@@js.get "objectMode"]

      val set_object_mode : t -> bool -> unit [@@js.set "objectMode"]

      val read : t -> this:stream -> size:int -> unit [@@js.call "read"]

      val destroy
        :  t
        -> this:stream
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val get_auto_destroy : t -> bool [@@js.get "autoDestroy"]

      val set_auto_destroy : t -> bool -> unit [@@js.set "autoDestroy"]
    end
    [@@js.scope "ReadableOptions"]

    module Stream : sig
      include module type of struct
          include Base
        end
        with type t = stream

      val create : ?opts:ReadableOptions.t -> unit -> t [@@js.create]
    end
    [@@js.scope "Stream"]

    module Readable : sig
      include module type of struct
          include Stream
        end
        with type t = stream

      val from
        :  iterable:(any AsyncIterable.t, any Iterable.t) union2
        -> ?options:ReadableOptions.t
        -> unit
        -> t
        [@@js.global "from"]

      val get_readable : t -> bool [@@js.get "readable"]

      val set_readable : t -> bool -> unit [@@js.set "readable"]

      val get_readable_encoding : t -> BufferEncoding.t or_null
        [@@js.get "readableEncoding"]

      val get_readable_ended : t -> bool [@@js.get "readableEnded"]

      val get_readable_flowing : t -> bool or_null [@@js.get "readableFlowing"]

      val get_readable_high_water_mark : t -> int
        [@@js.get "readableHighWaterMark"]

      val get_readable_length : t -> int [@@js.get "readableLength"]

      val get_readable_object_mode : t -> bool [@@js.get "readableObjectMode"]

      val get_destroyed : t -> bool [@@js.get "destroyed"]

      val set_destroyed : t -> bool -> unit [@@js.set "destroyed"]

      val create : ?opts:ReadableOptions.t -> unit -> t [@@js.create]

      val _read : t -> size:int -> unit [@@js.call "_read"]

      val read : t -> ?size:int -> unit -> any [@@js.call "read"]

      val set_encoding : t -> encoding:BufferEncoding.t -> t
        [@@js.call "setEncoding"]

      val pause : t -> t [@@js.call "pause"]

      val resume : t -> t [@@js.call "resume"]

      val is_paused : t -> bool [@@js.call "isPaused"]

      val unpipe : t -> ?destination:WritableStream.t -> unit -> t
        [@@js.call "unpipe"]

      val unshift : t -> chunk:any -> ?encoding:BufferEncoding.t -> unit -> unit
        [@@js.call "unshift"]

      val wrap : t -> old_stream:ReadableStream.t -> t [@@js.call "wrap"]

      val push : t -> chunk:any -> ?encoding:BufferEncoding.t -> unit -> bool
        [@@js.call "push"]

      val _destroy
        :  t
        -> error:Error.t or_null
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "_destroy"]

      val destroy : t -> ?error:Error.t -> unit -> unit [@@js.call "destroy"]

      val add_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener'''''''
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

      val prepend_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_once_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener''
        :  t
        -> event:([ `end_ ][@js.enum])
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
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val remove_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'
        :  t
        -> event:([ `data ][@js.enum])
        -> listener:(chunk:any -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener''
        :  t
        -> event:([ `end_ ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener''''
        :  t
        -> event:([ `pause ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'''''
        :  t
        -> event:([ `readable ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener''''''
        :  t
        -> event:([ `resume ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "removeListener"]

      val cast : t -> Stream.t [@@js.cast]

      val cast' : t -> ReadableStream.t [@@js.cast]
    end
    [@@js.scope "Readable"]

    module WritableOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_high_water_mark : t -> int [@@js.get "highWaterMark"]

      val set_high_water_mark : t -> int -> unit [@@js.set "highWaterMark"]

      val get_decode_strings : t -> bool [@@js.get "decodeStrings"]

      val set_decode_strings : t -> bool -> unit [@@js.set "decodeStrings"]

      val get_default_encoding : t -> BufferEncoding.t
        [@@js.get "defaultEncoding"]

      val set_default_encoding : t -> BufferEncoding.t -> unit
        [@@js.set "defaultEncoding"]

      val get_object_mode : t -> bool [@@js.get "objectMode"]

      val set_object_mode : t -> bool -> unit [@@js.set "objectMode"]

      val get_emit_close : t -> bool [@@js.get "emitClose"]

      val set_emit_close : t -> bool -> unit [@@js.set "emitClose"]

      val write
        :  t
        -> this:stream
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "write"]

      val writev
        :  t
        -> this:stream
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "writev"]

      val destroy
        :  t
        -> this:stream
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val final
        :  t
        -> this:stream
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "final"]

      val get_auto_destroy : t -> bool [@@js.get "autoDestroy"]

      val set_auto_destroy : t -> bool -> unit [@@js.set "autoDestroy"]
    end
    [@@js.scope "WritableOptions"]

    module Writable : sig
      include module type of struct
        include Stream
      end

      val get_writable : t -> bool [@@js.get "writable"]

      val get_writable_ended : t -> bool [@@js.get "writableEnded"]

      val get_writable_finished : t -> bool [@@js.get "writableFinished"]

      val get_writable_high_water_mark : t -> int
        [@@js.get "writableHighWaterMark"]

      val get_writable_length : t -> int [@@js.get "writableLength"]

      val get_writable_object_mode : t -> bool [@@js.get "writableObjectMode"]

      val get_writable_corked : t -> int [@@js.get "writableCorked"]

      val get_destroyed : t -> bool [@@js.get "destroyed"]

      val set_destroyed : t -> bool -> unit [@@js.set "destroyed"]

      val create : ?opts:WritableOptions.t -> unit -> t [@@js.create]

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

      val set_default_encoding : t -> encoding:BufferEncoding.t -> t
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

      val add_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "addListener"]

      val add_listener''''''
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

      val emit'''' : t -> event:([ `pipe ][@js.enum]) -> src:Readable.t -> bool
        [@@js.call "emit"]

      val emit'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> src:Readable.t
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
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "on"]

      val on'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
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
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "once"]

      val once'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "once"]

      val once''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "once"]

      val prepend_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_listener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependListener"]

      val prepend_once_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val prepend_once_listener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "prependOnceListener"]

      val remove_listener
        :  t
        -> event:([ `close ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'
        :  t
        -> event:([ `drain ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener''
        :  t
        -> event:([ `error ][@js.enum])
        -> listener:(err:Error.t -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'''
        :  t
        -> event:([ `finish ][@js.enum])
        -> listener:(unit -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener''''
        :  t
        -> event:([ `pipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener'''''
        :  t
        -> event:([ `unpipe ][@js.enum])
        -> listener:(src:Readable.t -> unit)
        -> t
        [@@js.call "removeListener"]

      val remove_listener''''''
        :  t
        -> event:symbol or_string
        -> listener:(args:(any list[@js.variadic]) -> unit)
        -> t
        [@@js.call "removeListener"]

      val cast : t -> Stream.t [@@js.cast]

      val cast' : t -> WritableStream.t [@@js.cast]
    end
    [@@js.scope "Writable"]

    module DuplexOptions : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_allow_half_open : t -> bool [@@js.get "allowHalfOpen"]

      val set_allow_half_open : t -> bool -> unit [@@js.set "allowHalfOpen"]

      val get_readable_object_mode : t -> bool [@@js.get "readableObjectMode"]

      val set_readable_object_mode : t -> bool -> unit
        [@@js.set "readableObjectMode"]

      val get_writable_object_mode : t -> bool [@@js.get "writableObjectMode"]

      val set_writable_object_mode : t -> bool -> unit
        [@@js.set "writableObjectMode"]

      val get_readable_high_water_mark : t -> int
        [@@js.get "readableHighWaterMark"]

      val set_readable_high_water_mark : t -> int -> unit
        [@@js.set "readableHighWaterMark"]

      val get_writable_high_water_mark : t -> int
        [@@js.get "writableHighWaterMark"]

      val set_writable_high_water_mark : t -> int -> unit
        [@@js.set "writableHighWaterMark"]

      val get_writable_corked : t -> int [@@js.get "writableCorked"]

      val set_writable_corked : t -> int -> unit [@@js.set "writableCorked"]

      val read : t -> this:stream -> size:int -> unit [@@js.call "read"]

      val write
        :  t
        -> this:stream
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "write"]

      val writev
        :  t
        -> this:stream
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "writev"]

      val final
        :  t
        -> this:stream
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "final"]

      val destroy
        :  t
        -> this:stream
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val cast : t -> ReadableOptions.t [@@js.cast]

      val cast' : t -> WritableOptions.t [@@js.cast]
    end
    [@@js.scope "DuplexOptions"]

    module Duplex : sig
      include module type of struct
        include Stream
      end

      val get_writable : t -> bool [@@js.get "writable"]

      val get_writable_ended : t -> bool [@@js.get "writableEnded"]

      val get_writable_finished : t -> bool [@@js.get "writableFinished"]

      val get_writable_high_water_mark : t -> int
        [@@js.get "writableHighWaterMark"]

      val get_writable_length : t -> int [@@js.get "writableLength"]

      val get_writable_object_mode : t -> bool [@@js.get "writableObjectMode"]

      val get_writable_corked : t -> int [@@js.get "writableCorked"]

      val create : ?opts:DuplexOptions.t -> unit -> t [@@js.create]

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

      val set_default_encoding : t -> encoding:BufferEncoding.t -> t
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

      val cast : t -> Readable.t [@@js.cast]

      val cast' : t -> Writable.t [@@js.cast]
    end
    [@@js.scope "Duplex"]

    module TransformCallback : sig
      type t

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

      val read : t -> this:stream -> size:int -> unit [@@js.call "read"]

      val write
        :  t
        -> this:stream
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "write"]

      val writev
        :  t
        -> this:stream
        -> chunks:AnonymousInterface0.t list
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "writev"]

      val final
        :  t
        -> this:stream
        -> callback:(?error:Error.t or_null -> unit -> unit)
        -> unit
        [@@js.call "final"]

      val destroy
        :  t
        -> this:stream
        -> error:Error.t or_null
        -> callback:(error:Error.t or_null -> unit)
        -> unit
        [@@js.call "destroy"]

      val transform
        :  t
        -> this:stream
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:TransformCallback.t
        -> unit
        [@@js.call "transform"]

      val flush : t -> this:stream -> callback:TransformCallback.t -> unit
        [@@js.call "flush"]
    end
    [@@js.scope "TransformOptions"]

    module Transform : sig
      include module type of struct
        include Duplex
      end

      val create : ?opts:TransformOptions.t -> unit -> t [@@js.create]

      val _transform
        :  t
        -> chunk:any
        -> encoding:BufferEncoding.t
        -> callback:TransformCallback.t
        -> unit
        [@@js.call "_transform"]

      val _flush : t -> callback:TransformCallback.t -> unit
        [@@js.call "_flush"]
    end
    [@@js.scope "Transform"]

    module PassThrough : sig
      include module type of struct
        include Transform
      end
    end

    module FinishedOptions : sig
      type t

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
      -> options:FinishedOptions.t
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
        -> ?options:FinishedOptions.t
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
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val close : t -> unit [@@js.call "close"]

      val has_ref : t -> bool [@@js.call "hasRef"]

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
