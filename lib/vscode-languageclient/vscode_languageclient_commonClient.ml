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
        type _CommonLanguageClient = [ `CommonLanguageClient ] intf
        let rec _CommonLanguageClient_of_js : Ojs.t -> _CommonLanguageClient
          = Obj.magic
        and _CommonLanguageClient_to_js : _CommonLanguageClient -> Ojs.t =
          Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module CommonLanguageClient =
  struct
    type t = _CommonLanguageClient
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _CommonLanguageClient_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _CommonLanguageClient) -> _CommonLanguageClient_to_js x1
    let (create :
      id:string -> name:string -> clientOptions:LanguageClientOptions.t -> t)
      =
      fun ~id:(x3 : string) ->
        fun ~name:(x4 : string) ->
          fun ~clientOptions:(x5 : LanguageClientOptions.t) ->
            t_of_js
              (Ojs.new_obj
                 (Ojs.get_prop_ascii Ojs.global "CommonLanguageClient")
                 [|(Ojs.string_to_js x3);(Ojs.string_to_js x4);(LanguageClientOptions.t_to_js
                                                                  x5)|])
    let (registerProposedFeatures : t -> unit) =
      fun (x6 : t) ->
        ignore (Ojs.call (t_to_js x6) "registerProposedFeatures" [||])
    let (registerBuiltinFeatures : t -> unit) =
      fun (x7 : t) ->
        ignore (Ojs.call (t_to_js x7) "registerBuiltinFeatures" [||])
    let (cast : t -> BaseLanguageClient.t) =
      fun (x8 : t) -> BaseLanguageClient.t_of_js (t_to_js x8)
  end
module ProposedFeatures =
  struct
    let (createAll :
      _client:BaseLanguageClient.t ->
        (StaticFeature.t, any DynamicFeature.t_1) union2 list)
      =
      fun ~_client:(x9 : BaseLanguageClient.t) ->
        Ojs.list_of_js
          (fun (x10 : Ojs.t) ->
             union2_of_js StaticFeature.t_of_js
               (fun (x12 : Ojs.t) -> DynamicFeature.t_1_of_js any_of_js x12)
               x10)
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "ProposedFeatures")
             "createAll" [|(BaseLanguageClient.t_to_js x9)|])
  end