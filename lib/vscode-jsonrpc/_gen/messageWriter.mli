[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - ContentEncoder
  - ContentTypeEncoder
  - Error
  - Event<T1>
  - Message
  - Promise<T1>
  - RAL.MessageBufferEncoding
  - RAL.WritableStream
 *)
[@@@js.stop]
module type Missing = sig
  module ContentEncoder : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ContentTypeEncoder : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Event : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Message : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RAL : sig
    module MessageBufferEncoding : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WritableStream : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module ContentEncoder : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ContentTypeEncoder : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Error : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Event : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Message : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RAL : sig
      module MessageBufferEncoding : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WritableStream : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _AbstractMessageWriter = [`AbstractMessageWriter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageWriter = [`MessageWriter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageWriterOptions = [`MessageWriterOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WriteableStreamMessageWriter = [`WriteableStreamMessageWriter | `AbstractMessageWriter | `MessageWriter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import RAL from './ral'; *)
  (* import { Message } from './messages'; *)
  (* import { Event } from './events'; *)
  (* import { ContentEncoder, ContentTypeEncoder } from './encoding'; *)
  module[@js.scope "MessageWriter"] MessageWriter : sig
    type t = _MessageWriter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_onError: t -> (Error.t_0 * Message.t_0 or_undefined * float or_undefined) Event.t_1 [@@js.get "onError"]
    val get_onClose: t -> unit Event.t_1 [@@js.get "onClose"]
    val write: t -> msg:Message.t_0 -> unit Promise.t_1 [@@js.call "write"]
    val end_: t -> unit [@@js.call "end"]
    val dispose: t -> unit [@@js.call "dispose"]
  end
  module[@js.scope "MessageWriter"] MessageWriter : sig
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "AbstractMessageWriter"] AbstractMessageWriter : sig
    type t = _AbstractMessageWriter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_errorEmitter: t -> (* FIXME: unknown type *)any [@@js.get "errorEmitter"]
    val set_errorEmitter: t -> (* FIXME: unknown type *)any -> unit [@@js.set "errorEmitter"]
    val get_closeEmitter: t -> (* FIXME: unknown type *)any [@@js.get "closeEmitter"]
    val set_closeEmitter: t -> (* FIXME: unknown type *)any -> unit [@@js.set "closeEmitter"]
    val create: unit -> t [@@js.create]
    val dispose: t -> unit [@@js.call "dispose"]
    val get_onError: t -> (Error.t_0 * Message.t_0 or_undefined * float or_undefined) Event.t_1 [@@js.get "onError"]
    val fireError: t -> error:any -> ?message:Message.t_0 -> ?count:float -> unit -> unit [@@js.call "fireError"]
    val get_onClose: t -> unit Event.t_1 [@@js.get "onClose"]
    val fireClose: t -> unit [@@js.call "fireClose"]
    val get_asError: t -> (* FIXME: unknown type *)any [@@js.get "asError"]
    val set_asError: t -> (* FIXME: unknown type *)any -> unit [@@js.set "asError"]
  end
  module[@js.scope "MessageWriterOptions"] MessageWriterOptions : sig
    type t = _MessageWriterOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_charset: t -> RAL.MessageBufferEncoding.t_0 [@@js.get "charset"]
    val set_charset: t -> RAL.MessageBufferEncoding.t_0 -> unit [@@js.set "charset"]
    val get_contentEncoder: t -> ContentEncoder.t_0 [@@js.get "contentEncoder"]
    val set_contentEncoder: t -> ContentEncoder.t_0 -> unit [@@js.set "contentEncoder"]
    val get_contentTypeEncoder: t -> ContentTypeEncoder.t_0 [@@js.get "contentTypeEncoder"]
    val set_contentTypeEncoder: t -> ContentTypeEncoder.t_0 -> unit [@@js.set "contentTypeEncoder"]
  end
  module[@js.scope "WriteableStreamMessageWriter"] WriteableStreamMessageWriter : sig
    type t = _WriteableStreamMessageWriter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_writable: t -> (* FIXME: unknown type *)any [@@js.get "writable"]
    val set_writable: t -> (* FIXME: unknown type *)any -> unit [@@js.set "writable"]
    val get_options: t -> (* FIXME: unknown type *)any [@@js.get "options"]
    val set_options: t -> (* FIXME: unknown type *)any -> unit [@@js.set "options"]
    val get_errorCount: t -> (* FIXME: unknown type *)any [@@js.get "errorCount"]
    val set_errorCount: t -> (* FIXME: unknown type *)any -> unit [@@js.set "errorCount"]
    val get_writeSemaphore: t -> (* FIXME: unknown type *)any [@@js.get "writeSemaphore"]
    val set_writeSemaphore: t -> (* FIXME: unknown type *)any -> unit [@@js.set "writeSemaphore"]
    val create: writable:RAL.WritableStream.t_0 -> ?options:(_MessageWriterOptions, RAL.MessageBufferEncoding.t_0) union2 -> unit -> t [@@js.create]
    val write: t -> msg:Message.t_0 -> unit Promise.t_1 [@@js.call "write"]
    val get_doWrite: t -> (* FIXME: unknown type *)any [@@js.get "doWrite"]
    val set_doWrite: t -> (* FIXME: unknown type *)any -> unit [@@js.set "doWrite"]
    val get_handleError: t -> (* FIXME: unknown type *)any [@@js.get "handleError"]
    val set_handleError: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleError"]
    val end_: t -> unit [@@js.call "end"]
    val cast: t -> _AbstractMessageWriter [@@js.cast]
    val cast': t -> _MessageWriter [@@js.cast]
  end
end
