[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS"]

open Es2020

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoder : t -> any [@@js.get "encoder"]

  val get_decoder : t -> any [@@js.get "decoder"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val info
    :  t
    -> ?message:any
    -> optional_params:(any list[@js.variadic])
    -> unit
    [@@js.call "info"]

  val log
    :  t
    -> ?message:any
    -> optional_params:(any list[@js.variadic])
    -> unit
    [@@js.call "log"]

  val warn
    :  t
    -> ?message:any
    -> optional_params:(any list[@js.variadic])
    -> unit
    [@@js.call "warn"]

  val error
    :  t
    -> ?message:any
    -> optional_params:(any list[@js.variadic])
    -> unit
    [@@js.call "error"]
end

module MessageBufferEncoding : sig
  type t =
    ([ `L_s0_ascii [@js "ascii"]
     | `L_s1_utf_8 [@js "utf-8"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module MessageBuffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> MessageBufferEncoding.t [@@js.get "encoding"]

  val append : t -> chunk:Uint8Array.t or_string -> unit [@@js.call "append"]

  val try_read_headers : t -> (string, string) Map.t or_undefined
    [@@js.call "tryReadHeaders"]

  val try_read_body : t -> length:int -> Uint8Array.t or_undefined
    [@@js.call "tryReadBody"]
end
[@@js.scope "_MessageBuffer"]

module ReadableStream : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val on_data
    :  t
    -> listener:(data:Uint8Array.t -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onData"]

  val on_close
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onClose"]

  val on_error
    :  t
    -> listener:(error:any -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onError"]

  val on_end
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onEnd"]
end
[@@js.scope "_ReadableStream"]

module WritableStream : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val on_close
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onClose"]

  val on_error
    :  t
    -> listener:(error:any -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onError"]

  val on_end
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onEnd"]

  val write : t -> data:Uint8Array.t -> unit Promise.t [@@js.call "write"]

  val write'
    :  t
    -> data:string
    -> encoding:MessageBufferEncoding.t
    -> unit Promise.t
    [@@js.call "write"]

  val end_ : t -> unit [@@js.call "end"]
end
[@@js.scope "_WritableStream"]

module DuplexStream : sig
  include module type of struct
    include ReadableStream
  end

  val cast' : t -> WritableStream.t [@@js.cast]
end
[@@js.scope "_DuplexStream"]

module TimeoutHandle : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_timer_brand : t -> never or_undefined [@@js.get "_timerBrand"]

  val set_timer_brand : t -> never or_undefined -> unit [@@js.set "_timerBrand"]
end
[@@js.scope "_TimeoutHandle"]

module ImmediateHandle : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_immediate_brand : t -> never or_undefined [@@js.get "_immediateBrand"]

  val set_immediate_brand : t -> never or_undefined -> unit
    [@@js.set "_immediateBrand"]
end
[@@js.scope "_ImmediateHandle"]

module RAL : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  module MessageBuffer : sig
    type t = MessageBuffer.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessageBufferEncoding : sig
    type t = MessageBufferEncoding.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ReadableStream : sig
    type t = ReadableStream.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WritableStream : sig
    type t = WritableStream.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DuplexStream : sig
    type t = DuplexStream.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TimeoutHandle : sig
    type t = TimeoutHandle.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ImmediateHandle : sig
    type t = ImmediateHandle.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val install : ral:t -> unit [@@js.global "install"]

  module AnonymousInterface1 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create_ : t -> encoding:MessageBufferEncoding.t -> MessageBuffer.t
      [@@js.call "create"]
  end

  val get_application_json : t -> AnonymousInterface0.t
    [@@js.get "applicationJson"]

  val get_message_buffer : t -> AnonymousInterface1.t [@@js.get "messageBuffer"]

  val get_console : t -> AnonymousInterface2.t [@@js.get "console"]

  module AnonymousInterface3 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_timeout
      :  t
      -> callback:(args:(any list[@js.variadic]) -> unit)
      -> ms:int
      -> args:(any list[@js.variadic])
      -> TimeoutHandle.t
      [@@js.call "setTimeout"]

    val clear_timeout : t -> handle:TimeoutHandle.t -> unit
      [@@js.call "clearTimeout"]

    val set_immediate
      :  t
      -> callback:(args:(any list[@js.variadic]) -> unit)
      -> args:(any list[@js.variadic])
      -> ImmediateHandle.t
      [@@js.call "setImmediate"]

    val clear_immediate : t -> handle:ImmediateHandle.t -> unit
      [@@js.call "clearImmediate"]
  end

  val get_timer : t -> AnonymousInterface3.t [@@js.get "timer"]
end
[@@js.scope "RAL"]

val ral : unit -> RAL.t [@@js.global "RAL"]
