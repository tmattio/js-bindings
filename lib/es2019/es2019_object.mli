open Es2018

module Object : sig
  include module type of struct
    include Object
  end

  (* TOOD: Support anonymous interfaces *)

  (* val fromEntries : entries:(PropertyKey.t * 'T) Iterable.t ->
     anonymous_interface_0 *)

  val fromEntries' : entries:any list Iterable.t -> any
end

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  (* TOOD: Support anonymous interfaces *)

  (* val fromEntries : t -> entries:(PropertyKey.t * 'T) Iterable.t ->
     anonymous_interface_0 *)

  val fromEntries' : t -> entries:any list Iterable.t -> any
end
