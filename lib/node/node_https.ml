[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
open Node_globals
open Node_http
open Node_tls
module AnonymousInterface0 =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get_rejectUnauthorized : t -> bool) =
      fun (x3 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x3) "rejectUnauthorized")
    let (set_rejectUnauthorized : t -> bool -> unit) =
      fun (x4 : t) ->
        fun (x5 : bool) ->
          Ojs.set_prop_ascii (t_to_js x4) "rejectUnauthorized"
            (Ojs.bool_to_js x5)
    let (get_servername : t -> string) =
      fun (x6 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x6) "servername")
    let (set_servername : t -> string -> unit) =
      fun (x7 : t) ->
        fun (x8 : string) ->
          Ojs.set_prop_ascii (t_to_js x7) "servername" (Ojs.string_to_js x8)
  end
module Https =
  struct
    open Node_tls
    open Node_http
    module ServerOptions =
      struct
        type t =
          (Tls.SecureContextOptions.t, Tls.TlsOptions.t,
            Http.ServerOptions.t) intersection3
        let rec t_of_js : Ojs.t -> t =
          fun (x13 : Ojs.t) ->
            intersection3_of_js Tls.SecureContextOptions.t_of_js
              Tls.TlsOptions.t_of_js Http.ServerOptions.t_of_js x13
        and t_to_js : t -> Ojs.t =
          fun
            (x9 :
              (Tls.SecureContextOptions.t, Tls.TlsOptions.t,
                Http.ServerOptions.t) intersection3)
            ->
            intersection3_to_js Tls.SecureContextOptions.t_to_js
              Tls.TlsOptions.t_to_js Http.ServerOptions.t_to_js x9
      end
    module RequestOptions =
      struct
        type t =
          (Http.RequestOptions.t, Tls.SecureContextOptions.t,
            AnonymousInterface0.t) intersection3
        let rec t_of_js : Ojs.t -> t =
          fun (x21 : Ojs.t) ->
            intersection3_of_js Http.RequestOptions.t_of_js
              Tls.SecureContextOptions.t_of_js AnonymousInterface0.t_of_js
              x21
        and t_to_js : t -> Ojs.t =
          fun
            (x17 :
              (Http.RequestOptions.t, Tls.SecureContextOptions.t,
                AnonymousInterface0.t) intersection3)
            ->
            intersection3_to_js Http.RequestOptions.t_to_js
              Tls.SecureContextOptions.t_to_js AnonymousInterface0.t_to_js
              x17
      end
    module AgentOptions =
      struct
        type t = https_AgentOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x26 : Ojs.t) -> https_AgentOptions_of_js x26
        and t_to_js : t -> Ojs.t =
          fun (x25 : https_AgentOptions) -> https_AgentOptions_to_js x25
        let (get_rejectUnauthorized : t -> bool) =
          fun (x27 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x27) "rejectUnauthorized")
        let (set_rejectUnauthorized : t -> bool -> unit) =
          fun (x28 : t) ->
            fun (x29 : bool) ->
              Ojs.set_prop_ascii (t_to_js x28) "rejectUnauthorized"
                (Ojs.bool_to_js x29)
        let (get_maxCachedSessions : t -> int) =
          fun (x30 : t) ->
            Ojs.int_of_js
              (Ojs.get_prop_ascii (t_to_js x30) "maxCachedSessions")
        let (set_maxCachedSessions : t -> int -> unit) =
          fun (x31 : t) ->
            fun (x32 : int) ->
              Ojs.set_prop_ascii (t_to_js x31) "maxCachedSessions"
                (Ojs.int_to_js x32)
        let (cast : t -> Http.AgentOptions.t) =
          fun (x33 : t) -> Http.AgentOptions.t_of_js (t_to_js x33)
        let (cast' : t -> Tls.ConnectionOptions.t) =
          fun (x34 : t) -> Tls.ConnectionOptions.t_of_js (t_to_js x34)
      end
    module Agent =
      struct
        type t = https_Agent
        let rec t_of_js : Ojs.t -> t =
          fun (x36 : Ojs.t) -> https_Agent_of_js x36
        and t_to_js : t -> Ojs.t =
          fun (x35 : https_Agent) -> https_Agent_to_js x35
        let (create : ?options:https_AgentOptions -> unit -> t) =
          fun ?options:(x37 : https_AgentOptions option) ->
            fun () ->
              t_of_js
                (Ojs.new_obj_arr (Ojs.get_prop_ascii Import.https "Agent")
                   (let x38 =
                      Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                        [||] in
                    (match x37 with
                     | Some x39 ->
                         ignore
                           (Ojs.call x38 "push"
                              [|(https_AgentOptions_to_js x39)|])
                     | None -> ());
                    x38))
        let (get_options : t -> https_AgentOptions) =
          fun (x40 : t) ->
            https_AgentOptions_of_js
              (Ojs.get_prop_ascii (t_to_js x40) "options")
        let (set_options : t -> https_AgentOptions -> unit) =
          fun (x41 : t) ->
            fun (x42 : https_AgentOptions) ->
              Ojs.set_prop_ascii (t_to_js x41) "options"
                (https_AgentOptions_to_js x42)
        let (cast : t -> Http.Agent.t) =
          fun (x43 : t) -> Http.Agent.t_of_js (t_to_js x43)
      end
    module Server =
      struct
        type t = https_Server
        let rec t_of_js : Ojs.t -> t =
          fun (x45 : Ojs.t) -> https_Server_of_js x45
        and t_to_js : t -> Ojs.t =
          fun (x44 : https_Server) -> https_Server_to_js x44
        let (cast : t -> Http.HttpBase.t) =
          fun (x46 : t) -> Http.HttpBase.t_of_js (t_to_js x46)
        let (create : ?requestListener:Http.RequestListener.t -> unit -> t) =
          fun ?requestListener:(x47 : Http.RequestListener.t option) ->
            fun () ->
              t_of_js
                (Ojs.new_obj_arr (Ojs.get_prop_ascii Import.https "Server")
                   (let x48 =
                      Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                        [||] in
                    (match x47 with
                     | Some x49 ->
                         ignore
                           (Ojs.call x48 "push"
                              [|(Http.RequestListener.t_to_js x49)|])
                     | None -> ());
                    x48))
        let (create' :
          options:https_ServerOptions ->
            ?requestListener:Http.RequestListener.t -> unit -> t)
          =
          fun ~options:(x50 : https_ServerOptions) ->
            fun ?requestListener:(x51 : Http.RequestListener.t option) ->
              fun () ->
                t_of_js
                  (Ojs.new_obj_arr (Ojs.get_prop_ascii Import.https "Server")
                     (let x52 =
                        Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                          [||] in
                      ignore
                        (Ojs.call x52 "push"
                           [|(https_ServerOptions_to_js x50)|]);
                      (match x51 with
                       | Some x53 ->
                           ignore
                             (Ojs.call x52 "push"
                                [|(Http.RequestListener.t_to_js x53)|])
                       | None -> ());
                      x52))
        let (cast : t -> Tls.Server.t) =
          fun (x54 : t) -> Tls.Server.t_of_js (t_to_js x54)
      end
    let (createServer :
      options:https_ServerOptions ->
        ?requestListener:Http.RequestListener.t -> unit -> https_Server)
      =
      fun ~options:(x55 : https_ServerOptions) ->
        fun ?requestListener:(x56 : Http.RequestListener.t option) ->
          fun () ->
            https_Server_of_js
              (let x59 = Import.https in
               Ojs.call (Ojs.get_prop_ascii x59 "createServer") "apply"
                 [|x59;((let x57 =
                           Ojs.new_obj
                             (Ojs.get_prop_ascii Ojs.global "Array") 
                             [||] in
                         ignore
                           (Ojs.call x57 "push"
                              [|(https_ServerOptions_to_js x55)|]);
                         (match x56 with
                          | Some x58 ->
                              ignore
                                (Ojs.call x57 "push"
                                   [|(Http.RequestListener.t_to_js x58)|])
                          | None -> ());
                         x57))|])
    let (request :
      url:Node_url.Url.Url.t or_string ->
        ?options:https_RequestOptions ->
          ?callback:(res:Http.IncomingMessage.t -> unit) ->
            unit -> Http.ClientRequest.t)
      =
      fun ~url:(x60 : Node_url.Url.Url.t or_string) ->
        fun ?options:(x61 : https_RequestOptions option) ->
          fun ?callback:(x62 : (res:Http.IncomingMessage.t -> unit) option)
            ->
            fun () ->
              Http.ClientRequest.t_of_js
                (let x68 = Import.https in
                 Ojs.call (Ojs.get_prop_ascii x68 "request") "apply"
                   [|x68;((let x63 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore
                             (Ojs.call x63 "push"
                                [|(or_string_to_js Node_url.Url.Url.t_to_js
                                     x60)|]);
                           (match x61 with
                            | Some x66 ->
                                ignore
                                  (Ojs.call x63 "push"
                                     [|(https_RequestOptions_to_js x66)|])
                            | None -> ());
                           (match x62 with
                            | Some x64 ->
                                ignore
                                  (Ojs.call x63 "push"
                                     [|(Ojs.fun_to_js 1
                                          (fun (x65 : Ojs.t) ->
                                             x64
                                               ~res:(Http.IncomingMessage.t_of_js
                                                       x65)))|])
                            | None -> ());
                           x63))|])
    let (get :
      url:Node_url.Url.Url.t or_string ->
        ?options:https_RequestOptions ->
          ?callback:(res:Http.IncomingMessage.t -> unit) ->
            unit -> Http.ClientRequest.t)
      =
      fun ~url:(x69 : Node_url.Url.Url.t or_string) ->
        fun ?options:(x70 : https_RequestOptions option) ->
          fun ?callback:(x71 : (res:Http.IncomingMessage.t -> unit) option)
            ->
            fun () ->
              Http.ClientRequest.t_of_js
                (let x77 = Import.https in
                 Ojs.call (Ojs.get_prop_ascii x77 "get") "apply"
                   [|x77;((let x72 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore
                             (Ojs.call x72 "push"
                                [|(or_string_to_js Node_url.Url.Url.t_to_js
                                     x69)|]);
                           (match x70 with
                            | Some x75 ->
                                ignore
                                  (Ojs.call x72 "push"
                                     [|(https_RequestOptions_to_js x75)|])
                            | None -> ());
                           (match x71 with
                            | Some x73 ->
                                ignore
                                  (Ojs.call x72 "push"
                                     [|(Ojs.fun_to_js 1
                                          (fun (x74 : Ojs.t) ->
                                             x73
                                               ~res:(Http.IncomingMessage.t_of_js
                                                       x74)))|])
                            | None -> ());
                           x72))|])
    let (globalAgent : https_Agent) =
      https_Agent_of_js (Ojs.get_prop_ascii Import.https "globalAgent")
  end
