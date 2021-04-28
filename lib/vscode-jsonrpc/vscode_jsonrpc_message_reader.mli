[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS"]

open Es2020

module DataCallback : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> data:Vscode_jsonrpc_messages.Message.t -> unit [@@js.apply]
end
[@@js.scope "DataCallback"]

module PartialMessageInfo : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_message_token : t -> int [@@js.get "messageToken"]

  val get_waiting_time : t -> int [@@js.get "waitingTime"]
end
[@@js.scope "PartialMessageInfo"]

module MessageReader : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_on_error : t -> Error.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onError"]

  val get_on_close : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onClose"]

  val get_on_partial_message
    :  t
    -> PartialMessageInfo.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onPartialMessage"]

  val listen
    :  t
    -> callback:DataCallback.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "listen"]

  val dispose : t -> unit [@@js.call "dispose"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MessageReader"]

module AbstractMessageReader : sig
  include module type of struct
    include MessageReader
  end

  val get_error_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "errorEmitter"]

  val set_error_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "errorEmitter"]

  val get_close_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "closeEmitter"]

  val set_close_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "closeEmitter"]

  val get_partial_message_emitter : t -> (* FIXME: unknown type *) any
    [@@js.get "partialMessageEmitter"]

  val set_partial_message_emitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "partialMessageEmitter"]

  val create : unit -> t [@@js.create]

  val dispose : t -> unit [@@js.call "dispose"]

  val get_on_error : t -> Error.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onError"]

  val fire_error : t -> error:any -> unit [@@js.call "fireError"]

  val get_on_close : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onClose"]

  val fire_close : t -> unit [@@js.call "fireClose"]

  val get_on_partial_message
    :  t
    -> PartialMessageInfo.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onPartialMessage"]

  val fire_partial_message : t -> info:PartialMessageInfo.t -> unit
    [@@js.call "firePartialMessage"]

  val get_as_error : t -> (* FIXME: unknown type *) any [@@js.get "asError"]

  val set_as_error : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asError"]

  val listen
    :  t
    -> callback:DataCallback.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "listen"]
end
[@@js.scope "AbstractMessageReader"]

module MessageReaderOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    [@@js.get "charset"]

  val set_charset : t -> Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]

  val get_content_decoder : t -> Vscode_jsonrpc_encoding.ContentDecoder.t
    [@@js.get "contentDecoder"]

  val set_content_decoder
    :  t
    -> Vscode_jsonrpc_encoding.ContentDecoder.t
    -> unit
    [@@js.set "contentDecoder"]

  val get_content_decoders : t -> Vscode_jsonrpc_encoding.ContentDecoder.t list
    [@@js.get "contentDecoders"]

  val set_content_decoders
    :  t
    -> Vscode_jsonrpc_encoding.ContentDecoder.t list
    -> unit
    [@@js.set "contentDecoders"]

  val get_content_type_decoder
    :  t
    -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t
    [@@js.get "contentTypeDecoder"]

  val set_content_type_decoder
    :  t
    -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t
    -> unit
    [@@js.set "contentTypeDecoder"]

  val get_content_type_decoders
    :  t
    -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t list
    [@@js.get "contentTypeDecoders"]

  val set_content_type_decoders
    :  t
    -> Vscode_jsonrpc_encoding.ContentTypeDecoder.t list
    -> unit
    [@@js.set "contentTypeDecoders"]
end
[@@js.scope "MessageReaderOptions"]

module ReadableStreamMessageReader : sig
  include module type of struct
    include AbstractMessageReader
  end

  val get_readable : t -> Vscode_jsonrpc_ral.RAL.ReadableStream.t
    [@@js.get "readable"]

  val set_readable : t -> Vscode_jsonrpc_ral.RAL.ReadableStream.t -> unit
    [@@js.set "readable"]

  val get_options : t -> (* FIXME: unknown type *) any [@@js.get "options"]

  val set_options : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "options"]

  val get_callback : t -> (* FIXME: unknown type *) any [@@js.get "callback"]

  val set_callback : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "callback"]

  val get_next_message_length : t -> (* FIXME: unknown type *) any
    [@@js.get "nextMessageLength"]

  val set_next_message_length : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "nextMessageLength"]

  val get_message_token : t -> (* FIXME: unknown type *) any
    [@@js.get "messageToken"]

  val set_message_token : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "messageToken"]

  val get_buffer : t -> (* FIXME: unknown type *) any [@@js.get "buffer"]

  val set_buffer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "buffer"]

  val get_partial_message_timer : t -> (* FIXME: unknown type *) any
    [@@js.get "partialMessageTimer"]

  val set_partial_message_timer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "partialMessageTimer"]

  val get_partial_message_timeout : t -> (* FIXME: unknown type *) any
    [@@js.get "_partialMessageTimeout"]

  val set_partial_message_timeout : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_partialMessageTimeout"]

  val create
    :  readable:Vscode_jsonrpc_ral.RAL.ReadableStream.t
    -> ?options:
         ( MessageReaderOptions.t
         , Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t )
         union2
    -> unit
    -> t
    [@@js.create]

  val set_partial_message_timeout : t -> int -> unit
    [@@js.set "partialMessageTimeout"]

  val get_partial_message_timeout : t -> int [@@js.get "partialMessageTimeout"]

  val listen
    :  t
    -> callback:DataCallback.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "listen"]

  val get_on_data : t -> (* FIXME: unknown type *) any [@@js.get "onData"]

  val set_on_data : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "onData"]

  val get_clear_partial_message_timer : t -> (* FIXME: unknown type *) any
    [@@js.get "clearPartialMessageTimer"]

  val set_clear_partial_message_timer
    :  t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "clearPartialMessageTimer"]

  val get_set_partial_message_timer : t -> (* FIXME: unknown type *) any
    [@@js.get "setPartialMessageTimer"]

  val set_set_partial_message_timer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "setPartialMessageTimer"]
end
[@@js.scope "ReadableStreamMessageReader"]
