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
        type _ProgressFeature = [ `ProgressFeature ] intf
        let rec _ProgressFeature_of_js : Ojs.t -> _ProgressFeature =
          Obj.magic
        and _ProgressFeature_to_js : _ProgressFeature -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module ProgressFeature =
  struct
    type t = _ProgressFeature
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _ProgressFeature_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _ProgressFeature) -> _ProgressFeature_to_js x1
    let (get__client : t -> any) =
      fun (x3 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x3) "_client")
    let (set__client : t -> any -> unit) =
      fun (x4 : t) ->
        fun (x5 : any) ->
          Ojs.set_prop_ascii (t_to_js x4) "_client" (any_to_js x5)
    let (get_activeParts : t -> any) =
      fun (x6 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x6) "activeParts")
    let (set_activeParts : t -> any -> unit) =
      fun (x7 : t) ->
        fun (x8 : any) ->
          Ojs.set_prop_ascii (t_to_js x7) "activeParts" (any_to_js x8)
    let (create : _client:BaseLanguageClient.t -> t) =
      fun ~_client:(x9 : BaseLanguageClient.t) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "ProgressFeature")
             [|(BaseLanguageClient.t_to_js x9)|])
    let (fillClientCapabilities :
      t -> capabilities:ClientCapabilities.t -> unit) =
      fun (x11 : t) ->
        fun ~capabilities:(x10 : ClientCapabilities.t) ->
          ignore
            (Ojs.call (t_to_js x11) "fillClientCapabilities"
               [|(ClientCapabilities.t_to_js x10)|])
    let (initialize : t -> unit) =
      fun (x12 : t) -> ignore (Ojs.call (t_to_js x12) "initialize" [||])
    let (dispose : t -> unit) =
      fun (x13 : t) -> ignore (Ojs.call (t_to_js x13) "dispose" [||])
    let (cast : t -> StaticFeature.t) =
      fun (x14 : t) -> StaticFeature.t_of_js (t_to_js x14)
  end
