[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as vscode from 'vscode'; *)
module DiagnosticCode : sig
  type t

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
    :  value:DiagnosticCode.t or_string or_number or_null_or_undefined
    -> bool
    [@@js.global "is"]
end
[@@js.scope "DiagnosticCode"]

module ProtocolDiagnostic : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> unknown or_undefined [@@js.get "data"]

  val get_has_diagnostic_code : t -> bool [@@js.get "hasDiagnosticCode"]

  val set_has_diagnostic_code : t -> bool -> unit [@@js.set "hasDiagnosticCode"]

  val create
    :  range:Vscode.Range.t
    -> message:string
    -> severity:Vscode.DiagnosticSeverity.t
    -> data:unknown or_undefined
    -> t
    [@@js.create]

  (* TODO: Move me*)
  include module type of struct
    include Vscode.Diagnostic
  end
end
[@@js.scope "ProtocolDiagnostic"]
