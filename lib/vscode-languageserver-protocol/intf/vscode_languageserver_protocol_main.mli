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

(* import { MessageReader, MessageWriter, Logger, ConnectionStrategy,
   ConnectionOptions, ProtocolConnection } from '../common/api'; *)
(* export * from 'vscode-jsonrpc/node'; *)
(* export * from '../common/api'; *)
val createProtocolConnection
  :  input:MessageReader.t
  -> output:MessageWriter.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> ProtocolConnection.t
  [@@js.global "createProtocolConnection"]

val createProtocolConnection
  :  input:Node.ReadableStream.t
  -> output:Node.WritableStream.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> ProtocolConnection.t
  [@@js.global "createProtocolConnection"]
