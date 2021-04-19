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

module Constants : sig
  include module type of struct
    include Node_os.Os.Constants.Errno
  end

  include module type of struct
    include Node_os.Os.Constants.Priority
  end

  include module type of struct
    include Node_os.Os.SignalConstants
  end

  include module type of struct
    include Node_crypto.Crypto.Constants
  end

  include module type of struct
    include Node_fs.Fs.Constants
  end
end
