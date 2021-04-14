open Es2017

module RegExpMatchArray : sig
  include module type of struct
    include RegExpMatchArray
  end

  (* TODO: Support anonymouse interfaces *)

  (* val get_groups : t -> anonymous_interface_0 *)

  (* val set_groups : t -> anonymous_interface_0 -> unit *)
end

module RegExpExecArray : sig
  include module type of struct
    include RegExpExecArray
  end

  (* TODO: Support anonymouse interfaces *)

  (* val get_groups : t -> anonymous_interface_0 *)

  (* val set_groups : t -> anonymous_interface_0 -> unit *)
end

module RegExp : sig
  include module type of struct
    include RegExp
  end

  val get_dotAll : t -> bool
end
