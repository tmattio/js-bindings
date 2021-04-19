[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as cp from 'child_process'; *)
(* import ChildProcess = cp.ChildProcess; *)
val terminate : process:ChildProcess.t -> ?cwd:string -> unit -> bool
  [@@js.global "terminate"]
