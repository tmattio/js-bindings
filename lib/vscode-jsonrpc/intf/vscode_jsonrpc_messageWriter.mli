[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _AbstractMessageWriter = [ `AbstractMessageWriter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageWriter = [ `MessageWriter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageWriterOptions = [ `MessageWriterOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WriteableStreamMessageWriter =
      [ `WriteableStreamMessageWriter
      | `AbstractMessageWriter
      | `MessageWriter
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import RAL from './ral'; *)
(* import { Message } from './messages'; *)
(* import { Event } from './events'; *)
(* import { ContentEncoder, ContentTypeEncoder } from './encoding'; *)
module MessageWriter : sig
  type t = _MessageWriter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_onError
    :  t
    -> (Error.t * Message.t or_undefined * float or_undefined) Event.t_1
    [@@js.get "onError"]

  val get_onClose : t -> unit Event.t_1 [@@js.get "onClose"]

  val write : t -> msg:Message.t -> unit Promise.t [@@js.call "write"]

  val end_ : t -> unit [@@js.call "end"]

  val dispose : t -> unit [@@js.call "dispose"]
end
[@@js.scope "MessageWriter"]

module MessageWriter : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "MessageWriter"]

module AbstractMessageWriter : sig
  type t = _AbstractMessageWriter

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

  val create : unit -> t [@@js.create]

  val dispose : t -> unit [@@js.call "dispose"]

  val get_onError
    :  t
    -> (Error.t * Message.t or_undefined * float or_undefined) Event.t_1
    [@@js.get "onError"]

  val fireError
    :  t
    -> error:any
    -> ?message:Message.t
    -> ?count:float
    -> unit
    -> unit
    [@@js.call "fireError"]

  val get_onClose : t -> unit Event.t_1 [@@js.get "onClose"]

  val fireClose : t -> unit [@@js.call "fireClose"]

  val get_asError : t -> (* FIXME: unknown type *) any [@@js.get "asError"]

  val set_asError : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asError"]
end
[@@js.scope "AbstractMessageWriter"]

module MessageWriterOptions : sig
  type t = _MessageWriterOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_charset : t -> RAL.MessageBufferEncoding.t [@@js.get "charset"]

  val set_charset : t -> RAL.MessageBufferEncoding.t -> unit
    [@@js.set "charset"]

  val get_contentEncoder : t -> ContentEncoder.t [@@js.get "contentEncoder"]

  val set_contentEncoder : t -> ContentEncoder.t -> unit
    [@@js.set "contentEncoder"]

  val get_contentTypeEncoder : t -> ContentTypeEncoder.t
    [@@js.get "contentTypeEncoder"]

  val set_contentTypeEncoder : t -> ContentTypeEncoder.t -> unit
    [@@js.set "contentTypeEncoder"]
end
[@@js.scope "MessageWriterOptions"]

module WriteableStreamMessageWriter : sig
  type t = _WriteableStreamMessageWriter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_writable : t -> (* FIXME: unknown type *) any [@@js.get "writable"]

  val set_writable : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "writable"]

  val get_options : t -> (* FIXME: unknown type *) any [@@js.get "options"]

  val set_options : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "options"]

  val get_errorCount : t -> (* FIXME: unknown type *) any
    [@@js.get "errorCount"]

  val set_errorCount : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "errorCount"]

  val get_writeSemaphore : t -> (* FIXME: unknown type *) any
    [@@js.get "writeSemaphore"]

  val set_writeSemaphore : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "writeSemaphore"]

  val create
    :  writable:RAL.WritableStream.t
    -> ?options:(_MessageWriterOptions, RAL.MessageBufferEncoding.t) union2
    -> unit
    -> t
    [@@js.create]

  val write : t -> msg:Message.t -> unit Promise.t [@@js.call "write"]

  val get_doWrite : t -> (* FIXME: unknown type *) any [@@js.get "doWrite"]

  val set_doWrite : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doWrite"]

  val get_handleError : t -> (* FIXME: unknown type *) any
    [@@js.get "handleError"]

  val set_handleError : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleError"]

  val end_ : t -> unit [@@js.call "end"]

  val cast : t -> _AbstractMessageWriter [@@js.cast]

  val cast' : t -> _MessageWriter [@@js.cast]
end
[@@js.scope "WriteableStreamMessageWriter"]