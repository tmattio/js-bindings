[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

module TypeDefinitionClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_link_support : t -> bool [@@js.get "linkSupport"]

  val set_link_support : t -> bool -> unit [@@js.set "linkSupport"]
end
[@@js.scope "TypeDefinitionClientCapabilities"]

module TypeDefinitionOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "TypeDefinitionOptions"]

module TypeDefinitionRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> TypeDefinitionOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "TypeDefinitionRegistrationOptions"]

module TypeDefinitionParams : sig
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
[@@js.scope "TypeDefinitionParams"]

module TypeDefinitionRequest : sig
  val method_
    : ([ `L_s0_textDocument_typeDefinition [@js "textDocument/typeDefinition"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( TypeDefinitionParams.t
      , (Location.t, (Location.t, LocationLink.t) union2) or_array or_null
      , (Location.t, LocationLink.t) union2 list
      , unit
      , TypeDefinitionRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( TypeDefinitionParams.t
      , (Definition.t, DefinitionLink.t) or_array or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "TypeDefinitionRequest"]
