[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ShowDocumentClientCapabilities =
      [ `ShowDocumentClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ShowDocumentParams = [ `ShowDocumentParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ShowDocumentRequest_HandlerSignature =
      (_ShowDocumentParams, _ShowDocumentResult, unit) RequestHandler.t_3

    and _ShowDocumentRequest_MiddlewareSignature =
      [ `ShowDocumentRequest_MiddlewareSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ShowDocumentResult = [ `ShowDocumentResult ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { HandlerResult, RequestHandler } from 'vscode-jsonrpc'; *)
(* import { Range, URI } from 'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
module ShowDocumentClientCapabilities : sig
  type t = _ShowDocumentClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_support : t -> bool [@@js.get "support"]

  val set_support : t -> bool -> unit [@@js.set "support"]
end
[@@js.scope "ShowDocumentClientCapabilities"]

module ShowDocumentParams : sig
  type t = _ShowDocumentParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> URI.t [@@js.get "uri"]

  val set_uri : t -> URI.t -> unit [@@js.set "uri"]

  val get_external : t -> bool [@@js.get "external"]

  val set_external : t -> bool -> unit [@@js.set "external"]

  val get_takeFocus : t -> bool [@@js.get "takeFocus"]

  val set_takeFocus : t -> bool -> unit [@@js.set "takeFocus"]

  val get_selection : t -> Range.t [@@js.get "selection"]

  val set_selection : t -> Range.t -> unit [@@js.set "selection"]
end
[@@js.scope "ShowDocumentParams"]

module ShowDocumentResult : sig
  type t = _ShowDocumentResult

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
    : ( _ShowDocumentParams
      , _ShowDocumentResult
      , unit
      , unit
      , unit )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _ShowDocumentRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t = _ShowDocumentRequest_MiddlewareSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> params:_ShowDocumentParams
      -> next:_ShowDocumentRequest_HandlerSignature
      -> (_ShowDocumentResult, unit) HandlerResult.t_2
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "ShowDocumentRequest"]