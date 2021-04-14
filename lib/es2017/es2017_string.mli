open Es2016

module String : sig
  include module type of struct
    include String
  end

  val padStart : t -> maxLength:float -> ?fillString:string -> unit -> string

  val padEnd : t -> maxLength:float -> ?fillString:string -> unit -> string

  val to_ml : t -> string

  val of_ml : string -> t
end
