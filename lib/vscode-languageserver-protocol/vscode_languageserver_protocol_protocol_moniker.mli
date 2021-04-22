[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { ProtocolRequestType } from './messages'; *)
(* import { WorkDoneProgressOptions, WorkDoneProgressParams,
   PartialResultParams, TextDocumentRegistrationOptions,
   TextDocumentPositionParams } from './protocol'; *)
module UniquenessLevel : sig
  type t =
    ([ `document [@js "document"]
     | `project [@js "project"]
     | `group [@js "group"]
     | `scheme [@js "scheme"]
     | `global [@js "global"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module MonikerKind : sig
  type t =
    ([ `import [@js "import"]
     | `export [@js "export"]
     | `local [@js "local"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Moniker : sig
  type t = _Moniker

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_scheme : t -> string [@@js.get "scheme"]

  val set_scheme : t -> string -> unit [@@js.set "scheme"]

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_unique : t -> _UniquenessLevel [@@js.get "unique"]

  val set_unique : t -> _UniquenessLevel -> unit [@@js.set "unique"]

  val get_kind : t -> _MonikerKind [@@js.get "kind"]

  val set_kind : t -> _MonikerKind -> unit [@@js.set "kind"]
end
[@@js.scope "Moniker"]

module MonikerClientCapabilities : sig
  type t = _MonikerClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "MonikerClientCapabilities"]

module MonikerServerCapabilities : sig
  type t = _MonikerServerCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module MonikerOptions : sig
  type t = _MonikerOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "MonikerOptions"]

module MonikerRegistrationOptions : sig
  type t = _MonikerRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _MonikerOptions [@@js.cast]
end
[@@js.scope "MonikerRegistrationOptions"]

module MonikerParams : sig
  type t = _MonikerParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentPositionParams.t [@@js.cast]

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "MonikerParams"]

module MonikerRequest : sig
  val method_
    : ([ `L_s8_textDocument_moniker [@js "textDocument/moniker"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _MonikerParams
      , _Moniker list or_null
      , _Moniker list
      , unit
      , _MonikerRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "MonikerRequest"]
