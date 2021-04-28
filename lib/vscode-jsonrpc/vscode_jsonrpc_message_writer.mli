[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS"]

open Es2020

module MessageWriter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_on_error
    :  t
    -> (Error.t
       * Vscode_jsonrpc_messages.Message.t or_undefined
       * int or_undefined)
       Vscode_jsonrpc_events.Event.t
    [@@js.get "onError"]

  val get_on_close : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onClose"]

  val write : t -> msg:Vscode_jsonrpc_messages.Message.t -> unit Promise.t
    [@@js.call "write"]

  val end_ : t -> unit [@@js.call "end"]

  val dispose : t -> unit [@@js.call "dispose"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MessageWriter"]

module AbstractMessageWriter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_error_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "errorEmitter"]

  val set_error_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "errorEmitter"]

  val get_close_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "closeEmitter"]

  val set_close_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "closeEmitter"]

  val create : unit -> t [@@js.create]

  val dispose : t -> unit [@@js.call "dispose"]

  val get_on_error
    :  t
    -> (Error.t
       * Vscode_jsonrpc_messages.Message.t or_undefined
       * int or_undefined)
       Vscode_jsonrpc_events.Event.t
    [@@js.get "onError"]

  val fire_error
    :  t
    -> error:any
    -> ?message:Vscode_jsonrpc_messages.Message.t
    -> ?count:int
    -> unit
    -> unit
    [@@js.call "fireError"]

  val get_on_close : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onClose"]

  val fire_close : t -> unit [@@js.call "fireClose"]

  val get_as_error : t -> (* FIXME: unknown type *) any [@@js.get "asError"]

  val set_as_error : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asError"]
end
[@@js.scope "AbstractMessageWriter"]

module MessageWriterOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "charset"]

  val set_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]

  val get_content_encoder : t -> Vscode_jsonrpc_encoding.ContentEncoder.t
    [@@js.get "contentEncoder"]

  val set_content_encoder
    :  t
    -> Vscode_jsonrpc_encoding.ContentEncoder.t
    -> unit
    [@@js.set "contentEncoder"]

  val get_content_type_encoder
    :  t
    -> Vscode_jsonrpc_encoding.ContentTypeEncoder.t
    [@@js.get "contentTypeEncoder"]

  val set_content_type_encoder
    :  t
    -> Vscode_jsonrpc_encoding.ContentTypeEncoder.t
    -> unit
    [@@js.set "contentTypeEncoder"]
end
[@@js.scope "MessageWriterOptions"]

module WriteableStreamMessageWriter : sig
  include module type of struct
    include AbstractMessageWriter
  end

  val get_writable : t -> (* FIXME: unknown type *) any [@@js.get "writable"]

  val set_writable : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "writable"]

  val get_options : t -> (* FIXME: unknown type *) any [@@js.get "options"]

  val set_options : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "options"]

  val get_error_count : t -> (* FIXME: unknown type *) any
    [@@js.get "errorCount"]

  val set_error_count : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "errorCount"]

  val get_write_semaphore : t -> (* FIXME: unknown type *) any
    [@@js.get "writeSemaphore"]

  val set_write_semaphore : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "writeSemaphore"]

  val create
    :  writable:Vscode_jsonrpc_ral.RAL.WritableStream.t
    -> ?options:
         ( MessageWriterOptions.t
         , Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t )
         union2
    -> unit
    -> t
    [@@js.create]

  val write : t -> msg:Vscode_jsonrpc_messages.Message.t -> unit Promise.t
    [@@js.call "write"]

  val get_do_write : t -> (* FIXME: unknown type *) any [@@js.get "doWrite"]

  val set_do_write : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doWrite"]

  val get_handle_error : t -> (* FIXME: unknown type *) any
    [@@js.get "handleError"]

  val set_handle_error : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleError"]

  val end_ : t -> unit [@@js.call "end"]

  val cast' : t -> MessageWriter.t [@@js.cast]
end
[@@js.scope "WriteableStreamMessageWriter"]
