[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

module LinkedEditingRangeClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "LinkedEditingRangeClientCapabilities"]

module LinkedEditingRangeParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]
end
[@@js.scope "LinkedEditingRangeParams"]

module LinkedEditingRangeOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "LinkedEditingRangeOptions"]

module LinkedEditingRangeRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> LinkedEditingRangeOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "LinkedEditingRangeRegistrationOptions"]

module LinkedEditingRanges : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_ranges : t -> Range.t list [@@js.get "ranges"]

  val set_ranges : t -> Range.t list -> unit [@@js.set "ranges"]

  val get_word_pattern : t -> string [@@js.get "wordPattern"]

  val set_word_pattern : t -> string -> unit [@@js.set "wordPattern"]
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
    : ( LinkedEditingRangeParams.t
      , LinkedEditingRanges.t or_null
      , unit
      , any
      , LinkedEditingRangeRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( LinkedEditingRangeParams.t
      , LinkedEditingRanges.t or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "LinkedEditingRangeRequest"]
