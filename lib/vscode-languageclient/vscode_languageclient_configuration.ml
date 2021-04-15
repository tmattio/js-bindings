[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type _ConfigurationFeature = [ `ConfigurationFeature ] intf
        and _ConfigurationWorkspaceMiddleware =
          [ `ConfigurationWorkspaceMiddleware ] intf
        let rec _ConfigurationFeature_of_js : Ojs.t -> _ConfigurationFeature
          = Obj.magic
        and _ConfigurationFeature_to_js : _ConfigurationFeature -> Ojs.t =
          Obj.magic
        and _ConfigurationWorkspaceMiddleware_of_js :
          Ojs.t -> _ConfigurationWorkspaceMiddleware = Obj.magic
        and _ConfigurationWorkspaceMiddleware_to_js :
          _ConfigurationWorkspaceMiddleware -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module ConfigurationWorkspaceMiddleware =
  struct
    type t = _ConfigurationWorkspaceMiddleware
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _ConfigurationWorkspaceMiddleware_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _ConfigurationWorkspaceMiddleware) ->
        _ConfigurationWorkspaceMiddleware_to_js x1
    let (get_configuration : t -> ConfigurationRequest.MiddlewareSignature.t)
      =
      fun (x3 : t) ->
        ConfigurationRequest.MiddlewareSignature.t_of_js
          (Ojs.get_prop_ascii (t_to_js x3) "configuration")
    let (set_configuration :
      t -> ConfigurationRequest.MiddlewareSignature.t -> unit) =
      fun (x4 : t) ->
        fun (x5 : ConfigurationRequest.MiddlewareSignature.t) ->
          Ojs.set_prop_ascii (t_to_js x4) "configuration"
            (ConfigurationRequest.MiddlewareSignature.t_to_js x5)
  end
module ConfigurationFeature =
  struct
    type t = _ConfigurationFeature
    let rec t_of_js : Ojs.t -> t =
      fun (x7 : Ojs.t) -> _ConfigurationFeature_of_js x7
    and t_to_js : t -> Ojs.t =
      fun (x6 : _ConfigurationFeature) -> _ConfigurationFeature_to_js x6
    let (get__client : t -> any) =
      fun (x8 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x8) "_client")
    let (set__client : t -> any -> unit) =
      fun (x9 : t) ->
        fun (x10 : any) ->
          Ojs.set_prop_ascii (t_to_js x9) "_client" (any_to_js x10)
    let (create : _client:BaseLanguageClient.t -> t) =
      fun ~_client:(x11 : BaseLanguageClient.t) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "ConfigurationFeature")
             [|(BaseLanguageClient.t_to_js x11)|])
    let (fillClientCapabilities :
      t -> capabilities:ClientCapabilities.t -> unit) =
      fun (x13 : t) ->
        fun ~capabilities:(x12 : ClientCapabilities.t) ->
          ignore
            (Ojs.call (t_to_js x13) "fillClientCapabilities"
               [|(ClientCapabilities.t_to_js x12)|])
    let (initialize : t -> unit) =
      fun (x14 : t) -> ignore (Ojs.call (t_to_js x14) "initialize" [||])
    let (get_getConfiguration : t -> any) =
      fun (x15 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x15) "getConfiguration")
    let (set_getConfiguration : t -> any -> unit) =
      fun (x16 : t) ->
        fun (x17 : any) ->
          Ojs.set_prop_ascii (t_to_js x16) "getConfiguration" (any_to_js x17)
    let (dispose : t -> unit) =
      fun (x18 : t) -> ignore (Ojs.call (t_to_js x18) "dispose" [||])
    let (cast : t -> StaticFeature.t) =
      fun (x19 : t) -> StaticFeature.t_of_js (t_to_js x19)
  end
let (toJSONObject : obj:any -> any) =
  fun ~obj:(x20 : any) ->
    any_of_js (Ojs.call Ojs.global "toJSONObject" [|(any_to_js x20)|])
