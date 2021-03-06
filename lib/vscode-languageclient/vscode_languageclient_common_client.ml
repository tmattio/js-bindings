[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module CommonLanguageClient =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (create :
      id:string -> name:string -> client_options:LanguageClientOptions.t -> t)
      =
      fun ~id:(x3 : string) ->
        fun ~name:(x4 : string) ->
          fun ~client_options:(x5 : LanguageClientOptions.t) ->
            t_of_js
              (Ojs.new_obj
                 (Ojs.get_prop_ascii Ojs.global "CommonLanguageClient")
                 [|(Ojs.string_to_js x3);(Ojs.string_to_js x4);(LanguageClientOptions.t_to_js
                                                                  x5)|])
    let (register_proposed_features : t -> unit) =
      fun (x6 : t) ->
        ignore (Ojs.call (t_to_js x6) "registerProposedFeatures" [||])
    let (register_builtin_features : t -> unit) =
      fun (x7 : t) ->
        ignore (Ojs.call (t_to_js x7) "registerBuiltinFeatures" [||])
    include struct include BaseLanguageClient end
  end
module ProposedFeatures =
  struct
    let (create_all :
      _client:BaseLanguageClient.t ->
        (StaticFeature.t, any DynamicFeature.t) union2 list)
      =
      fun ~_client:(x8 : BaseLanguageClient.t) ->
        Ojs.list_of_js
          (fun (x9 : Ojs.t) ->
             union2_of_js StaticFeature.t_of_js
               (fun (x11 : Ojs.t) -> DynamicFeature.t_of_js any_of_js x11) x9)
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "ProposedFeatures")
             "createAll" [|(BaseLanguageClient.t_to_js x8)|])
  end
