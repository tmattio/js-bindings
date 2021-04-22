[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2015
open Vscode

module Vscode : sig
  module AnonymousInterface16 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get : t -> string -> any [@@js.index_get]

    val set : t -> string -> any -> unit [@@js.index_set]
  end

  module AnonymousInterface8 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val include_ : t -> GlobPattern.t [@@js.get "include"]

    val set_include : t -> GlobPattern.t -> unit [@@js.set "include"]

    val exclude : t -> GlobPattern.t [@@js.get "exclude"]

    val set_exclude : t -> GlobPattern.t -> unit [@@js.set "exclude"]
  end

  module NotebookFilenamePattern : sig
    type t = (GlobPattern.t, AnonymousInterface8.t) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module AnonymousInterface6 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val editable : t -> bool or_null [@@js.get "editable"]

    val set_editable : t -> bool or_null -> unit [@@js.set "editable"]

    val cell_editable : t -> bool or_null [@@js.get "cellEditable"]

    val set_cell_editable : t -> bool or_null -> unit [@@js.set "cellEditable"]

    val custom : t -> AnonymousInterface16.t or_null [@@js.get "custom"]

    val set_custom : t -> AnonymousInterface16.t or_null -> unit
      [@@js.set "custom"]

    val trusted : t -> bool or_null [@@js.get "trusted"]

    val set_trusted : t -> bool or_null -> unit [@@js.set "trusted"]
  end

  module NotebookDocumentMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val editable : t -> bool [@@js.get "editable"]

    val cell_editable : t -> bool [@@js.get "cellEditable"]

    val custom : t -> AnonymousInterface16.t [@@js.get "custom"]

    val trusted : t -> bool [@@js.get "trusted"]

    val create
      :  ?editable:bool
      -> ?cell_editable:bool
      -> ?custom:AnonymousInterface16.t
      -> ?trusted:bool
      -> unit
      -> t
      [@@js.create]

    val with_ : t -> change:AnonymousInterface6.t -> t [@@js.call "with"]
  end
  [@@js.scope "NotebookDocumentMetadata"]

  module NotebookDocumentContentOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val transient_outputs : t -> bool [@@js.get "transientOutputs"]

    val set_transient_outputs : t -> bool -> unit [@@js.set "transientOutputs"]

    val transient_metadata
      :  t
      -> (* FIXME: unknown type '{ [K in keyof NotebookCellMetadata]?: boolean
            }' *)
         any
      [@@js.get "transientMetadata"]

    val set_transient_metadata
      :  t
      -> (* FIXME: unknown type '{ [K in keyof NotebookCellMetadata]?: boolean
            }' *)
         any
      -> unit
      [@@js.set "transientMetadata"]
  end
  [@@js.scope "NotebookDocumentContentOptions"]

  module AnonymousInterface13 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start : t -> int [@@js.get "start"]

    val set_start : t -> int -> unit [@@js.set "start"]

    val end_ : t -> int [@@js.get "end"]

    val set_end : t -> int -> unit [@@js.set "end"]
  end

  module NotebookCellRange : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start : t -> int [@@js.get "start"]

    val end_ : t -> int [@@js.get "end"]

    val is_empty : t -> bool [@@js.get "isEmpty"]

    val create : start:int -> end_:int -> t [@@js.create]

    val with_ : t -> change:AnonymousInterface13.t -> t [@@js.call "with"]
  end
  [@@js.scope "NotebookCellRange"]

  module NotebookCellOutputItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val mime : t -> string [@@js.get "mime"]

    val value : t -> unknown [@@js.get "value"]

    val metadata : t -> (string, any) Record.t [@@js.get "metadata"]

    val create
      :  mime:string
      -> value:unknown
      -> ?metadata:(string, any) Record.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "NotebookCellOutputItem"]

  module NotebookCellOutput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val outputs : t -> NotebookCellOutputItem.t list [@@js.get "outputs"]

    val metadata : t -> (string, any) Record.t [@@js.get "metadata"]

    val create
      :  outputs:NotebookCellOutputItem.t list
      -> ?metadata:(string, any) Record.t
      -> unit
      -> t
      [@@js.create]

    val create'
      :  outputs:NotebookCellOutputItem.t list
      -> id:string
      -> ?metadata:(string, any) Record.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "NotebookCellOutput"]

  module NotebookCellKind : sig
    type t =
      ([ `Markdown [@js 1]
       | `Code [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module AnonymousInterface5 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val editable : t -> bool or_null [@@js.get "editable"]

    val set_editable : t -> bool or_null -> unit [@@js.set "editable"]

    val breakpoint_margin : t -> bool or_null [@@js.get "breakpointMargin"]

    val set_breakpoint_margin : t -> bool or_null -> unit
      [@@js.set "breakpointMargin"]

    val status_message : t -> string or_null [@@js.get "statusMessage"]

    val set_status_message : t -> string or_null -> unit
      [@@js.set "statusMessage"]

    val last_run_duration : t -> int or_null [@@js.get "lastRunDuration"]

    val set_last_run_duration : t -> int or_null -> unit
      [@@js.set "lastRunDuration"]

    val input_collapsed : t -> bool or_null [@@js.get "inputCollapsed"]

    val set_input_collapsed : t -> bool or_null -> unit
      [@@js.set "inputCollapsed"]

    val output_collapsed : t -> bool or_null [@@js.get "outputCollapsed"]

    val set_output_collapsed : t -> bool or_null -> unit
      [@@js.set "outputCollapsed"]

    val custom : t -> (string, any) Record.t or_null [@@js.get "custom"]

    val set_custom : t -> (string, any) Record.t or_null -> unit
      [@@js.set "custom"]
  end

  module NotebookCellMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val editable : t -> bool [@@js.get "editable"]

    val breakpoint_margin : t -> bool [@@js.get "breakpointMargin"]

    val output_collapsed : t -> bool [@@js.get "outputCollapsed"]

    val input_collapsed : t -> bool [@@js.get "inputCollapsed"]

    val custom : t -> (string, any) Record.t [@@js.get "custom"]

    val status_message : t -> string [@@js.get "statusMessage"]

    val create
      :  ?editable:bool
      -> ?breakpoint_margin:bool
      -> ?status_message:string
      -> ?last_run_duration:int
      -> ?input_collapsed:bool
      -> ?output_collapsed:bool
      -> ?custom:(string, any) Record.t
      -> unit
      -> t
      [@@js.create]

    val with_ : t -> change:AnonymousInterface5.t -> t [@@js.call "with"]
  end
  [@@js.scope "NotebookCellMetadata"]

  module NotebookCellExecutionSummary : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val execution_order : t -> int [@@js.get "executionOrder"]

    val set_execution_order : t -> int -> unit [@@js.set "executionOrder"]

    val success : t -> bool [@@js.get "success"]

    val set_success : t -> bool -> unit [@@js.set "success"]

    val duration : t -> int [@@js.get "duration"]

    val set_duration : t -> int -> unit [@@js.set "duration"]
  end
  [@@js.scope "NotebookCellExecutionSummary"]

  module NotebookCell : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val index : t -> int [@@js.get "index"]

    (* val notebook : t -> NotebookDocument.t [@@js.get "notebook"] *)

    val kind : t -> NotebookCellKind.t [@@js.get "kind"]

    val document : t -> TextDocument.t [@@js.get "document"]

    val metadata : t -> NotebookCellMetadata.t [@@js.get "metadata"]

    val outputs : t -> NotebookCellOutput.t list [@@js.get "outputs"]

    val latest_execution_summary
      :  t
      -> NotebookCellExecutionSummary.t or_undefined
      [@@js.get "latestExecutionSummary"]
  end
  [@@js.scope "NotebookCell"]

  module NotebookDocument : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val version : t -> int [@@js.get "version"]

    val file_name : t -> string [@@js.get "fileName"]

    val is_dirty : t -> bool [@@js.get "isDirty"]

    val is_untitled : t -> bool [@@js.get "isUntitled"]

    val is_closed : t -> bool [@@js.get "isClosed"]

    val metadata : t -> NotebookDocumentMetadata.t [@@js.get "metadata"]

    val view_type : t -> string [@@js.get "viewType"]

    val cell_count : t -> int [@@js.get "cellCount"]

    val cell_at : t -> index:int -> NotebookCell.t [@@js.call "cellAt"]

    val get_cells
      :  t
      -> ?range:NotebookCellRange.t
      -> unit
      -> NotebookCell.t list
      [@@js.call "getCells"]

    val save : t -> bool Promise.t [@@js.call "save"]
  end
  [@@js.scope "NotebookDocument"]

  module NotebookKernel : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val is_preferred : t -> bool [@@js.get "isPreferred"]

    val set_is_preferred : t -> bool -> unit [@@js.set "isPreferred"]

    val preloads : t -> Uri.t list [@@js.get "preloads"]

    val set_preloads : t -> Uri.t list -> unit [@@js.set "preloads"]

    val supported_languages : t -> string list [@@js.get "supportedLanguages"]

    val set_supported_languages : t -> string list -> unit
      [@@js.set "supportedLanguages"]

    val interrupt : t -> document:NotebookDocument.t -> unit
      [@@js.call "interrupt"]

    val execute_cells_request
      :  t
      -> document:NotebookDocument.t
      -> ranges:NotebookCellRange.t list
      -> unit Promise.t
      [@@js.call "executeCellsRequest"]
  end
  [@@js.scope "NotebookKernel"]

  module AnonymousInterface3 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val display_name : t -> string [@@js.get "displayName"]

    val set_display_name : t -> string -> unit [@@js.set "displayName"]

    val filename_pattern : t -> NotebookFilenamePattern.t list
      [@@js.get "filenamePattern"]

    val set_filename_pattern : t -> NotebookFilenamePattern.t list -> unit
      [@@js.set "filenamePattern"]

    val exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]
  end

  module AnonymousInterface4 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val set_document : t -> NotebookDocument.t -> unit [@@js.set "document"]

    val kernel : t -> NotebookKernel.t or_undefined [@@js.get "kernel"]

    val set_kernel : t -> NotebookKernel.t or_undefined -> unit
      [@@js.set "kernel"]
  end

  module AnonymousInterface7 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val elevation : t -> bool [@@js.get "elevation"]

    val set_elevation : t -> bool -> unit [@@js.set "elevation"]

    val public : t -> bool [@@js.get "public"]

    val set_public : t -> bool -> unit [@@js.set "public"]
  end

  module AnonymousInterface9 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val light : t -> Uri.t [@@js.get "light"]

    val set_light : t -> Uri.t -> unit [@@js.set "light"]

    val dark : t -> Uri.t [@@js.get "dark"]

    val set_dark : t -> Uri.t -> unit [@@js.set "dark"]
  end

  module AnonymousInterface10 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val pid : t -> int [@@js.get "pid"]

    val set_pid : t -> int -> unit [@@js.set "pid"]

    val port_range : t -> int * int [@@js.get "portRange"]

    val set_port_range : t -> int * int -> unit [@@js.set "portRange"]

    val command_matcher : t -> regexp [@@js.get "commandMatcher"]

    val set_command_matcher : t -> regexp -> unit [@@js.set "commandMatcher"]
  end

  module AnonymousInterface11 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]
  end

  module AnonymousInterface12 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val select : t -> bool [@@js.get "select"]

    val set_select : t -> bool -> unit [@@js.set "select"]

    val focus : t -> bool [@@js.get "focus"]

    val set_focus : t -> bool -> unit [@@js.set "focus"]

    val expand : t -> bool or_number [@@js.get "expand"]

    val set_expand : t -> bool or_number -> unit [@@js.set "expand"]
  end

  module AnonymousInterface14 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val timestamp : t -> int [@@js.get "timestamp"]

    val set_timestamp : t -> int -> unit [@@js.set "timestamp"]

    val id : t -> string [@@js.get "id"]

    val set_id : t -> string -> unit [@@js.set "id"]
  end

  module AnonymousInterface15 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_options : t -> AnonymousInterface3.t [@@js.get "viewOptions"]

    val set_view_options : t -> AnonymousInterface3.t -> unit
      [@@js.set "viewOptions"]
  end

  module AnonymousInterface17 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get : t -> string -> string or_null [@@js.index_get]

    val set : t -> string -> string or_null -> unit [@@js.index_set]
  end

  module AuthenticationProvidersChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val added : t -> AuthenticationProviderInformation.t list [@@js.get "added"]

    val removed : t -> AuthenticationProviderInformation.t list
      [@@js.get "removed"]
  end
  [@@js.scope "AuthenticationProvidersChangeEvent"]

  module Authentication : sig
    val on_did_change_authentication_providers
      : AuthenticationProvidersChangeEvent.t Event.t
      [@@js.global "onDidChangeAuthenticationProviders"]

    val providers : AuthenticationProviderInformation.t list
      [@@js.global "providers"]

    val logout : provider_id:string -> session_id:string -> unit Promise.t
      [@@js.global "logout"]
  end
  [@@js.scope "authentication"]

  module MessageOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val use_custom : t -> bool [@@js.get "useCustom"]

    val set_use_custom : t -> bool -> unit [@@js.set "useCustom"]
  end
  [@@js.scope "MessageOptions"]

  module RemoteAuthorityResolverContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolve_attempt : t -> int [@@js.get "resolveAttempt"]

    val set_resolve_attempt : t -> int -> unit [@@js.set "resolveAttempt"]
  end
  [@@js.scope "RemoteAuthorityResolverContext"]

  module ResolvedAuthority : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val host : t -> string [@@js.get "host"]

    val port : t -> int [@@js.get "port"]

    val connection_token : t -> string or_undefined [@@js.get "connectionToken"]

    val create
      :  host:string
      -> port:int
      -> ?connection_token:string
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "ResolvedAuthority"]

  module ResolvedOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val extension_host_env : t -> AnonymousInterface17.t
      [@@js.get "extensionHostEnv"]

    val set_extension_host_env : t -> AnonymousInterface17.t -> unit
      [@@js.set "extensionHostEnv"]
  end
  [@@js.scope "ResolvedOptions"]

  module TunnelOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val remote_address : t -> AnonymousInterface11.t [@@js.get "remoteAddress"]

    val set_remote_address : t -> AnonymousInterface11.t -> unit
      [@@js.set "remoteAddress"]

    val local_address_port : t -> int [@@js.get "localAddressPort"]

    val set_local_address_port : t -> int -> unit [@@js.set "localAddressPort"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val public : t -> bool [@@js.get "public"]

    val set_public : t -> bool -> unit [@@js.set "public"]
  end
  [@@js.scope "TunnelOptions"]

  module TunnelDescription : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val remote_address : t -> AnonymousInterface11.t [@@js.get "remoteAddress"]

    val set_remote_address : t -> AnonymousInterface11.t -> unit
      [@@js.set "remoteAddress"]

    val local_address : t -> AnonymousInterface11.t or_string
      [@@js.get "localAddress"]

    val set_local_address : t -> AnonymousInterface11.t or_string -> unit
      [@@js.set "localAddress"]

    val public : t -> bool [@@js.get "public"]

    val set_public : t -> bool -> unit [@@js.set "public"]
  end
  [@@js.scope "TunnelDescription"]

  module Tunnel : sig
    include module type of struct
      include TunnelDescription
    end

    val on_did_dispose : t -> unit Event.t [@@js.get "onDidDispose"]

    val set_on_did_dispose : t -> unit Event.t -> unit [@@js.set "onDidDispose"]

    val dispose : t -> (unit, unit Promise.t) union2 [@@js.call "dispose"]
  end
  [@@js.scope "Tunnel"]

  module TunnelInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val environment_tunnels : t -> TunnelDescription.t list
      [@@js.get "environmentTunnels"]

    val set_environment_tunnels : t -> TunnelDescription.t list -> unit
      [@@js.set "environmentTunnels"]
  end
  [@@js.scope "TunnelInformation"]

  module TunnelCreationOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val elevation_required : t -> bool [@@js.get "elevationRequired"]

    val set_elevation_required : t -> bool -> unit
      [@@js.set "elevationRequired"]
  end
  [@@js.scope "TunnelCreationOptions"]

  module CandidatePortSource : sig
    type t =
      ([ `None [@js 0]
       | `Process [@js 1]
       | `Output [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ResolverResult : sig
    type t =
      ( ResolvedAuthority.t
      , ResolvedOptions.t
      , TunnelInformation.t )
      intersection3

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RemoteAuthorityResolverError : sig
    include module type of struct
      include Error
    end

    val not_available : ?message:string -> ?handled:bool -> unit -> t
      [@@js.global "NotAvailable"]

    val temporarily_not_available : ?message:string -> unit -> t
      [@@js.global "TemporarilyNotAvailable"]

    val create : ?message:string -> unit -> t [@@js.create]
  end
  [@@js.scope "RemoteAuthorityResolverError"]

  module RemoteAuthorityResolver : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolve
      :  t
      -> authority:string
      -> context:RemoteAuthorityResolverContext.t
      -> (ResolverResult.t, ResolverResult.t Promise.t) union2
      [@@js.call "resolve"]

    val tunnel_factory
      :  t
      -> tunnel_options:TunnelOptions.t
      -> tunnel_creation_options:TunnelCreationOptions.t
      -> Tunnel.t Promise.t or_undefined
      [@@js.call "tunnelFactory"]

    val show_candidate_port
      :  t
      -> host:string
      -> port:int
      -> detail:string
      -> bool Promise.t
      [@@js.call "showCandidatePort"]

    val tunnel_features : t -> AnonymousInterface7.t [@@js.get "tunnelFeatures"]

    val set_tunnel_features : t -> AnonymousInterface7.t -> unit
      [@@js.set "tunnelFeatures"]

    val candidate_port_source : t -> CandidatePortSource.t
      [@@js.get "candidatePortSource"]

    val set_candidate_port_source : t -> CandidatePortSource.t -> unit
      [@@js.set "candidatePortSource"]
  end
  [@@js.scope "RemoteAuthorityResolver"]

  module ResourceLabelFormatting : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val separator
      :  t
      -> ([ `L_s0 [@js ""] | `L_s1 [@js "/"] | `L_s2 [@js "\\"] ][@js.enum])
      [@@js.get "separator"]

    val set_separator : t -> ([ `L_s0 | `L_s1 | `L_s2 ][@js.enum]) -> unit
      [@@js.set "separator"]

    val tildify : t -> bool [@@js.get "tildify"]

    val set_tildify : t -> bool -> unit [@@js.set "tildify"]

    val normalize_drive_letter : t -> bool [@@js.get "normalizeDriveLetter"]

    val set_normalize_drive_letter : t -> bool -> unit
      [@@js.set "normalizeDriveLetter"]

    val workspace_suffix : t -> string [@@js.get "workspaceSuffix"]

    val set_workspace_suffix : t -> string -> unit [@@js.set "workspaceSuffix"]

    val authority_prefix : t -> string [@@js.get "authorityPrefix"]

    val set_authority_prefix : t -> string -> unit [@@js.set "authorityPrefix"]

    val strip_path_starting_separator : t -> bool
      [@@js.get "stripPathStartingSeparator"]

    val set_strip_path_starting_separator : t -> bool -> unit
      [@@js.set "stripPathStartingSeparator"]
  end
  [@@js.scope "ResourceLabelFormatting"]

  module ResourceLabelFormatter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val scheme : t -> string [@@js.get "scheme"]

    val set_scheme : t -> string -> unit [@@js.set "scheme"]

    val authority : t -> string [@@js.get "authority"]

    val set_authority : t -> string -> unit [@@js.set "authority"]

    val formatting : t -> ResourceLabelFormatting.t [@@js.get "formatting"]

    val set_formatting : t -> ResourceLabelFormatting.t -> unit
      [@@js.set "formatting"]
  end
  [@@js.scope "ResourceLabelFormatter"]

  module AnonymousInterface1 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : t -> bool [@@js.get "create"]

    val set_create : t -> bool -> unit [@@js.set "create"]
  end

  module FileSystemProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val open_
      :  t
      -> resource:Uri.t
      -> options:AnonymousInterface1.t
      -> int Promise.t or_number
      [@@js.call "open"]

    val close : t -> fd:int -> (unit, unit Promise.t) union2 [@@js.call "close"]

    val read
      :  t
      -> fd:int
      -> pos:int
      -> data:Uint8Array.t
      -> offset:int
      -> length:int
      -> int Promise.t or_number
      [@@js.call "read"]

    val write
      :  t
      -> fd:int
      -> pos:int
      -> data:Uint8Array.t
      -> offset:int
      -> length:int
      -> int Promise.t or_number
      [@@js.call "write"]
  end
  [@@js.scope "FileSystemProvider"]

  module TextSearchQuery : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val pattern : t -> string [@@js.get "pattern"]

    val set_pattern : t -> string -> unit [@@js.set "pattern"]

    val is_multiline : t -> bool [@@js.get "isMultiline"]

    val set_is_multiline : t -> bool -> unit [@@js.set "isMultiline"]

    val is_reg_exp : t -> bool [@@js.get "isRegExp"]

    val set_is_reg_exp : t -> bool -> unit [@@js.set "isRegExp"]

    val is_case_sensitive : t -> bool [@@js.get "isCaseSensitive"]

    val set_is_case_sensitive : t -> bool -> unit [@@js.set "isCaseSensitive"]

    val is_word_match : t -> bool [@@js.get "isWordMatch"]

    val set_is_word_match : t -> bool -> unit [@@js.set "isWordMatch"]
  end
  [@@js.scope "TextSearchQuery"]

  module GlobString : sig
    type t = string

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SearchOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val folder : t -> Uri.t [@@js.get "folder"]

    val set_folder : t -> Uri.t -> unit [@@js.set "folder"]

    val includes : t -> GlobString.t list [@@js.get "includes"]

    val set_includes : t -> GlobString.t list -> unit [@@js.set "includes"]

    val excludes : t -> GlobString.t list [@@js.get "excludes"]

    val set_excludes : t -> GlobString.t list -> unit [@@js.set "excludes"]

    val use_ignore_files : t -> bool [@@js.get "useIgnoreFiles"]

    val set_use_ignore_files : t -> bool -> unit [@@js.set "useIgnoreFiles"]

    val follow_symlinks : t -> bool [@@js.get "followSymlinks"]

    val set_follow_symlinks : t -> bool -> unit [@@js.set "followSymlinks"]

    val use_global_ignore_files : t -> bool [@@js.get "useGlobalIgnoreFiles"]

    val set_use_global_ignore_files : t -> bool -> unit
      [@@js.set "useGlobalIgnoreFiles"]
  end
  [@@js.scope "SearchOptions"]

  module TextSearchPreviewOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val match_lines : t -> int [@@js.get "matchLines"]

    val set_match_lines : t -> int -> unit [@@js.set "matchLines"]

    val chars_per_line : t -> int [@@js.get "charsPerLine"]

    val set_chars_per_line : t -> int -> unit [@@js.set "charsPerLine"]
  end
  [@@js.scope "TextSearchPreviewOptions"]

  module TextSearchOptions : sig
    include module type of struct
      include SearchOptions
    end

    val max_results : t -> int [@@js.get "maxResults"]

    val set_max_results : t -> int -> unit [@@js.set "maxResults"]

    val preview_options : t -> TextSearchPreviewOptions.t
      [@@js.get "previewOptions"]

    val set_preview_options : t -> TextSearchPreviewOptions.t -> unit
      [@@js.set "previewOptions"]

    val max_file_size : t -> int [@@js.get "maxFileSize"]

    val set_max_file_size : t -> int -> unit [@@js.set "maxFileSize"]

    val encoding : t -> string [@@js.get "encoding"]

    val set_encoding : t -> string -> unit [@@js.set "encoding"]

    val before_context : t -> int [@@js.get "beforeContext"]

    val set_before_context : t -> int -> unit [@@js.set "beforeContext"]

    val after_context : t -> int [@@js.get "afterContext"]

    val set_after_context : t -> int -> unit [@@js.set "afterContext"]
  end
  [@@js.scope "TextSearchOptions"]

  module TextSearchComplete : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val limit_hit : t -> bool [@@js.get "limitHit"]

    val set_limit_hit : t -> bool -> unit [@@js.set "limitHit"]
  end
  [@@js.scope "TextSearchComplete"]

  module TextSearchMatchPreview : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val text : t -> string [@@js.get "text"]

    val set_text : t -> string -> unit [@@js.set "text"]

    val matches : t -> (Range.t, Range.t) or_array [@@js.get "matches"]

    val set_matches : t -> (Range.t, Range.t) or_array -> unit
      [@@js.set "matches"]
  end
  [@@js.scope "TextSearchMatchPreview"]

  module TextSearchMatch : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val ranges : t -> (Range.t, Range.t) or_array [@@js.get "ranges"]

    val set_ranges : t -> (Range.t, Range.t) or_array -> unit
      [@@js.set "ranges"]

    val preview : t -> TextSearchMatchPreview.t [@@js.get "preview"]

    val set_preview : t -> TextSearchMatchPreview.t -> unit [@@js.set "preview"]
  end
  [@@js.scope "TextSearchMatch"]

  module TextSearchContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val text : t -> string [@@js.get "text"]

    val set_text : t -> string -> unit [@@js.set "text"]

    val line_number : t -> int [@@js.get "lineNumber"]

    val set_line_number : t -> int -> unit [@@js.set "lineNumber"]
  end
  [@@js.scope "TextSearchContext"]

  module TextSearchResult : sig
    type t = (TextSearchContext.t, TextSearchMatch.t) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TextSearchProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_text_search_results
      :  t
      -> query:TextSearchQuery.t
      -> options:TextSearchOptions.t
      -> progress:TextSearchResult.t Progress.t
      -> token:CancellationToken.t
      -> TextSearchComplete.t ProviderResult.t
      [@@js.call "provideTextSearchResults"]
  end
  [@@js.scope "TextSearchProvider"]

  module FileSearchQuery : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val pattern : t -> string [@@js.get "pattern"]

    val set_pattern : t -> string -> unit [@@js.set "pattern"]
  end
  [@@js.scope "FileSearchQuery"]

  module FileSearchOptions : sig
    include module type of struct
      include SearchOptions
    end

    val max_results : t -> int [@@js.get "maxResults"]

    val set_max_results : t -> int -> unit [@@js.set "maxResults"]

    val session : t -> CancellationToken.t [@@js.get "session"]

    val set_session : t -> CancellationToken.t -> unit [@@js.set "session"]
  end
  [@@js.scope "FileSearchOptions"]

  module FileSearchProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_file_search_results
      :  t
      -> query:FileSearchQuery.t
      -> options:FileSearchOptions.t
      -> token:CancellationToken.t
      -> Uri.t list ProviderResult.t
      [@@js.call "provideFileSearchResults"]
  end
  [@@js.scope "FileSearchProvider"]

  module WebviewEditorInset : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val editor : t -> TextEditor.t [@@js.get "editor"]

    val line : t -> int [@@js.get "line"]

    val height : t -> int [@@js.get "height"]

    val webview : t -> Webview.t [@@js.get "webview"]

    val on_did_dispose : t -> unit Event.t [@@js.get "onDidDispose"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "WebviewEditorInset"]

  module TerminalDataWriteEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val terminal : t -> Terminal.t [@@js.get "terminal"]

    val data : t -> string [@@js.get "data"]
  end
  [@@js.scope "TerminalDataWriteEvent"]

  module TerminalDimensionsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val terminal : t -> Terminal.t [@@js.get "terminal"]

    val dimensions : t -> TerminalDimensions.t [@@js.get "dimensions"]
  end
  [@@js.scope "TerminalDimensionsChangeEvent"]

  module Terminal : sig
    type t = Terminal.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val dimensions : t -> TerminalDimensions.t or_undefined
      [@@js.get "dimensions"]
  end
  [@@js.scope "Terminal"]

  module TerminalOptions : sig
    type t = TerminalOptions.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val icon : t -> string [@@js.get "icon"]

    val message : t -> string [@@js.get "message"]
  end
  [@@js.scope "TerminalOptions"]

  module FindTextInFilesOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val include_ : t -> GlobPattern.t [@@js.get "include"]

    val set_include : t -> GlobPattern.t -> unit [@@js.set "include"]

    val exclude : t -> GlobPattern.t [@@js.get "exclude"]

    val set_exclude : t -> GlobPattern.t -> unit [@@js.set "exclude"]

    val use_default_excludes : t -> bool [@@js.get "useDefaultExcludes"]

    val set_use_default_excludes : t -> bool -> unit
      [@@js.set "useDefaultExcludes"]

    val max_results : t -> int [@@js.get "maxResults"]

    val set_max_results : t -> int -> unit [@@js.set "maxResults"]

    val use_ignore_files : t -> bool [@@js.get "useIgnoreFiles"]

    val set_use_ignore_files : t -> bool -> unit [@@js.set "useIgnoreFiles"]

    val use_global_ignore_files : t -> bool [@@js.get "useGlobalIgnoreFiles"]

    val set_use_global_ignore_files : t -> bool -> unit
      [@@js.set "useGlobalIgnoreFiles"]

    val follow_symlinks : t -> bool [@@js.get "followSymlinks"]

    val set_follow_symlinks : t -> bool -> unit [@@js.set "followSymlinks"]

    val encoding : t -> string [@@js.get "encoding"]

    val set_encoding : t -> string -> unit [@@js.set "encoding"]

    val preview_options : t -> TextSearchPreviewOptions.t
      [@@js.get "previewOptions"]

    val set_preview_options : t -> TextSearchPreviewOptions.t -> unit
      [@@js.set "previewOptions"]

    val before_context : t -> int [@@js.get "beforeContext"]

    val set_before_context : t -> int -> unit [@@js.set "beforeContext"]

    val after_context : t -> int [@@js.get "afterContext"]

    val set_after_context : t -> int -> unit [@@js.set "afterContext"]
  end
  [@@js.scope "FindTextInFilesOptions"]

  module LineChange : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val original_start_line_number : t -> int
      [@@js.get "originalStartLineNumber"]

    val original_end_line_number : t -> int [@@js.get "originalEndLineNumber"]

    val modified_start_line_number : t -> int
      [@@js.get "modifiedStartLineNumber"]

    val modified_end_line_number : t -> int [@@js.get "modifiedEndLineNumber"]
  end
  [@@js.scope "LineChange"]

  module Commands : sig
    val register_diff_information_command
      :  command:string
      -> callback:
           (diff:LineChange.t list -> args:(any list[@js.variadic]) -> any)
      -> ?this_arg:any
      -> unit
      -> Disposable.t
      [@@js.global "registerDiffInformationCommand"]
  end
  [@@js.scope "commands"]

  module DebugProtocolVariableContainer : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DebugProtocolVariable : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SourceControlInputBoxValidationType : sig
    type t =
      ([ `Error [@js 0]
       | `Warning [@js 1]
       | `Information [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SourceControlInputBoxValidation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val message : t -> string [@@js.get "message"]

    val type_ : t -> SourceControlInputBoxValidationType.t [@@js.get "type"]
  end
  [@@js.scope "SourceControlInputBoxValidation"]

  module SourceControlInputBox : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val focus : t -> unit [@@js.call "focus"]

    val show_validation_message
      :  t
      -> message:string
      -> type_:SourceControlInputBoxValidationType.t
      -> unit
      [@@js.call "showValidationMessage"]

    val validate_input
      :  t
      -> value:string
      -> cursor_position:int
      -> SourceControlInputBoxValidation.t ProviderResult.t
      [@@js.call "validateInput"]
  end
  [@@js.scope "SourceControlInputBox"]

  module SourceControl : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val selected : t -> bool [@@js.get "selected"]

    val on_did_change_selection : t -> bool Event.t
      [@@js.get "onDidChangeSelection"]
  end
  [@@js.scope "SourceControl"]

  module DocumentFilter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val exclusive : t -> bool [@@js.get "exclusive"]
  end
  [@@js.scope "DocumentFilter"]

  module TreeView : sig
    include module type of struct
      include Disposable
    end

    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val reveal
      :  'T t
      -> element:'T or_undefined
      -> ?options:AnonymousInterface12.t
      -> unit
      -> unit Promise.t
      [@@js.call "reveal"]
  end
  [@@js.scope "TreeView"]

  module TaskPresentationOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val group : t -> string [@@js.get "group"]

    val set_group : t -> string -> unit [@@js.set "group"]
  end
  [@@js.scope "TaskPresentationOptions"]

  module StatusBarItemOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val set_id : t -> string -> unit [@@js.set "id"]

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val accessibility_information : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibility_information : t -> AccessibilityInformation.t -> unit
      [@@js.set "accessibilityInformation"]

    val alignment : t -> StatusBarAlignment.t [@@js.get "alignment"]

    val set_alignment : t -> StatusBarAlignment.t -> unit [@@js.set "alignment"]

    val priority : t -> int [@@js.get "priority"]

    val set_priority : t -> int -> unit [@@js.set "priority"]
  end
  [@@js.scope "StatusBarItemOptions"]

  module CustomTextEditorProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val move_custom_text_editor
      :  t
      -> new_document:TextDocument.t
      -> existing_webview_panel:WebviewPanel.t
      -> token:CancellationToken.t
      -> unit Promise.t
      [@@js.call "moveCustomTextEditor"]
  end
  [@@js.scope "CustomTextEditorProvider"]

  module QuickPick : sig
    include module type of struct
      include QuickInput
    end

    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val sort_by_label : 'T t -> bool [@@js.get "sortByLabel"]

    val set_sort_by_label : 'T t -> bool -> unit [@@js.set "sortByLabel"]
  end
  [@@js.scope "QuickPick"]

  module QuickPickOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]
  end
  [@@js.scope "QuickPickOptions"]

  module InputBoxOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]
  end
  [@@js.scope "InputBoxOptions"]

  module NotebookEditorRevealType : sig
    type t =
      ([ `Default [@js 0]
       | `InCenter [@js 1]
       | `InCenterIfOutsideViewport [@js 2]
       | `AtTop [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NotebookCellData : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val kind : t -> NotebookCellKind.t [@@js.get "kind"]

    val set_kind : t -> NotebookCellKind.t -> unit [@@js.set "kind"]

    val source : t -> string [@@js.get "source"]

    val set_source : t -> string -> unit [@@js.set "source"]

    val language : t -> string [@@js.get "language"]

    val set_language : t -> string -> unit [@@js.set "language"]

    val outputs : t -> NotebookCellOutput.t list [@@js.get "outputs"]

    val set_outputs : t -> NotebookCellOutput.t list -> unit
      [@@js.set "outputs"]

    val metadata : t -> NotebookCellMetadata.t [@@js.get "metadata"]

    val set_metadata : t -> NotebookCellMetadata.t -> unit [@@js.set "metadata"]

    val latest_execution_summary : t -> NotebookCellExecutionSummary.t
      [@@js.get "latestExecutionSummary"]

    val set_latest_execution_summary
      :  t
      -> NotebookCellExecutionSummary.t
      -> unit
      [@@js.set "latestExecutionSummary"]

    val create
      :  kind:NotebookCellKind.t
      -> source:string
      -> language:string
      -> ?outputs:NotebookCellOutput.t list
      -> ?metadata:NotebookCellMetadata.t
      -> ?latest_execution_summary:NotebookCellExecutionSummary.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "NotebookCellData"]

  module NotebookEditorEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val replace_metadata : t -> value:NotebookDocumentMetadata.t -> unit
      [@@js.call "replaceMetadata"]

    val replace_cells
      :  t
      -> start:int
      -> end_:int
      -> cells:NotebookCellData.t list
      -> unit
      [@@js.call "replaceCells"]

    val replace_cell_output
      :  t
      -> index:int
      -> outputs:NotebookCellOutput.t list
      -> unit
      [@@js.call "replaceCellOutput"]

    val replace_cell_metadata
      :  t
      -> index:int
      -> metadata:NotebookCellMetadata.t
      -> unit
      [@@js.call "replaceCellMetadata"]
  end
  [@@js.scope "NotebookEditorEdit"]

  module NotebookEditorDecorationType : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val key : t -> string [@@js.get "key"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "NotebookEditorDecorationType"]

  module NotebookEditor : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_decorations
      :  t
      -> decoration_type:NotebookEditorDecorationType.t
      -> range:NotebookCellRange.t
      -> unit
      [@@js.call "setDecorations"]

    val kernel : t -> NotebookKernel.t [@@js.get "kernel"]

    val edit
      :  t
      -> callback:(editBuilder:NotebookEditorEdit.t -> unit)
      -> bool Promise.t
      [@@js.call "edit"]

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val selection : t -> NotebookCell.t [@@js.get "selection"]

    val selections : t -> NotebookCellRange.t list [@@js.get "selections"]

    val visible_ranges : t -> NotebookCellRange.t list
      [@@js.get "visibleRanges"]

    val reveal_range
      :  t
      -> range:NotebookCellRange.t
      -> ?reveal_type:NotebookEditorRevealType.t
      -> unit
      -> unit
      [@@js.call "revealRange"]

    val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]
  end
  [@@js.scope "NotebookEditor"]

  module NotebookDocumentMetadataChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]
  end
  [@@js.scope "NotebookDocumentMetadataChangeEvent"]

  module NotebookCellsChangeData : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start : t -> int [@@js.get "start"]

    val deleted_count : t -> int [@@js.get "deletedCount"]

    val deleted_items : t -> NotebookCell.t list [@@js.get "deletedItems"]

    val items : t -> NotebookCell.t list [@@js.get "items"]
  end
  [@@js.scope "NotebookCellsChangeData"]

  module NotebookCellsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val changes : t -> NotebookCellsChangeData.t list [@@js.get "changes"]
  end
  [@@js.scope "NotebookCellsChangeEvent"]

  module NotebookCellOutputsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val cells : t -> NotebookCell.t list [@@js.get "cells"]
  end
  [@@js.scope "NotebookCellOutputsChangeEvent"]

  module NotebookCellMetadataChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val cell : t -> NotebookCell.t [@@js.get "cell"]
  end
  [@@js.scope "NotebookCellMetadataChangeEvent"]

  module NotebookEditorSelectionChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val notebook_editor : t -> NotebookEditor.t [@@js.get "notebookEditor"]

    val selections : t -> NotebookCellRange.t list [@@js.get "selections"]
  end
  [@@js.scope "NotebookEditorSelectionChangeEvent"]

  module NotebookEditorVisibleRangesChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val notebook_editor : t -> NotebookEditor.t [@@js.get "notebookEditor"]

    val visible_ranges : t -> NotebookCellRange.t list
      [@@js.get "visibleRanges"]
  end
  [@@js.scope "NotebookEditorVisibleRangesChangeEvent"]

  module NotebookCellExecutionState : sig
    type t =
      ([ `Idle [@js 1]
       | `Pending [@js 2]
       | `Executing [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NotebookCellExecutionStateChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val cell : t -> NotebookCell.t [@@js.get "cell"]

    val execution_state : t -> NotebookCellExecutionState.t
      [@@js.get "executionState"]
  end
  [@@js.scope "NotebookCellExecutionStateChangeEvent"]

  module NotebookData : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cells : t -> NotebookCellData.t list [@@js.get "cells"]

    val set_cells : t -> NotebookCellData.t list -> unit [@@js.set "cells"]

    val metadata : t -> NotebookDocumentMetadata.t [@@js.get "metadata"]

    val set_metadata : t -> NotebookDocumentMetadata.t -> unit
      [@@js.set "metadata"]

    val create
      :  cells:NotebookCellData.t list
      -> ?metadata:NotebookDocumentMetadata.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "NotebookData"]

  module NotebookCommunication : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val editor_id : t -> string [@@js.get "editorId"]

    val on_did_receive_message : t -> any Event.t
      [@@js.get "onDidReceiveMessage"]

    val post_message : t -> message:any -> bool Promise.t
      [@@js.call "postMessage"]

    val as_webview_uri : t -> local_resource:Uri.t -> Uri.t
      [@@js.call "asWebviewUri"]
  end
  [@@js.scope "NotebookCommunication"]

  module NotebookDocumentShowOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_column : t -> ViewColumn.t [@@js.get "viewColumn"]

    val set_view_column : t -> ViewColumn.t -> unit [@@js.set "viewColumn"]

    val preserve_focus : t -> bool [@@js.get "preserveFocus"]

    val set_preserve_focus : t -> bool -> unit [@@js.set "preserveFocus"]

    val preview : t -> bool [@@js.get "preview"]

    val set_preview : t -> bool -> unit [@@js.set "preview"]

    val selection : t -> NotebookCellRange.t [@@js.get "selection"]

    val set_selection : t -> NotebookCellRange.t -> unit [@@js.set "selection"]
  end
  [@@js.scope "NotebookDocumentShowOptions"]

  module NotebookSerializer : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val data_to_notebook
      :  t
      -> data:Uint8Array.t
      -> (NotebookData.t, NotebookData.t Promise.t) union2
      [@@js.call "dataToNotebook"]

    val notebook_to_data
      :  t
      -> data:NotebookData.t
      -> (Uint8Array.t, Uint8Array.t Promise.t) union2
      [@@js.call "notebookToData"]
  end
  [@@js.scope "NotebookSerializer"]

  module NotebookFilter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_type : t -> string [@@js.get "viewType"]

    val scheme : t -> string [@@js.get "scheme"]

    val pattern : t -> GlobPattern.t [@@js.get "pattern"]
  end
  [@@js.scope "NotebookFilter"]

  module NotebookSelector : sig
    type t =
      (NotebookFilter.t, NotebookFilter.t or_string list) union2 or_string

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NotebookCellExecuteStartContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val start_time : t -> int [@@js.get "startTime"]

    val set_start_time : t -> int -> unit [@@js.set "startTime"]
  end
  [@@js.scope "NotebookCellExecuteStartContext"]

  module NotebookCellExecuteEndContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val success : t -> bool [@@js.get "success"]

    val set_success : t -> bool -> unit [@@js.set "success"]

    val duration : t -> int [@@js.get "duration"]

    val set_duration : t -> int -> unit [@@js.set "duration"]
  end
  [@@js.scope "NotebookCellExecuteEndContext"]

  module NotebookCellExecutionTask : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val document : t -> NotebookDocument.t [@@js.get "document"]

    val cell : t -> NotebookCell.t [@@js.get "cell"]

    val start : t -> ?context:NotebookCellExecuteStartContext.t -> unit -> unit
      [@@js.call "start"]

    val execution_order : t -> int or_undefined [@@js.get "executionOrder"]

    val set_execution_order : t -> int or_undefined -> unit
      [@@js.set "executionOrder"]

    val end_ : t -> ?result:NotebookCellExecuteEndContext.t -> unit -> unit
      [@@js.call "end"]

    val token : t -> CancellationToken.t [@@js.get "token"]

    val clear_output : t -> ?cell_index:int -> unit -> unit Promise.t
      [@@js.call "clearOutput"]

    val append_output
      :  t
      -> out:(NotebookCellOutput.t, NotebookCellOutput.t) or_array
      -> ?cell_index:int
      -> unit
      -> unit Promise.t
      [@@js.call "appendOutput"]

    val replace_output
      :  t
      -> out:(NotebookCellOutput.t, NotebookCellOutput.t) or_array
      -> ?cell_index:int
      -> unit
      -> unit Promise.t
      [@@js.call "replaceOutput"]

    val append_output_items
      :  t
      -> items:(NotebookCellOutputItem.t, NotebookCellOutputItem.t) or_array
      -> output_id:string
      -> unit Promise.t
      [@@js.call "appendOutputItems"]

    val replace_output_items
      :  t
      -> items:(NotebookCellOutputItem.t, NotebookCellOutputItem.t) or_array
      -> output_id:string
      -> unit Promise.t
      [@@js.call "replaceOutputItems"]
  end
  [@@js.scope "NotebookCellExecutionTask"]

  module NotebookDecorationRenderOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val background_color : t -> ThemeColor.t or_string
      [@@js.get "backgroundColor"]

    val set_background_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "backgroundColor"]

    val border_color : t -> ThemeColor.t or_string [@@js.get "borderColor"]

    val set_border_color : t -> ThemeColor.t or_string -> unit
      [@@js.set "borderColor"]

    val top : t -> ThemableDecorationAttachmentRenderOptions.t [@@js.get "top"]

    val set_top : t -> ThemableDecorationAttachmentRenderOptions.t -> unit
      [@@js.set "top"]
  end
  [@@js.scope "NotebookDecorationRenderOptions"]

  module NotebookKernelOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val set_id : t -> string -> unit [@@js.set "id"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val selector : t -> NotebookSelector.t [@@js.get "selector"]

    val set_selector : t -> NotebookSelector.t -> unit [@@js.set "selector"]

    val supported_languages : t -> string list [@@js.get "supportedLanguages"]

    val set_supported_languages : t -> string list -> unit
      [@@js.set "supportedLanguages"]

    val has_execution_order : t -> bool [@@js.get "hasExecutionOrder"]

    val set_has_execution_order : t -> bool -> unit
      [@@js.set "hasExecutionOrder"]

    val execute_handler
      :  t
      -> executions:NotebookCellExecutionTask.t list
      -> unit
      [@@js.call "executeHandler"]

    val interrupt_handler : t -> notebook:NotebookDocument.t -> unit
      [@@js.call "interruptHandler"]
  end
  [@@js.scope "NotebookKernelOptions"]

  module NotebookKernel2 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val selector : t -> NotebookSelector.t [@@js.get "selector"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val supported_languages : t -> string list [@@js.get "supportedLanguages"]

    val set_supported_languages : t -> string list -> unit
      [@@js.set "supportedLanguages"]

    val has_execution_order : t -> bool [@@js.get "hasExecutionOrder"]

    val set_has_execution_order : t -> bool -> unit
      [@@js.set "hasExecutionOrder"]

    val execute_handler
      :  t
      -> executions:NotebookCellExecutionTask.t list
      -> unit
      [@@js.call "executeHandler"]

    val interrupt_handler : t -> notebook:NotebookDocument.t -> unit
      [@@js.call "interruptHandler"]

    val dispose : t -> unit [@@js.call "dispose"]

    val create_notebook_cell_execution_task
      :  t
      -> cell:NotebookCell.t
      -> NotebookCellExecutionTask.t
      [@@js.call "createNotebookCellExecutionTask"]
  end
  [@@js.scope "NotebookKernel2"]

  module NotebookDocumentBackup : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val delete : t -> unit [@@js.call "delete"]
  end
  [@@js.scope "NotebookDocumentBackup"]

  module NotebookDocumentBackupContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val destination : t -> Uri.t [@@js.get "destination"]
  end
  [@@js.scope "NotebookDocumentBackupContext"]

  module NotebookDocumentOpenContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val backup_id : t -> string [@@js.get "backupId"]

    val untitled_document_data : t -> Uint8Array.t
      [@@js.get "untitledDocumentData"]
  end
  [@@js.scope "NotebookDocumentOpenContext"]

  module NotebookContentProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val options : t -> NotebookDocumentContentOptions.t [@@js.get "options"]

    val on_did_change_notebook_content_options
      :  t
      -> NotebookDocumentContentOptions.t Event.t
      [@@js.get "onDidChangeNotebookContentOptions"]

    val open_notebook
      :  t
      -> uri:Uri.t
      -> open_context:NotebookDocumentOpenContext.t
      -> token:CancellationToken.t
      -> (NotebookData.t, NotebookData.t Promise.t) union2
      [@@js.call "openNotebook"]

    val save_notebook
      :  t
      -> document:NotebookDocument.t
      -> token:CancellationToken.t
      -> unit Promise.t
      [@@js.call "saveNotebook"]

    val save_notebook_as
      :  t
      -> target_resource:Uri.t
      -> document:NotebookDocument.t
      -> token:CancellationToken.t
      -> unit Promise.t
      [@@js.call "saveNotebookAs"]

    val backup_notebook
      :  t
      -> document:NotebookDocument.t
      -> context:NotebookDocumentBackupContext.t
      -> token:CancellationToken.t
      -> NotebookDocumentBackup.t Promise.t
      [@@js.call "backupNotebook"]
  end
  [@@js.scope "NotebookContentProvider"]

  module NotebookDocumentFilter : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val view_type : t -> string list or_string [@@js.get "viewType"]

    val set_view_type : t -> string list or_string -> unit [@@js.set "viewType"]

    val filename_pattern : t -> NotebookFilenamePattern.t
      [@@js.get "filenamePattern"]

    val set_filename_pattern : t -> NotebookFilenamePattern.t -> unit
      [@@js.set "filenamePattern"]
  end
  [@@js.scope "NotebookDocumentFilter"]

  module NotebookKernelProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    type t_0 = NotebookKernel.t t

    val t_0_to_js : t_0 -> Ojs.t

    val t_0_of_js : Ojs.t -> t_0

    val on_did_change_kernels : 'T t -> NotebookDocument.t or_undefined Event.t
      [@@js.get "onDidChangeKernels"]

    val set_on_did_change_kernels
      :  'T t
      -> NotebookDocument.t or_undefined Event.t
      -> unit
      [@@js.set "onDidChangeKernels"]

    val provide_kernels
      :  'T t
      -> document:NotebookDocument.t
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideKernels"]

    val resolve_kernel
      :  'T t
      -> kernel:'T
      -> document:NotebookDocument.t
      -> webview:NotebookCommunication.t
      -> token:CancellationToken.t
      -> unit ProviderResult.t
      [@@js.call "resolveKernel"]
  end
  [@@js.scope "NotebookKernelProvider"]

  module NotebookCellStatusBarAlignment : sig
    type t =
      ([ `Left [@js 1]
       | `Right [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NotebookCellStatusBarItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cell : t -> NotebookCell.t [@@js.get "cell"]

    val alignment : t -> NotebookCellStatusBarAlignment.t [@@js.get "alignment"]

    val priority : t -> int [@@js.get "priority"]

    val text : t -> string [@@js.get "text"]

    val set_text : t -> string -> unit [@@js.set "text"]

    val tooltip : t -> string or_undefined [@@js.get "tooltip"]

    val set_tooltip : t -> string or_undefined -> unit [@@js.set "tooltip"]

    val command : t -> Command.t or_string or_undefined [@@js.get "command"]

    val set_command : t -> Command.t or_string or_undefined -> unit
      [@@js.set "command"]

    val accessibility_information : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibility_information : t -> AccessibilityInformation.t -> unit
      [@@js.set "accessibilityInformation"]

    val show : t -> unit [@@js.call "show"]

    val hide : t -> unit [@@js.call "hide"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "NotebookCellStatusBarItem"]

  module NotebookConcatTextDocument : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val is_closed : t -> bool [@@js.get "isClosed"]

    val set_is_closed : t -> bool -> unit [@@js.set "isClosed"]

    val dispose : t -> unit [@@js.call "dispose"]

    val on_did_change : t -> unit Event.t [@@js.get "onDidChange"]

    val set_on_did_change : t -> unit Event.t -> unit [@@js.set "onDidChange"]

    val version : t -> int [@@js.get "version"]

    val set_version : t -> int -> unit [@@js.set "version"]

    val get_text : t -> string [@@js.call "getText"]

    val get_text' : t -> range:Range.t -> string [@@js.call "getText"]

    val offset_at : t -> position:Position.t -> int [@@js.call "offsetAt"]

    val position_at : t -> offset:int -> Position.t [@@js.call "positionAt"]

    val validate_range : t -> range:Range.t -> Range.t
      [@@js.call "validateRange"]

    val validate_position : t -> position:Position.t -> Position.t
      [@@js.call "validatePosition"]

    val location_at
      :  t
      -> position_or_range:(Position.t, Range.t) union2
      -> Location.t
      [@@js.call "locationAt"]

    val position_at' : t -> location:Location.t -> Position.t
      [@@js.call "positionAt"]

    val contains : t -> uri:Uri.t -> bool [@@js.call "contains"]
  end
  [@@js.scope "NotebookConcatTextDocument"]

  module Notebook : sig
    val open_notebook_document : uri:Uri.t -> NotebookDocument.t Promise.t
      [@@js.global "openNotebookDocument"]

    val on_did_open_notebook_document : NotebookDocument.t Event.t
      [@@js.global "onDidOpenNotebookDocument"]

    val on_did_close_notebook_document : NotebookDocument.t Event.t
      [@@js.global "onDidCloseNotebookDocument"]

    val on_did_save_notebook_document : NotebookDocument.t Event.t
      [@@js.global "onDidSaveNotebookDocument"]

    val notebook_documents : NotebookDocument.t list
      [@@js.global "notebookDocuments"]

    val on_did_change_notebook_document_metadata
      : NotebookDocumentMetadataChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookDocumentMetadata"]

    val on_did_change_notebook_cells : NotebookCellsChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookCells"]

    val on_did_change_cell_outputs : NotebookCellOutputsChangeEvent.t Event.t
      [@@js.global "onDidChangeCellOutputs"]

    val on_did_change_cell_metadata : NotebookCellMetadataChangeEvent.t Event.t
      [@@js.global "onDidChangeCellMetadata"]

    val register_notebook_serializer
      :  notebook_type:string
      -> provider:NotebookSerializer.t
      -> ?options:NotebookDocumentContentOptions.t
      -> unit
      -> Disposable.t
      [@@js.global "registerNotebookSerializer"]

    val create_notebook_kernel
      :  options:NotebookKernelOptions.t
      -> NotebookKernel2.t
      [@@js.global "createNotebookKernel"]

    val register_notebook_content_provider
      :  notebook_type:string
      -> provider:NotebookContentProvider.t
      -> ?options:
           ( NotebookDocumentContentOptions.t
           , AnonymousInterface15.t )
           intersection2
      -> unit
      -> Disposable.t
      [@@js.global "registerNotebookContentProvider"]

    val create_notebook_cell_execution_task
      :  uri:Uri.t
      -> index:int
      -> kernel_id:string
      -> NotebookCellExecutionTask.t or_undefined
      [@@js.global "createNotebookCellExecutionTask"]

    val on_did_change_cell_execution_state
      : NotebookCellExecutionStateChangeEvent.t Event.t
      [@@js.global "onDidChangeCellExecutionState"]

    val on_did_change_active_notebook_kernel : AnonymousInterface4.t Event.t
      [@@js.global "onDidChangeActiveNotebookKernel"]

    val register_notebook_kernel_provider
      :  selector:NotebookDocumentFilter.t
      -> provider:NotebookKernel.t NotebookKernelProvider.t
      -> Disposable.t
      [@@js.global "registerNotebookKernelProvider"]

    val create_notebook_editor_decoration_type
      :  options:NotebookDecorationRenderOptions.t
      -> NotebookEditorDecorationType.t
      [@@js.global "createNotebookEditorDecorationType"]

    val create_cell_status_bar_item
      :  cell:NotebookCell.t
      -> ?alignment:NotebookCellStatusBarAlignment.t
      -> ?priority:int
      -> unit
      -> NotebookCellStatusBarItem.t
      [@@js.global "createCellStatusBarItem"]

    val create_concat_text_document
      :  notebook:NotebookDocument.t
      -> ?selector:DocumentSelector.t
      -> unit
      -> NotebookConcatTextDocument.t
      [@@js.global "createConcatTextDocument"]
  end
  [@@js.scope "notebook"]

  module WorkspaceEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val replace_notebook_metadata
      :  t
      -> uri:Uri.t
      -> value:NotebookDocumentMetadata.t
      -> unit
      [@@js.call "replaceNotebookMetadata"]

    val replace_notebook_cells
      :  t
      -> uri:Uri.t
      -> start:int
      -> end_:int
      -> cells:NotebookCellData.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCells"]

    val replace_notebook_cell_metadata
      :  t
      -> uri:Uri.t
      -> index:int
      -> cell_metadata:NotebookCellMetadata.t
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCellMetadata"]

    val replace_notebook_cell_output
      :  t
      -> uri:Uri.t
      -> index:int
      -> outputs:NotebookCellOutput.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCellOutput"]

    val append_notebook_cell_output
      :  t
      -> uri:Uri.t
      -> index:int
      -> outputs:NotebookCellOutput.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "appendNotebookCellOutput"]

    val replace_notebook_cell_output_items
      :  t
      -> uri:Uri.t
      -> index:int
      -> output_id:string
      -> items:NotebookCellOutputItem.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCellOutputItems"]

    val append_notebook_cell_output_items
      :  t
      -> uri:Uri.t
      -> index:int
      -> output_id:string
      -> items:NotebookCellOutputItem.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "appendNotebookCellOutputItems"]
  end
  [@@js.scope "WorkspaceEdit"]

  module CompletionItemLabel : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val parameters : t -> string [@@js.get "parameters"]

    val set_parameters : t -> string -> unit [@@js.set "parameters"]

    val qualifier : t -> string [@@js.get "qualifier"]

    val set_qualifier : t -> string -> unit [@@js.set "qualifier"]

    val type_ : t -> string [@@js.get "type"]

    val set_type : t -> string -> unit [@@js.set "type"]
  end
  [@@js.scope "CompletionItemLabel"]

  module CompletionItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val label2 : t -> CompletionItemLabel.t [@@js.get "label2"]

    val set_label2 : t -> CompletionItemLabel.t -> unit [@@js.set "label2"]
  end
  [@@js.scope "CompletionItem"]

  module TimelineItem : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val timestamp : t -> int [@@js.get "timestamp"]

    val set_timestamp : t -> int -> unit [@@js.set "timestamp"]

    val label : t -> string [@@js.get "label"]

    val set_label : t -> string -> unit [@@js.set "label"]

    val id : t -> string [@@js.get "id"]

    val set_id : t -> string -> unit [@@js.set "id"]

    val icon_path : t -> (ThemeIcon.t, Uri.t, AnonymousInterface9.t) union3
      [@@js.get "iconPath"]

    val set_icon_path
      :  t
      -> (ThemeIcon.t, Uri.t, AnonymousInterface9.t) union3
      -> unit
      [@@js.set "iconPath"]

    val description : t -> string [@@js.get "description"]

    val set_description : t -> string -> unit [@@js.set "description"]

    val detail : t -> string [@@js.get "detail"]

    val set_detail : t -> string -> unit [@@js.set "detail"]

    val command : t -> Command.t [@@js.get "command"]

    val set_command : t -> Command.t -> unit [@@js.set "command"]

    val context_value : t -> string [@@js.get "contextValue"]

    val set_context_value : t -> string -> unit [@@js.set "contextValue"]

    val accessibility_information : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibility_information : t -> AccessibilityInformation.t -> unit
      [@@js.set "accessibilityInformation"]

    val create : label:string -> timestamp:int -> t [@@js.create]
  end
  [@@js.scope "TimelineItem"]

  module TimelineChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val uri : t -> Uri.t [@@js.get "uri"]

    val set_uri : t -> Uri.t -> unit [@@js.set "uri"]

    val reset : t -> bool [@@js.get "reset"]

    val set_reset : t -> bool -> unit [@@js.set "reset"]
  end
  [@@js.scope "TimelineChangeEvent"]

  module AnonymousInterface2 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cursor : t -> string or_undefined [@@js.get "cursor"]
  end

  module Timeline : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val paging : t -> AnonymousInterface2.t [@@js.get "paging"]

    val items : t -> TimelineItem.t list [@@js.get "items"]
  end
  [@@js.scope "Timeline"]

  module TimelineOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cursor : t -> string [@@js.get "cursor"]

    val set_cursor : t -> string -> unit [@@js.set "cursor"]

    val limit : t -> AnonymousInterface14.t or_number [@@js.get "limit"]

    val set_limit : t -> AnonymousInterface14.t or_number -> unit
      [@@js.set "limit"]
  end
  [@@js.scope "TimelineOptions"]

  module TimelineProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change : t -> TimelineChangeEvent.t or_undefined Event.t
      [@@js.get "onDidChange"]

    val set_on_did_change
      :  t
      -> TimelineChangeEvent.t or_undefined Event.t
      -> unit
      [@@js.set "onDidChange"]

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]

    val provide_timeline
      :  t
      -> uri:Uri.t
      -> options:TimelineOptions.t
      -> token:CancellationToken.t
      -> Timeline.t ProviderResult.t
      [@@js.call "provideTimeline"]
  end
  [@@js.scope "TimelineProvider"]

  module StandardTokenType : sig
    type t =
      ([ `Other [@js 0]
       | `Comment [@js 1]
       | `String [@js 2]
       | `RegEx [@js 4]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TokenInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val type_ : t -> StandardTokenType.t [@@js.get "type"]

    val set_type : t -> StandardTokenType.t -> unit [@@js.set "type"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]
  end
  [@@js.scope "TokenInformation"]

  module InlineHintKind : sig
    type t =
      ([ `Other [@js 0]
       | `Type [@js 1]
       | `Parameter [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module InlineHint : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val text : t -> string [@@js.get "text"]

    val set_text : t -> string -> unit [@@js.set "text"]

    val range : t -> Range.t [@@js.get "range"]

    val set_range : t -> Range.t -> unit [@@js.set "range"]

    val kind : t -> InlineHintKind.t [@@js.get "kind"]

    val set_kind : t -> InlineHintKind.t -> unit [@@js.set "kind"]

    val description : t -> MarkdownString.t or_string [@@js.get "description"]

    val set_description : t -> MarkdownString.t or_string -> unit
      [@@js.set "description"]

    val whitespace_before : t -> bool [@@js.get "whitespaceBefore"]

    val set_whitespace_before : t -> bool -> unit [@@js.set "whitespaceBefore"]

    val whitespace_after : t -> bool [@@js.get "whitespaceAfter"]

    val set_whitespace_after : t -> bool -> unit [@@js.set "whitespaceAfter"]

    val create
      :  text:string
      -> range:Range.t
      -> ?kind:InlineHintKind.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "InlineHint"]

  module InlineHintsProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val on_did_change_inline_hints : t -> unit Event.t
      [@@js.get "onDidChangeInlineHints"]

    val set_on_did_change_inline_hints : t -> unit Event.t -> unit
      [@@js.set "onDidChangeInlineHints"]

    val provide_inline_hints
      :  t
      -> model:TextDocument.t
      -> range:Range.t
      -> token:CancellationToken.t
      -> InlineHint.t list ProviderResult.t
      [@@js.call "provideInlineHints"]
  end
  [@@js.scope "InlineHintsProvider"]

  module Languages : sig
    val get_token_information_at_position
      :  document:TextDocument.t
      -> position:Position.t
      -> TokenInformation.t Promise.t
      [@@js.global "getTokenInformationAtPosition"]

    val register_inline_hints_provider
      :  selector:DocumentSelector.t
      -> provider:InlineHintsProvider.t
      -> Disposable.t
      [@@js.global "registerInlineHintsProvider"]
  end
  [@@js.scope "languages"]

  module ExtensionRuntime : sig
    type t =
      ([ `Node [@js 1]
       | `Webworker [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ExtensionContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val extension_runtime : t -> ExtensionRuntime.t
      [@@js.get "extensionRuntime"]
  end
  [@@js.scope "ExtensionContext"]

  module TextDocument : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val notebook : t -> NotebookDocument.t or_undefined [@@js.get "notebook"]

    val set_notebook : t -> NotebookDocument.t or_undefined -> unit
      [@@js.set "notebook"]
  end
  [@@js.scope "TextDocument"]

  module TestChildrenCollection : sig
    include module type of struct
      include Iterable
    end

    val size : 'T t -> int [@@js.get "size"]

    val get : 'T t -> id:string -> 'T or_undefined [@@js.call "get"]

    val add : 'T t -> child:'T -> unit [@@js.call "add"]

    val delete : 'T t -> child:'T or_string -> unit [@@js.call "delete"]

    val clear : 'T t -> unit [@@js.call "clear"]
  end
  [@@js.scope "TestChildrenCollection"]

  module AnonymousInterface0 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val busy : t -> bool [@@js.get "busy"]

    val set_busy : t -> bool -> unit [@@js.set "busy"]
  end

  module TestItem : sig
    type 'TChildren t

    val t_to_js : ('TChildren -> Ojs.t) -> 'TChildren t -> Ojs.t

    val t_of_js : (Ojs.t -> 'TChildren) -> Ojs.t -> 'TChildren t

    type t_0 = any t

    val t_0_to_js : t_0 -> Ojs.t

    val t_0_of_js : Ojs.t -> t_0

    val id : 'TChildren t -> string [@@js.get "id"]

    val uri : 'TChildren t -> Uri.t [@@js.get "uri"]

    val children : 'TChildren t -> 'TChildren TestChildrenCollection.t
      [@@js.get "children"]

    val label : 'TChildren t -> string [@@js.get "label"]

    val set_label : 'TChildren t -> string -> unit [@@js.set "label"]

    val description : 'TChildren t -> string [@@js.get "description"]

    val set_description : 'TChildren t -> string -> unit
      [@@js.set "description"]

    val range : 'TChildren t -> Range.t [@@js.get "range"]

    val set_range : 'TChildren t -> Range.t -> unit [@@js.set "range"]

    val runnable : 'TChildren t -> bool [@@js.get "runnable"]

    val set_runnable : 'TChildren t -> bool -> unit [@@js.set "runnable"]

    val debuggable : 'TChildren t -> bool [@@js.get "debuggable"]

    val set_debuggable : 'TChildren t -> bool -> unit [@@js.set "debuggable"]

    val expandable : 'TChildren t -> bool [@@js.get "expandable"]

    val set_expandable : 'TChildren t -> bool -> unit [@@js.set "expandable"]

    val create
      :  id:string
      -> label:string
      -> uri:Uri.t
      -> expandable:bool
      -> 'TChildren t
      [@@js.create]

    val invalidate : 'TChildren t -> unit [@@js.call "invalidate"]

    val discover_children
      :  'TChildren t
      -> progress:AnonymousInterface0.t Progress.t
      -> token:CancellationToken.t
      -> unit
      [@@js.call "discoverChildren"]
  end
  [@@js.scope "TestItem"]

  module TestsChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val added : t -> any TestItem.t list [@@js.get "added"]

    val updated : t -> any TestItem.t list [@@js.get "updated"]

    val removed : t -> any TestItem.t list [@@js.get "removed"]
  end
  [@@js.scope "TestsChangeEvent"]

  module TestObserver : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val tests : t -> any TestItem.t list [@@js.get "tests"]

    val on_did_change_test : t -> TestsChangeEvent.t Event.t
      [@@js.get "onDidChangeTest"]

    val on_did_discover_initial_tests : t -> unit Event.t
      [@@js.get "onDidDiscoverInitialTests"]

    val dispose : t -> unit [@@js.call "dispose"]
  end
  [@@js.scope "TestObserver"]

  module TestRunRequest : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    type t_0 = any TestItem.t t

    val t_0_to_js : t_0 -> Ojs.t

    val t_0_of_js : Ojs.t -> t_0

    val tests : 'T t -> 'T list [@@js.get "tests"]

    val set_tests : 'T t -> 'T list -> unit [@@js.set "tests"]

    val exclude : 'T t -> 'T list [@@js.get "exclude"]

    val set_exclude : 'T t -> 'T list -> unit [@@js.set "exclude"]

    val debug : 'T t -> bool [@@js.get "debug"]

    val set_debug : 'T t -> bool -> unit [@@js.set "debug"]
  end
  [@@js.scope "TestRunRequest"]

  module TestResultState : sig
    type t =
      ([ `Unset [@js 0]
       | `Queued [@js 1]
       | `Running [@js 2]
       | `Passed [@js 3]
       | `Failed [@js 4]
       | `Skipped [@js 5]
       | `Errored [@js 6]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TestMessageSeverity : sig
    type t =
      ([ `Error [@js 0]
       | `Warning [@js 1]
       | `Information [@js 2]
       | `Hint [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TestMessage : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val message : t -> MarkdownString.t or_string [@@js.get "message"]

    val set_message : t -> MarkdownString.t or_string -> unit
      [@@js.set "message"]

    val severity : t -> TestMessageSeverity.t [@@js.get "severity"]

    val set_severity : t -> TestMessageSeverity.t -> unit [@@js.set "severity"]

    val expected_output : t -> string [@@js.get "expectedOutput"]

    val set_expected_output : t -> string -> unit [@@js.set "expectedOutput"]

    val actual_output : t -> string [@@js.get "actualOutput"]

    val set_actual_output : t -> string -> unit [@@js.set "actualOutput"]

    val location : t -> Location.t [@@js.get "location"]

    val set_location : t -> Location.t -> unit [@@js.set "location"]

    val diff
      :  message:MarkdownString.t or_string
      -> expected:string
      -> actual:string
      -> t
      [@@js.global "diff"]

    val create : message:MarkdownString.t or_string -> t [@@js.create]
  end
  [@@js.scope "TestMessage"]

  module TestResultSnapshot : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val id : t -> string [@@js.get "id"]

    val uri : t -> Uri.t [@@js.get "uri"]

    val label : t -> string [@@js.get "label"]

    val description : t -> string [@@js.get "description"]

    val range : t -> Range.t [@@js.get "range"]

    val state : t -> TestResultState.t [@@js.get "state"]

    val duration : t -> int [@@js.get "duration"]

    val messages : t -> TestMessage.t list [@@js.get "messages"]

    val children : t -> t Readonly.t list [@@js.get "children"]
  end
  [@@js.scope "TestResultSnapshot"]

  module TestRunResult : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val completed_at : t -> int [@@js.get "completedAt"]

    val set_completed_at : t -> int -> unit [@@js.set "completedAt"]

    val output : t -> string [@@js.get "output"]

    val set_output : t -> string -> unit [@@js.set "output"]

    val results : t -> TestResultSnapshot.t Readonly.t list [@@js.get "results"]

    val set_results : t -> TestResultSnapshot.t Readonly.t list -> unit
      [@@js.set "results"]
  end
  [@@js.scope "TestRunResult"]

  module TestRunOptions : sig
    include module type of struct
      include TestRunRequest
    end

    type t_0 = any TestItem.t t

    val t_0_to_js : t_0 -> Ojs.t

    val t_0_of_js : Ojs.t -> t_0

    val set_state
      :  'T t
      -> test:'T
      -> state:TestResultState.t
      -> ?duration:int
      -> unit
      -> unit
      [@@js.call "setState"]

    val append_message : 'T t -> test:'T -> message:TestMessage.t -> unit
      [@@js.call "appendMessage"]

    val append_output : 'T t -> output:string -> unit [@@js.call "appendOutput"]
  end
  [@@js.scope "TestRunOptions"]

  module TestProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    type t_0 = any TestItem.t t

    val t_0_to_js : t_0 -> Ojs.t

    val t_0_of_js : Ojs.t -> t_0

    val provide_workspace_test_root
      :  'T t
      -> workspace:WorkspaceFolder.t
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "provideWorkspaceTestRoot"]

    val provide_document_test_root
      :  'T t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "provideDocumentTestRoot"]

    val run_tests
      :  'T t
      -> options:'T TestRunOptions.t
      -> token:CancellationToken.t
      -> unit ProviderResult.t
      [@@js.call "runTests"]
  end
  [@@js.scope "TestProvider"]

  module Test : sig
    val register_test_provider : test_provider:'T TestProvider.t -> Disposable.t
      [@@js.global "registerTestProvider"]

    val run_tests
      :  run:'T TestRunRequest.t
      -> ?token:CancellationToken.t
      -> unit
      -> unit Promise.t
      [@@js.global "runTests"]

    val create_workspace_test_observer
      :  workspace_folder:WorkspaceFolder.t
      -> TestObserver.t
      [@@js.global "createWorkspaceTestObserver"]

    val create_document_test_observer
      :  document:TextDocument.t
      -> TestObserver.t
      [@@js.global "createDocumentTestObserver"]

    val publish_test_result
      :  results:TestRunResult.t
      -> ?persist:bool
      -> unit
      -> unit
      [@@js.global "publishTestResult"]

    val test_results : TestRunResult.t list [@@js.global "testResults"]

    val on_did_change_test_results : unit Event.t
      [@@js.global "onDidChangeTestResults"]
  end
  [@@js.scope "test"]

  module ExternalUriOpenerPriority : sig
    type t =
      ([ `None [@js 0]
       | `Option [@js 1]
       | `Default [@js 2]
       | `Preferred [@js 3]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module OpenExternalUriContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val source_uri : t -> Uri.t [@@js.get "sourceUri"]
  end
  [@@js.scope "OpenExternalUriContext"]

  module ExternalUriOpener : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val can_open_external_uri
      :  t
      -> uri:Uri.t
      -> token:CancellationToken.t
      -> ( ( ExternalUriOpenerPriority.t
           , ExternalUriOpenerPriority.t Promise.t )
           union2
         , ([ `Default [@js 2]
            | `None [@js 0]
            | `Option [@js 1]
            | `Preferred [@js 3]
            ]
           [@js.enum]) )
         or_enum
      [@@js.call "canOpenExternalUri"]

    val open_external_uri
      :  t
      -> resolved_uri:Uri.t
      -> ctx:OpenExternalUriContext.t
      -> token:CancellationToken.t
      -> (unit, unit Promise.t) union2
      [@@js.call "openExternalUri"]
  end
  [@@js.scope "ExternalUriOpener"]

  module ExternalUriOpenerMetadata : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val schemes : t -> string list [@@js.get "schemes"]

    val label : t -> string [@@js.get "label"]
  end
  [@@js.scope "ExternalUriOpenerMetadata"]

  module OpenExternalOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val allow_contributed_openers : t -> bool or_string
      [@@js.get "allowContributedOpeners"]
  end
  [@@js.scope "OpenExternalOptions"]

  module Env : sig
    val open_external
      :  target:Uri.t
      -> ?options:OpenExternalOptions.t
      -> unit
      -> bool Promise.t
      [@@js.global "openExternal"]
  end
  [@@js.scope "env"]

  module OpenEditorInfo : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val resource : t -> Uri.t [@@js.get "resource"]

    val set_resource : t -> Uri.t -> unit [@@js.set "resource"]
  end
  [@@js.scope "OpenEditorInfo"]

  module WorkspaceTrustState : sig
    type t =
      ([ `Untrusted [@js 0]
       | `Trusted [@js 1]
       | `Unspecified [@js 2]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WorkspaceTrustStateChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val new_trust_state : t -> WorkspaceTrustState.t [@@js.get "newTrustState"]
  end
  [@@js.scope "WorkspaceTrustStateChangeEvent"]

  module WorkspaceTrustRequestOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val modal : t -> bool [@@js.get "modal"]
  end
  [@@js.scope "WorkspaceTrustRequestOptions"]

  module Webview : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val post_message : t -> message:any -> bool Promise.t
      [@@js.call "postMessage"]
  end
  [@@js.scope "Webview"]

  module PortAutoForwardAction : sig
    type t =
      ([ `Notify [@js 1]
       | `OpenBrowser [@js 2]
       | `OpenPreview [@js 3]
       | `Silent [@js 4]
       | `Ignore [@js 5]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PortAttributes : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val auto_forward_action : t -> PortAutoForwardAction.t
      [@@js.get "autoForwardAction"]

    val set_auto_forward_action : t -> PortAutoForwardAction.t -> unit
      [@@js.set "autoForwardAction"]
  end
  [@@js.scope "PortAttributes"]

  module PortAttributesProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provide_port_attributes
      :  t
      -> port:int
      -> pid:int or_undefined
      -> command_line:string or_undefined
      -> token:CancellationToken.t
      -> PortAttributes.t ProviderResult.t
      [@@js.call "providePortAttributes"]
  end
  [@@js.scope "PortAttributesProvider"]

  module Window : sig
    val create_webview_text_editor_inset
      :  editor:TextEditor.t
      -> line:int
      -> height:int
      -> ?options:WebviewOptions.t
      -> unit
      -> WebviewEditorInset.t
      [@@js.global "createWebviewTextEditorInset"]

    val on_did_write_terminal_data : TerminalDataWriteEvent.t Event.t
      [@@js.global "onDidWriteTerminalData"]

    val on_did_change_terminal_dimensions
      : TerminalDimensionsChangeEvent.t Event.t
      [@@js.global "onDidChangeTerminalDimensions"]

    val create_status_bar_item
      :  ?options:StatusBarItemOptions.t
      -> unit
      -> StatusBarItem.t
      [@@js.global "createStatusBarItem"]

    val visible_notebook_editors : NotebookEditor.t list
      [@@js.global "visibleNotebookEditors"]

    val on_did_change_visible_notebook_editors : NotebookEditor.t list Event.t
      [@@js.global "onDidChangeVisibleNotebookEditors"]

    val active_notebook_editor : NotebookEditor.t or_undefined
      [@@js.global "activeNotebookEditor"]

    val on_did_change_active_notebook_editor
      : NotebookEditor.t or_undefined Event.t
      [@@js.global "onDidChangeActiveNotebookEditor"]

    val on_did_change_notebook_editor_selection
      : NotebookEditorSelectionChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookEditorSelection"]

    val on_did_change_notebook_editor_visible_ranges
      : NotebookEditorVisibleRangesChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookEditorVisibleRanges"]

    val show_notebook_document
      :  uri:Uri.t
      -> ?options:NotebookDocumentShowOptions.t
      -> unit
      -> NotebookEditor.t Promise.t
      [@@js.global "showNotebookDocument"]

    val show_notebook_document
      :  document:NotebookDocument.t
      -> ?options:NotebookDocumentShowOptions.t
      -> unit
      -> NotebookEditor.t Promise.t
      [@@js.global "showNotebookDocument"]

    val register_external_uri_opener
      :  id:string
      -> opener:ExternalUriOpener.t
      -> metadata:ExternalUriOpenerMetadata.t
      -> Disposable.t
      [@@js.global "registerExternalUriOpener"]

    val open_editors : OpenEditorInfo.t list [@@js.global "openEditors"]

    val on_did_change_open_editors : unit Event.t
      [@@js.global "onDidChangeOpenEditors"]
  end
  [@@js.scope "window"]

  module Workspace : sig
    val open_tunnel : tunnel_options:TunnelOptions.t -> Tunnel.t Promise.t
      [@@js.global "openTunnel"]

    val tunnels : TunnelDescription.t list Promise.t [@@js.global "tunnels"]

    val on_did_change_tunnels : unit Event.t [@@js.global "onDidChangeTunnels"]

    val register_remote_authority_resolver
      :  authority_prefix:string
      -> resolver:RemoteAuthorityResolver.t
      -> Disposable.t
      [@@js.global "registerRemoteAuthorityResolver"]

    val register_resource_label_formatter
      :  formatter:ResourceLabelFormatter.t
      -> Disposable.t
      [@@js.global "registerResourceLabelFormatter"]

    val register_file_search_provider
      :  scheme:string
      -> provider:FileSearchProvider.t
      -> Disposable.t
      [@@js.global "registerFileSearchProvider"]

    val register_text_search_provider
      :  scheme:string
      -> provider:TextSearchProvider.t
      -> Disposable.t
      [@@js.global "registerTextSearchProvider"]

    val find_text_in_files
      :  query:TextSearchQuery.t
      -> callback:(result:TextSearchResult.t -> unit)
      -> ?token:CancellationToken.t
      -> unit
      -> TextSearchComplete.t Promise.t
      [@@js.global "findTextInFiles"]

    val find_text_in_files
      :  query:TextSearchQuery.t
      -> options:FindTextInFilesOptions.t
      -> callback:(result:TextSearchResult.t -> unit)
      -> ?token:CancellationToken.t
      -> unit
      -> TextSearchComplete.t Promise.t
      [@@js.global "findTextInFiles"]

    val register_timeline_provider
      :  scheme:string list or_string
      -> provider:TimelineProvider.t
      -> Disposable.t
      [@@js.global "registerTimelineProvider"]

    val trust_state : WorkspaceTrustState.t [@@js.global "trustState"]

    val request_workspace_trust
      :  ?options:WorkspaceTrustRequestOptions.t
      -> unit
      -> WorkspaceTrustState.t or_undefined Promise.t
      [@@js.global "requestWorkspaceTrust"]

    val on_did_change_workspace_trust_state
      : WorkspaceTrustStateChangeEvent.t Event.t
      [@@js.global "onDidChangeWorkspaceTrustState"]

    val register_port_attributes_provider
      :  port_selector:AnonymousInterface10.t
      -> provider:PortAttributesProvider.t
      -> Disposable.t
      [@@js.global "registerPortAttributesProvider"]
  end
  [@@js.scope "workspace"]
end
[@@js.scope "__LIB__VSCODE__IMPORTS.vscode"]

include module type of struct
  include Vscode
end
