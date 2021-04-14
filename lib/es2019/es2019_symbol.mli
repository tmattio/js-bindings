open Es2018

module Symbol : sig
  include module type of struct
    include Symbol
  end

  val get_description : t -> string or_undefined
end
