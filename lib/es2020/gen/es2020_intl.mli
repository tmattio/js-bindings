[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2019

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _Intl_BCP47LanguageTag = string

    and _Intl_Calendar =
      ([ `buddhist [@js "buddhist"]
       | `chinese [@js "chinese"]
       | `coptic [@js "coptic"]
       | `dangi [@js "dangi"]
       | `ethioaa [@js "ethioaa"]
       | `ethiopic [@js "ethiopic"]
       | `ethiopic_amete_alem [@js "ethiopic-amete-alem"]
       | `gregorian [@js "gregorian"]
       | `gregory [@js "gregory"]
       | `hebrew [@js "hebrew"]
       | `indian [@js "indian"]
       | `islamic [@js "islamic"]
       | `islamic_civil [@js "islamic-civil"]
       | `islamic_rgsa [@js "islamic-rgsa"]
       | `islamic_tbla [@js "islamic-tbla"]
       | `islamic_umalqura [@js "islamic-umalqura"]
       | `islamicc [@js "islamicc"]
       | `iso8601 [@js "iso8601"]
       | `japanese [@js "japanese"]
       | `persian [@js "persian"]
       | `roc [@js "roc"]
       ]
      [@js.enum])

    and _Intl_DateTimeFormatOptions = [ `Intl_DateTimeFormatOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_NumberFormatOptions = [ `Intl_NumberFormatOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_NumberingSystem =
      ([ `adlm [@js "adlm"]
       | `ahom [@js "ahom"]
       | `arab [@js "arab"]
       | `arabext [@js "arabext"]
       | `armn [@js "armn"]
       | `armnlow [@js "armnlow"]
       | `bali [@js "bali"]
       | `beng [@js "beng"]
       | `bhks [@js "bhks"]
       | `brah [@js "brah"]
       | `cakm [@js "cakm"]
       | `cham [@js "cham"]
       | `cyrl [@js "cyrl"]
       | `deva [@js "deva"]
       | `diak [@js "diak"]
       | `ethi [@js "ethi"]
       | `finance [@js "finance"]
       | `fullwide [@js "fullwide"]
       | `geor [@js "geor"]
       | `gong [@js "gong"]
       | `gonm [@js "gonm"]
       | `grek [@js "grek"]
       | `greklow [@js "greklow"]
       | `gujr [@js "gujr"]
       | `guru [@js "guru"]
       | `hanidays [@js "hanidays"]
       | `hanidec [@js "hanidec"]
       | `hans [@js "hans"]
       | `hansfin [@js "hansfin"]
       | `hant [@js "hant"]
       | `hantfin [@js "hantfin"]
       | `hebr [@js "hebr"]
       | `hmng [@js "hmng"]
       | `hmnp [@js "hmnp"]
       | `java [@js "java"]
       | `jpan [@js "jpan"]
       | `jpanfin [@js "jpanfin"]
       | `jpanyear [@js "jpanyear"]
       | `kali [@js "kali"]
       | `khmr [@js "khmr"]
       | `knda [@js "knda"]
       | `lana [@js "lana"]
       | `lanatham [@js "lanatham"]
       | `laoo [@js "laoo"]
       | `latn [@js "latn"]
       | `lepc [@js "lepc"]
       | `limb [@js "limb"]
       | `mathbold [@js "mathbold"]
       | `mathdbl [@js "mathdbl"]
       | `mathmono [@js "mathmono"]
       | `mathsanb [@js "mathsanb"]
       | `mathsans [@js "mathsans"]
       | `mlym [@js "mlym"]
       | `modi [@js "modi"]
       | `mong [@js "mong"]
       | `mroo [@js "mroo"]
       | `mtei [@js "mtei"]
       | `mymr [@js "mymr"]
       | `mymrshan [@js "mymrshan"]
       | `mymrtlng [@js "mymrtlng"]
       | `native [@js "native"]
       | `newa [@js "newa"]
       | `nkoo [@js "nkoo"]
       | `olck [@js "olck"]
       | `orya [@js "orya"]
       | `osma [@js "osma"]
       | `rohg [@js "rohg"]
       | `roman [@js "roman"]
       | `romanlow [@js "romanlow"]
       | `saur [@js "saur"]
       | `shrd [@js "shrd"]
       | `sind [@js "sind"]
       | `sinh [@js "sinh"]
       | `sora [@js "sora"]
       | `sund [@js "sund"]
       | `takr [@js "takr"]
       | `talu [@js "talu"]
       | `taml [@js "taml"]
       | `tamldec [@js "tamldec"]
       | `telu [@js "telu"]
       | `thai [@js "thai"]
       | `tibt [@js "tibt"]
       | `tirh [@js "tirh"]
       | `traditio [@js "traditio"]
       | `traditional [@js "traditional"]
       | `vaii [@js "vaii"]
       | `wara [@js "wara"]
       | `wcho [@js "wcho"]
       ]
      [@js.enum])

    and _Intl_RelativeTimeFormat = [ `Intl_RelativeTimeFormat ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_RelativeTimeFormatLocaleMatcher =
      ([ `best_fit [@js "best fit"]
       | `lookup [@js "lookup"]
       ]
      [@js.enum])

    and _Intl_RelativeTimeFormatNumeric =
      ([ `always [@js "always"]
       | `auto [@js "auto"]
       ]
      [@js.enum])

    and _Intl_RelativeTimeFormatOptions =
      [ `Intl_RelativeTimeFormatOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_RelativeTimeFormatPart = [ `Intl_RelativeTimeFormatPart ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_RelativeTimeFormatStyle =
      ([ `long [@js "long"]
       | `narrow [@js "narrow"]
       | `short [@js "short"]
       ]
      [@js.enum])

    and _Intl_RelativeTimeFormatUnit =
      ([ `day [@js "day"]
       | `days [@js "days"]
       | `hour [@js "hour"]
       | `hours [@js "hours"]
       | `minute [@js "minute"]
       | `minutes [@js "minutes"]
       | `month [@js "month"]
       | `months [@js "months"]
       | `quarter [@js "quarter"]
       | `quarters [@js "quarters"]
       | `second [@js "second"]
       | `seconds [@js "seconds"]
       | `week [@js "week"]
       | `weeks [@js "weeks"]
       | `year [@js "year"]
       | `years [@js "years"]
       ]
      [@js.enum])

    and _Intl_ResolvedNumberFormatOptions =
      [ `Intl_ResolvedNumberFormatOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_ResolvedRelativeTimeFormatOptions =
      [ `Intl_ResolvedRelativeTimeFormatOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  t
    -> ?locales:(_Intl_BCP47LanguageTag, _Intl_BCP47LanguageTag) or_array
    -> ?options:_Intl_RelativeTimeFormatOptions
    -> unit
    -> _Intl_RelativeTimeFormat
    [@@js.apply_newable]

  val supportedLocalesOf
    :  t
    -> locales:(_Intl_BCP47LanguageTag, _Intl_BCP47LanguageTag) or_array
    -> ?options:_Intl_RelativeTimeFormatOptions
    -> unit
    -> _Intl_BCP47LanguageTag list
    [@@js.call "supportedLocalesOf"]
end

module Intl : sig
  module BCP47LanguageTag : sig
    type t = _Intl_BCP47LanguageTag

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatUnit : sig
    type t = _Intl_RelativeTimeFormatUnit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatLocaleMatcher : sig
    type t = _Intl_RelativeTimeFormatLocaleMatcher

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatNumeric : sig
    type t = _Intl_RelativeTimeFormatNumeric

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatStyle : sig
    type t = _Intl_RelativeTimeFormatStyle

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Calendar : sig
    type t = _Intl_Calendar

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NumberingSystem : sig
    type t = _Intl_NumberingSystem

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RelativeTimeFormatOptions : sig
    type t = _Intl_RelativeTimeFormatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localeMatcher : t -> _Intl_RelativeTimeFormatLocaleMatcher
      [@@js.get "localeMatcher"]

    val set_localeMatcher : t -> _Intl_RelativeTimeFormatLocaleMatcher -> unit
      [@@js.set "localeMatcher"]

    val get_numeric : t -> _Intl_RelativeTimeFormatNumeric [@@js.get "numeric"]

    val set_numeric : t -> _Intl_RelativeTimeFormatNumeric -> unit
      [@@js.set "numeric"]

    val get_style : t -> _Intl_RelativeTimeFormatStyle [@@js.get "style"]

    val set_style : t -> _Intl_RelativeTimeFormatStyle -> unit
      [@@js.set "style"]
  end
  [@@js.scope "RelativeTimeFormatOptions"]

  module ResolvedRelativeTimeFormatOptions : sig
    type t = _Intl_ResolvedRelativeTimeFormatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> _Intl_BCP47LanguageTag [@@js.get "locale"]

    val set_locale : t -> _Intl_BCP47LanguageTag -> unit [@@js.set "locale"]

    val get_style : t -> _Intl_RelativeTimeFormatStyle [@@js.get "style"]

    val set_style : t -> _Intl_RelativeTimeFormatStyle -> unit
      [@@js.set "style"]

    val get_numeric : t -> _Intl_RelativeTimeFormatNumeric [@@js.get "numeric"]

    val set_numeric : t -> _Intl_RelativeTimeFormatNumeric -> unit
      [@@js.set "numeric"]

    val get_numberingSystem : t -> string [@@js.get "numberingSystem"]

    val set_numberingSystem : t -> string -> unit [@@js.set "numberingSystem"]
  end
  [@@js.scope "ResolvedRelativeTimeFormatOptions"]

  module RelativeTimeFormatPart : sig
    type t = _Intl_RelativeTimeFormatPart

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> string [@@js.get "type"]

    val set_type : t -> string -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]

    val get_unit : t -> _Intl_RelativeTimeFormatUnit [@@js.get "unit"]

    val set_unit : t -> _Intl_RelativeTimeFormatUnit -> unit [@@js.set "unit"]
  end
  [@@js.scope "RelativeTimeFormatPart"]

  module RelativeTimeFormat : sig
    type t = _Intl_RelativeTimeFormat

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val format : t -> value:float -> unit:_Intl_RelativeTimeFormatUnit -> string
      [@@js.call "format"]

    val formatToParts
      :  t
      -> value:float
      -> unit:_Intl_RelativeTimeFormatUnit
      -> _Intl_RelativeTimeFormatPart list
      [@@js.call "formatToParts"]

    val resolvedOptions : t -> _Intl_ResolvedRelativeTimeFormatOptions
      [@@js.call "resolvedOptions"]
  end
  [@@js.scope "RelativeTimeFormat"]

  val relativeTimeFormat : anonymous_interface_0
    [@@js.global "RelativeTimeFormat"]

  module NumberFormatOptions : sig
    type t = _Intl_NumberFormatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_compactDisplay : t -> string [@@js.get "compactDisplay"]

    val set_compactDisplay : t -> string -> unit [@@js.set "compactDisplay"]

    val get_notation : t -> string [@@js.get "notation"]

    val set_notation : t -> string -> unit [@@js.set "notation"]

    val get_signDisplay : t -> string [@@js.get "signDisplay"]

    val set_signDisplay : t -> string -> unit [@@js.set "signDisplay"]

    val get_unit : t -> string [@@js.get "unit"]

    val set_unit : t -> string -> unit [@@js.set "unit"]

    val get_unitDisplay : t -> string [@@js.get "unitDisplay"]

    val set_unitDisplay : t -> string -> unit [@@js.set "unitDisplay"]
  end
  [@@js.scope "NumberFormatOptions"]

  module ResolvedNumberFormatOptions : sig
    type t = _Intl_ResolvedNumberFormatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_compactDisplay : t -> string [@@js.get "compactDisplay"]

    val set_compactDisplay : t -> string -> unit [@@js.set "compactDisplay"]

    val get_notation : t -> string [@@js.get "notation"]

    val set_notation : t -> string -> unit [@@js.set "notation"]

    val get_signDisplay : t -> string [@@js.get "signDisplay"]

    val set_signDisplay : t -> string -> unit [@@js.set "signDisplay"]

    val get_unit : t -> string [@@js.get "unit"]

    val set_unit : t -> string -> unit [@@js.set "unit"]

    val get_unitDisplay : t -> string [@@js.get "unitDisplay"]

    val set_unitDisplay : t -> string -> unit [@@js.set "unitDisplay"]
  end
  [@@js.scope "ResolvedNumberFormatOptions"]

  module DateTimeFormatOptions : sig
    type t = _Intl_DateTimeFormatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_dateStyle
      :  t
      -> ([ `full [@js "full"]
          | `long [@js "long"]
          | `medium [@js "medium"]
          | `short [@js "short"]
          ]
         [@js.enum])
      [@@js.get "dateStyle"]

    val set_dateStyle
      :  t
      -> ([ `full | `long | `medium | `short ][@js.enum])
      -> unit
      [@@js.set "dateStyle"]

    val get_timeStyle
      :  t
      -> ([ `full [@js "full"]
          | `long [@js "long"]
          | `medium [@js "medium"]
          | `short [@js "short"]
          ]
         [@js.enum])
      [@@js.get "timeStyle"]

    val set_timeStyle
      :  t
      -> ([ `full | `long | `medium | `short ][@js.enum])
      -> unit
      [@@js.set "timeStyle"]

    val get_calendar : t -> _Intl_Calendar [@@js.get "calendar"]

    val set_calendar : t -> _Intl_Calendar -> unit [@@js.set "calendar"]

    val get_dayPeriod
      :  t
      -> ([ `long [@js "long"] | `narrow [@js "narrow"] | `short [@js "short"] ]
         [@js.enum])
      [@@js.get "dayPeriod"]

    val set_dayPeriod : t -> ([ `long | `narrow | `short ][@js.enum]) -> unit
      [@@js.set "dayPeriod"]

    val get_numberingSystem : t -> _Intl_NumberingSystem
      [@@js.get "numberingSystem"]

    val set_numberingSystem : t -> _Intl_NumberingSystem -> unit
      [@@js.set "numberingSystem"]

    val get_hourCycle
      :  t
      -> ([ `h11 [@js "h11"]
          | `h12 [@js "h12"]
          | `h23 [@js "h23"]
          | `h24 [@js "h24"]
          ]
         [@js.enum])
      [@@js.get "hourCycle"]

    val set_hourCycle : t -> ([ `h11 | `h12 | `h23 | `h24 ][@js.enum]) -> unit
      [@@js.set "hourCycle"]

    val get_fractionalSecondDigits
      :  t
      -> ([ `L_n_0 [@js 0] | `L_n_1 [@js 1] | `L_n_2 [@js 2] | `L_n_3 [@js 3] ]
         [@js.enum])
      [@@js.get "fractionalSecondDigits"]

    val set_fractionalSecondDigits
      :  t
      -> ([ `L_n_0 | `L_n_1 | `L_n_2 | `L_n_3 ][@js.enum])
      -> unit
      [@@js.set "fractionalSecondDigits"]
  end
  [@@js.scope "DateTimeFormatOptions"]
end
[@@js.scope "Intl"]
