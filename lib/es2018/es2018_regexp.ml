[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2017
module AnonymousInterface0 =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get : t -> string -> string) =
      fun (x3 : t) ->
        fun (x4 : string) ->
          Ojs.string_of_js (Ojs.get_prop (t_to_js x3) (Ojs.string_to_js x4))
    let (set : t -> string -> string -> unit) =
      fun (x5 : t) ->
        fun (x6 : string) ->
          fun (x7 : string) ->
            Ojs.set_prop (t_to_js x5) (Ojs.string_to_js x6)
              (Ojs.string_to_js x7)
  end
module RegExpMatchArray =
  struct
    include struct include RegExpMatchArray end
    let (get_groups : t -> AnonymousInterface0.t) =
      fun (x8 : t) ->
        AnonymousInterface0.t_of_js
          (Ojs.get_prop_ascii (t_to_js x8) "groups")
    let (set_groups : t -> AnonymousInterface0.t -> unit) =
      fun (x9 : t) ->
        fun (x10 : AnonymousInterface0.t) ->
          Ojs.set_prop_ascii (t_to_js x9) "groups"
            (AnonymousInterface0.t_to_js x10)
  end
module RegExpExecArray =
  struct
    include struct include RegExpExecArray end
    let (get_groups : t -> AnonymousInterface0.t) =
      fun (x11 : t) ->
        AnonymousInterface0.t_of_js
          (Ojs.get_prop_ascii (t_to_js x11) "groups")
    let (set_groups : t -> AnonymousInterface0.t -> unit) =
      fun (x12 : t) ->
        fun (x13 : AnonymousInterface0.t) ->
          Ojs.set_prop_ascii (t_to_js x12) "groups"
            (AnonymousInterface0.t_to_js x13)
  end
module RegExp =
  struct
    include struct include RegExp end
    let (get_dot_all : t -> bool) =
      fun (x14 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x14) "dotAll")
  end
