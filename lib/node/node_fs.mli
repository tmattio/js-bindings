[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals
open Node_stream

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

    type anonymous_interface_5 = [ `anonymous_interface_5 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_6 = [ `anonymous_interface_6 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_7 = [ `anonymous_interface_7 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_8 = [ `anonymous_interface_8 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_9 = [ `anonymous_interface_9 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_10 = [ `anonymous_interface_10 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_11 = [ `anonymous_interface_11 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_12 = [ `anonymous_interface_12 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_13 = [ `anonymous_interface_13 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_14 = [ `anonymous_interface_14 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_15 = [ `anonymous_interface_15 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_16 = [ `anonymous_interface_16 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_17 = [ `anonymous_interface_17 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_18 = [ `anonymous_interface_18 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_19 = [ `anonymous_interface_19 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_20 = [ `anonymous_interface_20 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces

module Fs : sig
  module OpenMode : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Mode : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module StatsBase : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val isFile : 'T t -> bool [@@js.call "isFile"]

    val isDirectory : 'T t -> bool [@@js.call "isDirectory"]

    val isBlockDevice : 'T t -> bool [@@js.call "isBlockDevice"]

    val isCharacterDevice : 'T t -> bool [@@js.call "isCharacterDevice"]

    val isSymbolicLink : 'T t -> bool [@@js.call "isSymbolicLink"]

    val isFIFO : 'T t -> bool [@@js.call "isFIFO"]

    val isSocket : 'T t -> bool [@@js.call "isSocket"]

    val get_dev : 'T t -> 'T [@@js.get "dev"]

    val set_dev : 'T t -> 'T -> unit [@@js.set "dev"]

    val get_ino : 'T t -> 'T [@@js.get "ino"]

    val set_ino : 'T t -> 'T -> unit [@@js.set "ino"]

    val get_mode : 'T t -> 'T [@@js.get "mode"]

    val set_mode : 'T t -> 'T -> unit [@@js.set "mode"]

    val get_nlink : 'T t -> 'T [@@js.get "nlink"]

    val set_nlink : 'T t -> 'T -> unit [@@js.set "nlink"]

    val get_uid : 'T t -> 'T [@@js.get "uid"]

    val set_uid : 'T t -> 'T -> unit [@@js.set "uid"]

    val get_gid : 'T t -> 'T [@@js.get "gid"]

    val set_gid : 'T t -> 'T -> unit [@@js.set "gid"]

    val get_rdev : 'T t -> 'T [@@js.get "rdev"]

    val set_rdev : 'T t -> 'T -> unit [@@js.set "rdev"]

    val get_size : 'T t -> 'T [@@js.get "size"]

    val set_size : 'T t -> 'T -> unit [@@js.set "size"]

    val get_blksize : 'T t -> 'T [@@js.get "blksize"]

    val set_blksize : 'T t -> 'T -> unit [@@js.set "blksize"]

    val get_blocks : 'T t -> 'T [@@js.get "blocks"]

    val set_blocks : 'T t -> 'T -> unit [@@js.set "blocks"]

    val get_atimeMs : 'T t -> 'T [@@js.get "atimeMs"]

    val set_atimeMs : 'T t -> 'T -> unit [@@js.set "atimeMs"]

    val get_mtimeMs : 'T t -> 'T [@@js.get "mtimeMs"]

    val set_mtimeMs : 'T t -> 'T -> unit [@@js.set "mtimeMs"]

    val get_ctimeMs : 'T t -> 'T [@@js.get "ctimeMs"]

    val set_ctimeMs : 'T t -> 'T -> unit [@@js.set "ctimeMs"]

    val get_birthtimeMs : 'T t -> 'T [@@js.get "birthtimeMs"]

    val set_birthtimeMs : 'T t -> 'T -> unit [@@js.set "birthtimeMs"]

    val get_atime : 'T t -> Date.t [@@js.get "atime"]

    val set_atime : 'T t -> Date.t -> unit [@@js.set "atime"]

    val get_mtime : 'T t -> Date.t [@@js.get "mtime"]

    val set_mtime : 'T t -> Date.t -> unit [@@js.set "mtime"]

    val get_ctime : 'T t -> Date.t [@@js.get "ctime"]

    val set_ctime : 'T t -> Date.t -> unit [@@js.set "ctime"]

    val get_birthtime : 'T t -> Date.t [@@js.get "birthtime"]

    val set_birthtime : 'T t -> Date.t -> unit [@@js.set "birthtime"]
  end
  [@@js.scope "StatsBase"]

  module Stats : sig
    include module type of struct
      include StatsBase
    end

    type t = int StatsBase.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module AnonymousInterface0 : sig
    type t = anonymous_interface_0

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bigint : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "bigint"]

    val set_bigint : t -> ([ `L_b_false ][@js.enum]) -> unit [@@js.set "bigint"]
  end

  module AnonymousInterface1 : sig
    type t = anonymous_interface_1

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bigint : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "bigint"]

    val set_bigint : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "bigint"]
  end

  module AnonymousInterface2 : sig
    type t = anonymous_interface_2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytesRead : t -> int [@@js.get "bytesRead"]

    val set_bytesRead : t -> int -> unit [@@js.set "bytesRead"]

    val get_buffer : t -> 'TBuffer [@@js.get "buffer"]

    val set_buffer : t -> 'TBuffer -> unit [@@js.set "buffer"]
  end

  module AnonymousInterface3 : sig
    type t = anonymous_interface_3

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytesWritten : t -> int [@@js.get "bytesWritten"]

    val set_bytesWritten : t -> int -> unit [@@js.set "bytesWritten"]

    val get_buffer : t -> 'TBuffer [@@js.get "buffer"]

    val set_buffer : t -> 'TBuffer -> unit [@@js.set "buffer"]
  end

  module AnonymousInterface4 : sig
    type t = anonymous_interface_4

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytesWritten : t -> int [@@js.get "bytesWritten"]

    val set_bytesWritten : t -> int -> unit [@@js.set "bytesWritten"]

    val get_buffer : t -> string [@@js.get "buffer"]

    val set_buffer : t -> string -> unit [@@js.set "buffer"]
  end

  module AnonymousInterface5 : sig
    type t = anonymous_interface_5

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface6 : sig
    type t = anonymous_interface_6

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> never or_null [@@js.get "encoding"]

    val set_encoding : t -> never or_null -> unit [@@js.set "encoding"]

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface7 : sig
    type t = anonymous_interface_7

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit
      [@@js.set "encoding"]
  end

  module AnonymousInterface8 : sig
    type t = anonymous_interface_8

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit
      [@@js.set "encoding"]

    val get_persistent : t -> bool [@@js.get "persistent"]

    val set_persistent : t -> bool -> unit [@@js.set "persistent"]

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]
  end

  module AnonymousInterface9 : sig
    type t = anonymous_interface_9

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit
      [@@js.set "encoding"]

    val get_withFileTypes : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_withFileTypes : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module AnonymousInterface10 : sig
    type t = anonymous_interface_10

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t or_null [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t or_null -> unit
      [@@js.set "encoding"]

    val get_persistent : t -> bool [@@js.get "persistent"]

    val set_persistent : t -> bool -> unit [@@js.set "persistent"]

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]
  end

  module AnonymousInterface11 : sig
    type t = anonymous_interface_11

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t or_null [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t or_null -> unit
      [@@js.set "encoding"]

    val get_withFileTypes : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_withFileTypes : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module AnonymousInterface12 : sig
    type t = anonymous_interface_12

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface13 : sig
    type t = anonymous_interface_13

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_flags : t -> string [@@js.get "flags"]

    val set_flags : t -> string -> unit [@@js.set "flags"]

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_fd : t -> int [@@js.get "fd"]

    val set_fd : t -> int -> unit [@@js.set "fd"]

    val get_mode : t -> int [@@js.get "mode"]

    val set_mode : t -> int -> unit [@@js.set "mode"]

    val get_autoClose : t -> bool [@@js.get "autoClose"]

    val set_autoClose : t -> bool -> unit [@@js.set "autoClose"]

    val get_emitClose : t -> bool [@@js.get "emitClose"]

    val set_emitClose : t -> bool -> unit [@@js.set "emitClose"]

    val get_start : t -> int [@@js.get "start"]

    val set_start : t -> int -> unit [@@js.set "start"]

    val get_end : t -> int [@@js.get "end"]

    val set_end : t -> int -> unit [@@js.set "end"]

    val get_highWaterMark : t -> int [@@js.get "highWaterMark"]

    val set_highWaterMark : t -> int -> unit [@@js.set "highWaterMark"]
  end

  module AnonymousInterface14 : sig
    type t = anonymous_interface_14

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_flags : t -> string [@@js.get "flags"]

    val set_flags : t -> string -> unit [@@js.set "flags"]

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_fd : t -> int [@@js.get "fd"]

    val set_fd : t -> int -> unit [@@js.set "fd"]

    val get_mode : t -> int [@@js.get "mode"]

    val set_mode : t -> int -> unit [@@js.set "mode"]

    val get_autoClose : t -> bool [@@js.get "autoClose"]

    val set_autoClose : t -> bool -> unit [@@js.set "autoClose"]

    val get_emitClose : t -> bool [@@js.get "emitClose"]

    val set_emitClose : t -> bool -> unit [@@js.set "emitClose"]

    val get_start : t -> int [@@js.get "start"]

    val set_start : t -> int -> unit [@@js.set "start"]

    val get_highWaterMark : t -> int [@@js.get "highWaterMark"]

    val set_highWaterMark : t -> int -> unit [@@js.set "highWaterMark"]
  end

  module AnonymousInterface15 : sig
    type t = anonymous_interface_15

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_mode : t -> Mode.t [@@js.get "mode"]

    val set_mode : t -> Mode.t -> unit [@@js.set "mode"]

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface16 : sig
    type t = anonymous_interface_16

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_persistent : t -> bool [@@js.get "persistent"]

    val set_persistent : t -> bool -> unit [@@js.set "persistent"]

    val get_interval : t -> int [@@js.get "interval"]

    val set_interval : t -> int -> unit [@@js.set "interval"]
  end

  module AnonymousInterface17 : sig
    type t = anonymous_interface_17

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_recursive : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "recursive"]

    val set_recursive : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "recursive"]
  end

  module AnonymousInterface18 : sig
    type t = anonymous_interface_18

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_recursive : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "recursive"]

    val set_recursive : t -> ([ `L_b_true ][@js.enum]) -> unit
      [@@js.set "recursive"]
  end

  module AnonymousInterface19 : sig
    type t = anonymous_interface_19

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_withFileTypes : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_withFileTypes : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module AnonymousInterface20 : sig
    type t = anonymous_interface_20

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_withFileTypes : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_withFileTypes : t -> ([ `L_b_true ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module PathLike : sig
    type t = string

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NoParamCallback : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> err:ErrnoException.t or_null -> unit [@@js.apply]
  end
  [@@js.scope "NoParamCallback"]

  module BufferEncodingOption : sig
    type t = ([ `buffer [@js "buffer"] ][@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module BaseEncodingOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t or_null [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t or_null -> unit
      [@@js.set "encoding"]
  end
  [@@js.scope "BaseEncodingOptions"]

  module Dirent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val isFile : t -> bool [@@js.call "isFile"]

    val isDirectory : t -> bool [@@js.call "isDirectory"]

    val isBlockDevice : t -> bool [@@js.call "isBlockDevice"]

    val isCharacterDevice : t -> bool [@@js.call "isCharacterDevice"]

    val isSymbolicLink : t -> bool [@@js.call "isSymbolicLink"]

    val isFIFO : t -> bool [@@js.call "isFIFO"]

    val isSocket : t -> bool [@@js.call "isSocket"]

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]
  end
  [@@js.scope "Dirent"]

  module Dir : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_path : t -> string [@@js.get "path"]

    val close : t -> unit Promise.t [@@js.call "close"]

    val close' : t -> cb:NoParamCallback.t -> unit [@@js.call "close"]

    val closeSync : t -> unit [@@js.call "closeSync"]

    val read : t -> Dirent.t or_null Promise.t [@@js.call "read"]

    val read'
      :  t
      -> cb:(err:ErrnoException.t or_null -> dirEnt:Dirent.t or_null -> unit)
      -> unit
      [@@js.call "read"]

    val readSync : t -> Dirent.t or_null [@@js.call "readSync"]
  end
  [@@js.scope "Dir"]

  module FSWatcher : sig
    include module type of struct
      include Node_events.Events.EventEmitter
    end

    val close : t -> unit [@@js.call "close"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `change ][@js.enum])
      -> listener:(eventType:string -> filename:Buffer.t or_string -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `change ][@js.enum])
      -> listener:(eventType:string -> filename:Buffer.t or_string -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `close ][@js.enum])
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
      -> event:([ `change ][@js.enum])
      -> listener:(eventType:string -> filename:Buffer.t or_string -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `close ][@js.enum])
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
      -> event:([ `change ][@js.enum])
      -> listener:(eventType:string -> filename:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `close ][@js.enum])
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
      -> event:([ `change ][@js.enum])
      -> listener:(eventType:string -> filename:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]
  end
  [@@js.scope "FSWatcher"]

  module ReadStream : sig
    include module type of struct
      include Stream.Readable
    end

    val close : t -> unit [@@js.call "close"]

    val get_bytesRead : t -> int [@@js.get "bytesRead"]

    val set_bytesRead : t -> int -> unit [@@js.set "bytesRead"]

    val get_path : t -> Buffer.t or_string [@@js.get "path"]

    val set_path : t -> Buffer.t or_string -> unit [@@js.set "path"]

    val get_pending : t -> bool [@@js.get "pending"]

    val set_pending : t -> bool -> unit [@@js.set "pending"]

    val addListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "on"]

    val on'' : t -> event:([ `end_ ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''
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
      -> listener:(chunk:Buffer.t or_string -> unit)
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''
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
      -> listener:(chunk:Buffer.t or_string -> unit)
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `pause ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:([ `resume ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]
  end
  [@@js.scope "ReadStream"]

  module WriteStream : sig
    include module type of struct
      include Stream.Writable
    end

    val close : t -> unit [@@js.call "close"]

    val get_bytesWritten : t -> int [@@js.get "bytesWritten"]

    val set_bytesWritten : t -> int -> unit [@@js.set "bytesWritten"]

    val get_path : t -> Buffer.t or_string [@@js.get "path"]

    val set_path : t -> Buffer.t or_string -> unit [@@js.set "path"]

    val get_pending : t -> bool [@@js.get "pending"]

    val set_pending : t -> bool -> unit [@@js.set "pending"]

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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on' : t -> event:([ `drain ][@js.enum]) -> listener:(unit -> unit) -> t
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
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
      -> event:([ `open_ ][@js.enum])
      -> listener:(fd:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `ready ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]
  end
  [@@js.scope "WriteStream"]

  val rename
    :  oldPath:PathLike.t
    -> newPath:PathLike.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "rename"]

  module Rename : sig
    val __promisify__
      :  oldPath:PathLike.t
      -> newPath:PathLike.t
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "rename"]

  val renameSync : oldPath:PathLike.t -> newPath:PathLike.t -> unit
    [@@js.global "renameSync"]

  val truncate
    :  path:PathLike.t
    -> len:int or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "truncate"]

  val truncate : path:PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "truncate"]

  module Truncate : sig
    val __promisify__
      :  path:PathLike.t
      -> ?len:int or_null
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "truncate"]

  val truncateSync : path:PathLike.t -> ?len:int or_null -> unit -> unit
    [@@js.global "truncateSync"]

  val ftruncate
    :  fd:int
    -> len:int or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "ftruncate"]

  val ftruncate : fd:int -> callback:NoParamCallback.t -> unit
    [@@js.global "ftruncate"]

  module Ftruncate : sig
    val __promisify__ : fd:int -> ?len:int or_null -> unit -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "ftruncate"]

  val ftruncateSync : fd:int -> ?len:int or_null -> unit -> unit
    [@@js.global "ftruncateSync"]

  val chown
    :  path:PathLike.t
    -> uid:int
    -> gid:int
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "chown"]

  module Chown : sig
    val __promisify__ : path:PathLike.t -> uid:int -> gid:int -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "chown"]

  val chownSync : path:PathLike.t -> uid:int -> gid:int -> unit
    [@@js.global "chownSync"]

  val fchown
    :  fd:int
    -> uid:int
    -> gid:int
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "fchown"]

  module Fchown : sig
    val __promisify__ : fd:int -> uid:int -> gid:int -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "fchown"]

  val fchownSync : fd:int -> uid:int -> gid:int -> unit
    [@@js.global "fchownSync"]

  val lchown
    :  path:PathLike.t
    -> uid:int
    -> gid:int
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "lchown"]

  module Lchown : sig
    val __promisify__ : path:PathLike.t -> uid:int -> gid:int -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lchown"]

  val lchownSync : path:PathLike.t -> uid:int -> gid:int -> unit
    [@@js.global "lchownSync"]

  val lutimes
    :  path:PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "lutimes"]

  module Lutimes : sig
    val __promisify__
      :  path:PathLike.t
      -> atime:Date.t or_string or_number
      -> mtime:Date.t or_string or_number
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lutimes"]

  val lutimesSync
    :  path:PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> unit
    [@@js.global "lutimesSync"]

  val chmod
    :  path:PathLike.t
    -> mode:Mode.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "chmod"]

  module Chmod : sig
    val __promisify__ : path:PathLike.t -> mode:Mode.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "chmod"]

  val chmodSync : path:PathLike.t -> mode:Mode.t -> unit
    [@@js.global "chmodSync"]

  val fchmod : fd:int -> mode:Mode.t -> callback:NoParamCallback.t -> unit
    [@@js.global "fchmod"]

  module Fchmod : sig
    val __promisify__ : fd:int -> mode:Mode.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "fchmod"]

  val fchmodSync : fd:int -> mode:Mode.t -> unit [@@js.global "fchmodSync"]

  val lchmod
    :  path:PathLike.t
    -> mode:Mode.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "lchmod"]

  module Lchmod : sig
    val __promisify__ : path:PathLike.t -> mode:Mode.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lchmod"]

  val lchmodSync : path:PathLike.t -> mode:Mode.t -> unit
    [@@js.global "lchmodSync"]

  val stat
    :  path:PathLike.t
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "stat"]

  module StatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bigint : t -> bool [@@js.get "bigint"]

    val set_bigint : t -> bool -> unit [@@js.set "bigint"]
  end
  [@@js.scope "StatOptions"]

  val stat
    :  path:PathLike.t
    -> options:(StatOptions.t, anonymous_interface_0) intersection2 or_undefined
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "stat"]

  module BigIntStats : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_atimeNs : t -> bigint [@@js.get "atimeNs"]

    val set_atimeNs : t -> bigint -> unit [@@js.set "atimeNs"]

    val get_mtimeNs : t -> bigint [@@js.get "mtimeNs"]

    val set_mtimeNs : t -> bigint -> unit [@@js.set "mtimeNs"]

    val get_ctimeNs : t -> bigint [@@js.get "ctimeNs"]

    val set_ctimeNs : t -> bigint -> unit [@@js.set "ctimeNs"]

    val get_birthtimeNs : t -> bigint [@@js.get "birthtimeNs"]

    val set_birthtimeNs : t -> bigint -> unit [@@js.set "birthtimeNs"]

    val cast : t -> bigint StatsBase.t [@@js.cast]
  end
  [@@js.scope "BigIntStats"]

  val stat
    :  path:PathLike.t
    -> options:(StatOptions.t, anonymous_interface_1) intersection2
    -> callback:(err:ErrnoException.t or_null -> stats:BigIntStats.t -> unit)
    -> unit
    [@@js.global "stat"]

  val stat
    :  path:PathLike.t
    -> options:StatOptions.t or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> stats:(BigIntStats.t, Stats.t) union2
          -> unit)
    -> unit
    [@@js.global "stat"]

  module Stat : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:(StatOptions.t, anonymous_interface_0) intersection2
      -> unit
      -> Stats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> options:(StatOptions.t, anonymous_interface_1) intersection2
      -> BigIntStats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:StatOptions.t
      -> unit
      -> (BigIntStats.t, Stats.t) union2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "stat"]

  val statSync
    :  path:PathLike.t
    -> ?options:(StatOptions.t, anonymous_interface_0) intersection2
    -> unit
    -> Stats.t
    [@@js.global "statSync"]

  val statSync
    :  path:PathLike.t
    -> options:(StatOptions.t, anonymous_interface_1) intersection2
    -> BigIntStats.t
    [@@js.global "statSync"]

  val statSync
    :  path:PathLike.t
    -> ?options:StatOptions.t
    -> unit
    -> (BigIntStats.t, Stats.t) union2
    [@@js.global "statSync"]

  val fstat
    :  fd:int
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "fstat"]

  val fstat
    :  fd:int
    -> options:(StatOptions.t, anonymous_interface_0) intersection2 or_undefined
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "fstat"]

  val fstat
    :  fd:int
    -> options:(StatOptions.t, anonymous_interface_1) intersection2
    -> callback:(err:ErrnoException.t or_null -> stats:BigIntStats.t -> unit)
    -> unit
    [@@js.global "fstat"]

  val fstat
    :  fd:int
    -> options:StatOptions.t or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> stats:(BigIntStats.t, Stats.t) union2
          -> unit)
    -> unit
    [@@js.global "fstat"]

  module Fstat : sig
    val __promisify__
      :  fd:int
      -> ?options:(StatOptions.t, anonymous_interface_0) intersection2
      -> unit
      -> Stats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  fd:int
      -> options:(StatOptions.t, anonymous_interface_1) intersection2
      -> BigIntStats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  fd:int
      -> ?options:StatOptions.t
      -> unit
      -> (BigIntStats.t, Stats.t) union2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "fstat"]

  val fstatSync
    :  fd:int
    -> ?options:(StatOptions.t, anonymous_interface_0) intersection2
    -> unit
    -> Stats.t
    [@@js.global "fstatSync"]

  val fstatSync
    :  fd:int
    -> options:(StatOptions.t, anonymous_interface_1) intersection2
    -> BigIntStats.t
    [@@js.global "fstatSync"]

  val fstatSync
    :  fd:int
    -> ?options:StatOptions.t
    -> unit
    -> (BigIntStats.t, Stats.t) union2
    [@@js.global "fstatSync"]

  val lstat
    :  path:PathLike.t
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "lstat"]

  val lstat
    :  path:PathLike.t
    -> options:(StatOptions.t, anonymous_interface_0) intersection2 or_undefined
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "lstat"]

  val lstat
    :  path:PathLike.t
    -> options:(StatOptions.t, anonymous_interface_1) intersection2
    -> callback:(err:ErrnoException.t or_null -> stats:BigIntStats.t -> unit)
    -> unit
    [@@js.global "lstat"]

  val lstat
    :  path:PathLike.t
    -> options:StatOptions.t or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> stats:(BigIntStats.t, Stats.t) union2
          -> unit)
    -> unit
    [@@js.global "lstat"]

  module Lstat : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:(StatOptions.t, anonymous_interface_0) intersection2
      -> unit
      -> Stats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> options:(StatOptions.t, anonymous_interface_1) intersection2
      -> BigIntStats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:StatOptions.t
      -> unit
      -> (BigIntStats.t, Stats.t) union2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lstat"]

  val lstatSync
    :  path:PathLike.t
    -> ?options:(StatOptions.t, anonymous_interface_0) intersection2
    -> unit
    -> Stats.t
    [@@js.global "lstatSync"]

  val lstatSync
    :  path:PathLike.t
    -> options:(StatOptions.t, anonymous_interface_1) intersection2
    -> BigIntStats.t
    [@@js.global "lstatSync"]

  val lstatSync
    :  path:PathLike.t
    -> ?options:StatOptions.t
    -> unit
    -> (BigIntStats.t, Stats.t) union2
    [@@js.global "lstatSync"]

  val link
    :  existingPath:PathLike.t
    -> newPath:PathLike.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "link"]

  module Link : sig
    val __promisify__
      :  existingPath:PathLike.t
      -> newPath:PathLike.t
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "link"]

  val linkSync : existingPath:PathLike.t -> newPath:PathLike.t -> unit
    [@@js.global "linkSync"]

  val symlink
    :  target:string
    -> path:PathLike.t
    -> type_:
         ([ `dir [@js "dir"] | `file [@js "file"] | `junction [@js "junction"] ]
         [@js.enum])
         or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "symlink"]

  val symlink
    :  target:string
    -> path:PathLike.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "symlink"]

  module Symlink : sig
    val __promisify__
      :  target:string
      -> path:PathLike.t
      -> ?type_:string or_null
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]

    module Type : sig
      type t =
        ([ `dir [@js "dir"]
         | `file [@js "file"]
         | `junction [@js "junction"]
         ]
        [@js.enum])

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end
  end
  [@@js.scope "symlink"]

  val symlinkSync
    :  target:string
    -> path:PathLike.t
    -> ?type_:
         ([ `dir [@js "dir"] | `file [@js "file"] | `junction [@js "junction"] ]
         [@js.enum])
         or_null
    -> unit
    -> unit
    [@@js.global "symlinkSync"]

  val readlink
    :  path:PathLike.t
    -> options:
         (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> linkString:string -> unit)
    -> unit
    [@@js.global "readlink"]

  val readlink
    :  path:PathLike.t
    -> options:BufferEncodingOption.t
    -> callback:(err:ErrnoException.t or_null -> linkString:Buffer.t -> unit)
    -> unit
    [@@js.global "readlink"]

  val readlink
    :  path:PathLike.t
    -> options:BaseEncodingOptions.t or_string or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> linkString:Buffer.t or_string -> unit)
    -> unit
    [@@js.global "readlink"]

  val readlink
    :  path:PathLike.t
    -> callback:(err:ErrnoException.t or_null -> linkString:string -> unit)
    -> unit
    [@@js.global "readlink"]

  module Readlink : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> options:BufferEncodingOption.t
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readlink"]

  val readlinkSync
    :  path:PathLike.t
    -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
    -> unit
    -> string
    [@@js.global "readlinkSync"]

  val readlinkSync
    :  path:PathLike.t
    -> options:BufferEncodingOption.t
    -> Buffer.t
    [@@js.global "readlinkSync"]

  val readlinkSync
    :  path:PathLike.t
    -> ?options:BaseEncodingOptions.t or_string or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "readlinkSync"]

  val realpath
    :  path:PathLike.t
    -> options:
         (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> resolvedPath:PathLike.t -> unit)
    -> unit
    [@@js.global "realpath"]

  val realpath
    :  path:PathLike.t
    -> options:BufferEncodingOption.t
    -> callback:(err:ErrnoException.t or_null -> resolvedPath:Buffer.t -> unit)
    -> unit
    [@@js.global "realpath"]

  val realpath
    :  path:PathLike.t
    -> options:BaseEncodingOptions.t or_string or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> resolvedPath:Buffer.t or_string
          -> unit)
    -> unit
    [@@js.global "realpath"]

  val realpath
    :  path:PathLike.t
    -> callback:
         (err:ErrnoException.t or_null -> resolvedPath:PathLike.t -> unit)
    -> unit
    [@@js.global "realpath"]

  module Realpath : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> options:BufferEncodingOption.t
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]

    val native
      :  path:PathLike.t
      -> options:
           (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
      -> callback:
           (err:ErrnoException.t or_null -> resolvedPath:PathLike.t -> unit)
      -> unit
      [@@js.global "native"]

    val native
      :  path:PathLike.t
      -> options:BufferEncodingOption.t
      -> callback:
           (err:ErrnoException.t or_null -> resolvedPath:Buffer.t -> unit)
      -> unit
      [@@js.global "native"]

    val native
      :  path:PathLike.t
      -> options:BaseEncodingOptions.t or_string or_null_or_undefined
      -> callback:
           (err:ErrnoException.t or_null
            -> resolvedPath:Buffer.t or_string
            -> unit)
      -> unit
      [@@js.global "native"]

    val native
      :  path:PathLike.t
      -> callback:
           (err:ErrnoException.t or_null -> resolvedPath:PathLike.t -> unit)
      -> unit
      [@@js.global "native"]
  end
  [@@js.scope "realpath"]

  val realpathSync
    :  path:PathLike.t
    -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
    -> unit
    -> string
    [@@js.global "realpathSync"]

  val realpathSync
    :  path:PathLike.t
    -> options:BufferEncodingOption.t
    -> Buffer.t
    [@@js.global "realpathSync"]

  val realpathSync
    :  path:PathLike.t
    -> ?options:BaseEncodingOptions.t or_string or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "realpathSync"]

  module RealpathSync : sig
    val native
      :  path:PathLike.t
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string
      [@@js.global "native"]

    val native : path:PathLike.t -> options:BufferEncodingOption.t -> Buffer.t
      [@@js.global "native"]

    val native
      :  path:PathLike.t
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string
      [@@js.global "native"]
  end
  [@@js.scope "realpathSync"]

  val unlink : path:PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "unlink"]

  module Unlink : sig
    val __promisify__ : path:PathLike.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "unlink"]

  val unlinkSync : path:PathLike.t -> unit [@@js.global "unlinkSync"]

  module RmDirOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxRetries : t -> int [@@js.get "maxRetries"]

    val set_maxRetries : t -> int -> unit [@@js.set "maxRetries"]

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]

    val get_retryDelay : t -> int [@@js.get "retryDelay"]

    val set_retryDelay : t -> int -> unit [@@js.set "retryDelay"]
  end
  [@@js.scope "RmDirOptions"]

  val rmdir : path:PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "rmdir"]

  val rmdir
    :  path:PathLike.t
    -> options:RmDirOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "rmdir"]

  module Rmdir : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:RmDirOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "rmdir"]

  val rmdirSync : path:PathLike.t -> ?options:RmDirOptions.t -> unit -> unit
    [@@js.global "rmdirSync"]

  module RmOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_force : t -> bool [@@js.get "force"]

    val set_force : t -> bool -> unit [@@js.set "force"]

    val get_maxRetries : t -> int [@@js.get "maxRetries"]

    val set_maxRetries : t -> int -> unit [@@js.set "maxRetries"]

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]

    val get_retryDelay : t -> int [@@js.get "retryDelay"]

    val set_retryDelay : t -> int -> unit [@@js.set "retryDelay"]
  end
  [@@js.scope "RmOptions"]

  val rm : path:PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "rm"]

  val rm
    :  path:PathLike.t
    -> options:RmOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "rm"]

  module Rm : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:RmOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "rm"]

  val rmSync : path:PathLike.t -> ?options:RmOptions.t -> unit -> unit
    [@@js.global "rmSync"]

  module MakeDirectoryOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]

    val get_mode : t -> Mode.t [@@js.get "mode"]

    val set_mode : t -> Mode.t -> unit [@@js.set "mode"]
  end
  [@@js.scope "MakeDirectoryOptions"]

  val mkdir
    :  path:PathLike.t
    -> options:(MakeDirectoryOptions.t, anonymous_interface_18) intersection2
    -> callback:
         (err:ErrnoException.t or_null -> ?path:PathLike.t -> unit -> unit)
    -> unit
    [@@js.global "mkdir"]

  val mkdir
    :  path:PathLike.t
    -> options:Mode.t or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "mkdir"]

  val mkdir
    :  path:PathLike.t
    -> options:(MakeDirectoryOptions.t, Mode.t) union2 or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> ?path:PathLike.t -> unit -> unit)
    -> unit
    [@@js.global "mkdir"]

  val mkdir : path:PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "mkdir"]

  module Mkdir : sig
    val __promisify__
      :  path:PathLike.t
      -> options:(MakeDirectoryOptions.t, anonymous_interface_18) intersection2
      -> string or_undefined Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:Mode.t or_null
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:(MakeDirectoryOptions.t, Mode.t) union2 or_null
      -> unit
      -> string or_undefined Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "mkdir"]

  val mkdirSync
    :  path:PathLike.t
    -> options:(MakeDirectoryOptions.t, anonymous_interface_18) intersection2
    -> string or_undefined
    [@@js.global "mkdirSync"]

  val mkdirSync : path:PathLike.t -> ?options:Mode.t or_null -> unit -> unit
    [@@js.global "mkdirSync"]

  val mkdirSync
    :  path:PathLike.t
    -> ?options:(MakeDirectoryOptions.t, Mode.t) union2 or_null
    -> unit
    -> string or_undefined
    [@@js.global "mkdirSync"]

  val mkdtemp
    :  prefix:string
    -> options:
         (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> folder:string -> unit)
    -> unit
    [@@js.global "mkdtemp"]

  val mkdtemp
    :  prefix:string
    -> options:(anonymous_interface_7, ([ `buffer ][@js.enum])) or_enum
    -> callback:(err:ErrnoException.t or_null -> folder:Buffer.t -> unit)
    -> unit
    [@@js.global "mkdtemp"]

  val mkdtemp
    :  prefix:string
    -> options:BaseEncodingOptions.t or_string or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> folder:Buffer.t or_string -> unit)
    -> unit
    [@@js.global "mkdtemp"]

  val mkdtemp
    :  prefix:string
    -> callback:(err:ErrnoException.t or_null -> folder:string -> unit)
    -> unit
    [@@js.global "mkdtemp"]

  module Mkdtemp : sig
    val __promisify__
      :  prefix:string
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  prefix:string
      -> options:BufferEncodingOption.t
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  prefix:string
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "mkdtemp"]

  val mkdtempSync
    :  prefix:string
    -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
    -> unit
    -> string
    [@@js.global "mkdtempSync"]

  val mkdtempSync : prefix:string -> options:BufferEncodingOption.t -> Buffer.t
    [@@js.global "mkdtempSync"]

  val mkdtempSync
    :  prefix:string
    -> ?options:BaseEncodingOptions.t or_string or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "mkdtempSync"]

  val readdir
    :  path:PathLike.t
    -> options:
         (BufferEncoding.t, anonymous_interface_11) union2 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> files:string list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  path:PathLike.t
    -> options:(anonymous_interface_9, ([ `buffer ][@js.enum])) or_enum
    -> callback:(err:ErrnoException.t or_null -> files:Buffer.t list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  path:PathLike.t
    -> options:BufferEncoding.t or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> files:Buffer.t or_string list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  path:PathLike.t
    -> callback:(err:ErrnoException.t or_null -> files:string list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  path:PathLike.t
    -> options:(BaseEncodingOptions.t, anonymous_interface_20) intersection2
    -> callback:(err:ErrnoException.t or_null -> files:Dirent.t list -> unit)
    -> unit
    [@@js.global "readdir"]

  module Readdir : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:(BufferEncoding.t, anonymous_interface_11) union2 or_null
      -> unit
      -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> options:(anonymous_interface_9, ([ `buffer ][@js.enum])) or_enum
      -> Buffer.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> ?options:BufferEncoding.t or_null
      -> unit
      -> Buffer.t or_string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t
      -> options:(BaseEncodingOptions.t, anonymous_interface_20) intersection2
      -> Dirent.t list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readdir"]

  val readdirSync
    :  path:PathLike.t
    -> ?options:(BufferEncoding.t, anonymous_interface_11) union2 or_null
    -> unit
    -> string list
    [@@js.global "readdirSync"]

  val readdirSync
    :  path:PathLike.t
    -> options:(anonymous_interface_9, ([ `buffer ][@js.enum])) or_enum
    -> Buffer.t list
    [@@js.global "readdirSync"]

  val readdirSync
    :  path:PathLike.t
    -> ?options:BufferEncoding.t or_null
    -> unit
    -> Buffer.t or_string list
    [@@js.global "readdirSync"]

  val readdirSync
    :  path:PathLike.t
    -> options:(BaseEncodingOptions.t, anonymous_interface_20) intersection2
    -> Dirent.t list
    [@@js.global "readdirSync"]

  val close : fd:int -> callback:NoParamCallback.t -> unit [@@js.global "close"]

  module Close : sig
    val __promisify__ : fd:int -> unit Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "close"]

  val closeSync : fd:int -> unit [@@js.global "closeSync"]

  val open_
    :  path:PathLike.t
    -> flags:OpenMode.t
    -> mode:Mode.t or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> fd:int -> unit)
    -> unit
    [@@js.global "open"]

  val open_
    :  path:PathLike.t
    -> flags:OpenMode.t
    -> callback:(err:ErrnoException.t or_null -> fd:int -> unit)
    -> unit
    [@@js.global "open"]

  module Open : sig
    val __promisify__
      :  path:PathLike.t
      -> flags:OpenMode.t
      -> ?mode:Mode.t or_null
      -> unit
      -> int Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "open"]

  val openSync
    :  path:PathLike.t
    -> flags:OpenMode.t
    -> ?mode:Mode.t or_null
    -> unit
    -> int
    [@@js.global "openSync"]

  val utimes
    :  path:PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "utimes"]

  module Utimes : sig
    val __promisify__
      :  path:PathLike.t
      -> atime:Date.t or_string or_number
      -> mtime:Date.t or_string or_number
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "utimes"]

  val utimesSync
    :  path:PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> unit
    [@@js.global "utimesSync"]

  val futimes
    :  fd:int
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "futimes"]

  module Futimes : sig
    val __promisify__
      :  fd:int
      -> atime:Date.t or_string or_number
      -> mtime:Date.t or_string or_number
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "futimes"]

  val futimesSync
    :  fd:int
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> unit
    [@@js.global "futimesSync"]

  val fsync : fd:int -> callback:NoParamCallback.t -> unit [@@js.global "fsync"]

  module Fsync : sig
    val __promisify__ : fd:int -> unit Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "fsync"]

  val fsyncSync : fd:int -> unit [@@js.global "fsyncSync"]

  val write
    :  fd:int
    -> buffer:'TBuffer
    -> offset:int or_null_or_undefined
    -> length:int or_null_or_undefined
    -> position:int or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> written:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  fd:int
    -> buffer:'TBuffer
    -> offset:int or_null_or_undefined
    -> length:int or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> written:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  fd:int
    -> buffer:'TBuffer
    -> offset:int or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> written:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  fd:int
    -> buffer:'TBuffer
    -> callback:
         (err:ErrnoException.t or_null
          -> written:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  fd:int
    -> string:string
    -> position:int or_null_or_undefined
    -> encoding:BufferEncoding.t or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> written:int -> str:string -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  fd:int
    -> string:string
    -> position:int or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> written:int -> str:string -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  fd:int
    -> string:string
    -> callback:
         (err:ErrnoException.t or_null -> written:int -> str:string -> unit)
    -> unit
    [@@js.global "write"]

  module Write : sig
    val __promisify__
      :  fd:int
      -> ?buffer:'TBuffer
      -> ?offset:int
      -> ?length:int
      -> ?position:int or_null
      -> unit
      -> anonymous_interface_3 Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  fd:int
      -> string:string
      -> ?position:int or_null
      -> ?encoding:BufferEncoding.t or_null
      -> unit
      -> anonymous_interface_4 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "write"]

  val writeSync
    :  fd:int
    -> buffer:ArrayBufferView.t
    -> ?offset:int or_null
    -> ?length:int or_null
    -> ?position:int or_null
    -> unit
    -> int
    [@@js.global "writeSync"]

  val writeSync
    :  fd:int
    -> string:string
    -> ?position:int or_null
    -> ?encoding:BufferEncoding.t or_null
    -> unit
    -> int
    [@@js.global "writeSync"]

  val read
    :  fd:int
    -> buffer:'TBuffer
    -> offset:int
    -> length:int
    -> position:int or_null
    -> callback:
         (err:ErrnoException.t or_null
          -> bytesRead:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "read"]

  module Read : sig
    val __promisify__
      :  fd:int
      -> buffer:'TBuffer
      -> offset:int
      -> length:int
      -> position:int or_null
      -> anonymous_interface_2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "read"]

  module ReadSyncOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_offset : t -> int [@@js.get "offset"]

    val set_offset : t -> int -> unit [@@js.set "offset"]

    val get_length : t -> int [@@js.get "length"]

    val set_length : t -> int -> unit [@@js.set "length"]

    val get_position : t -> int or_null [@@js.get "position"]

    val set_position : t -> int or_null -> unit [@@js.set "position"]
  end
  [@@js.scope "ReadSyncOptions"]

  val readSync
    :  fd:int
    -> buffer:ArrayBufferView.t
    -> offset:int
    -> length:int
    -> position:int or_null
    -> int
    [@@js.global "readSync"]

  val readSync
    :  fd:int
    -> buffer:ArrayBufferView.t
    -> ?opts:ReadSyncOptions.t
    -> unit
    -> int
    [@@js.global "readSync"]

  val readFile
    :  path:PathLike.t or_number
    -> options:anonymous_interface_6 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> data:Buffer.t -> unit)
    -> unit
    [@@js.global "readFile"]

  val readFile
    :  path:PathLike.t or_number
    -> options:anonymous_interface_5 or_string
    -> callback:(err:ErrnoException.t or_null -> data:string -> unit)
    -> unit
    [@@js.global "readFile"]

  val readFile
    :  path:PathLike.t or_number
    -> options:
         (BaseEncodingOptions.t, anonymous_interface_12) intersection2 or_string
         or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> data:Buffer.t or_string -> unit)
    -> unit
    [@@js.global "readFile"]

  val readFile
    :  path:PathLike.t or_number
    -> callback:(err:ErrnoException.t or_null -> data:Buffer.t -> unit)
    -> unit
    [@@js.global "readFile"]

  module ReadFile : sig
    val __promisify__
      :  path:PathLike.t or_number
      -> ?options:anonymous_interface_6 or_null
      -> unit
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t or_number
      -> options:anonymous_interface_5 or_string
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  path:PathLike.t or_number
      -> ?options:
           (BaseEncodingOptions.t, anonymous_interface_12) intersection2
           or_string
           or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readFile"]

  val readFileSync
    :  path:PathLike.t or_number
    -> ?options:anonymous_interface_6 or_null
    -> unit
    -> Buffer.t
    [@@js.global "readFileSync"]

  val readFileSync
    :  path:PathLike.t or_number
    -> options:(BufferEncoding.t, anonymous_interface_5) union2
    -> string
    [@@js.global "readFileSync"]

  val readFileSync
    :  path:PathLike.t or_number
    -> ?options:BufferEncoding.t or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "readFileSync"]

  module WriteFileOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val writeFile
    :  path:PathLike.t or_number
    -> data:ArrayBufferView.t or_string
    -> options:WriteFileOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "writeFile"]

  val writeFile
    :  path:PathLike.t or_number
    -> data:ArrayBufferView.t or_string
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "writeFile"]

  module WriteFile : sig
    val __promisify__
      :  path:PathLike.t or_number
      -> data:ArrayBufferView.t or_string
      -> ?options:WriteFileOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "writeFile"]

  val writeFileSync
    :  path:PathLike.t or_number
    -> data:ArrayBufferView.t or_string
    -> ?options:WriteFileOptions.t
    -> unit
    -> unit
    [@@js.global "writeFileSync"]

  val appendFile
    :  file:string or_number
    -> data:Uint8Array.t or_string
    -> options:WriteFileOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "appendFile"]

  val appendFile
    :  file:string or_number
    -> data:Uint8Array.t or_string
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "appendFile"]

  module AppendFile : sig
    val __promisify__
      :  file:string or_number
      -> data:Uint8Array.t or_string
      -> ?options:WriteFileOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "appendFile"]

  val appendFileSync
    :  file:string or_number
    -> data:Uint8Array.t or_string
    -> ?options:WriteFileOptions.t
    -> unit
    -> unit
    [@@js.global "appendFileSync"]

  val watchFile
    :  filename:string
    -> options:anonymous_interface_16 or_undefined
    -> listener:(curr:Stats.t -> prev:Stats.t -> unit)
    -> unit
    [@@js.global "watchFile"]

  val watchFile
    :  filename:string
    -> listener:(curr:Stats.t -> prev:Stats.t -> unit)
    -> unit
    [@@js.global "watchFile"]

  val unwatchFile
    :  filename:string
    -> ?listener:(curr:Stats.t -> prev:Stats.t -> unit)
    -> unit
    -> unit
    [@@js.global "unwatchFile"]

  val watch
    :  filename:string
    -> options:
         (BufferEncoding.t, anonymous_interface_10) union2 or_null_or_undefined
    -> ?listener:
         (event:([ `change [@js "change"] | `rename [@js "rename"] ][@js.enum])
          -> filename:string
          -> unit)
    -> unit
    -> FSWatcher.t
    [@@js.global "watch"]

  val watch
    :  filename:string
    -> options:(anonymous_interface_8, ([ `buffer ][@js.enum])) or_enum
    -> ?listener:
         (event:([ `change [@js "change"] | `rename [@js "rename"] ][@js.enum])
          -> filename:Buffer.t
          -> unit)
    -> unit
    -> FSWatcher.t
    [@@js.global "watch"]

  val watch
    :  filename:string
    -> options:anonymous_interface_10 or_string or_null
    -> ?listener:
         (event:([ `change [@js "change"] | `rename [@js "rename"] ][@js.enum])
          -> filename:Buffer.t or_string
          -> unit)
    -> unit
    -> FSWatcher.t
    [@@js.global "watch"]

  val watch
    :  filename:string
    -> ?listener:
         (event:([ `change [@js "change"] | `rename [@js "rename"] ][@js.enum])
          -> filename:string
          -> any)
    -> unit
    -> FSWatcher.t
    [@@js.global "watch"]

  val exists : path:PathLike.t -> callback:(exists:bool -> unit) -> unit
    [@@js.global "exists"]

  module Exists : sig
    val __promisify__ : path:PathLike.t -> bool Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "exists"]

  val existsSync : path:PathLike.t -> bool [@@js.global "existsSync"]

  module Constants : sig
    val f_OK : int [@@js.global "F_OK"]

    val r_OK : int [@@js.global "R_OK"]

    val w_OK : int [@@js.global "W_OK"]

    val x_OK : int [@@js.global "X_OK"]

    val cOPYFILE_EXCL : int [@@js.global "COPYFILE_EXCL"]

    val cOPYFILE_FICLONE : int [@@js.global "COPYFILE_FICLONE"]

    val cOPYFILE_FICLONE_FORCE : int [@@js.global "COPYFILE_FICLONE_FORCE"]

    val o_RDONLY : int [@@js.global "O_RDONLY"]

    val o_WRONLY : int [@@js.global "O_WRONLY"]

    val o_RDWR : int [@@js.global "O_RDWR"]

    val o_CREAT : int [@@js.global "O_CREAT"]

    val o_EXCL : int [@@js.global "O_EXCL"]

    val o_NOCTTY : int [@@js.global "O_NOCTTY"]

    val o_TRUNC : int [@@js.global "O_TRUNC"]

    val o_APPEND : int [@@js.global "O_APPEND"]

    val o_DIRECTORY : int [@@js.global "O_DIRECTORY"]

    val o_NOATIME : int [@@js.global "O_NOATIME"]

    val o_NOFOLLOW : int [@@js.global "O_NOFOLLOW"]

    val o_SYNC : int [@@js.global "O_SYNC"]

    val o_DSYNC : int [@@js.global "O_DSYNC"]

    val o_SYMLINK : int [@@js.global "O_SYMLINK"]

    val o_DIRECT : int [@@js.global "O_DIRECT"]

    val o_NONBLOCK : int [@@js.global "O_NONBLOCK"]

    val s_IFMT : int [@@js.global "S_IFMT"]

    val s_IFREG : int [@@js.global "S_IFREG"]

    val s_IFDIR : int [@@js.global "S_IFDIR"]

    val s_IFCHR : int [@@js.global "S_IFCHR"]

    val s_IFBLK : int [@@js.global "S_IFBLK"]

    val s_IFIFO : int [@@js.global "S_IFIFO"]

    val s_IFLNK : int [@@js.global "S_IFLNK"]

    val s_IFSOCK : int [@@js.global "S_IFSOCK"]

    val s_IRWXU : int [@@js.global "S_IRWXU"]

    val s_IRUSR : int [@@js.global "S_IRUSR"]

    val s_IWUSR : int [@@js.global "S_IWUSR"]

    val s_IXUSR : int [@@js.global "S_IXUSR"]

    val s_IRWXG : int [@@js.global "S_IRWXG"]

    val s_IRGRP : int [@@js.global "S_IRGRP"]

    val s_IWGRP : int [@@js.global "S_IWGRP"]

    val s_IXGRP : int [@@js.global "S_IXGRP"]

    val s_IRWXO : int [@@js.global "S_IRWXO"]

    val s_IROTH : int [@@js.global "S_IROTH"]

    val s_IWOTH : int [@@js.global "S_IWOTH"]

    val s_IXOTH : int [@@js.global "S_IXOTH"]

    val uV_O_FILEMAP_FS : int [@@js.global "UV_O_FILEMAP_FS"]
  end
  [@@js.scope "constants"]

  val access
    :  path:PathLike.t
    -> mode:int or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "access"]

  val access : path:PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "access"]

  module Access : sig
    val __promisify__ : path:PathLike.t -> ?mode:int -> unit -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "access"]

  val accessSync : path:PathLike.t -> ?mode:int -> unit -> unit
    [@@js.global "accessSync"]

  val createReadStream
    :  path:PathLike.t
    -> ?options:anonymous_interface_13 or_string
    -> unit
    -> ReadStream.t
    [@@js.global "createReadStream"]

  val createWriteStream
    :  path:PathLike.t
    -> ?options:anonymous_interface_14 or_string
    -> unit
    -> WriteStream.t
    [@@js.global "createWriteStream"]

  val fdatasync : fd:int -> callback:NoParamCallback.t -> unit
    [@@js.global "fdatasync"]

  module Fdatasync : sig
    val __promisify__ : fd:int -> unit Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "fdatasync"]

  val fdatasyncSync : fd:int -> unit [@@js.global "fdatasyncSync"]

  val copyFile : src:string -> dest:string -> callback:NoParamCallback.t -> unit
    [@@js.global "copyFile"]

  val copyFile
    :  src:string
    -> dest:string
    -> flags:int
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "copyFile"]

  module CopyFile : sig
    val __promisify__
      :  src:string
      -> dst:string
      -> ?flags:int
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "copyFile"]

  val copyFileSync : src:string -> dest:string -> ?flags:int -> unit -> unit
    [@@js.global "copyFileSync"]

  val writev
    :  fd:int
    -> buffers:ArrayBufferView.t list
    -> cb:
         (err:ErrnoException.t or_null
          -> bytesWritten:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "writev"]

  val writev
    :  fd:int
    -> buffers:ArrayBufferView.t list
    -> position:int
    -> cb:
         (err:ErrnoException.t or_null
          -> bytesWritten:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "writev"]

  module WriteVResult : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytesWritten : t -> int [@@js.get "bytesWritten"]

    val set_bytesWritten : t -> int -> unit [@@js.set "bytesWritten"]

    val get_buffers : t -> ArrayBufferView.t list [@@js.get "buffers"]

    val set_buffers : t -> ArrayBufferView.t list -> unit [@@js.set "buffers"]
  end
  [@@js.scope "WriteVResult"]

  module Writev : sig
    val __promisify__
      :  fd:int
      -> buffers:ArrayBufferView.t list
      -> ?position:int
      -> unit
      -> WriteVResult.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "writev"]

  val writevSync
    :  fd:int
    -> buffers:ArrayBufferView.t list
    -> ?position:int
    -> unit
    -> int
    [@@js.global "writevSync"]

  val readv
    :  fd:int
    -> buffers:ArrayBufferView.t list
    -> cb:
         (err:ErrnoException.t or_null
          -> bytesRead:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "readv"]

  val readv
    :  fd:int
    -> buffers:ArrayBufferView.t list
    -> position:int
    -> cb:
         (err:ErrnoException.t or_null
          -> bytesRead:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "readv"]

  module ReadVResult : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytesRead : t -> int [@@js.get "bytesRead"]

    val set_bytesRead : t -> int -> unit [@@js.set "bytesRead"]

    val get_buffers : t -> ArrayBufferView.t list [@@js.get "buffers"]

    val set_buffers : t -> ArrayBufferView.t list -> unit [@@js.set "buffers"]
  end
  [@@js.scope "ReadVResult"]

  module Readv : sig
    val __promisify__
      :  fd:int
      -> buffers:ArrayBufferView.t list
      -> ?position:int
      -> unit
      -> ReadVResult.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readv"]

  val readvSync
    :  fd:int
    -> buffers:ArrayBufferView.t list
    -> ?position:int
    -> unit
    -> int
    [@@js.global "readvSync"]

  module OpenDirOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_bufferSize : t -> int [@@js.get "bufferSize"]

    val set_bufferSize : t -> int -> unit [@@js.set "bufferSize"]
  end
  [@@js.scope "OpenDirOptions"]

  val opendirSync
    :  path:PathLike.t
    -> ?options:OpenDirOptions.t
    -> unit
    -> Dir.t
    [@@js.global "opendirSync"]

  val opendir
    :  path:PathLike.t
    -> cb:(err:ErrnoException.t or_null -> dir:Dir.t -> unit)
    -> unit
    [@@js.global "opendir"]

  val opendir
    :  path:PathLike.t
    -> options:OpenDirOptions.t
    -> cb:(err:ErrnoException.t or_null -> dir:Dir.t -> unit)
    -> unit
    [@@js.global "opendir"]

  module Opendir : sig
    val __promisify__
      :  path:PathLike.t
      -> ?options:OpenDirOptions.t
      -> unit
      -> Dir.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "opendir"]

  module BigIntOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bigint : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "bigint"]

    val set_bigint : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "bigint"]
  end
  [@@js.scope "BigIntOptions"]
end
[@@js.scope Import.fs]
