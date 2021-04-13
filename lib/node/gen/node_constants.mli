[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces
  end
end

open Internal
open AnonymousInterfaces
open Types

module Node_constants : sig
  (* import exp = require('constants'); *)
  (* export = exp *)
end

module Constants : sig
  (* import { constants as osConstants, SignalConstants } from 'node:os'; *)
  (* import { constants as cryptoConstants } from 'node:crypto'; *)
  (* import { constants as fsConstants } from 'node:fs'; *)
  val exp
    : ( (* FIXME: unknown type 'typeof osConstants.errno' *) any
      , (* FIXME: unknown type 'typeof osConstants.priority' *) any
      , SignalConstants.t_0
      , (* FIXME: unknown type 'typeof cryptoConstants' *) any
      , (* FIXME: unknown type 'typeof fsConstants' *) any )
      intersection5
    [@@js.global "exp"]
  (* export = exp *)
end
[@@js.scope "constants"]
