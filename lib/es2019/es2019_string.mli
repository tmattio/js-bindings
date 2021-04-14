open Es2018

module String : sig
  include module type of struct
    include String
  end

  val trimEnd : t -> string

  val trimStart : t -> string

  val trimLeft : t -> string

  val trimRight : t -> string

  val to_ml : t -> string

  val of_ml : string -> t
end
