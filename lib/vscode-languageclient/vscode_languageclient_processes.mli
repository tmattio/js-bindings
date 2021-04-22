[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as cp from 'child_process'; *)
(* import ChildProcess = cp.ChildProcess; *)
val terminate : process:ChildProcess.t -> ?cwd:string -> unit -> bool
  [@@js.global "terminate"]
