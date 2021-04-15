[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _LinkedEditingRangeClientCapabilities =
      [ `LinkedEditingRangeClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LinkedEditingRangeOptions = [ `LinkedEditingRangeOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LinkedEditingRangeParams = [ `LinkedEditingRangeParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LinkedEditingRangeRegistrationOptions =
      [ `LinkedEditingRangeRegistrationOptions | `LinkedEditingRangeOptions ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _LinkedEditingRangeRequest_HandlerSignature =
      ( _LinkedEditingRangeParams
      , _LinkedEditingRanges or_null
      , unit )
      RequestHandler.t_3

    and _LinkedEditingRanges = [ `LinkedEditingRanges ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Range } from 'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { StaticRegistrationOptions, TextDocumentPositionParams,
   TextDocumentRegistrationOptions, WorkDoneProgressOptions,
   WorkDoneProgressParams } from './protocol'; *)
module LinkedEditingRangeClientCapabilities : sig
  type t = _LinkedEditingRangeClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "LinkedEditingRangeClientCapabilities"]

module LinkedEditingRangeParams : sig
  type t = _LinkedEditingRangeParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentPositionParams.t [@@js.cast]

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]
end
[@@js.scope "LinkedEditingRangeParams"]

module LinkedEditingRangeOptions : sig
  type t = _LinkedEditingRangeOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "LinkedEditingRangeOptions"]

module LinkedEditingRangeRegistrationOptions : sig
  type t = _LinkedEditingRangeRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _LinkedEditingRangeOptions [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "LinkedEditingRangeRegistrationOptions"]

module LinkedEditingRanges : sig
  type t = _LinkedEditingRanges

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_ranges : t -> Range.t list [@@js.get "ranges"]

  val set_ranges : t -> Range.t list -> unit [@@js.set "ranges"]

  val get_wordPattern : t -> string [@@js.get "wordPattern"]

  val set_wordPattern : t -> string -> unit [@@js.set "wordPattern"]
end
[@@js.scope "LinkedEditingRanges"]

module LinkedEditingRangeRequest : sig
  val method_
    : ([ `L_s0_textDocument_linkedEditingRange [@js
                                                 "textDocument/linkedEditingRange"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _LinkedEditingRangeParams
      , _LinkedEditingRanges or_null
      , unit
      , any
      , _LinkedEditingRangeRegistrationOptions )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _LinkedEditingRangeRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "LinkedEditingRangeRequest"]
