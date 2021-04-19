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

(* import { IncomingMessage } from 'http'; *)
val getStream : api:string -> IncomingMessage.t Promise.t
  [@@js.global "getStream"]

val getJSON : api:string -> 'T Promise.t [@@js.global "getJSON"]
