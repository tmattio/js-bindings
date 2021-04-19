[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type string_decoder_StringDecoder = [ `String_decoder_StringDecoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module String_decoder : sig
  module StringDecoder : sig
    type t = string_decoder_StringDecoder

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?encoding:BufferEncoding.t -> unit -> t [@@js.create]

    val write : t -> buffer:Buffer.t -> string [@@js.call "write"]

    val end_ : t -> ?buffer:Buffer.t -> unit -> string [@@js.call "end"]
  end
  [@@js.scope "StringDecoder"]
end
[@@js.scope Import.string_decoder]
