[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module Intl : sig
  module DateTimeFormatPartTypes : sig
    type t =
      ([ `day [@js "day"]
       | `dayPeriod [@js "dayPeriod"]
       | `era [@js "era"]
       | `hour [@js "hour"]
       | `literal [@js "literal"]
       | `minute [@js "minute"]
       | `month [@js "month"]
       | `second [@js "second"]
       | `timeZoneName [@js "timeZoneName"]
       | `weekday [@js "weekday"]
       | `year [@js "year"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DateTimeFormatPart : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> DateTimeFormatPartTypes.t [@@js.get "type"]

    val set_type : t -> DateTimeFormatPartTypes.t -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "DateTimeFormatPart"]

  module DateTimeFormat : sig
    include module type of struct
      include DateTimeFormat
    end

    val formatToParts
      :  t
      -> ?date:Date.t or_number
      -> unit
      -> DateTimeFormatPart.t list
      [@@js.call "formatToParts"]
  end
  [@@js.scope "DateTimeFormat"]
end
[@@js.scope "Intl"]

include module type of struct
  include Intl
end
