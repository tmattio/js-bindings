[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_scheme : t -> string [@@js.get "scheme"]

  val set_scheme : t -> string -> unit [@@js.set "scheme"]

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_unique : t -> UniquenessLevel.t [@@js.get "unique"]

  val set_unique : t -> UniquenessLevel.t -> unit [@@js.set "unique"]

  val get_kind : t -> MonikerKind.t [@@js.get "kind"]

  val set_kind : t -> MonikerKind.t -> unit [@@js.set "kind"]
end
[@@js.scope "Moniker"]

module MonikerClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "MonikerClientCapabilities"]

module MonikerServerCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module MonikerOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "MonikerOptions"]

module MonikerRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> MonikerOptions.t [@@js.cast]
end
[@@js.scope "MonikerRegistrationOptions"]

module MonikerParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast'' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "MonikerParams"]

module MonikerRequest : sig
  val method_
    : ([ `L_s8_textDocument_moniker [@js "textDocument/moniker"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( MonikerParams.t
      , Moniker.t list or_null
      , Moniker.t list
      , unit
      , MonikerRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]
end
[@@js.scope "MonikerRequest"]
