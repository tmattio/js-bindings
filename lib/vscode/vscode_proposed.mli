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

    val cellEditable : t -> bool or_null [@@js.get "cellEditable"]

    val set_cellEditable : t -> bool or_null -> unit [@@js.set "cellEditable"]

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

    val cellEditable : t -> bool [@@js.get "cellEditable"]

    val custom : t -> AnonymousInterface16.t [@@js.get "custom"]

    val trusted : t -> bool [@@js.get "trusted"]

    val create
      :  ?editable:bool
      -> ?cellEditable:bool
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

    val transientOutputs : t -> bool [@@js.get "transientOutputs"]

    val set_transientOutputs : t -> bool -> unit [@@js.set "transientOutputs"]

    val transientMetadata
      :  t
      -> (* FIXME: unknown type '{ [K in keyof NotebookCellMetadata]?: boolean
            }' *)
         any
      [@@js.get "transientMetadata"]

    val set_transientMetadata
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

    val isEmpty : t -> bool [@@js.get "isEmpty"]

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

    val breakpointMargin : t -> bool or_null [@@js.get "breakpointMargin"]

    val set_breakpointMargin : t -> bool or_null -> unit
      [@@js.set "breakpointMargin"]

    val statusMessage : t -> string or_null [@@js.get "statusMessage"]

    val set_statusMessage : t -> string or_null -> unit
      [@@js.set "statusMessage"]

    val lastRunDuration : t -> int or_null [@@js.get "lastRunDuration"]

    val set_lastRunDuration : t -> int or_null -> unit
      [@@js.set "lastRunDuration"]

    val inputCollapsed : t -> bool or_null [@@js.get "inputCollapsed"]

    val set_inputCollapsed : t -> bool or_null -> unit
      [@@js.set "inputCollapsed"]

    val outputCollapsed : t -> bool or_null [@@js.get "outputCollapsed"]

    val set_outputCollapsed : t -> bool or_null -> unit
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

    val breakpointMargin : t -> bool [@@js.get "breakpointMargin"]

    val outputCollapsed : t -> bool [@@js.get "outputCollapsed"]

    val inputCollapsed : t -> bool [@@js.get "inputCollapsed"]

    val custom : t -> (string, any) Record.t [@@js.get "custom"]

    val statusMessage : t -> string [@@js.get "statusMessage"]

    val create
      :  ?editable:bool
      -> ?breakpointMargin:bool
      -> ?statusMessage:string
      -> ?lastRunDuration:int
      -> ?inputCollapsed:bool
      -> ?outputCollapsed:bool
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

    val executionOrder : t -> int [@@js.get "executionOrder"]

    val set_executionOrder : t -> int -> unit [@@js.set "executionOrder"]

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

    val latestExecutionSummary
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

    val fileName : t -> string [@@js.get "fileName"]

    val isDirty : t -> bool [@@js.get "isDirty"]

    val isUntitled : t -> bool [@@js.get "isUntitled"]

    val isClosed : t -> bool [@@js.get "isClosed"]

    val metadata : t -> NotebookDocumentMetadata.t [@@js.get "metadata"]

    val viewType : t -> string [@@js.get "viewType"]

    val cellCount : t -> int [@@js.get "cellCount"]

    val cellAt : t -> index:int -> NotebookCell.t [@@js.call "cellAt"]

    val getCells
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

    val isPreferred : t -> bool [@@js.get "isPreferred"]

    val set_isPreferred : t -> bool -> unit [@@js.set "isPreferred"]

    val preloads : t -> Uri.t list [@@js.get "preloads"]

    val set_preloads : t -> Uri.t list -> unit [@@js.set "preloads"]

    val supportedLanguages : t -> string list [@@js.get "supportedLanguages"]

    val set_supportedLanguages : t -> string list -> unit
      [@@js.set "supportedLanguages"]

    val interrupt : t -> document:NotebookDocument.t -> unit
      [@@js.call "interrupt"]

    val executeCellsRequest
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

    val displayName : t -> string [@@js.get "displayName"]

    val set_displayName : t -> string -> unit [@@js.set "displayName"]

    val filenamePattern : t -> NotebookFilenamePattern.t list
      [@@js.get "filenamePattern"]

    val set_filenamePattern : t -> NotebookFilenamePattern.t list -> unit
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

    val portRange : t -> int * int [@@js.get "portRange"]

    val set_portRange : t -> int * int -> unit [@@js.set "portRange"]

    val commandMatcher : t -> regexp [@@js.get "commandMatcher"]

    val set_commandMatcher : t -> regexp -> unit [@@js.set "commandMatcher"]
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

    val viewOptions : t -> AnonymousInterface3.t [@@js.get "viewOptions"]

    val set_viewOptions : t -> AnonymousInterface3.t -> unit
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
    val onDidChangeAuthenticationProviders
      : AuthenticationProvidersChangeEvent.t Event.t
      [@@js.global "onDidChangeAuthenticationProviders"]

    val providers : AuthenticationProviderInformation.t list
      [@@js.global "providers"]

    val logout : providerId:string -> sessionId:string -> unit Promise.t
      [@@js.global "logout"]
  end
  [@@js.scope "authentication"]

  module MessageOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val useCustom : t -> bool [@@js.get "useCustom"]

    val set_useCustom : t -> bool -> unit [@@js.set "useCustom"]
  end
  [@@js.scope "MessageOptions"]

  module RemoteAuthorityResolverContext : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolveAttempt : t -> int [@@js.get "resolveAttempt"]

    val set_resolveAttempt : t -> int -> unit [@@js.set "resolveAttempt"]
  end
  [@@js.scope "RemoteAuthorityResolverContext"]

  module ResolvedAuthority : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val host : t -> string [@@js.get "host"]

    val port : t -> int [@@js.get "port"]

    val connectionToken : t -> string or_undefined [@@js.get "connectionToken"]

    val create : host:string -> port:int -> ?connectionToken:string -> unit -> t
      [@@js.create]
  end
  [@@js.scope "ResolvedAuthority"]

  module ResolvedOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val extensionHostEnv : t -> AnonymousInterface17.t
      [@@js.get "extensionHostEnv"]

    val set_extensionHostEnv : t -> AnonymousInterface17.t -> unit
      [@@js.set "extensionHostEnv"]
  end
  [@@js.scope "ResolvedOptions"]

  module TunnelOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val remoteAddress : t -> AnonymousInterface11.t [@@js.get "remoteAddress"]

    val set_remoteAddress : t -> AnonymousInterface11.t -> unit
      [@@js.set "remoteAddress"]

    val localAddressPort : t -> int [@@js.get "localAddressPort"]

    val set_localAddressPort : t -> int -> unit [@@js.set "localAddressPort"]

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

    val remoteAddress : t -> AnonymousInterface11.t [@@js.get "remoteAddress"]

    val set_remoteAddress : t -> AnonymousInterface11.t -> unit
      [@@js.set "remoteAddress"]

    val localAddress : t -> AnonymousInterface11.t or_string
      [@@js.get "localAddress"]

    val set_localAddress : t -> AnonymousInterface11.t or_string -> unit
      [@@js.set "localAddress"]

    val public : t -> bool [@@js.get "public"]

    val set_public : t -> bool -> unit [@@js.set "public"]
  end
  [@@js.scope "TunnelDescription"]

  module Tunnel : sig
    include module type of struct
      include TunnelDescription
    end

    val onDidDispose : t -> unit Event.t [@@js.get "onDidDispose"]

    val set_onDidDispose : t -> unit Event.t -> unit [@@js.set "onDidDispose"]

    val dispose : t -> (unit, unit Promise.t) union2 [@@js.call "dispose"]
  end
  [@@js.scope "Tunnel"]

  module TunnelInformation : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val environmentTunnels : t -> TunnelDescription.t list
      [@@js.get "environmentTunnels"]

    val set_environmentTunnels : t -> TunnelDescription.t list -> unit
      [@@js.set "environmentTunnels"]
  end
  [@@js.scope "TunnelInformation"]

  module TunnelCreationOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val elevationRequired : t -> bool [@@js.get "elevationRequired"]

    val set_elevationRequired : t -> bool -> unit [@@js.set "elevationRequired"]
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

    val notAvailable : ?message:string -> ?handled:bool -> unit -> t
      [@@js.global "NotAvailable"]

    val temporarilyNotAvailable : ?message:string -> unit -> t
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

    val tunnelFactory
      :  t
      -> tunnelOptions:TunnelOptions.t
      -> tunnelCreationOptions:TunnelCreationOptions.t
      -> Tunnel.t Promise.t or_undefined
      [@@js.call "tunnelFactory"]

    val showCandidatePort
      :  t
      -> host:string
      -> port:int
      -> detail:string
      -> bool Promise.t
      [@@js.call "showCandidatePort"]

    val tunnelFeatures : t -> AnonymousInterface7.t [@@js.get "tunnelFeatures"]

    val set_tunnelFeatures : t -> AnonymousInterface7.t -> unit
      [@@js.set "tunnelFeatures"]

    val candidatePortSource : t -> CandidatePortSource.t
      [@@js.get "candidatePortSource"]

    val set_candidatePortSource : t -> CandidatePortSource.t -> unit
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

    val normalizeDriveLetter : t -> bool [@@js.get "normalizeDriveLetter"]

    val set_normalizeDriveLetter : t -> bool -> unit
      [@@js.set "normalizeDriveLetter"]

    val workspaceSuffix : t -> string [@@js.get "workspaceSuffix"]

    val set_workspaceSuffix : t -> string -> unit [@@js.set "workspaceSuffix"]

    val authorityPrefix : t -> string [@@js.get "authorityPrefix"]

    val set_authorityPrefix : t -> string -> unit [@@js.set "authorityPrefix"]

    val stripPathStartingSeparator : t -> bool
      [@@js.get "stripPathStartingSeparator"]

    val set_stripPathStartingSeparator : t -> bool -> unit
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

    val isMultiline : t -> bool [@@js.get "isMultiline"]

    val set_isMultiline : t -> bool -> unit [@@js.set "isMultiline"]

    val isRegExp : t -> bool [@@js.get "isRegExp"]

    val set_isRegExp : t -> bool -> unit [@@js.set "isRegExp"]

    val isCaseSensitive : t -> bool [@@js.get "isCaseSensitive"]

    val set_isCaseSensitive : t -> bool -> unit [@@js.set "isCaseSensitive"]

    val isWordMatch : t -> bool [@@js.get "isWordMatch"]

    val set_isWordMatch : t -> bool -> unit [@@js.set "isWordMatch"]
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

    val useIgnoreFiles : t -> bool [@@js.get "useIgnoreFiles"]

    val set_useIgnoreFiles : t -> bool -> unit [@@js.set "useIgnoreFiles"]

    val followSymlinks : t -> bool [@@js.get "followSymlinks"]

    val set_followSymlinks : t -> bool -> unit [@@js.set "followSymlinks"]

    val useGlobalIgnoreFiles : t -> bool [@@js.get "useGlobalIgnoreFiles"]

    val set_useGlobalIgnoreFiles : t -> bool -> unit
      [@@js.set "useGlobalIgnoreFiles"]
  end
  [@@js.scope "SearchOptions"]

  module TextSearchPreviewOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val matchLines : t -> int [@@js.get "matchLines"]

    val set_matchLines : t -> int -> unit [@@js.set "matchLines"]

    val charsPerLine : t -> int [@@js.get "charsPerLine"]

    val set_charsPerLine : t -> int -> unit [@@js.set "charsPerLine"]
  end
  [@@js.scope "TextSearchPreviewOptions"]

  module TextSearchOptions : sig
    include module type of struct
      include SearchOptions
    end

    val maxResults : t -> int [@@js.get "maxResults"]

    val set_maxResults : t -> int -> unit [@@js.set "maxResults"]

    val previewOptions : t -> TextSearchPreviewOptions.t
      [@@js.get "previewOptions"]

    val set_previewOptions : t -> TextSearchPreviewOptions.t -> unit
      [@@js.set "previewOptions"]

    val maxFileSize : t -> int [@@js.get "maxFileSize"]

    val set_maxFileSize : t -> int -> unit [@@js.set "maxFileSize"]

    val encoding : t -> string [@@js.get "encoding"]

    val set_encoding : t -> string -> unit [@@js.set "encoding"]

    val beforeContext : t -> int [@@js.get "beforeContext"]

    val set_beforeContext : t -> int -> unit [@@js.set "beforeContext"]

    val afterContext : t -> int [@@js.get "afterContext"]

    val set_afterContext : t -> int -> unit [@@js.set "afterContext"]
  end
  [@@js.scope "TextSearchOptions"]

  module TextSearchComplete : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val limitHit : t -> bool [@@js.get "limitHit"]

    val set_limitHit : t -> bool -> unit [@@js.set "limitHit"]
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

    val lineNumber : t -> int [@@js.get "lineNumber"]

    val set_lineNumber : t -> int -> unit [@@js.set "lineNumber"]
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

    val provideTextSearchResults
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

    val maxResults : t -> int [@@js.get "maxResults"]

    val set_maxResults : t -> int -> unit [@@js.set "maxResults"]

    val session : t -> CancellationToken.t [@@js.get "session"]

    val set_session : t -> CancellationToken.t -> unit [@@js.set "session"]
  end
  [@@js.scope "FileSearchOptions"]

  module FileSearchProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val provideFileSearchResults
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

    val onDidDispose : t -> unit Event.t [@@js.get "onDidDispose"]

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

    val useDefaultExcludes : t -> bool [@@js.get "useDefaultExcludes"]

    val set_useDefaultExcludes : t -> bool -> unit
      [@@js.set "useDefaultExcludes"]

    val maxResults : t -> int [@@js.get "maxResults"]

    val set_maxResults : t -> int -> unit [@@js.set "maxResults"]

    val useIgnoreFiles : t -> bool [@@js.get "useIgnoreFiles"]

    val set_useIgnoreFiles : t -> bool -> unit [@@js.set "useIgnoreFiles"]

    val useGlobalIgnoreFiles : t -> bool [@@js.get "useGlobalIgnoreFiles"]

    val set_useGlobalIgnoreFiles : t -> bool -> unit
      [@@js.set "useGlobalIgnoreFiles"]

    val followSymlinks : t -> bool [@@js.get "followSymlinks"]

    val set_followSymlinks : t -> bool -> unit [@@js.set "followSymlinks"]

    val encoding : t -> string [@@js.get "encoding"]

    val set_encoding : t -> string -> unit [@@js.set "encoding"]

    val previewOptions : t -> TextSearchPreviewOptions.t
      [@@js.get "previewOptions"]

    val set_previewOptions : t -> TextSearchPreviewOptions.t -> unit
      [@@js.set "previewOptions"]

    val beforeContext : t -> int [@@js.get "beforeContext"]

    val set_beforeContext : t -> int -> unit [@@js.set "beforeContext"]

    val afterContext : t -> int [@@js.get "afterContext"]

    val set_afterContext : t -> int -> unit [@@js.set "afterContext"]
  end
  [@@js.scope "FindTextInFilesOptions"]

  module LineChange : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val originalStartLineNumber : t -> int [@@js.get "originalStartLineNumber"]

    val originalEndLineNumber : t -> int [@@js.get "originalEndLineNumber"]

    val modifiedStartLineNumber : t -> int [@@js.get "modifiedStartLineNumber"]

    val modifiedEndLineNumber : t -> int [@@js.get "modifiedEndLineNumber"]
  end
  [@@js.scope "LineChange"]

  module Commands : sig
    val registerDiffInformationCommand
      :  command:string
      -> callback:
           (diff:LineChange.t list -> args:(any list[@js.variadic]) -> any)
      -> ?thisArg:any
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

    val showValidationMessage
      :  t
      -> message:string
      -> type_:SourceControlInputBoxValidationType.t
      -> unit
      [@@js.call "showValidationMessage"]

    val validateInput
      :  t
      -> value:string
      -> cursorPosition:int
      -> SourceControlInputBoxValidation.t ProviderResult.t
      [@@js.call "validateInput"]
  end
  [@@js.scope "SourceControlInputBox"]

  module SourceControl : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val selected : t -> bool [@@js.get "selected"]

    val onDidChangeSelection : t -> bool Event.t
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

    type 'T t = Disposable.t

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

    val accessibilityInformation : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibilityInformation : t -> AccessibilityInformation.t -> unit
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

    val moveCustomTextEditor
      :  t
      -> newDocument:TextDocument.t
      -> existingWebviewPanel:WebviewPanel.t
      -> token:CancellationToken.t
      -> unit Promise.t
      [@@js.call "moveCustomTextEditor"]
  end
  [@@js.scope "CustomTextEditorProvider"]

  module QuickPick : sig
    include module type of struct
      include QuickInput
    end

    type 'T t = QuickInput.t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val sortByLabel : 'T t -> bool [@@js.get "sortByLabel"]

    val set_sortByLabel : 'T t -> bool -> unit [@@js.set "sortByLabel"]
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

    val latestExecutionSummary : t -> NotebookCellExecutionSummary.t
      [@@js.get "latestExecutionSummary"]

    val set_latestExecutionSummary : t -> NotebookCellExecutionSummary.t -> unit
      [@@js.set "latestExecutionSummary"]

    val create
      :  kind:NotebookCellKind.t
      -> source:string
      -> language:string
      -> ?outputs:NotebookCellOutput.t list
      -> ?metadata:NotebookCellMetadata.t
      -> ?latestExecutionSummary:NotebookCellExecutionSummary.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "NotebookCellData"]

  module NotebookEditorEdit : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val replaceMetadata : t -> value:NotebookDocumentMetadata.t -> unit
      [@@js.call "replaceMetadata"]

    val replaceCells
      :  t
      -> start:int
      -> end_:int
      -> cells:NotebookCellData.t list
      -> unit
      [@@js.call "replaceCells"]

    val replaceCellOutput
      :  t
      -> index:int
      -> outputs:NotebookCellOutput.t list
      -> unit
      [@@js.call "replaceCellOutput"]

    val replaceCellMetadata
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

    val setDecorations
      :  t
      -> decorationType:NotebookEditorDecorationType.t
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

    val visibleRanges : t -> NotebookCellRange.t list [@@js.get "visibleRanges"]

    val revealRange
      :  t
      -> range:NotebookCellRange.t
      -> ?revealType:NotebookEditorRevealType.t
      -> unit
      -> unit
      [@@js.call "revealRange"]

    val viewColumn : t -> ViewColumn.t [@@js.get "viewColumn"]
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

    val deletedCount : t -> int [@@js.get "deletedCount"]

    val deletedItems : t -> NotebookCell.t list [@@js.get "deletedItems"]

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

    val notebookEditor : t -> NotebookEditor.t [@@js.get "notebookEditor"]

    val selections : t -> NotebookCellRange.t list [@@js.get "selections"]
  end
  [@@js.scope "NotebookEditorSelectionChangeEvent"]

  module NotebookEditorVisibleRangesChangeEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val notebookEditor : t -> NotebookEditor.t [@@js.get "notebookEditor"]

    val visibleRanges : t -> NotebookCellRange.t list [@@js.get "visibleRanges"]
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

    val executionState : t -> NotebookCellExecutionState.t
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

    val editorId : t -> string [@@js.get "editorId"]

    val onDidReceiveMessage : t -> any Event.t [@@js.get "onDidReceiveMessage"]

    val postMessage : t -> message:any -> bool Promise.t
      [@@js.call "postMessage"]

    val asWebviewUri : t -> localResource:Uri.t -> Uri.t
      [@@js.call "asWebviewUri"]
  end
  [@@js.scope "NotebookCommunication"]

  module NotebookDocumentShowOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val viewColumn : t -> ViewColumn.t [@@js.get "viewColumn"]

    val set_viewColumn : t -> ViewColumn.t -> unit [@@js.set "viewColumn"]

    val preserveFocus : t -> bool [@@js.get "preserveFocus"]

    val set_preserveFocus : t -> bool -> unit [@@js.set "preserveFocus"]

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

    val dataToNotebook
      :  t
      -> data:Uint8Array.t
      -> (NotebookData.t, NotebookData.t Promise.t) union2
      [@@js.call "dataToNotebook"]

    val notebookToData
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

    val viewType : t -> string [@@js.get "viewType"]

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

    val startTime : t -> int [@@js.get "startTime"]

    val set_startTime : t -> int -> unit [@@js.set "startTime"]
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

    val executionOrder : t -> int or_undefined [@@js.get "executionOrder"]

    val set_executionOrder : t -> int or_undefined -> unit
      [@@js.set "executionOrder"]

    val end_ : t -> ?result:NotebookCellExecuteEndContext.t -> unit -> unit
      [@@js.call "end"]

    val token : t -> CancellationToken.t [@@js.get "token"]

    val clearOutput : t -> ?cellIndex:int -> unit -> unit Promise.t
      [@@js.call "clearOutput"]

    val appendOutput
      :  t
      -> out:(NotebookCellOutput.t, NotebookCellOutput.t) or_array
      -> ?cellIndex:int
      -> unit
      -> unit Promise.t
      [@@js.call "appendOutput"]

    val replaceOutput
      :  t
      -> out:(NotebookCellOutput.t, NotebookCellOutput.t) or_array
      -> ?cellIndex:int
      -> unit
      -> unit Promise.t
      [@@js.call "replaceOutput"]

    val appendOutputItems
      :  t
      -> items:(NotebookCellOutputItem.t, NotebookCellOutputItem.t) or_array
      -> outputId:string
      -> unit Promise.t
      [@@js.call "appendOutputItems"]

    val replaceOutputItems
      :  t
      -> items:(NotebookCellOutputItem.t, NotebookCellOutputItem.t) or_array
      -> outputId:string
      -> unit Promise.t
      [@@js.call "replaceOutputItems"]
  end
  [@@js.scope "NotebookCellExecutionTask"]

  module NotebookDecorationRenderOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val backgroundColor : t -> ThemeColor.t or_string
      [@@js.get "backgroundColor"]

    val set_backgroundColor : t -> ThemeColor.t or_string -> unit
      [@@js.set "backgroundColor"]

    val borderColor : t -> ThemeColor.t or_string [@@js.get "borderColor"]

    val set_borderColor : t -> ThemeColor.t or_string -> unit
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

    val supportedLanguages : t -> string list [@@js.get "supportedLanguages"]

    val set_supportedLanguages : t -> string list -> unit
      [@@js.set "supportedLanguages"]

    val hasExecutionOrder : t -> bool [@@js.get "hasExecutionOrder"]

    val set_hasExecutionOrder : t -> bool -> unit [@@js.set "hasExecutionOrder"]

    val executeHandler
      :  t
      -> executions:NotebookCellExecutionTask.t list
      -> unit
      [@@js.call "executeHandler"]

    val interruptHandler : t -> notebook:NotebookDocument.t -> unit
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

    val supportedLanguages : t -> string list [@@js.get "supportedLanguages"]

    val set_supportedLanguages : t -> string list -> unit
      [@@js.set "supportedLanguages"]

    val hasExecutionOrder : t -> bool [@@js.get "hasExecutionOrder"]

    val set_hasExecutionOrder : t -> bool -> unit [@@js.set "hasExecutionOrder"]

    val executeHandler
      :  t
      -> executions:NotebookCellExecutionTask.t list
      -> unit
      [@@js.call "executeHandler"]

    val interruptHandler : t -> notebook:NotebookDocument.t -> unit
      [@@js.call "interruptHandler"]

    val dispose : t -> unit [@@js.call "dispose"]

    val createNotebookCellExecutionTask
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

    val backupId : t -> string [@@js.get "backupId"]

    val untitledDocumentData : t -> Uint8Array.t
      [@@js.get "untitledDocumentData"]
  end
  [@@js.scope "NotebookDocumentOpenContext"]

  module NotebookContentProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val options : t -> NotebookDocumentContentOptions.t [@@js.get "options"]

    val onDidChangeNotebookContentOptions
      :  t
      -> NotebookDocumentContentOptions.t Event.t
      [@@js.get "onDidChangeNotebookContentOptions"]

    val openNotebook
      :  t
      -> uri:Uri.t
      -> openContext:NotebookDocumentOpenContext.t
      -> token:CancellationToken.t
      -> (NotebookData.t, NotebookData.t Promise.t) union2
      [@@js.call "openNotebook"]

    val saveNotebook
      :  t
      -> document:NotebookDocument.t
      -> token:CancellationToken.t
      -> unit Promise.t
      [@@js.call "saveNotebook"]

    val saveNotebookAs
      :  t
      -> targetResource:Uri.t
      -> document:NotebookDocument.t
      -> token:CancellationToken.t
      -> unit Promise.t
      [@@js.call "saveNotebookAs"]

    val backupNotebook
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

    val viewType : t -> string list or_string [@@js.get "viewType"]

    val set_viewType : t -> string list or_string -> unit [@@js.set "viewType"]

    val filenamePattern : t -> NotebookFilenamePattern.t
      [@@js.get "filenamePattern"]

    val set_filenamePattern : t -> NotebookFilenamePattern.t -> unit
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

    val onDidChangeKernels : 'T t -> NotebookDocument.t or_undefined Event.t
      [@@js.get "onDidChangeKernels"]

    val set_onDidChangeKernels
      :  'T t
      -> NotebookDocument.t or_undefined Event.t
      -> unit
      [@@js.set "onDidChangeKernels"]

    val provideKernels
      :  'T t
      -> document:NotebookDocument.t
      -> token:CancellationToken.t
      -> 'T list ProviderResult.t
      [@@js.call "provideKernels"]

    val resolveKernel
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

    val accessibilityInformation : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibilityInformation : t -> AccessibilityInformation.t -> unit
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

    val isClosed : t -> bool [@@js.get "isClosed"]

    val set_isClosed : t -> bool -> unit [@@js.set "isClosed"]

    val dispose : t -> unit [@@js.call "dispose"]

    val onDidChange : t -> unit Event.t [@@js.get "onDidChange"]

    val set_onDidChange : t -> unit Event.t -> unit [@@js.set "onDidChange"]

    val version : t -> int [@@js.get "version"]

    val set_version : t -> int -> unit [@@js.set "version"]

    val getText : t -> string [@@js.call "getText"]

    val getText' : t -> range:Range.t -> string [@@js.call "getText"]

    val offsetAt : t -> position:Position.t -> int [@@js.call "offsetAt"]

    val positionAt : t -> offset:int -> Position.t [@@js.call "positionAt"]

    val validateRange : t -> range:Range.t -> Range.t
      [@@js.call "validateRange"]

    val validatePosition : t -> position:Position.t -> Position.t
      [@@js.call "validatePosition"]

    val locationAt
      :  t
      -> positionOrRange:(Position.t, Range.t) union2
      -> Location.t
      [@@js.call "locationAt"]

    val positionAt' : t -> location:Location.t -> Position.t
      [@@js.call "positionAt"]

    val contains : t -> uri:Uri.t -> bool [@@js.call "contains"]
  end
  [@@js.scope "NotebookConcatTextDocument"]

  module Notebook : sig
    val openNotebookDocument : uri:Uri.t -> NotebookDocument.t Promise.t
      [@@js.global "openNotebookDocument"]

    val onDidOpenNotebookDocument : NotebookDocument.t Event.t
      [@@js.global "onDidOpenNotebookDocument"]

    val onDidCloseNotebookDocument : NotebookDocument.t Event.t
      [@@js.global "onDidCloseNotebookDocument"]

    val onDidSaveNotebookDocument : NotebookDocument.t Event.t
      [@@js.global "onDidSaveNotebookDocument"]

    val notebookDocuments : NotebookDocument.t list
      [@@js.global "notebookDocuments"]

    val onDidChangeNotebookDocumentMetadata
      : NotebookDocumentMetadataChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookDocumentMetadata"]

    val onDidChangeNotebookCells : NotebookCellsChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookCells"]

    val onDidChangeCellOutputs : NotebookCellOutputsChangeEvent.t Event.t
      [@@js.global "onDidChangeCellOutputs"]

    val onDidChangeCellMetadata : NotebookCellMetadataChangeEvent.t Event.t
      [@@js.global "onDidChangeCellMetadata"]

    val registerNotebookSerializer
      :  notebookType:string
      -> provider:NotebookSerializer.t
      -> ?options:NotebookDocumentContentOptions.t
      -> unit
      -> Disposable.t
      [@@js.global "registerNotebookSerializer"]

    val createNotebookKernel
      :  options:NotebookKernelOptions.t
      -> NotebookKernel2.t
      [@@js.global "createNotebookKernel"]

    val registerNotebookContentProvider
      :  notebookType:string
      -> provider:NotebookContentProvider.t
      -> ?options:
           ( NotebookDocumentContentOptions.t
           , AnonymousInterface15.t )
           intersection2
      -> unit
      -> Disposable.t
      [@@js.global "registerNotebookContentProvider"]

    val createNotebookCellExecutionTask
      :  uri:Uri.t
      -> index:int
      -> kernelId:string
      -> NotebookCellExecutionTask.t or_undefined
      [@@js.global "createNotebookCellExecutionTask"]

    val onDidChangeCellExecutionState
      : NotebookCellExecutionStateChangeEvent.t Event.t
      [@@js.global "onDidChangeCellExecutionState"]

    val onDidChangeActiveNotebookKernel : AnonymousInterface4.t Event.t
      [@@js.global "onDidChangeActiveNotebookKernel"]

    val registerNotebookKernelProvider
      :  selector:NotebookDocumentFilter.t
      -> provider:NotebookKernel.t NotebookKernelProvider.t
      -> Disposable.t
      [@@js.global "registerNotebookKernelProvider"]

    val createNotebookEditorDecorationType
      :  options:NotebookDecorationRenderOptions.t
      -> NotebookEditorDecorationType.t
      [@@js.global "createNotebookEditorDecorationType"]

    val createCellStatusBarItem
      :  cell:NotebookCell.t
      -> ?alignment:NotebookCellStatusBarAlignment.t
      -> ?priority:int
      -> unit
      -> NotebookCellStatusBarItem.t
      [@@js.global "createCellStatusBarItem"]

    val createConcatTextDocument
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

    val replaceNotebookMetadata
      :  t
      -> uri:Uri.t
      -> value:NotebookDocumentMetadata.t
      -> unit
      [@@js.call "replaceNotebookMetadata"]

    val replaceNotebookCells
      :  t
      -> uri:Uri.t
      -> start:int
      -> end_:int
      -> cells:NotebookCellData.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCells"]

    val replaceNotebookCellMetadata
      :  t
      -> uri:Uri.t
      -> index:int
      -> cellMetadata:NotebookCellMetadata.t
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCellMetadata"]

    val replaceNotebookCellOutput
      :  t
      -> uri:Uri.t
      -> index:int
      -> outputs:NotebookCellOutput.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCellOutput"]

    val appendNotebookCellOutput
      :  t
      -> uri:Uri.t
      -> index:int
      -> outputs:NotebookCellOutput.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "appendNotebookCellOutput"]

    val replaceNotebookCellOutputItems
      :  t
      -> uri:Uri.t
      -> index:int
      -> outputId:string
      -> items:NotebookCellOutputItem.t list
      -> ?metadata:WorkspaceEditEntryMetadata.t
      -> unit
      -> unit
      [@@js.call "replaceNotebookCellOutputItems"]

    val appendNotebookCellOutputItems
      :  t
      -> uri:Uri.t
      -> index:int
      -> outputId:string
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

    val iconPath : t -> (ThemeIcon.t, Uri.t, AnonymousInterface9.t) union3
      [@@js.get "iconPath"]

    val set_iconPath
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

    val contextValue : t -> string [@@js.get "contextValue"]

    val set_contextValue : t -> string -> unit [@@js.set "contextValue"]

    val accessibilityInformation : t -> AccessibilityInformation.t
      [@@js.get "accessibilityInformation"]

    val set_accessibilityInformation : t -> AccessibilityInformation.t -> unit
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

    val onDidChange : t -> TimelineChangeEvent.t or_undefined Event.t
      [@@js.get "onDidChange"]

    val set_onDidChange
      :  t
      -> TimelineChangeEvent.t or_undefined Event.t
      -> unit
      [@@js.set "onDidChange"]

    val id : t -> string [@@js.get "id"]

    val label : t -> string [@@js.get "label"]

    val provideTimeline
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

    val whitespaceBefore : t -> bool [@@js.get "whitespaceBefore"]

    val set_whitespaceBefore : t -> bool -> unit [@@js.set "whitespaceBefore"]

    val whitespaceAfter : t -> bool [@@js.get "whitespaceAfter"]

    val set_whitespaceAfter : t -> bool -> unit [@@js.set "whitespaceAfter"]

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

    val onDidChangeInlineHints : t -> unit Event.t
      [@@js.get "onDidChangeInlineHints"]

    val set_onDidChangeInlineHints : t -> unit Event.t -> unit
      [@@js.set "onDidChangeInlineHints"]

    val provideInlineHints
      :  t
      -> model:TextDocument.t
      -> range:Range.t
      -> token:CancellationToken.t
      -> InlineHint.t list ProviderResult.t
      [@@js.call "provideInlineHints"]
  end
  [@@js.scope "InlineHintsProvider"]

  module Languages : sig
    val getTokenInformationAtPosition
      :  document:TextDocument.t
      -> position:Position.t
      -> TokenInformation.t Promise.t
      [@@js.global "getTokenInformationAtPosition"]

    val registerInlineHintsProvider
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

    val extensionRuntime : t -> ExtensionRuntime.t [@@js.get "extensionRuntime"]
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

    val discoverChildren
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

    val onDidChangeTest : t -> TestsChangeEvent.t Event.t
      [@@js.get "onDidChangeTest"]

    val onDidDiscoverInitialTests : t -> unit Event.t
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

    val expectedOutput : t -> string [@@js.get "expectedOutput"]

    val set_expectedOutput : t -> string -> unit [@@js.set "expectedOutput"]

    val actualOutput : t -> string [@@js.get "actualOutput"]

    val set_actualOutput : t -> string -> unit [@@js.set "actualOutput"]

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

    val completedAt : t -> int [@@js.get "completedAt"]

    val set_completedAt : t -> int -> unit [@@js.set "completedAt"]

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

    val setState
      :  'T t
      -> test:'T
      -> state:TestResultState.t
      -> ?duration:int
      -> unit
      -> unit
      [@@js.call "setState"]

    val appendMessage : 'T t -> test:'T -> message:TestMessage.t -> unit
      [@@js.call "appendMessage"]

    val appendOutput : 'T t -> output:string -> unit [@@js.call "appendOutput"]
  end
  [@@js.scope "TestRunOptions"]

  module TestProvider : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    type t_0 = any TestItem.t t

    val t_0_to_js : t_0 -> Ojs.t

    val t_0_of_js : Ojs.t -> t_0

    val provideWorkspaceTestRoot
      :  'T t
      -> workspace:WorkspaceFolder.t
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "provideWorkspaceTestRoot"]

    val provideDocumentTestRoot
      :  'T t
      -> document:TextDocument.t
      -> token:CancellationToken.t
      -> 'T ProviderResult.t
      [@@js.call "provideDocumentTestRoot"]

    val runTests
      :  'T t
      -> options:'T TestRunOptions.t
      -> token:CancellationToken.t
      -> unit ProviderResult.t
      [@@js.call "runTests"]
  end
  [@@js.scope "TestProvider"]

  module Test : sig
    val registerTestProvider : testProvider:'T TestProvider.t -> Disposable.t
      [@@js.global "registerTestProvider"]

    val runTests
      :  run:'T TestRunRequest.t
      -> ?token:CancellationToken.t
      -> unit
      -> unit Promise.t
      [@@js.global "runTests"]

    val createWorkspaceTestObserver
      :  workspaceFolder:WorkspaceFolder.t
      -> TestObserver.t
      [@@js.global "createWorkspaceTestObserver"]

    val createDocumentTestObserver : document:TextDocument.t -> TestObserver.t
      [@@js.global "createDocumentTestObserver"]

    val publishTestResult
      :  results:TestRunResult.t
      -> ?persist:bool
      -> unit
      -> unit
      [@@js.global "publishTestResult"]

    val testResults : TestRunResult.t list [@@js.global "testResults"]

    val onDidChangeTestResults : unit Event.t
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

    val sourceUri : t -> Uri.t [@@js.get "sourceUri"]
  end
  [@@js.scope "OpenExternalUriContext"]

  module ExternalUriOpener : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val canOpenExternalUri
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

    val openExternalUri
      :  t
      -> resolvedUri:Uri.t
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

    val allowContributedOpeners : t -> bool or_string
      [@@js.get "allowContributedOpeners"]
  end
  [@@js.scope "OpenExternalOptions"]

  module Env : sig
    val openExternal
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

    val newTrustState : t -> WorkspaceTrustState.t [@@js.get "newTrustState"]
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

    val postMessage : t -> message:any -> bool Promise.t
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

    val autoForwardAction : t -> PortAutoForwardAction.t
      [@@js.get "autoForwardAction"]

    val set_autoForwardAction : t -> PortAutoForwardAction.t -> unit
      [@@js.set "autoForwardAction"]
  end
  [@@js.scope "PortAttributes"]

  module PortAttributesProvider : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val providePortAttributes
      :  t
      -> port:int
      -> pid:int or_undefined
      -> commandLine:string or_undefined
      -> token:CancellationToken.t
      -> PortAttributes.t ProviderResult.t
      [@@js.call "providePortAttributes"]
  end
  [@@js.scope "PortAttributesProvider"]

  module Window : sig
    val createWebviewTextEditorInset
      :  editor:TextEditor.t
      -> line:int
      -> height:int
      -> ?options:WebviewOptions.t
      -> unit
      -> WebviewEditorInset.t
      [@@js.global "createWebviewTextEditorInset"]

    val onDidWriteTerminalData : TerminalDataWriteEvent.t Event.t
      [@@js.global "onDidWriteTerminalData"]

    val onDidChangeTerminalDimensions : TerminalDimensionsChangeEvent.t Event.t
      [@@js.global "onDidChangeTerminalDimensions"]

    val createStatusBarItem
      :  ?options:StatusBarItemOptions.t
      -> unit
      -> StatusBarItem.t
      [@@js.global "createStatusBarItem"]

    val visibleNotebookEditors : NotebookEditor.t list
      [@@js.global "visibleNotebookEditors"]

    val onDidChangeVisibleNotebookEditors : NotebookEditor.t list Event.t
      [@@js.global "onDidChangeVisibleNotebookEditors"]

    val activeNotebookEditor : NotebookEditor.t or_undefined
      [@@js.global "activeNotebookEditor"]

    val onDidChangeActiveNotebookEditor : NotebookEditor.t or_undefined Event.t
      [@@js.global "onDidChangeActiveNotebookEditor"]

    val onDidChangeNotebookEditorSelection
      : NotebookEditorSelectionChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookEditorSelection"]

    val onDidChangeNotebookEditorVisibleRanges
      : NotebookEditorVisibleRangesChangeEvent.t Event.t
      [@@js.global "onDidChangeNotebookEditorVisibleRanges"]

    val showNotebookDocument
      :  uri:Uri.t
      -> ?options:NotebookDocumentShowOptions.t
      -> unit
      -> NotebookEditor.t Promise.t
      [@@js.global "showNotebookDocument"]

    val showNotebookDocument
      :  document:NotebookDocument.t
      -> ?options:NotebookDocumentShowOptions.t
      -> unit
      -> NotebookEditor.t Promise.t
      [@@js.global "showNotebookDocument"]

    val registerExternalUriOpener
      :  id:string
      -> opener:ExternalUriOpener.t
      -> metadata:ExternalUriOpenerMetadata.t
      -> Disposable.t
      [@@js.global "registerExternalUriOpener"]

    val openEditors : OpenEditorInfo.t list [@@js.global "openEditors"]

    val onDidChangeOpenEditors : unit Event.t
      [@@js.global "onDidChangeOpenEditors"]
  end
  [@@js.scope "window"]

  module Workspace : sig
    val openTunnel : tunnelOptions:TunnelOptions.t -> Tunnel.t Promise.t
      [@@js.global "openTunnel"]

    val tunnels : TunnelDescription.t list Promise.t [@@js.global "tunnels"]

    val onDidChangeTunnels : unit Event.t [@@js.global "onDidChangeTunnels"]

    val registerRemoteAuthorityResolver
      :  authorityPrefix:string
      -> resolver:RemoteAuthorityResolver.t
      -> Disposable.t
      [@@js.global "registerRemoteAuthorityResolver"]

    val registerResourceLabelFormatter
      :  formatter:ResourceLabelFormatter.t
      -> Disposable.t
      [@@js.global "registerResourceLabelFormatter"]

    val registerFileSearchProvider
      :  scheme:string
      -> provider:FileSearchProvider.t
      -> Disposable.t
      [@@js.global "registerFileSearchProvider"]

    val registerTextSearchProvider
      :  scheme:string
      -> provider:TextSearchProvider.t
      -> Disposable.t
      [@@js.global "registerTextSearchProvider"]

    val findTextInFiles
      :  query:TextSearchQuery.t
      -> callback:(result:TextSearchResult.t -> unit)
      -> ?token:CancellationToken.t
      -> unit
      -> TextSearchComplete.t Promise.t
      [@@js.global "findTextInFiles"]

    val findTextInFiles
      :  query:TextSearchQuery.t
      -> options:FindTextInFilesOptions.t
      -> callback:(result:TextSearchResult.t -> unit)
      -> ?token:CancellationToken.t
      -> unit
      -> TextSearchComplete.t Promise.t
      [@@js.global "findTextInFiles"]

    val registerTimelineProvider
      :  scheme:string list or_string
      -> provider:TimelineProvider.t
      -> Disposable.t
      [@@js.global "registerTimelineProvider"]

    val trustState : WorkspaceTrustState.t [@@js.global "trustState"]

    val requestWorkspaceTrust
      :  ?options:WorkspaceTrustRequestOptions.t
      -> unit
      -> WorkspaceTrustState.t or_undefined Promise.t
      [@@js.global "requestWorkspaceTrust"]

    val onDidChangeWorkspaceTrustState
      : WorkspaceTrustStateChangeEvent.t Event.t
      [@@js.global "onDidChangeWorkspaceTrustState"]

    val registerPortAttributesProvider
      :  portSelector:AnonymousInterface10.t
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
