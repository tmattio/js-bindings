[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _DiagnosticCode = [ `DiagnosticCode ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProtocolDiagnostic = [ `ProtocolDiagnostic ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as vscode from 'vscode'; *)
module DiagnosticCode : sig
  type t = _DiagnosticCode

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value : t -> string or_number [@@js.get "value"]

  val set_value : t -> string or_number -> unit [@@js.set "value"]

  val get_target : t -> string [@@js.get "target"]

  val set_target : t -> string -> unit [@@js.set "target"]
end
[@@js.scope "DiagnosticCode"]

module DiagnosticCode : sig
  val is
    :  value:_DiagnosticCode or_string or_number or_null_or_undefined
    -> bool
    [@@js.global "is"]
end
[@@js.scope "DiagnosticCode"]

module ProtocolDiagnostic : sig
  type t = _ProtocolDiagnostic

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> unknown or_undefined [@@js.get "data"]

  val get_hasDiagnosticCode : t -> bool [@@js.get "hasDiagnosticCode"]

  val set_hasDiagnosticCode : t -> bool -> unit [@@js.set "hasDiagnosticCode"]

  val create
    :  range:Vscode.Range.t
    -> message:string
    -> severity:Vscode.DiagnosticSeverity.t
    -> data:unknown or_undefined
    -> t
    [@@js.create]

  val cast : t -> Vscode.Diagnostic.t [@@js.cast]
end
[@@js.scope "ProtocolDiagnostic"]
