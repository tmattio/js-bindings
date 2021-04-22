[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { HandlerResult, RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Range, URI } from 'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
module ShowDocumentClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_support : t -> bool [@@js.get "support"]

  val set_support : t -> bool -> unit [@@js.set "support"]
end
[@@js.scope "ShowDocumentClientCapabilities"]

module ShowDocumentParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> URI.t [@@js.get "uri"]

  val set_uri : t -> URI.t -> unit [@@js.set "uri"]

  val get_external : t -> bool [@@js.get "external"]

  val set_external : t -> bool -> unit [@@js.set "external"]

  val get_take_focus : t -> bool [@@js.get "takeFocus"]

  val set_take_focus : t -> bool -> unit [@@js.set "takeFocus"]

  val get_selection : t -> Range.t [@@js.get "selection"]

  val set_selection : t -> Range.t -> unit [@@js.set "selection"]
end
[@@js.scope "ShowDocumentParams"]

module ShowDocumentResult : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_success : t -> bool [@@js.get "success"]

  val set_success : t -> bool -> unit [@@js.set "success"]
end
[@@js.scope "ShowDocumentResult"]

module ShowDocumentRequest : sig
  val method_
    : ([ `L_s0_window_showDocument [@js "window/showDocument"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( ShowDocumentParams.t
      , ShowDocumentResult.t
      , unit
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = (ShowDocumentParams.t, ShowDocumentResult.t, unit) RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> params:ShowDocumentParams.t
      -> next:ShowDocumentRequest_HandlerSignature.t
      -> (ShowDocumentResult.t, unit) HandlerResult.t
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "ShowDocumentRequest"]
