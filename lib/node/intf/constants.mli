[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces
  end
end

open Internal
open AnonymousInterfaces
open Types

module Constants : sig
  include module type of struct
    include Os.Os.Constants.Errno
  end

  include module type of struct
    include Os.Os.Constants.Priority
  end

  include module type of struct
    include Os.Os.SignalConstants
  end

  include module type of struct
    include Crypto.Crypto.Constants
  end

  include module type of struct
    include Fs.Fs.Constants
  end
end
