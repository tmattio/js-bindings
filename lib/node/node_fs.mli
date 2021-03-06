[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals
open Node_stream

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

    val is_file : 'T t -> bool [@@js.call "isFile"]

    val is_directory : 'T t -> bool [@@js.call "isDirectory"]

    val is_block_device : 'T t -> bool [@@js.call "isBlockDevice"]

    val is_character_device : 'T t -> bool [@@js.call "isCharacterDevice"]

    val is_symbolic_link : 'T t -> bool [@@js.call "isSymbolicLink"]

    val is_fifo : 'T t -> bool [@@js.call "isFIFO"]

    val is_socket : 'T t -> bool [@@js.call "isSocket"]

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

    val get_atime_ms : 'T t -> 'T [@@js.get "atimeMs"]

    val set_atime_ms : 'T t -> 'T -> unit [@@js.set "atimeMs"]

    val get_mtime_ms : 'T t -> 'T [@@js.get "mtimeMs"]

    val set_mtime_ms : 'T t -> 'T -> unit [@@js.set "mtimeMs"]

    val get_ctime_ms : 'T t -> 'T [@@js.get "ctimeMs"]

    val set_ctime_ms : 'T t -> 'T -> unit [@@js.set "ctimeMs"]

    val get_birthtime_ms : 'T t -> 'T [@@js.get "birthtimeMs"]

    val set_birthtime_ms : 'T t -> 'T -> unit [@@js.set "birthtimeMs"]

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bigint : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "bigint"]

    val set_bigint : t -> ([ `L_b_false ][@js.enum]) -> unit [@@js.set "bigint"]
  end

  module AnonymousInterface1 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bigint : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "bigint"]

    val set_bigint : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "bigint"]
  end

  module AnonymousInterface2 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytes_read : t -> int [@@js.get "bytesRead"]

    val set_bytes_read : t -> int -> unit [@@js.set "bytesRead"]

    val get_buffer : t -> 'TBuffer [@@js.get "buffer"]

    val set_buffer : t -> 'TBuffer -> unit [@@js.set "buffer"]
  end

  module AnonymousInterface3 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytes_written : t -> int [@@js.get "bytesWritten"]

    val set_bytes_written : t -> int -> unit [@@js.set "bytesWritten"]

    val get_buffer : t -> 'TBuffer [@@js.get "buffer"]

    val set_buffer : t -> 'TBuffer -> unit [@@js.set "buffer"]
  end

  module AnonymousInterface4 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytes_written : t -> int [@@js.get "bytesWritten"]

    val set_bytes_written : t -> int -> unit [@@js.set "bytesWritten"]

    val get_buffer : t -> string [@@js.get "buffer"]

    val set_buffer : t -> string -> unit [@@js.set "buffer"]
  end

  module AnonymousInterface5 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface6 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> never or_null [@@js.get "encoding"]

    val set_encoding : t -> never or_null -> unit [@@js.set "encoding"]

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface7 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit
      [@@js.set "encoding"]
  end

  module AnonymousInterface8 : sig
    type t

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
      [@@js.get "encoding"]

    val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit
      [@@js.set "encoding"]

    val get_with_file_types : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_with_file_types : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module AnonymousInterface10 : sig
    type t

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> BufferEncoding.t or_null [@@js.get "encoding"]

    val set_encoding : t -> BufferEncoding.t or_null -> unit
      [@@js.set "encoding"]

    val get_with_file_types : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_with_file_types : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module AnonymousInterface12 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface13 : sig
    type t

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

    val get_auto_close : t -> bool [@@js.get "autoClose"]

    val set_auto_close : t -> bool -> unit [@@js.set "autoClose"]

    val get_emit_close : t -> bool [@@js.get "emitClose"]

    val set_emit_close : t -> bool -> unit [@@js.set "emitClose"]

    val get_start : t -> int [@@js.get "start"]

    val set_start : t -> int -> unit [@@js.set "start"]

    val get_end : t -> int [@@js.get "end"]

    val set_end : t -> int -> unit [@@js.set "end"]

    val get_high_water_mark : t -> int [@@js.get "highWaterMark"]

    val set_high_water_mark : t -> int -> unit [@@js.set "highWaterMark"]
  end

  module AnonymousInterface14 : sig
    type t

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

    val get_auto_close : t -> bool [@@js.get "autoClose"]

    val set_auto_close : t -> bool -> unit [@@js.set "autoClose"]

    val get_emit_close : t -> bool [@@js.get "emitClose"]

    val set_emit_close : t -> bool -> unit [@@js.set "emitClose"]

    val get_start : t -> int [@@js.get "start"]

    val set_start : t -> int -> unit [@@js.set "start"]

    val get_high_water_mark : t -> int [@@js.get "highWaterMark"]

    val set_high_water_mark : t -> int -> unit [@@js.set "highWaterMark"]
  end

  module AnonymousInterface15 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_mode : t -> Mode.t [@@js.get "mode"]

    val set_mode : t -> Mode.t -> unit [@@js.set "mode"]

    val get_flag : t -> string [@@js.get "flag"]

    val set_flag : t -> string -> unit [@@js.set "flag"]
  end

  module AnonymousInterface16 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_persistent : t -> bool [@@js.get "persistent"]

    val set_persistent : t -> bool -> unit [@@js.set "persistent"]

    val get_interval : t -> int [@@js.get "interval"]

    val set_interval : t -> int -> unit [@@js.set "interval"]
  end

  module AnonymousInterface17 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_recursive : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "recursive"]

    val set_recursive : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "recursive"]
  end

  module AnonymousInterface18 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_recursive : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "recursive"]

    val set_recursive : t -> ([ `L_b_true ][@js.enum]) -> unit
      [@@js.set "recursive"]
  end

  module AnonymousInterface19 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_with_file_types : t -> ([ `L_b_false [@js false] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_with_file_types : t -> ([ `L_b_false ][@js.enum]) -> unit
      [@@js.set "withFileTypes"]
  end

  module AnonymousInterface20 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_with_file_types : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "withFileTypes"]

    val set_with_file_types : t -> ([ `L_b_true ][@js.enum]) -> unit
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

    val is_file : t -> bool [@@js.call "isFile"]

    val is_directory : t -> bool [@@js.call "isDirectory"]

    val is_block_device : t -> bool [@@js.call "isBlockDevice"]

    val is_character_device : t -> bool [@@js.call "isCharacterDevice"]

    val is_symbolic_link : t -> bool [@@js.call "isSymbolicLink"]

    val is_fifo : t -> bool [@@js.call "isFIFO"]

    val is_socket : t -> bool [@@js.call "isSocket"]

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

    val close_sync : t -> unit [@@js.call "closeSync"]

    val read : t -> Dirent.t or_null Promise.t [@@js.call "read"]

    val read'
      :  t
      -> cb:(err:ErrnoException.t or_null -> dir_ent:Dirent.t or_null -> unit)
      -> unit
      [@@js.call "read"]

    val read_sync : t -> Dirent.t or_null [@@js.call "readSync"]
  end
  [@@js.scope "Dir"]

  module FSWatcher : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val close : t -> unit [@@js.call "close"]

    module ChangeListener : sig
      type t = eventType:string -> filename:Buffer.t or_string -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ErrorListener : sig
      type t = error:Error.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module CloseListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    type listener =
      ([ `Change of ChangeListener.t
       | `Error of ErrorListener.t
       | `Close of CloseListener.t
       ]
      [@js.union])

    [@@@js.stop]

    val on : t -> listener -> unit

    val add_listener : t -> listener -> unit

    val once : t -> listener -> unit

    val prepend_listener : t -> listener -> unit

    val prepend_once_listener : t -> listener -> unit

    [@@@js.start]

    [@@@js.implem
    val on : t -> string -> Ojs.t -> unit [@@js.call "on"]

    val add_listener : t -> string -> Ojs.t -> unit [@@js.call "addListener"]

    val once : t -> string -> Ojs.t -> unit [@@js.call "once"]

    val prepend_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependListener"]

    val prepend_once_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependOnceListener"]

    let with_listener_fn fn t = function
      | `Change f ->
        fn t "change" @@ [%js.of: ChangeListener.t] f
      | `Error f ->
        fn t "error" @@ [%js.of: ErrorListener.t] f
      | `Close f ->
        fn t "close" @@ [%js.of: CloseListener.t] f

    let on = with_listener_fn on

    let add_listener = with_listener_fn add_listener

    let once = with_listener_fn once

    let prepend_listener = with_listener_fn prepend_listener

    let prepend_once_listener = with_listener_fn prepend_once_listener]
  end
  [@@js.scope "FSWatcher"]

  module ReadStream : sig
    include module type of struct
      include Stream.Readable
    end

    val close : t -> unit [@@js.call "close"]

    val get_bytes_read : t -> int [@@js.get "bytesRead"]

    val set_bytes_read : t -> int -> unit [@@js.set "bytesRead"]

    val get_path : t -> Buffer.t or_string [@@js.get "path"]

    val set_path : t -> Buffer.t or_string -> unit [@@js.set "path"]

    val get_pending : t -> bool [@@js.get "pending"]

    val set_pending : t -> bool -> unit [@@js.set "pending"]

    module CloseListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module DataListener : sig
      type t = chunk:Buffer.t or_string -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module EndListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ErrorListener : sig
      type t = err:Error.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module OpenListener : sig
      type t = fd:int -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module PauseListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ReadableListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ReadyListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ResumeListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    type listener =
      ([ `Close of CloseListener.t
       | `Data of DataListener.t
       | `End of EndListener.t
       | `Error of ErrorListener.t
       | `Open of OpenListener.t
       | `Pause of PauseListener.t
       | `Readable of ReadableListener.t
       | `Ready of ReadyListener.t
       | `Resume of ResumeListener.t
       ]
      [@js.union])

    [@@@js.stop]

    val on : t -> listener -> unit

    val add_listener : t -> listener -> unit

    val once : t -> listener -> unit

    val prepend_listener : t -> listener -> unit

    val prepend_once_listener : t -> listener -> unit

    [@@@js.start]

    [@@@js.implem
    val on : t -> string -> Ojs.t -> unit [@@js.call "on"]

    val add_listener : t -> string -> Ojs.t -> unit [@@js.call "addListener"]

    val once : t -> string -> Ojs.t -> unit [@@js.call "once"]

    val prepend_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependListener"]

    val prepend_once_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependOnceListener"]

    let with_listener_fn fn t = function
      | `Close f ->
        fn t "close" @@ [%js.of: CloseListener.t] f
      | `Data f ->
        fn t "data" @@ [%js.of: DataListener.t] f
      | `End f ->
        fn t "end" @@ [%js.of: EndListener.t] f
      | `Error f ->
        fn t "error" @@ [%js.of: ErrorListener.t] f
      | `Open f ->
        fn t "open" @@ [%js.of: OpenListener.t] f
      | `Pause f ->
        fn t "pause" @@ [%js.of: PauseListener.t] f
      | `Readable f ->
        fn t "readable" @@ [%js.of: ReadableListener.t] f
      | `Ready f ->
        fn t "ready" @@ [%js.of: ReadyListener.t] f
      | `Resume f ->
        fn t "resume" @@ [%js.of: ResumeListener.t] f

    let on = with_listener_fn on

    let add_listener = with_listener_fn add_listener

    let once = with_listener_fn once

    let prepend_listener = with_listener_fn prepend_listener

    let prepend_once_listener = with_listener_fn prepend_once_listener]
  end
  [@@js.scope "ReadStream"]

  module WriteStream : sig
    include module type of struct
      include Stream.Writable
    end

    val close : t -> unit [@@js.call "close"]

    val get_bytes_written : t -> int [@@js.get "bytesWritten"]

    val set_bytes_written : t -> int -> unit [@@js.set "bytesWritten"]

    val get_path : t -> Buffer.t or_string [@@js.get "path"]

    val set_path : t -> Buffer.t or_string -> unit [@@js.set "path"]

    val get_pending : t -> bool [@@js.get "pending"]

    val set_pending : t -> bool -> unit [@@js.set "pending"]

    module CloseListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module DrainListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ErrorListener : sig
      type t = err:Error.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module FinishListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module Open_Listener : sig
      type t = fd:int -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module PipeListener : sig
      type t = src:Stream.Readable.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ReadyListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module UnpipeListener : sig
      type t = src:Stream.Readable.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    type listener =
      ([ `Close of CloseListener.t
       | `Drain of DrainListener.t
       | `Error of ErrorListener.t
       | `Finish of FinishListener.t
       | `Open_ of Open_Listener.t
       | `Pipe of PipeListener.t
       | `Ready of ReadyListener.t
       | `Unpipe of UnpipeListener.t
       ]
      [@js.union])

    [@@@js.stop]

    val on : t -> listener -> unit

    val add_listener : t -> listener -> unit

    val once : t -> listener -> unit

    val prepend_listener : t -> listener -> unit

    val prepend_once_listener : t -> listener -> unit

    [@@@js.start]

    [@@@js.implem
    val on : t -> string -> Ojs.t -> unit [@@js.call "on"]

    val add_listener : t -> string -> Ojs.t -> unit [@@js.call "addListener"]

    val once : t -> string -> Ojs.t -> unit [@@js.call "once"]

    val prepend_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependListener"]

    val prepend_once_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependOnceListener"]

    let with_listener_fn fn t = function
      | `Close f ->
        fn t "close" @@ [%js.of: CloseListener.t] f
      | `Drain f ->
        fn t "drain" @@ [%js.of: DrainListener.t] f
      | `Error f ->
        fn t "error" @@ [%js.of: ErrorListener.t] f
      | `Finish f ->
        fn t "finish" @@ [%js.of: FinishListener.t] f
      | `Open_ f ->
        fn t "open_" @@ [%js.of: Open_Listener.t] f
      | `Pipe f ->
        fn t "pipe" @@ [%js.of: PipeListener.t] f
      | `Ready f ->
        fn t "ready" @@ [%js.of: ReadyListener.t] f
      | `Unpipe f ->
        fn t "unpipe" @@ [%js.of: UnpipeListener.t] f

    let on = with_listener_fn on

    let add_listener = with_listener_fn add_listener

    let once = with_listener_fn once

    let prepend_listener = with_listener_fn prepend_listener

    let prepend_once_listener = with_listener_fn prepend_once_listener]
  end
  [@@js.scope "WriteStream"]

  val rename : PathLike.t -> PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "rename"]

  module Rename : sig
    val __promisify__ : PathLike.t -> PathLike.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "rename"]

  val rename_sync : PathLike.t -> PathLike.t -> unit [@@js.global "renameSync"]

  val truncate
    :  PathLike.t
    -> len:int or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "truncate"]

  val truncate : PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "truncate"]

  module Truncate : sig
    val __promisify__ : PathLike.t -> ?len:int or_null -> unit -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "truncate"]

  val truncate_sync : PathLike.t -> ?len:int or_null -> unit -> unit
    [@@js.global "truncateSync"]

  val ftruncate
    :  int
    -> len:int or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "ftruncate"]

  val ftruncate : int -> callback:NoParamCallback.t -> unit
    [@@js.global "ftruncate"]

  module Ftruncate : sig
    val __promisify__ : int -> ?len:int or_null -> unit -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "ftruncate"]

  val ftruncate_sync : int -> ?len:int or_null -> unit -> unit
    [@@js.global "ftruncateSync"]

  val chown
    :  PathLike.t
    -> uid:int
    -> gid:int
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "chown"]

  module Chown : sig
    val __promisify__ : PathLike.t -> uid:int -> gid:int -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "chown"]

  val chown_sync : PathLike.t -> uid:int -> gid:int -> unit
    [@@js.global "chownSync"]

  val fchown : int -> uid:int -> gid:int -> callback:NoParamCallback.t -> unit
    [@@js.global "fchown"]

  module Fchown : sig
    val __promisify__ : int -> uid:int -> gid:int -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "fchown"]

  val fchown_sync : int -> uid:int -> gid:int -> unit [@@js.global "fchownSync"]

  val lchown
    :  PathLike.t
    -> uid:int
    -> gid:int
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "lchown"]

  module Lchown : sig
    val __promisify__ : PathLike.t -> uid:int -> gid:int -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lchown"]

  val lchown_sync : PathLike.t -> uid:int -> gid:int -> unit
    [@@js.global "lchownSync"]

  val lutimes
    :  PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "lutimes"]

  module Lutimes : sig
    val __promisify__
      :  PathLike.t
      -> atime:Date.t or_string or_number
      -> mtime:Date.t or_string or_number
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lutimes"]

  val lutimes_sync
    :  PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> unit
    [@@js.global "lutimesSync"]

  val chmod : PathLike.t -> mode:Mode.t -> callback:NoParamCallback.t -> unit
    [@@js.global "chmod"]

  module Chmod : sig
    val __promisify__ : PathLike.t -> mode:Mode.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "chmod"]

  val chmod_sync : PathLike.t -> mode:Mode.t -> unit [@@js.global "chmodSync"]

  val fchmod : int -> mode:Mode.t -> callback:NoParamCallback.t -> unit
    [@@js.global "fchmod"]

  module Fchmod : sig
    val __promisify__ : int -> mode:Mode.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "fchmod"]

  val fchmod_sync : int -> mode:Mode.t -> unit [@@js.global "fchmodSync"]

  val lchmod : PathLike.t -> mode:Mode.t -> callback:NoParamCallback.t -> unit
    [@@js.global "lchmod"]

  module Lchmod : sig
    val __promisify__ : PathLike.t -> mode:Mode.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lchmod"]

  val lchmod_sync : PathLike.t -> mode:Mode.t -> unit [@@js.global "lchmodSync"]

  val stat
    :  PathLike.t
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
    :  PathLike.t
    -> options:(StatOptions.t, AnonymousInterface0.t) intersection2 or_undefined
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "stat"]

  module BigIntStats : sig
    type t = bigint StatsBase.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_atime_ns : t -> bigint [@@js.get "atimeNs"]

    val set_atime_ns : t -> bigint -> unit [@@js.set "atimeNs"]

    val get_mtime_ns : t -> bigint [@@js.get "mtimeNs"]

    val set_mtime_ns : t -> bigint -> unit [@@js.set "mtimeNs"]

    val get_ctime_ns : t -> bigint [@@js.get "ctimeNs"]

    val set_ctime_ns : t -> bigint -> unit [@@js.set "ctimeNs"]

    val get_birthtime_ns : t -> bigint [@@js.get "birthtimeNs"]

    val set_birthtime_ns : t -> bigint -> unit [@@js.set "birthtimeNs"]
  end
  [@@js.scope "BigIntStats"]

  val stat
    :  PathLike.t
    -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
    -> callback:(err:ErrnoException.t or_null -> stats:BigIntStats.t -> unit)
    -> unit
    [@@js.global "stat"]

  val stat
    :  PathLike.t
    -> options:StatOptions.t or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> stats:(BigIntStats.t, Stats.t) union2
          -> unit)
    -> unit
    [@@js.global "stat"]

  module Stat : sig
    val __promisify__
      :  PathLike.t
      -> ?options:(StatOptions.t, AnonymousInterface0.t) intersection2
      -> unit
      -> Stats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
      -> BigIntStats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:StatOptions.t
      -> unit
      -> (BigIntStats.t, Stats.t) union2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "stat"]

  val stat_sync
    :  PathLike.t
    -> ?options:(StatOptions.t, AnonymousInterface0.t) intersection2
    -> unit
    -> Stats.t
    [@@js.global "statSync"]

  val stat_sync
    :  PathLike.t
    -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
    -> BigIntStats.t
    [@@js.global "statSync"]

  val stat_sync
    :  PathLike.t
    -> ?options:StatOptions.t
    -> unit
    -> (BigIntStats.t, Stats.t) union2
    [@@js.global "statSync"]

  val fstat
    :  int
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "fstat"]

  val fstat
    :  int
    -> options:(StatOptions.t, AnonymousInterface0.t) intersection2 or_undefined
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "fstat"]

  val fstat
    :  int
    -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
    -> callback:(err:ErrnoException.t or_null -> stats:BigIntStats.t -> unit)
    -> unit
    [@@js.global "fstat"]

  val fstat
    :  int
    -> options:StatOptions.t or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> stats:(BigIntStats.t, Stats.t) union2
          -> unit)
    -> unit
    [@@js.global "fstat"]

  module Fstat : sig
    val __promisify__
      :  int
      -> ?options:(StatOptions.t, AnonymousInterface0.t) intersection2
      -> unit
      -> Stats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  int
      -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
      -> BigIntStats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  int
      -> ?options:StatOptions.t
      -> unit
      -> (BigIntStats.t, Stats.t) union2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "fstat"]

  val fstat_sync
    :  int
    -> ?options:(StatOptions.t, AnonymousInterface0.t) intersection2
    -> unit
    -> Stats.t
    [@@js.global "fstatSync"]

  val fstat_sync
    :  int
    -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
    -> BigIntStats.t
    [@@js.global "fstatSync"]

  val fstat_sync
    :  int
    -> ?options:StatOptions.t
    -> unit
    -> (BigIntStats.t, Stats.t) union2
    [@@js.global "fstatSync"]

  val lstat
    :  PathLike.t
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "lstat"]

  val lstat
    :  PathLike.t
    -> options:(StatOptions.t, AnonymousInterface0.t) intersection2 or_undefined
    -> callback:(err:ErrnoException.t or_null -> stats:Stats.t -> unit)
    -> unit
    [@@js.global "lstat"]

  val lstat
    :  PathLike.t
    -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
    -> callback:(err:ErrnoException.t or_null -> stats:BigIntStats.t -> unit)
    -> unit
    [@@js.global "lstat"]

  val lstat
    :  PathLike.t
    -> options:StatOptions.t or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> stats:(BigIntStats.t, Stats.t) union2
          -> unit)
    -> unit
    [@@js.global "lstat"]

  module Lstat : sig
    val __promisify__
      :  PathLike.t
      -> ?options:(StatOptions.t, AnonymousInterface0.t) intersection2
      -> unit
      -> Stats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
      -> BigIntStats.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:StatOptions.t
      -> unit
      -> (BigIntStats.t, Stats.t) union2 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lstat"]

  val lstat_sync
    :  PathLike.t
    -> ?options:(StatOptions.t, AnonymousInterface0.t) intersection2
    -> unit
    -> Stats.t
    [@@js.global "lstatSync"]

  val lstat_sync
    :  PathLike.t
    -> options:(StatOptions.t, AnonymousInterface1.t) intersection2
    -> BigIntStats.t
    [@@js.global "lstatSync"]

  val lstat_sync
    :  PathLike.t
    -> ?options:StatOptions.t
    -> unit
    -> (BigIntStats.t, Stats.t) union2
    [@@js.global "lstatSync"]

  val link : PathLike.t -> PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "link"]

  module Link : sig
    val __promisify__ : PathLike.t -> PathLike.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "link"]

  val link_sync : PathLike.t -> PathLike.t -> unit [@@js.global "linkSync"]

  val symlink
    :  target:string
    -> PathLike.t
    -> type_:
         ([ `dir [@js "dir"] | `file [@js "file"] | `junction [@js "junction"] ]
         [@js.enum])
         or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "symlink"]

  val symlink
    :  target:string
    -> PathLike.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "symlink"]

  module Symlink : sig
    val __promisify__
      :  target:string
      -> PathLike.t
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

  val symlink_sync
    :  target:string
    -> PathLike.t
    -> ?type_:
         ([ `dir [@js "dir"] | `file [@js "file"] | `junction [@js "junction"] ]
         [@js.enum])
         or_null
    -> unit
    -> unit
    [@@js.global "symlinkSync"]

  val readlink
    :  PathLike.t
    -> options:
         (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> link_string:string -> unit)
    -> unit
    [@@js.global "readlink"]

  val readlink
    :  PathLike.t
    -> options:BufferEncodingOption.t
    -> callback:(err:ErrnoException.t or_null -> link_string:Buffer.t -> unit)
    -> unit
    [@@js.global "readlink"]

  val readlink
    :  PathLike.t
    -> options:BaseEncodingOptions.t or_string or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null
          -> link_string:Buffer.t or_string
          -> unit)
    -> unit
    [@@js.global "readlink"]

  val readlink
    :  PathLike.t
    -> callback:(err:ErrnoException.t or_null -> link_string:string -> unit)
    -> unit
    [@@js.global "readlink"]

  module Readlink : sig
    val __promisify__
      :  PathLike.t
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> options:BufferEncodingOption.t
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readlink"]

  val readlink_sync
    :  PathLike.t
    -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
    -> unit
    -> string
    [@@js.global "readlinkSync"]

  val readlink_sync : PathLike.t -> options:BufferEncodingOption.t -> Buffer.t
    [@@js.global "readlinkSync"]

  val readlink_sync
    :  PathLike.t
    -> ?options:BaseEncodingOptions.t or_string or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "readlinkSync"]

  val realpath
    :  PathLike.t
    -> options:
         (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> PathLike.t -> unit)
    -> unit
    [@@js.global "realpath"]

  val realpath
    :  PathLike.t
    -> options:BufferEncodingOption.t
    -> callback:(err:ErrnoException.t or_null -> Buffer.t -> unit)
    -> unit
    [@@js.global "realpath"]

  val realpath
    :  PathLike.t
    -> options:BaseEncodingOptions.t or_string or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> Buffer.t or_string -> unit)
    -> unit
    [@@js.global "realpath"]

  val realpath
    :  PathLike.t
    -> callback:(err:ErrnoException.t or_null -> PathLike.t -> unit)
    -> unit
    [@@js.global "realpath"]

  module Realpath : sig
    val __promisify__
      :  PathLike.t
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> options:BufferEncodingOption.t
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]

    val native
      :  PathLike.t
      -> options:
           (BaseEncodingOptions.t, BufferEncoding.t) union2 or_null_or_undefined
      -> callback:(err:ErrnoException.t or_null -> PathLike.t -> unit)
      -> unit
      [@@js.global "native"]

    val native
      :  PathLike.t
      -> options:BufferEncodingOption.t
      -> callback:(err:ErrnoException.t or_null -> Buffer.t -> unit)
      -> unit
      [@@js.global "native"]

    val native
      :  PathLike.t
      -> options:BaseEncodingOptions.t or_string or_null_or_undefined
      -> callback:(err:ErrnoException.t or_null -> Buffer.t or_string -> unit)
      -> unit
      [@@js.global "native"]

    val native
      :  PathLike.t
      -> callback:(err:ErrnoException.t or_null -> PathLike.t -> unit)
      -> unit
      [@@js.global "native"]
  end
  [@@js.scope "realpath"]

  val realpath_sync
    :  PathLike.t
    -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
    -> unit
    -> string
    [@@js.global "realpathSync"]

  val realpath_sync : PathLike.t -> options:BufferEncodingOption.t -> Buffer.t
    [@@js.global "realpathSync"]

  val realpath_sync
    :  PathLike.t
    -> ?options:BaseEncodingOptions.t or_string or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "realpathSync"]

  module RealpathSync : sig
    val native
      :  PathLike.t
      -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
      -> unit
      -> string
      [@@js.global "native"]

    val native : PathLike.t -> options:BufferEncodingOption.t -> Buffer.t
      [@@js.global "native"]

    val native
      :  PathLike.t
      -> ?options:BaseEncodingOptions.t or_string or_null
      -> unit
      -> Buffer.t or_string
      [@@js.global "native"]
  end
  [@@js.scope "realpathSync"]

  val unlink : PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "unlink"]

  module Unlink : sig
    val __promisify__ : PathLike.t -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "unlink"]

  val unlink_sync : PathLike.t -> unit [@@js.global "unlinkSync"]

  module RmDirOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_max_retries : t -> int [@@js.get "maxRetries"]

    val set_max_retries : t -> int -> unit [@@js.set "maxRetries"]

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]

    val get_retry_delay : t -> int [@@js.get "retryDelay"]

    val set_retry_delay : t -> int -> unit [@@js.set "retryDelay"]
  end
  [@@js.scope "RmDirOptions"]

  val rmdir : PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "rmdir"]

  val rmdir
    :  PathLike.t
    -> options:RmDirOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "rmdir"]

  module Rmdir : sig
    val __promisify__
      :  PathLike.t
      -> ?options:RmDirOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "rmdir"]

  val rmdir_sync : PathLike.t -> ?options:RmDirOptions.t -> unit -> unit
    [@@js.global "rmdirSync"]

  module RmOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_force : t -> bool [@@js.get "force"]

    val set_force : t -> bool -> unit [@@js.set "force"]

    val get_max_retries : t -> int [@@js.get "maxRetries"]

    val set_max_retries : t -> int -> unit [@@js.set "maxRetries"]

    val get_recursive : t -> bool [@@js.get "recursive"]

    val set_recursive : t -> bool -> unit [@@js.set "recursive"]

    val get_retry_delay : t -> int [@@js.get "retryDelay"]

    val set_retry_delay : t -> int -> unit [@@js.set "retryDelay"]
  end
  [@@js.scope "RmOptions"]

  val rm : PathLike.t -> ?options:RmOptions.t -> NoParamCallback.t -> unit
    [@@js.global "rm"]

  module Rm : sig
    val __promisify__
      :  PathLike.t
      -> ?options:RmOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "rm"]

  val rm_sync : PathLike.t -> ?options:RmOptions.t -> unit -> unit
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
    :  PathLike.t
    -> options:(MakeDirectoryOptions.t, AnonymousInterface18.t) intersection2
    -> callback:
         (err:ErrnoException.t or_null -> ?path:PathLike.t -> unit -> unit)
    -> unit
    [@@js.global "mkdir"]

  val mkdir
    :  PathLike.t
    -> options:Mode.t or_null_or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "mkdir"]

  val mkdir
    :  PathLike.t
    -> options:(MakeDirectoryOptions.t, Mode.t) union2 or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> ?path:PathLike.t -> unit -> unit)
    -> unit
    [@@js.global "mkdir"]

  val mkdir : PathLike.t -> callback:NoParamCallback.t -> unit
    [@@js.global "mkdir"]

  module Mkdir : sig
    val __promisify__
      :  PathLike.t
      -> options:(MakeDirectoryOptions.t, AnonymousInterface18.t) intersection2
      -> string or_undefined Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:Mode.t or_null
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:(MakeDirectoryOptions.t, Mode.t) union2 or_null
      -> unit
      -> string or_undefined Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "mkdir"]

  val mkdir_sync
    :  PathLike.t
    -> options:(MakeDirectoryOptions.t, AnonymousInterface18.t) intersection2
    -> string or_undefined
    [@@js.global "mkdirSync"]

  val mkdir_sync : PathLike.t -> ?options:Mode.t or_null -> unit -> unit
    [@@js.global "mkdirSync"]

  val mkdir_sync
    :  PathLike.t
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
    -> options:(AnonymousInterface7.t, ([ `buffer ][@js.enum])) or_enum
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

  val mkdtemp_sync
    :  prefix:string
    -> ?options:(BaseEncodingOptions.t, BufferEncoding.t) union2 or_null
    -> unit
    -> string
    [@@js.global "mkdtempSync"]

  val mkdtemp_sync : prefix:string -> options:BufferEncodingOption.t -> Buffer.t
    [@@js.global "mkdtempSync"]

  val mkdtemp_sync
    :  prefix:string
    -> ?options:BaseEncodingOptions.t or_string or_null
    -> unit
    -> Buffer.t or_string
    [@@js.global "mkdtempSync"]

  val readdir
    :  PathLike.t
    -> options:
         (BufferEncoding.t, AnonymousInterface11.t) union2 or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> files:string list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  PathLike.t
    -> options:(AnonymousInterface9.t, ([ `buffer ][@js.enum])) or_enum
    -> callback:(err:ErrnoException.t or_null -> files:Buffer.t list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  PathLike.t
    -> options:BufferEncoding.t or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> files:Buffer.t or_string list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  PathLike.t
    -> callback:(err:ErrnoException.t or_null -> files:string list -> unit)
    -> unit
    [@@js.global "readdir"]

  val readdir
    :  PathLike.t
    -> options:(BaseEncodingOptions.t, AnonymousInterface20.t) intersection2
    -> callback:(err:ErrnoException.t or_null -> files:Dirent.t list -> unit)
    -> unit
    [@@js.global "readdir"]

  module Readdir : sig
    val __promisify__
      :  PathLike.t
      -> ?options:(BufferEncoding.t, AnonymousInterface11.t) union2 or_null
      -> unit
      -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> options:(AnonymousInterface9.t, ([ `buffer ][@js.enum])) or_enum
      -> Buffer.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> ?options:BufferEncoding.t or_null
      -> unit
      -> Buffer.t or_string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t
      -> options:(BaseEncodingOptions.t, AnonymousInterface20.t) intersection2
      -> Dirent.t list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readdir"]

  val readdir_sync
    :  PathLike.t
    -> ?options:(BufferEncoding.t, AnonymousInterface11.t) union2 or_null
    -> unit
    -> string list
    [@@js.global "readdirSync"]

  val readdir_sync
    :  PathLike.t
    -> options:(AnonymousInterface9.t, ([ `buffer ][@js.enum])) or_enum
    -> Buffer.t list
    [@@js.global "readdirSync"]

  val readdir_sync
    :  PathLike.t
    -> ?options:BufferEncoding.t or_null
    -> unit
    -> Buffer.t or_string list
    [@@js.global "readdirSync"]

  val readdir_sync
    :  PathLike.t
    -> options:(BaseEncodingOptions.t, AnonymousInterface20.t) intersection2
    -> Dirent.t list
    [@@js.global "readdirSync"]

  val close : int -> callback:NoParamCallback.t -> unit [@@js.global "close"]

  module Close : sig
    val __promisify__ : int -> unit Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "close"]

  val close_sync : int -> unit [@@js.global "closeSync"]

  val open_
    :  PathLike.t
    -> flags:OpenMode.t
    -> mode:Mode.t or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> fd:int -> unit)
    -> unit
    [@@js.global "open"]

  val open_
    :  PathLike.t
    -> flags:OpenMode.t
    -> callback:(err:ErrnoException.t or_null -> fd:int -> unit)
    -> unit
    [@@js.global "open"]

  module Open : sig
    val __promisify__
      :  PathLike.t
      -> flags:OpenMode.t
      -> ?mode:Mode.t or_null
      -> unit
      -> int Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "open"]

  val open_sync
    :  PathLike.t
    -> flags:OpenMode.t
    -> ?mode:Mode.t or_null
    -> unit
    -> int
    [@@js.global "openSync"]

  val utimes
    :  PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "utimes"]

  module Utimes : sig
    val __promisify__
      :  PathLike.t
      -> atime:Date.t or_string or_number
      -> mtime:Date.t or_string or_number
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "utimes"]

  val utimes_sync
    :  PathLike.t
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> unit
    [@@js.global "utimesSync"]

  val futimes
    :  int
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "futimes"]

  module Futimes : sig
    val __promisify__
      :  int
      -> atime:Date.t or_string or_number
      -> mtime:Date.t or_string or_number
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "futimes"]

  val futimes_sync
    :  int
    -> atime:Date.t or_string or_number
    -> mtime:Date.t or_string or_number
    -> unit
    [@@js.global "futimesSync"]

  val fsync : int -> callback:NoParamCallback.t -> unit [@@js.global "fsync"]

  module Fsync : sig
    val __promisify__ : int -> unit Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "fsync"]

  val fsync_sync : int -> unit [@@js.global "fsyncSync"]

  val write
    :  int
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
    :  int
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
    :  int
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
    :  int
    -> buffer:'TBuffer
    -> callback:
         (err:ErrnoException.t or_null
          -> written:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  int
    -> string:string
    -> position:int or_null_or_undefined
    -> encoding:BufferEncoding.t or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> written:int -> str:string -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  int
    -> string:string
    -> position:int or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> written:int -> str:string -> unit)
    -> unit
    [@@js.global "write"]

  val write
    :  int
    -> string:string
    -> callback:
         (err:ErrnoException.t or_null -> written:int -> str:string -> unit)
    -> unit
    [@@js.global "write"]

  module Write : sig
    val __promisify__
      :  int
      -> ?buffer:'TBuffer
      -> ?offset:int
      -> ?length:int
      -> ?position:int or_null
      -> unit
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  int
      -> string:string
      -> ?position:int or_null
      -> ?encoding:BufferEncoding.t or_null
      -> unit
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "write"]

  val write_sync
    :  int
    -> buffer:ArrayBufferView.t
    -> ?offset:int or_null
    -> ?length:int or_null
    -> ?position:int or_null
    -> unit
    -> int
    [@@js.global "writeSync"]

  val write_sync
    :  int
    -> string:string
    -> ?position:int or_null
    -> ?encoding:BufferEncoding.t or_null
    -> unit
    -> int
    [@@js.global "writeSync"]

  val read
    :  int
    -> buffer:'TBuffer
    -> offset:int
    -> length:int
    -> position:int or_null
    -> callback:
         (err:ErrnoException.t or_null
          -> bytes_read:int
          -> buffer:'TBuffer
          -> unit)
    -> unit
    [@@js.global "read"]

  module Read : sig
    val __promisify__
      :  int
      -> buffer:'TBuffer
      -> offset:int
      -> length:int
      -> position:int or_null
      -> AnonymousInterface2.t Promise.t
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

  val read_sync
    :  int
    -> buffer:ArrayBufferView.t
    -> offset:int
    -> length:int
    -> position:int or_null
    -> int
    [@@js.global "readSync"]

  val read_sync
    :  int
    -> buffer:ArrayBufferView.t
    -> ?opts:ReadSyncOptions.t
    -> unit
    -> int
    [@@js.global "readSync"]

  val read_file
    :  PathLike.t or_number
    -> options:AnonymousInterface6.t or_null_or_undefined
    -> callback:(err:ErrnoException.t or_null -> data:Buffer.t -> unit)
    -> unit
    [@@js.global "readFile"]

  val read_file
    :  PathLike.t or_number
    -> options:AnonymousInterface5.t or_string
    -> callback:(err:ErrnoException.t or_null -> data:string -> unit)
    -> unit
    [@@js.global "readFile"]

  val read_file
    :  PathLike.t or_number
    -> options:
         (BaseEncodingOptions.t, AnonymousInterface12.t) intersection2 or_string
         or_null_or_undefined
    -> callback:
         (err:ErrnoException.t or_null -> data:Buffer.t or_string -> unit)
    -> unit
    [@@js.global "readFile"]

  val read_file
    :  PathLike.t or_number
    -> callback:(err:ErrnoException.t or_null -> data:Buffer.t -> unit)
    -> unit
    [@@js.global "readFile"]

  module ReadFile : sig
    val __promisify__
      :  PathLike.t or_number
      -> ?options:AnonymousInterface6.t or_null
      -> unit
      -> Buffer.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t or_number
      -> options:AnonymousInterface5.t or_string
      -> string Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  PathLike.t or_number
      -> ?options:
           (BaseEncodingOptions.t, AnonymousInterface12.t) intersection2
           or_string
           or_null
      -> unit
      -> Buffer.t or_string Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readFile"]

  val read_file_sync
    :  PathLike.t or_number
    -> ?options:AnonymousInterface6.t
    -> unit
    -> Buffer.t
    [@@js.global "readFileSync"]

  val read_file_sync
    :  PathLike.t or_number
    -> options:(BufferEncoding.t, AnonymousInterface5.t) union2
    -> string
    [@@js.global "readFileSync"]

  val read_file_sync
    :  PathLike.t or_number
    -> ?options:BufferEncoding.t
    -> unit
    -> Buffer.t or_string
    [@@js.global "readFileSync"]

  val read_file_sync : PathLike.t -> ?options:BufferEncoding.t -> unit -> string
    [@@js.global "readFileSync"]

  module WriteFileOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val write_file
    :  PathLike.t or_number
    -> data:ArrayBufferView.t or_string
    -> options:WriteFileOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "writeFile"]

  val write_file
    :  PathLike.t or_number
    -> data:ArrayBufferView.t or_string
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "writeFile"]

  module WriteFile : sig
    val __promisify__
      :  PathLike.t or_number
      -> data:ArrayBufferView.t or_string
      -> ?options:WriteFileOptions.t
      -> unit
      -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "writeFile"]

  val write_file_sync
    :  PathLike.t or_number
    -> data:ArrayBufferView.t or_string
    -> ?options:WriteFileOptions.t
    -> unit
    -> unit
    [@@js.global "writeFileSync"]

  val append_file
    :  file:string or_number
    -> data:Uint8Array.t or_string
    -> options:WriteFileOptions.t
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "appendFile"]

  val append_file
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

  val append_file_sync
    :  file:string or_number
    -> data:Uint8Array.t or_string
    -> ?options:WriteFileOptions.t
    -> unit
    -> unit
    [@@js.global "appendFileSync"]

  val watch_file
    :  filename:string
    -> options:AnonymousInterface16.t or_undefined
    -> listener:(curr:Stats.t -> prev:Stats.t -> unit)
    -> unit
    [@@js.global "watchFile"]

  val watch_file
    :  filename:string
    -> listener:(curr:Stats.t -> prev:Stats.t -> unit)
    -> unit
    [@@js.global "watchFile"]

  val unwatch_file
    :  filename:string
    -> ?listener:(curr:Stats.t -> prev:Stats.t -> unit)
    -> unit
    -> unit
    [@@js.global "unwatchFile"]

  val watch
    :  filename:string
    -> options:
         (BufferEncoding.t, AnonymousInterface10.t) union2 or_null_or_undefined
    -> ?listener:
         (event:([ `change [@js "change"] | `rename [@js "rename"] ][@js.enum])
          -> filename:string
          -> unit)
    -> unit
    -> FSWatcher.t
    [@@js.global "watch"]

  val watch
    :  filename:string
    -> options:(AnonymousInterface8.t, ([ `buffer ][@js.enum])) or_enum
    -> ?listener:
         (event:([ `change [@js "change"] | `rename [@js "rename"] ][@js.enum])
          -> filename:Buffer.t
          -> unit)
    -> unit
    -> FSWatcher.t
    [@@js.global "watch"]

  val watch
    :  filename:string
    -> options:AnonymousInterface10.t or_string or_null
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

  val exists : PathLike.t -> callback:(exists:bool -> unit) -> unit
    [@@js.global "exists"]

  module Exists : sig
    val __promisify__ : PathLike.t -> bool Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "exists"]

  val exists_sync : PathLike.t -> bool [@@js.global "existsSync"]

  module Constants : sig
    val f_ok : int [@@js.global "F_OK"]

    val r_ok : int [@@js.global "R_OK"]

    val w_ok : int [@@js.global "W_OK"]

    val x_ok : int [@@js.global "X_OK"]

    val c_opyfile_excl : int [@@js.global "COPYFILE_EXCL"]

    val c_opyfile_ficlone : int [@@js.global "COPYFILE_FICLONE"]

    val c_opyfile_ficlone_force : int [@@js.global "COPYFILE_FICLONE_FORCE"]

    val o_rdonly : int [@@js.global "O_RDONLY"]

    val o_wronly : int [@@js.global "O_WRONLY"]

    val o_rdwr : int [@@js.global "O_RDWR"]

    val o_creat : int [@@js.global "O_CREAT"]

    val o_excl : int [@@js.global "O_EXCL"]

    val o_noctty : int [@@js.global "O_NOCTTY"]

    val o_trunc : int [@@js.global "O_TRUNC"]

    val o_append : int [@@js.global "O_APPEND"]

    val o_directory : int [@@js.global "O_DIRECTORY"]

    val o_noatime : int [@@js.global "O_NOATIME"]

    val o_nofollow : int [@@js.global "O_NOFOLLOW"]

    val o_sync : int [@@js.global "O_SYNC"]

    val o_dsync : int [@@js.global "O_DSYNC"]

    val o_symlink : int [@@js.global "O_SYMLINK"]

    val o_direct : int [@@js.global "O_DIRECT"]

    val o_nonblock : int [@@js.global "O_NONBLOCK"]

    val s_ifmt : int [@@js.global "S_IFMT"]

    val s_ifreg : int [@@js.global "S_IFREG"]

    val s_ifdir : int [@@js.global "S_IFDIR"]

    val s_ifchr : int [@@js.global "S_IFCHR"]

    val s_ifblk : int [@@js.global "S_IFBLK"]

    val s_ififo : int [@@js.global "S_IFIFO"]

    val s_iflnk : int [@@js.global "S_IFLNK"]

    val s_ifsock : int [@@js.global "S_IFSOCK"]

    val s_irwxu : int [@@js.global "S_IRWXU"]

    val s_irusr : int [@@js.global "S_IRUSR"]

    val s_iwusr : int [@@js.global "S_IWUSR"]

    val s_ixusr : int [@@js.global "S_IXUSR"]

    val s_irwxg : int [@@js.global "S_IRWXG"]

    val s_irgrp : int [@@js.global "S_IRGRP"]

    val s_iwgrp : int [@@js.global "S_IWGRP"]

    val s_ixgrp : int [@@js.global "S_IXGRP"]

    val s_irwxo : int [@@js.global "S_IRWXO"]

    val s_iroth : int [@@js.global "S_IROTH"]

    val s_iwoth : int [@@js.global "S_IWOTH"]

    val s_ixoth : int [@@js.global "S_IXOTH"]

    val u_v_o_filemap_fs : int [@@js.global "UV_O_FILEMAP_FS"]
  end
  [@@js.scope "constants"]

  val access
    :  PathLike.t
    -> mode:int or_undefined
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "access"]

  val access : PathLike.t -> NoParamCallback.t -> unit [@@js.global "access"]

  module Access : sig
    val __promisify__ : PathLike.t -> ?mode:int -> unit -> unit Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "access"]

  val access_sync : PathLike.t -> ?mode:int -> unit -> unit
    [@@js.global "accessSync"]

  val create_read_stream
    :  PathLike.t
    -> ?options:AnonymousInterface13.t or_string
    -> unit
    -> ReadStream.t
    [@@js.global "createReadStream"]

  val create_write_stream
    :  PathLike.t
    -> ?options:AnonymousInterface14.t or_string
    -> unit
    -> WriteStream.t
    [@@js.global "createWriteStream"]

  val fdatasync : int -> NoParamCallback.t -> unit [@@js.global "fdatasync"]

  module Fdatasync : sig
    val __promisify__ : int -> unit Promise.t [@@js.global "__promisify__"]
  end
  [@@js.scope "fdatasync"]

  val fdatasync_sync : int -> unit [@@js.global "fdatasyncSync"]

  val copy_file
    :  src:string
    -> dest:string
    -> callback:NoParamCallback.t
    -> unit
    [@@js.global "copyFile"]

  val copy_file
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

  val copy_file_sync : src:string -> dest:string -> ?flags:int -> unit -> unit
    [@@js.global "copyFileSync"]

  val writev
    :  int
    -> buffers:ArrayBufferView.t list
    -> cb:
         (err:ErrnoException.t or_null
          -> bytes_written:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "writev"]

  val writev
    :  int
    -> buffers:ArrayBufferView.t list
    -> position:int
    -> cb:
         (err:ErrnoException.t or_null
          -> bytes_written:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "writev"]

  module WriteVResult : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytes_written : t -> int [@@js.get "bytesWritten"]

    val set_bytes_written : t -> int -> unit [@@js.set "bytesWritten"]

    val get_buffers : t -> ArrayBufferView.t list [@@js.get "buffers"]

    val set_buffers : t -> ArrayBufferView.t list -> unit [@@js.set "buffers"]
  end
  [@@js.scope "WriteVResult"]

  module Writev : sig
    val __promisify__
      :  int
      -> buffers:ArrayBufferView.t list
      -> ?position:int
      -> unit
      -> WriteVResult.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "writev"]

  val writev_sync
    :  int
    -> buffers:ArrayBufferView.t list
    -> ?position:int
    -> unit
    -> int
    [@@js.global "writevSync"]

  val readv
    :  int
    -> buffers:ArrayBufferView.t list
    -> cb:
         (err:ErrnoException.t or_null
          -> bytes_read:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "readv"]

  val readv
    :  int
    -> buffers:ArrayBufferView.t list
    -> position:int
    -> cb:
         (err:ErrnoException.t or_null
          -> bytes_read:int
          -> buffers:ArrayBufferView.t list
          -> unit)
    -> unit
    [@@js.global "readv"]

  module ReadVResult : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bytes_read : t -> int [@@js.get "bytesRead"]

    val set_bytes_read : t -> int -> unit [@@js.set "bytesRead"]

    val get_buffers : t -> ArrayBufferView.t list [@@js.get "buffers"]

    val set_buffers : t -> ArrayBufferView.t list -> unit [@@js.set "buffers"]
  end
  [@@js.scope "ReadVResult"]

  module Readv : sig
    val __promisify__
      :  int
      -> buffers:ArrayBufferView.t list
      -> ?position:int
      -> unit
      -> ReadVResult.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "readv"]

  val readv_sync
    :  int
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

    val get_buffer_size : t -> int [@@js.get "bufferSize"]

    val set_buffer_size : t -> int -> unit [@@js.set "bufferSize"]
  end
  [@@js.scope "OpenDirOptions"]

  val opendir_sync : PathLike.t -> ?options:OpenDirOptions.t -> unit -> Dir.t
    [@@js.global "opendirSync"]

  val opendir
    :  PathLike.t
    -> cb:(err:ErrnoException.t or_null -> dir:Dir.t -> unit)
    -> unit
    [@@js.global "opendir"]

  val opendir
    :  PathLike.t
    -> options:OpenDirOptions.t
    -> cb:(err:ErrnoException.t or_null -> dir:Dir.t -> unit)
    -> unit
    [@@js.global "opendir"]

  module Opendir : sig
    val __promisify__
      :  PathLike.t
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
