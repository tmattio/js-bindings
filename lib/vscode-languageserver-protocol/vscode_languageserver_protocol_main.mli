[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { MessageReader, MessageWriter, Logger, ConnectionStrategy,
   ConnectionOptions, ProtocolConnection } from '../common/api'; *)
(* export * from 'vscode-jsonrpc/node'; *)
(* export * from '../common/api'; *)
val create_protocol_connection
  :  input:MessageReader.t
  -> output:MessageWriter.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> ProtocolConnection.t
  [@@js.global "createProtocolConnection"]

val create_protocol_connection
  :  input:Node.ReadableStream.t
  -> output:Node.WritableStream.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> ProtocolConnection.t
  [@@js.global "createProtocolConnection"]
