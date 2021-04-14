open Es2019

module Intl : sig
  module BCP47LanguageTag : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatUnit : sig
    type t =
      [ `day
      | `days
      | `hour
      | `hours
      | `minute
      | `minutes
      | `month
      | `months
      | `quarter
      | `quarters
      | `second
      | `seconds
      | `week
      | `weeks
      | `year
      | `years
      ]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatLocaleMatcher : sig
    type t =
      [ `best_fit
      | `lookup
      ]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatNumeric : sig
    type t =
      [ `always
      | `auto
      ]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatStyle : sig
    type t =
      [ `long
      | `narrow
      | `short
      ]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Calendar : sig
    type t =
      [ `buddhist
      | `chinese
      | `coptic
      | `dangi
      | `ethioaa
      | `ethiopic
      | `ethiopic_amete_alem
      | `gregorian
      | `gregory
      | `hebrew
      | `indian
      | `islamic
      | `islamic_civil
      | `islamic_rgsa
      | `islamic_tbla
      | `islamic_umalqura
      | `islamicc
      | `iso8601
      | `japanese
      | `persian
      | `roc
      ]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NumberingSystem : sig
    type t =
      [ `adlm
      | `ahom
      | `arab
      | `arabext
      | `armn
      | `armnlow
      | `bali
      | `beng
      | `bhks
      | `brah
      | `cakm
      | `cham
      | `cyrl
      | `deva
      | `diak
      | `ethi
      | `finance
      | `fullwide
      | `geor
      | `gong
      | `gonm
      | `grek
      | `greklow
      | `gujr
      | `guru
      | `hanidays
      | `hanidec
      | `hans
      | `hansfin
      | `hant
      | `hantfin
      | `hebr
      | `hmng
      | `hmnp
      | `java
      | `jpan
      | `jpanfin
      | `jpanyear
      | `kali
      | `khmr
      | `knda
      | `lana
      | `lanatham
      | `laoo
      | `latn
      | `lepc
      | `limb
      | `mathbold
      | `mathdbl
      | `mathmono
      | `mathsanb
      | `mathsans
      | `mlym
      | `modi
      | `mong
      | `mroo
      | `mtei
      | `mymr
      | `mymrshan
      | `mymrtlng
      | `native
      | `newa
      | `nkoo
      | `olck
      | `orya
      | `osma
      | `rohg
      | `roman
      | `romanlow
      | `saur
      | `shrd
      | `sind
      | `sinh
      | `sora
      | `sund
      | `takr
      | `talu
      | `taml
      | `tamldec
      | `telu
      | `thai
      | `tibt
      | `tirh
      | `traditio
      | `traditional
      | `vaii
      | `wara
      | `wcho
      ]

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localeMatcher : t -> RelativeTimeFormatLocaleMatcher.t

    val set_localeMatcher : t -> RelativeTimeFormatLocaleMatcher.t -> unit

    val get_numeric : t -> RelativeTimeFormatNumeric.t

    val set_numeric : t -> RelativeTimeFormatNumeric.t -> unit

    val get_style : t -> RelativeTimeFormatStyle.t

    val set_style : t -> RelativeTimeFormatStyle.t -> unit
  end

  module ResolvedRelativeTimeFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> BCP47LanguageTag.t

    val set_locale : t -> BCP47LanguageTag.t -> unit

    val get_style : t -> RelativeTimeFormatStyle.t

    val set_style : t -> RelativeTimeFormatStyle.t -> unit

    val get_numeric : t -> RelativeTimeFormatNumeric.t

    val set_numeric : t -> RelativeTimeFormatNumeric.t -> unit

    val get_numberingSystem : t -> string

    val set_numberingSystem : t -> string -> unit
  end

  module RelativeTimeFormatPart : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> string

    val set_type : t -> string -> unit

    val get_value : t -> string

    val set_value : t -> string -> unit

    val get_unit : t -> RelativeTimeFormatUnit.t

    val set_unit : t -> RelativeTimeFormatUnit.t -> unit
  end

  module RelativeTimeFormat : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val format : t -> value:float -> unit:RelativeTimeFormatUnit.t -> string

    val formatToParts
      :  t
      -> value:float
      -> unit:RelativeTimeFormatUnit.t
      -> RelativeTimeFormatPart.t list

    val resolvedOptions : t -> ResolvedRelativeTimeFormatOptions.t
  end

  (* TODO: Support anonymous interfaces *)
  (* val relativeTimeFormat : anonymous_interface_0 *)

  module NumberFormatOptions : sig
    include module type of struct
      include NumberFormatOptions
    end

    val get_compactDisplay : t -> string

    val set_compactDisplay : t -> string -> unit

    val get_notation : t -> string

    val set_notation : t -> string -> unit

    val get_signDisplay : t -> string

    val set_signDisplay : t -> string -> unit

    val get_unit : t -> string

    val set_unit : t -> string -> unit

    val get_unitDisplay : t -> string

    val set_unitDisplay : t -> string -> unit
  end

  module ResolvedNumberFormatOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_compactDisplay : t -> string

    val set_compactDisplay : t -> string -> unit

    val get_notation : t -> string

    val set_notation : t -> string -> unit

    val get_signDisplay : t -> string

    val set_signDisplay : t -> string -> unit

    val get_unit : t -> string

    val set_unit : t -> string -> unit

    val get_unitDisplay : t -> string

    val set_unitDisplay : t -> string -> unit
  end

  module DateTimeFormatOptions : sig
    include module type of struct
      include DateTimeFormatOptions
    end

    val get_dateStyle
      :  t
      -> ([ `full [@js "full"]
          | `long [@js "long"]
          | `medium [@js "medium"]
          | `short [@js "short"]
          ]
         [@js.enum])

    val set_dateStyle
      :  t
      -> ([ `full | `long | `medium | `short ][@js.enum])
      -> unit

    val get_timeStyle
      :  t
      -> ([ `full [@js "full"]
          | `long [@js "long"]
          | `medium [@js "medium"]
          | `short [@js "short"]
          ]
         [@js.enum])

    val set_timeStyle
      :  t
      -> ([ `full | `long | `medium | `short ][@js.enum])
      -> unit

    val get_calendar : t -> Calendar.t

    val set_calendar : t -> Calendar.t -> unit

    val get_dayPeriod
      :  t
      -> ([ `long [@js "long"] | `narrow [@js "narrow"] | `short [@js "short"] ]
         [@js.enum])

    val set_dayPeriod : t -> ([ `long | `narrow | `short ][@js.enum]) -> unit

    val get_numberingSystem : t -> NumberingSystem.t

    val set_numberingSystem : t -> NumberingSystem.t -> unit

    val get_hourCycle
      :  t
      -> ([ `h11 [@js "h11"]
          | `h12 [@js "h12"]
          | `h23 [@js "h23"]
          | `h24 [@js "h24"]
          ]
         [@js.enum])

    val set_hourCycle : t -> ([ `h11 | `h12 | `h23 | `h24 ][@js.enum]) -> unit

    val get_fractionalSecondDigits
      :  t
      -> ([ `L_n_0 [@js 0] | `L_n_1 [@js 1] | `L_n_2 [@js 2] | `L_n_3 [@js 3] ]
         [@js.enum])

    val set_fractionalSecondDigits
      :  t
      -> ([ `L_n_0 | `L_n_1 | `L_n_2 | `L_n_3 ][@js.enum])
      -> unit
  end
end

include module type of struct
  include Intl
end
