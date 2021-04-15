[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - PartialResultParams
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - TextDocumentPositionParams
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
 *)
[@@@js.stop]
module type Missing = sig
  module PartialResultParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module TextDocumentPositionParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module PartialResultParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module TextDocumentPositionParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
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
      type _Moniker = [`Moniker] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MonikerClientCapabilities = [`MonikerClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MonikerKind = [`import[@js "import"] | `export[@js "export"] | `local[@js "local"]] [@js.enum]
      and _MonikerKind_import = [`import[@js "import"]] [@js.enum]
      and _MonikerKind_export = [`export[@js "export"]] [@js.enum]
      and _MonikerKind_local = [`local[@js "local"]] [@js.enum]
      and _MonikerOptions = [`MonikerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MonikerParams = [`MonikerParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MonikerRegistrationOptions = [`MonikerRegistrationOptions | `MonikerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MonikerServerCapabilities = [`MonikerServerCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _UniquenessLevel = [`document[@js "document"] | `project[@js "project"] | `group[@js "group"] | `scheme[@js "scheme"] | `global[@js "global"]] [@js.enum]
      and _UniquenessLevel_document = [`document[@js "document"]] [@js.enum]
      and _UniquenessLevel_project = [`project[@js "project"]] [@js.enum]
      and _UniquenessLevel_group = [`group[@js "group"]] [@js.enum]
      and _UniquenessLevel_scheme = [`scheme[@js "scheme"]] [@js.enum]
      and _UniquenessLevel_global = [`global[@js "global"]] [@js.enum]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { ProtocolRequestType } from './messages'; *)
  (* import { WorkDoneProgressOptions, WorkDoneProgressParams, PartialResultParams, TextDocumentRegistrationOptions, TextDocumentPositionParams } from './protocol'; *)
  module UniquenessLevel : sig
    type t = _UniquenessLevel
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MonikerKind : sig
    type t = _MonikerKind
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "Moniker"] Moniker : sig
    type t = _Moniker
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_scheme: t -> string [@@js.get "scheme"]
    val set_scheme: t -> string -> unit [@@js.set "scheme"]
    val get_identifier: t -> string [@@js.get "identifier"]
    val set_identifier: t -> string -> unit [@@js.set "identifier"]
    val get_unique: t -> _UniquenessLevel [@@js.get "unique"]
    val set_unique: t -> _UniquenessLevel -> unit [@@js.set "unique"]
    val get_kind: t -> _MonikerKind [@@js.get "kind"]
    val set_kind: t -> _MonikerKind -> unit [@@js.set "kind"]
  end
  module[@js.scope "MonikerClientCapabilities"] MonikerClientCapabilities : sig
    type t = _MonikerClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
  end
  module MonikerServerCapabilities : sig
    type t = _MonikerServerCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "MonikerOptions"] MonikerOptions : sig
    type t = _MonikerOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "MonikerRegistrationOptions"] MonikerRegistrationOptions : sig
    type t = _MonikerRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> _MonikerOptions [@@js.cast]
  end
  module[@js.scope "MonikerParams"] MonikerParams : sig
    type t = _MonikerParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentPositionParams.t_0 [@@js.cast]
    val cast': t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast'': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "MonikerRequest"] MonikerRequest : sig
    val method_: ([`L_s8_textDocument_moniker[@js "textDocument/moniker"]] [@js.enum]) [@@js.global "method"]
    val type_: (_MonikerParams, _Moniker list or_null, _Moniker list, unit, _MonikerRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
  end
end
