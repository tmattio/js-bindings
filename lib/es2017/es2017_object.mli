open Es2016

module Object : sig
  include module type of struct
    include Object
  end

  (* Constructor *)

  (* TODO: Support anonymous interfaces *)

  (* val values : (anonymous_interface_1, 'T Array.t) union2 -> 'T list *)

  (* val values' : anonymous_interface_0 -> any list *)

  (* val entries : (anonymous_interface_1, 'T Array.t) union2 -> (string * 'T)
     list *)

  (* val entries' : anonymous_interface_0 -> (string * any) list *)

  (* val getOwnPropertyDescriptors : 'T -> (any, anonymous_interface_2)
     intersection2 *)
end

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  (* TODO: Support anonymous interfaces *)

  (* val values : t -> (anonymous_interface_1, 'T Array.t) union2 -> 'T list *)

  (* val values' : t -> anonymous_interface_0 -> any list *)

  (* val entries : t -> (anonymous_interface_1, 'T Array.t) union2 -> (string *
     'T) list *)

  (* val entries' : t -> anonymous_interface_0 -> (string * any) list *)

  (* val getOwnPropertyDescriptors : t -> 'T -> (any, anonymous_interface_2)
     intersection2 *)
end
