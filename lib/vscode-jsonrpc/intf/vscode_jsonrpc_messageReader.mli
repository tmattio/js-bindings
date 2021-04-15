[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _AbstractMessageReader =
      [ `AbstractMessageReader | `MessageReader ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DataCallback = [ `DataCallback ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageReader = [ `MessageReader ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageReaderOptions = [ `MessageReaderOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _PartialMessageInfo = [ `PartialMessageInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ReadableStreamMessageReader =
      [ `ReadableStreamMessageReader | `AbstractMessageReader | `MessageReader ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import RAL from './ral'; *)
(* import { Event } from './events'; *)
(* import { Message } from './messages'; *)
(* import { ContentDecoder, ContentTypeDecoder } from './encoding'; *)
(* import { Disposable } from './api'; *)
module DataCallback : sig
  type t = _DataCallback

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> data:Message.t -> unit [@@js.apply]
end
[@@js.scope "DataCallback"]

module PartialMessageInfo : sig
  type t = _PartialMessageInfo

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_messageToken : t -> float [@@js.get "messageToken"]

  val get_waitingTime : t -> float [@@js.get "waitingTime"]
end
[@@js.scope "PartialMessageInfo"]

module MessageReader : sig
  type t = _MessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_onError : t -> Error.t Event.t_1 [@@js.get "onError"]

  val get_onClose : t -> unit Event.t_1 [@@js.get "onClose"]

  val get_onPartialMessage : t -> _PartialMessageInfo Event.t_1
    [@@js.get "onPartialMessage"]

  val listen : t -> callback:_DataCallback -> Disposable.t [@@js.call "listen"]

  val dispose : t -> unit [@@js.call "dispose"]
end
[@@js.scope "MessageReader"]

module MessageReader : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MessageReader"]

module AbstractMessageReader : sig
  type t = _AbstractMessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_errorEmitter : t -> (* FIXME: unknown type *) any
    [@@js.get "errorEmitter"]

  val set_errorEmitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "errorEmitter"]

  val get_closeEmitter : t -> (* FIXME: unknown type *) any
    [@@js.get "closeEmitter"]

  val set_closeEmitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "closeEmitter"]

  val get_partialMessageEmitter : t -> (* FIXME: unknown type *) any
    [@@js.get "partialMessageEmitter"]

  val set_partialMessageEmitter : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "partialMessageEmitter"]

  val create : unit -> t [@@js.create]

  val dispose : t -> unit [@@js.call "dispose"]

  val get_onError : t -> Error.t Event.t_1 [@@js.get "onError"]

  val fireError : t -> error:any -> unit [@@js.call "fireError"]

  val get_onClose : t -> unit Event.t_1 [@@js.get "onClose"]

  val fireClose : t -> unit [@@js.call "fireClose"]

  val get_onPartialMessage : t -> _PartialMessageInfo Event.t_1
    [@@js.get "onPartialMessage"]

  val firePartialMessage : t -> info:_PartialMessageInfo -> unit
    [@@js.call "firePartialMessage"]

  val get_asError : t -> (* FIXME: unknown type *) any [@@js.get "asError"]

  val set_asError : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asError"]

  val listen : t -> callback:_DataCallback -> Disposable.t [@@js.call "listen"]

  val cast : t -> _MessageReader [@@js.cast]
end
[@@js.scope "AbstractMessageReader"]

module MessageReaderOptions : sig
  type t = _MessageReaderOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> RAL.MessageBufferEncoding.t [@@js.get "charset"]

  val set_charset : t -> RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]

  val get_contentDecoder : t -> ContentDecoder.t [@@js.get "contentDecoder"]

  val set_contentDecoder : t -> ContentDecoder.t -> unit
    [@@js.set "contentDecoder"]

  val get_contentDecoders : t -> ContentDecoder.t list
    [@@js.get "contentDecoders"]

  val set_contentDecoders : t -> ContentDecoder.t list -> unit
    [@@js.set "contentDecoders"]

  val get_contentTypeDecoder : t -> ContentTypeDecoder.t
    [@@js.get "contentTypeDecoder"]

  val set_contentTypeDecoder : t -> ContentTypeDecoder.t -> unit
    [@@js.set "contentTypeDecoder"]

  val get_contentTypeDecoders : t -> ContentTypeDecoder.t list
    [@@js.get "contentTypeDecoders"]

  val set_contentTypeDecoders : t -> ContentTypeDecoder.t list -> unit
    [@@js.set "contentTypeDecoders"]
end
[@@js.scope "MessageReaderOptions"]

module ReadableStreamMessageReader : sig
  type t = _ReadableStreamMessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_readable : t -> (* FIXME: unknown type *) any [@@js.get "readable"]

  val set_readable : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "readable"]

  val get_options : t -> (* FIXME: unknown type *) any [@@js.get "options"]

  val set_options : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "options"]

  val get_callback : t -> (* FIXME: unknown type *) any [@@js.get "callback"]

  val set_callback : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "callback"]

  val get_nextMessageLength : t -> (* FIXME: unknown type *) any
    [@@js.get "nextMessageLength"]

  val set_nextMessageLength : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "nextMessageLength"]

  val get_messageToken : t -> (* FIXME: unknown type *) any
    [@@js.get "messageToken"]

  val set_messageToken : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "messageToken"]

  val get_buffer : t -> (* FIXME: unknown type *) any [@@js.get "buffer"]

  val set_buffer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "buffer"]

  val get_partialMessageTimer : t -> (* FIXME: unknown type *) any
    [@@js.get "partialMessageTimer"]

  val set_partialMessageTimer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "partialMessageTimer"]

  val get__partialMessageTimeout : t -> (* FIXME: unknown type *) any
    [@@js.get "_partialMessageTimeout"]

  val set__partialMessageTimeout : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_partialMessageTimeout"]

  val create
    :  readable:RAL.ReadableStream.t
    -> ?options:(_MessageReaderOptions, RAL.MessageBufferEncoding.t) union2
    -> unit
    -> t
    [@@js.create]

  val set_partialMessageTimeout : t -> float -> unit
    [@@js.set "partialMessageTimeout"]

  val get_partialMessageTimeout : t -> float [@@js.get "partialMessageTimeout"]

  val listen : t -> callback:_DataCallback -> Disposable.t [@@js.call "listen"]

  val get_onData : t -> (* FIXME: unknown type *) any [@@js.get "onData"]

  val set_onData : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "onData"]

  val get_clearPartialMessageTimer : t -> (* FIXME: unknown type *) any
    [@@js.get "clearPartialMessageTimer"]

  val set_clearPartialMessageTimer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "clearPartialMessageTimer"]

  val get_setPartialMessageTimer : t -> (* FIXME: unknown type *) any
    [@@js.get "setPartialMessageTimer"]

  val set_setPartialMessageTimer : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "setPartialMessageTimer"]

  val cast : t -> _AbstractMessageReader [@@js.cast]
end
[@@js.scope "ReadableStreamMessageReader"]
