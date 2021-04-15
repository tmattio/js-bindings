[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - vscode.Diagnostic
  - vscode.DiagnosticSeverity
  - vscode.Range
 *)
[@@@js.stop]
module type Missing = sig
  module vscode : sig
    module Diagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticSeverity : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Range : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module vscode : sig
      module Diagnostic : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticSeverity : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Range : sig
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
      type _DiagnosticCode = [`DiagnosticCode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProtocolDiagnostic = [`ProtocolDiagnostic] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import * as vscode from 'vscode'; *)
  module[@js.scope "DiagnosticCode"] DiagnosticCode : sig
    type t = _DiagnosticCode
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_value: t -> string or_number [@@js.get "value"]
    val set_value: t -> string or_number -> unit [@@js.set "value"]
    val get_target: t -> string [@@js.get "target"]
    val set_target: t -> string -> unit [@@js.set "target"]
  end
  module[@js.scope "DiagnosticCode"] DiagnosticCode : sig
    val is: value:_DiagnosticCode or_string or_number or_null_or_undefined -> bool [@@js.global "is"]
  end
  module[@js.scope "ProtocolDiagnostic"] ProtocolDiagnostic : sig
    type t = _ProtocolDiagnostic
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_data: t -> unknown or_undefined [@@js.get "data"]
    val get_hasDiagnosticCode: t -> bool [@@js.get "hasDiagnosticCode"]
    val set_hasDiagnosticCode: t -> bool -> unit [@@js.set "hasDiagnosticCode"]
    val create: range:Vscode.Range.t_0 -> message:string -> severity:Vscode.DiagnosticSeverity.t_0 -> data:unknown or_undefined -> t [@@js.create]
    val cast: t -> Vscode.Diagnostic.t_0 [@@js.cast]
  end
end
