[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Disposable =
  struct
    type t = _Disposable
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> _Disposable_of_js x2
    and t_to_js : t -> Ojs.t = fun (x1 : _Disposable) -> _Disposable_to_js x1
    let (dispose : t -> unit) =
      fun (x3 : t) -> ignore (Ojs.call (t_to_js x3) "dispose" [||])
    let (create_ : func:(unit -> unit) -> _Disposable) =
      fun ~func:(x4 : unit -> unit) ->
        _Disposable_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Disposable") "create"
             [|(Ojs.fun_to_js 1 (fun _ -> x4 ()))|])
  end
