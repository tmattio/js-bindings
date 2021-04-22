[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2019
module Intl =
  struct
    include struct include Intl end
    module BCP47LanguageTag =
      struct
        type t = string
        let rec t_of_js : Ojs.t -> t =
          fun (x2 : Ojs.t) -> Ojs.string_of_js x2
        and t_to_js : t -> Ojs.t = fun (x1 : string) -> Ojs.string_to_js x1
      end
    module RelativeTimeFormatUnit =
      struct
        type t =
          [ `day  | `days  | `hour  | `hours  | `minute  | `minutes 
          | `month  | `months  | `quarter  | `quarters  | `second 
          | `seconds  | `week  | `weeks  | `year  | `years ]
        let rec t_of_js : Ojs.t -> t =
          fun (x4 : Ojs.t) ->
            let x5 = x4 in
            match Ojs.string_of_js x5 with
            | "day" -> `day
            | "days" -> `days
            | "hour" -> `hour
            | "hours" -> `hours
            | "minute" -> `minute
            | "minutes" -> `minutes
            | "month" -> `month
            | "months" -> `months
            | "quarter" -> `quarter
            | "quarters" -> `quarters
            | "second" -> `second
            | "seconds" -> `seconds
            | "week" -> `week
            | "weeks" -> `weeks
            | "year" -> `year
            | "years" -> `years
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun
            (x3 :
              [ `day  | `days  | `hour  | `hours  | `minute  | `minutes 
              | `month  | `months  | `quarter  | `quarters  | `second 
              | `seconds  | `week  | `weeks  | `year  | `years ])
            ->
            match x3 with
            | `day -> Ojs.string_to_js "day"
            | `days -> Ojs.string_to_js "days"
            | `hour -> Ojs.string_to_js "hour"
            | `hours -> Ojs.string_to_js "hours"
            | `minute -> Ojs.string_to_js "minute"
            | `minutes -> Ojs.string_to_js "minutes"
            | `month -> Ojs.string_to_js "month"
            | `months -> Ojs.string_to_js "months"
            | `quarter -> Ojs.string_to_js "quarter"
            | `quarters -> Ojs.string_to_js "quarters"
            | `second -> Ojs.string_to_js "second"
            | `seconds -> Ojs.string_to_js "seconds"
            | `week -> Ojs.string_to_js "week"
            | `weeks -> Ojs.string_to_js "weeks"
            | `year -> Ojs.string_to_js "year"
            | `years -> Ojs.string_to_js "years"
      end
    module RelativeTimeFormatLocaleMatcher =
      struct
        type t = [ `best_fit  | `lookup ]
        let rec t_of_js : Ojs.t -> t =
          fun (x7 : Ojs.t) ->
            let x8 = x7 in
            match Ojs.string_of_js x8 with
            | "best fit" -> `best_fit
            | "lookup" -> `lookup
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun (x6 : [ `best_fit  | `lookup ]) ->
            match x6 with
            | `best_fit -> Ojs.string_to_js "best fit"
            | `lookup -> Ojs.string_to_js "lookup"
      end
    module RelativeTimeFormatNumeric =
      struct
        type t = [ `always  | `auto ]
        let rec t_of_js : Ojs.t -> t =
          fun (x10 : Ojs.t) ->
            let x11 = x10 in
            match Ojs.string_of_js x11 with
            | "always" -> `always
            | "auto" -> `auto
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun (x9 : [ `always  | `auto ]) ->
            match x9 with
            | `always -> Ojs.string_to_js "always"
            | `auto -> Ojs.string_to_js "auto"
      end
    module RelativeTimeFormatStyle =
      struct
        type t = [ `long  | `narrow  | `short ]
        let rec t_of_js : Ojs.t -> t =
          fun (x13 : Ojs.t) ->
            let x14 = x13 in
            match Ojs.string_of_js x14 with
            | "long" -> `long
            | "narrow" -> `narrow
            | "short" -> `short
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun (x12 : [ `long  | `narrow  | `short ]) ->
            match x12 with
            | `long -> Ojs.string_to_js "long"
            | `narrow -> Ojs.string_to_js "narrow"
            | `short -> Ojs.string_to_js "short"
      end
    module Calendar =
      struct
        type t =
          [ `buddhist  | `chinese  | `coptic  | `dangi  | `ethioaa 
          | `ethiopic  | `ethiopic_amete_alem  | `gregorian  | `gregory 
          | `hebrew  | `indian  | `islamic  | `islamic_civil 
          | `islamic_rgsa  | `islamic_tbla  | `islamic_umalqura  | `islamicc 
          | `iso8601  | `japanese  | `persian  | `roc ]
        let rec t_of_js : Ojs.t -> t =
          fun (x16 : Ojs.t) ->
            let x17 = x16 in
            match Ojs.string_of_js x17 with
            | "buddhist" -> `buddhist
            | "chinese" -> `chinese
            | "coptic" -> `coptic
            | "dangi" -> `dangi
            | "ethioaa" -> `ethioaa
            | "ethiopic" -> `ethiopic
            | "ethiopic-amete-alem" -> `ethiopic_amete_alem
            | "gregorian" -> `gregorian
            | "gregory" -> `gregory
            | "hebrew" -> `hebrew
            | "indian" -> `indian
            | "islamic" -> `islamic
            | "islamic-civil" -> `islamic_civil
            | "islamic-rgsa" -> `islamic_rgsa
            | "islamic-tbla" -> `islamic_tbla
            | "islamic-umalqura" -> `islamic_umalqura
            | "islamicc" -> `islamicc
            | "iso8601" -> `iso8601
            | "japanese" -> `japanese
            | "persian" -> `persian
            | "roc" -> `roc
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun
            (x15 :
              [ `buddhist  | `chinese  | `coptic  | `dangi  | `ethioaa 
              | `ethiopic  | `ethiopic_amete_alem  | `gregorian  | `gregory 
              | `hebrew  | `indian  | `islamic  | `islamic_civil 
              | `islamic_rgsa  | `islamic_tbla  | `islamic_umalqura 
              | `islamicc  | `iso8601  | `japanese  | `persian  | `roc ])
            ->
            match x15 with
            | `buddhist -> Ojs.string_to_js "buddhist"
            | `chinese -> Ojs.string_to_js "chinese"
            | `coptic -> Ojs.string_to_js "coptic"
            | `dangi -> Ojs.string_to_js "dangi"
            | `ethioaa -> Ojs.string_to_js "ethioaa"
            | `ethiopic -> Ojs.string_to_js "ethiopic"
            | `ethiopic_amete_alem -> Ojs.string_to_js "ethiopic-amete-alem"
            | `gregorian -> Ojs.string_to_js "gregorian"
            | `gregory -> Ojs.string_to_js "gregory"
            | `hebrew -> Ojs.string_to_js "hebrew"
            | `indian -> Ojs.string_to_js "indian"
            | `islamic -> Ojs.string_to_js "islamic"
            | `islamic_civil -> Ojs.string_to_js "islamic-civil"
            | `islamic_rgsa -> Ojs.string_to_js "islamic-rgsa"
            | `islamic_tbla -> Ojs.string_to_js "islamic-tbla"
            | `islamic_umalqura -> Ojs.string_to_js "islamic-umalqura"
            | `islamicc -> Ojs.string_to_js "islamicc"
            | `iso8601 -> Ojs.string_to_js "iso8601"
            | `japanese -> Ojs.string_to_js "japanese"
            | `persian -> Ojs.string_to_js "persian"
            | `roc -> Ojs.string_to_js "roc"
      end
    module NumberingSystem =
      struct
        type t =
          [ `adlm  | `ahom  | `arab  | `arabext  | `armn  | `armnlow 
          | `bali  | `beng  | `bhks  | `brah  | `cakm  | `cham  | `cyrl 
          | `deva  | `diak  | `ethi  | `finance  | `fullwide  | `geor 
          | `gong  | `gonm  | `grek  | `greklow  | `gujr  | `guru 
          | `hanidays  | `hanidec  | `hans  | `hansfin  | `hant  | `hantfin 
          | `hebr  | `hmng  | `hmnp  | `java  | `jpan  | `jpanfin 
          | `jpanyear  | `kali  | `khmr  | `knda  | `lana  | `lanatham 
          | `laoo  | `latn  | `lepc  | `limb  | `mathbold  | `mathdbl 
          | `mathmono  | `mathsanb  | `mathsans  | `mlym  | `modi  | 
            `mong 
          | `mroo  | `mtei  | `mymr  | `mymrshan  | `mymrtlng  | `native 
          | `newa  | `nkoo  | `olck  | `orya  | `osma  | `rohg  | `roman 
          | `romanlow  | `saur  | `shrd  | `sind  | `sinh  | `sora  | 
            `sund 
          | `takr  | `talu  | `taml  | `tamldec  | `telu  | `thai  | 
            `tibt 
          | `tirh  | `traditio  | `traditional  | `vaii  | `wara  | `wcho ]
        let rec t_of_js : Ojs.t -> t =
          fun (x19 : Ojs.t) ->
            let x20 = x19 in
            match Ojs.string_of_js x20 with
            | "adlm" -> `adlm
            | "ahom" -> `ahom
            | "arab" -> `arab
            | "arabext" -> `arabext
            | "armn" -> `armn
            | "armnlow" -> `armnlow
            | "bali" -> `bali
            | "beng" -> `beng
            | "bhks" -> `bhks
            | "brah" -> `brah
            | "cakm" -> `cakm
            | "cham" -> `cham
            | "cyrl" -> `cyrl
            | "deva" -> `deva
            | "diak" -> `diak
            | "ethi" -> `ethi
            | "finance" -> `finance
            | "fullwide" -> `fullwide
            | "geor" -> `geor
            | "gong" -> `gong
            | "gonm" -> `gonm
            | "grek" -> `grek
            | "greklow" -> `greklow
            | "gujr" -> `gujr
            | "guru" -> `guru
            | "hanidays" -> `hanidays
            | "hanidec" -> `hanidec
            | "hans" -> `hans
            | "hansfin" -> `hansfin
            | "hant" -> `hant
            | "hantfin" -> `hantfin
            | "hebr" -> `hebr
            | "hmng" -> `hmng
            | "hmnp" -> `hmnp
            | "java" -> `java
            | "jpan" -> `jpan
            | "jpanfin" -> `jpanfin
            | "jpanyear" -> `jpanyear
            | "kali" -> `kali
            | "khmr" -> `khmr
            | "knda" -> `knda
            | "lana" -> `lana
            | "lanatham" -> `lanatham
            | "laoo" -> `laoo
            | "latn" -> `latn
            | "lepc" -> `lepc
            | "limb" -> `limb
            | "mathbold" -> `mathbold
            | "mathdbl" -> `mathdbl
            | "mathmono" -> `mathmono
            | "mathsanb" -> `mathsanb
            | "mathsans" -> `mathsans
            | "mlym" -> `mlym
            | "modi" -> `modi
            | "mong" -> `mong
            | "mroo" -> `mroo
            | "mtei" -> `mtei
            | "mymr" -> `mymr
            | "mymrshan" -> `mymrshan
            | "mymrtlng" -> `mymrtlng
            | "native" -> `native
            | "newa" -> `newa
            | "nkoo" -> `nkoo
            | "olck" -> `olck
            | "orya" -> `orya
            | "osma" -> `osma
            | "rohg" -> `rohg
            | "roman" -> `roman
            | "romanlow" -> `romanlow
            | "saur" -> `saur
            | "shrd" -> `shrd
            | "sind" -> `sind
            | "sinh" -> `sinh
            | "sora" -> `sora
            | "sund" -> `sund
            | "takr" -> `takr
            | "talu" -> `talu
            | "taml" -> `taml
            | "tamldec" -> `tamldec
            | "telu" -> `telu
            | "thai" -> `thai
            | "tibt" -> `tibt
            | "tirh" -> `tirh
            | "traditio" -> `traditio
            | "traditional" -> `traditional
            | "vaii" -> `vaii
            | "wara" -> `wara
            | "wcho" -> `wcho
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun
            (x18 :
              [ `adlm  | `ahom  | `arab  | `arabext  | `armn  | `armnlow 
              | `bali  | `beng  | `bhks  | `brah  | `cakm  | `cham  | 
                `cyrl 
              | `deva  | `diak  | `ethi  | `finance  | `fullwide  | `geor 
              | `gong  | `gonm  | `grek  | `greklow  | `gujr  | `guru 
              | `hanidays  | `hanidec  | `hans  | `hansfin  | `hant 
              | `hantfin  | `hebr  | `hmng  | `hmnp  | `java  | `jpan 
              | `jpanfin  | `jpanyear  | `kali  | `khmr  | `knda  | `lana 
              | `lanatham  | `laoo  | `latn  | `lepc  | `limb  | `mathbold 
              | `mathdbl  | `mathmono  | `mathsanb  | `mathsans  | `mlym 
              | `modi  | `mong  | `mroo  | `mtei  | `mymr  | `mymrshan 
              | `mymrtlng  | `native  | `newa  | `nkoo  | `olck  | `orya 
              | `osma  | `rohg  | `roman  | `romanlow  | `saur  | `shrd 
              | `sind  | `sinh  | `sora  | `sund  | `takr  | `talu  | 
                `taml 
              | `tamldec  | `telu  | `thai  | `tibt  | `tirh  | `traditio 
              | `traditional  | `vaii  | `wara  | `wcho ])
            ->
            match x18 with
            | `adlm -> Ojs.string_to_js "adlm"
            | `ahom -> Ojs.string_to_js "ahom"
            | `arab -> Ojs.string_to_js "arab"
            | `arabext -> Ojs.string_to_js "arabext"
            | `armn -> Ojs.string_to_js "armn"
            | `armnlow -> Ojs.string_to_js "armnlow"
            | `bali -> Ojs.string_to_js "bali"
            | `beng -> Ojs.string_to_js "beng"
            | `bhks -> Ojs.string_to_js "bhks"
            | `brah -> Ojs.string_to_js "brah"
            | `cakm -> Ojs.string_to_js "cakm"
            | `cham -> Ojs.string_to_js "cham"
            | `cyrl -> Ojs.string_to_js "cyrl"
            | `deva -> Ojs.string_to_js "deva"
            | `diak -> Ojs.string_to_js "diak"
            | `ethi -> Ojs.string_to_js "ethi"
            | `finance -> Ojs.string_to_js "finance"
            | `fullwide -> Ojs.string_to_js "fullwide"
            | `geor -> Ojs.string_to_js "geor"
            | `gong -> Ojs.string_to_js "gong"
            | `gonm -> Ojs.string_to_js "gonm"
            | `grek -> Ojs.string_to_js "grek"
            | `greklow -> Ojs.string_to_js "greklow"
            | `gujr -> Ojs.string_to_js "gujr"
            | `guru -> Ojs.string_to_js "guru"
            | `hanidays -> Ojs.string_to_js "hanidays"
            | `hanidec -> Ojs.string_to_js "hanidec"
            | `hans -> Ojs.string_to_js "hans"
            | `hansfin -> Ojs.string_to_js "hansfin"
            | `hant -> Ojs.string_to_js "hant"
            | `hantfin -> Ojs.string_to_js "hantfin"
            | `hebr -> Ojs.string_to_js "hebr"
            | `hmng -> Ojs.string_to_js "hmng"
            | `hmnp -> Ojs.string_to_js "hmnp"
            | `java -> Ojs.string_to_js "java"
            | `jpan -> Ojs.string_to_js "jpan"
            | `jpanfin -> Ojs.string_to_js "jpanfin"
            | `jpanyear -> Ojs.string_to_js "jpanyear"
            | `kali -> Ojs.string_to_js "kali"
            | `khmr -> Ojs.string_to_js "khmr"
            | `knda -> Ojs.string_to_js "knda"
            | `lana -> Ojs.string_to_js "lana"
            | `lanatham -> Ojs.string_to_js "lanatham"
            | `laoo -> Ojs.string_to_js "laoo"
            | `latn -> Ojs.string_to_js "latn"
            | `lepc -> Ojs.string_to_js "lepc"
            | `limb -> Ojs.string_to_js "limb"
            | `mathbold -> Ojs.string_to_js "mathbold"
            | `mathdbl -> Ojs.string_to_js "mathdbl"
            | `mathmono -> Ojs.string_to_js "mathmono"
            | `mathsanb -> Ojs.string_to_js "mathsanb"
            | `mathsans -> Ojs.string_to_js "mathsans"
            | `mlym -> Ojs.string_to_js "mlym"
            | `modi -> Ojs.string_to_js "modi"
            | `mong -> Ojs.string_to_js "mong"
            | `mroo -> Ojs.string_to_js "mroo"
            | `mtei -> Ojs.string_to_js "mtei"
            | `mymr -> Ojs.string_to_js "mymr"
            | `mymrshan -> Ojs.string_to_js "mymrshan"
            | `mymrtlng -> Ojs.string_to_js "mymrtlng"
            | `native -> Ojs.string_to_js "native"
            | `newa -> Ojs.string_to_js "newa"
            | `nkoo -> Ojs.string_to_js "nkoo"
            | `olck -> Ojs.string_to_js "olck"
            | `orya -> Ojs.string_to_js "orya"
            | `osma -> Ojs.string_to_js "osma"
            | `rohg -> Ojs.string_to_js "rohg"
            | `roman -> Ojs.string_to_js "roman"
            | `romanlow -> Ojs.string_to_js "romanlow"
            | `saur -> Ojs.string_to_js "saur"
            | `shrd -> Ojs.string_to_js "shrd"
            | `sind -> Ojs.string_to_js "sind"
            | `sinh -> Ojs.string_to_js "sinh"
            | `sora -> Ojs.string_to_js "sora"
            | `sund -> Ojs.string_to_js "sund"
            | `takr -> Ojs.string_to_js "takr"
            | `talu -> Ojs.string_to_js "talu"
            | `taml -> Ojs.string_to_js "taml"
            | `tamldec -> Ojs.string_to_js "tamldec"
            | `telu -> Ojs.string_to_js "telu"
            | `thai -> Ojs.string_to_js "thai"
            | `tibt -> Ojs.string_to_js "tibt"
            | `tirh -> Ojs.string_to_js "tirh"
            | `traditio -> Ojs.string_to_js "traditio"
            | `traditional -> Ojs.string_to_js "traditional"
            | `vaii -> Ojs.string_to_js "vaii"
            | `wara -> Ojs.string_to_js "wara"
            | `wcho -> Ojs.string_to_js "wcho"
      end
    module RelativeTimeFormatOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x22 : Ojs.t) -> x22
        and t_to_js : t -> Ojs.t = fun (x21 : Ojs.t) -> x21
        let (get_locale_matcher : t -> RelativeTimeFormatLocaleMatcher.t) =
          fun (x23 : t) ->
            RelativeTimeFormatLocaleMatcher.t_of_js
              (Ojs.get_prop_ascii (t_to_js x23) "localeMatcher")
        let (set_locale_matcher :
          t -> RelativeTimeFormatLocaleMatcher.t -> unit) =
          fun (x24 : t) ->
            fun (x25 : RelativeTimeFormatLocaleMatcher.t) ->
              Ojs.set_prop_ascii (t_to_js x24) "localeMatcher"
                (RelativeTimeFormatLocaleMatcher.t_to_js x25)
        let (get_numeric : t -> RelativeTimeFormatNumeric.t) =
          fun (x26 : t) ->
            RelativeTimeFormatNumeric.t_of_js
              (Ojs.get_prop_ascii (t_to_js x26) "numeric")
        let (set_numeric : t -> RelativeTimeFormatNumeric.t -> unit) =
          fun (x27 : t) ->
            fun (x28 : RelativeTimeFormatNumeric.t) ->
              Ojs.set_prop_ascii (t_to_js x27) "numeric"
                (RelativeTimeFormatNumeric.t_to_js x28)
        let (get_style : t -> RelativeTimeFormatStyle.t) =
          fun (x29 : t) ->
            RelativeTimeFormatStyle.t_of_js
              (Ojs.get_prop_ascii (t_to_js x29) "style")
        let (set_style : t -> RelativeTimeFormatStyle.t -> unit) =
          fun (x30 : t) ->
            fun (x31 : RelativeTimeFormatStyle.t) ->
              Ojs.set_prop_ascii (t_to_js x30) "style"
                (RelativeTimeFormatStyle.t_to_js x31)
      end
    module ResolvedRelativeTimeFormatOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x33 : Ojs.t) -> x33
        and t_to_js : t -> Ojs.t = fun (x32 : Ojs.t) -> x32
        let (get_locale : t -> string) =
          fun (x34 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x34) "locale")
        let (set_locale : t -> string -> unit) =
          fun (x35 : t) ->
            fun (x36 : string) ->
              Ojs.set_prop_ascii (t_to_js x35) "locale"
                (Ojs.string_to_js x36)
        let (get_style : t -> RelativeTimeFormatStyle.t) =
          fun (x37 : t) ->
            RelativeTimeFormatStyle.t_of_js
              (Ojs.get_prop_ascii (t_to_js x37) "style")
        let (set_style : t -> RelativeTimeFormatStyle.t -> unit) =
          fun (x38 : t) ->
            fun (x39 : RelativeTimeFormatStyle.t) ->
              Ojs.set_prop_ascii (t_to_js x38) "style"
                (RelativeTimeFormatStyle.t_to_js x39)
        let (get_numeric : t -> RelativeTimeFormatNumeric.t) =
          fun (x40 : t) ->
            RelativeTimeFormatNumeric.t_of_js
              (Ojs.get_prop_ascii (t_to_js x40) "numeric")
        let (set_numeric : t -> RelativeTimeFormatNumeric.t -> unit) =
          fun (x41 : t) ->
            fun (x42 : RelativeTimeFormatNumeric.t) ->
              Ojs.set_prop_ascii (t_to_js x41) "numeric"
                (RelativeTimeFormatNumeric.t_to_js x42)
        let (get_numbering_system : t -> string) =
          fun (x43 : t) ->
            Ojs.string_of_js
              (Ojs.get_prop_ascii (t_to_js x43) "numberingSystem")
        let (set_numbering_system : t -> string -> unit) =
          fun (x44 : t) ->
            fun (x45 : string) ->
              Ojs.set_prop_ascii (t_to_js x44) "numberingSystem"
                (Ojs.string_to_js x45)
      end
    module RelativeTimeFormatPart =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x47 : Ojs.t) -> x47
        and t_to_js : t -> Ojs.t = fun (x46 : Ojs.t) -> x46
        let (get_type : t -> string) =
          fun (x48 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x48) "type")
        let (set_type : t -> string -> unit) =
          fun (x49 : t) ->
            fun (x50 : string) ->
              Ojs.set_prop_ascii (t_to_js x49) "type" (Ojs.string_to_js x50)
        let (get_value : t -> string) =
          fun (x51 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x51) "value")
        let (set_value : t -> string -> unit) =
          fun (x52 : t) ->
            fun (x53 : string) ->
              Ojs.set_prop_ascii (t_to_js x52) "value" (Ojs.string_to_js x53)
        let (get_unit : t -> RelativeTimeFormatUnit.t) =
          fun (x54 : t) ->
            RelativeTimeFormatUnit.t_of_js
              (Ojs.get_prop_ascii (t_to_js x54) "unit")
        let (set_unit : t -> RelativeTimeFormatUnit.t -> unit) =
          fun (x55 : t) ->
            fun (x56 : RelativeTimeFormatUnit.t) ->
              Ojs.set_prop_ascii (t_to_js x55) "unit"
                (RelativeTimeFormatUnit.t_to_js x56)
      end
    module RelativeTimeFormat =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x58 : Ojs.t) -> x58
        and t_to_js : t -> Ojs.t = fun (x57 : Ojs.t) -> x57
        let (format :
          t -> value:int -> unit:RelativeTimeFormatUnit.t -> string) =
          fun (x61 : t) ->
            fun ~value:(x59 : int) ->
              fun ~unit:(x60 : RelativeTimeFormatUnit.t) ->
                Ojs.string_of_js
                  (Ojs.call (t_to_js x61) "format"
                     [|(Ojs.int_to_js x59);(RelativeTimeFormatUnit.t_to_js
                                              x60)|])
        let (format_to_parts :
          t ->
            value:int ->
              unit:RelativeTimeFormatUnit.t -> RelativeTimeFormatPart.t list)
          =
          fun (x64 : t) ->
            fun ~value:(x62 : int) ->
              fun ~unit:(x63 : RelativeTimeFormatUnit.t) ->
                Ojs.list_of_js RelativeTimeFormatPart.t_of_js
                  (Ojs.call (t_to_js x64) "formatToParts"
                     [|(Ojs.int_to_js x62);(RelativeTimeFormatUnit.t_to_js
                                              x63)|])
        let (resolved_options : t -> ResolvedRelativeTimeFormatOptions.t) =
          fun (x66 : t) ->
            ResolvedRelativeTimeFormatOptions.t_of_js
              (Ojs.call (t_to_js x66) "resolvedOptions" [||])
      end
    module AnonymousInterface0 =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x68 : Ojs.t) -> x68
        and t_to_js : t -> Ojs.t = fun (x67 : Ojs.t) -> x67
        let (create :
          t ->
            ?locales:(string, string) or_array ->
              ?options:RelativeTimeFormatOptions.t ->
                unit -> RelativeTimeFormat.t)
          =
          fun (x76 : t) ->
            fun ?locales:(x69 : (string, string) or_array option) ->
              fun ?options:(x70 : RelativeTimeFormatOptions.t option) ->
                fun () ->
                  RelativeTimeFormat.t_of_js
                    (Ojs.new_obj_arr (t_to_js x76)
                       (let x71 =
                          Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                            [||] in
                        (match x69 with
                         | Some x73 ->
                             ignore
                               (Ojs.call x71 "push"
                                  [|(or_array_to_js Ojs.string_to_js
                                       Ojs.string_to_js x73)|])
                         | None -> ());
                        (match x70 with
                         | Some x72 ->
                             ignore
                               (Ojs.call x71 "push"
                                  [|(RelativeTimeFormatOptions.t_to_js x72)|])
                         | None -> ());
                        x71))
        let (supported_locales_of :
          t ->
            locales:(string, string) or_array ->
              ?options:RelativeTimeFormatOptions.t -> unit -> string list)
          =
          fun (x83 : t) ->
            fun ~locales:(x77 : (string, string) or_array) ->
              fun ?options:(x78 : RelativeTimeFormatOptions.t option) ->
                fun () ->
                  Ojs.list_of_js Ojs.string_of_js
                    (let x84 = t_to_js x83 in
                     Ojs.call (Ojs.get_prop_ascii x84 "supportedLocalesOf")
                       "apply"
                       [|x84;((let x79 =
                                 Ojs.new_obj
                                   (Ojs.get_prop_ascii Ojs.global "Array")
                                   [||] in
                               ignore
                                 (Ojs.call x79 "push"
                                    [|(or_array_to_js Ojs.string_to_js
                                         Ojs.string_to_js x77)|]);
                               (match x78 with
                                | Some x80 ->
                                    ignore
                                      (Ojs.call x79 "push"
                                         [|(RelativeTimeFormatOptions.t_to_js
                                              x80)|])
                                | None -> ());
                               x79))|])
      end
    let (relative_time_format : AnonymousInterface0.t) =
      AnonymousInterface0.t_of_js
        (Ojs.get_prop_ascii (Ojs.get_prop_ascii Ojs.global "Intl")
           "RelativeTimeFormat")
    module NumberFormatOptions =
      struct
        include struct include NumberFormatOptions end
        let (get_compact_display : t -> string) =
          fun (x86 : t) ->
            Ojs.string_of_js
              (Ojs.get_prop_ascii (t_to_js x86) "compactDisplay")
        let (set_compact_display : t -> string -> unit) =
          fun (x87 : t) ->
            fun (x88 : string) ->
              Ojs.set_prop_ascii (t_to_js x87) "compactDisplay"
                (Ojs.string_to_js x88)
        let (get_notation : t -> string) =
          fun (x89 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x89) "notation")
        let (set_notation : t -> string -> unit) =
          fun (x90 : t) ->
            fun (x91 : string) ->
              Ojs.set_prop_ascii (t_to_js x90) "notation"
                (Ojs.string_to_js x91)
        let (get_sign_display : t -> string) =
          fun (x92 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x92) "signDisplay")
        let (set_sign_display : t -> string -> unit) =
          fun (x93 : t) ->
            fun (x94 : string) ->
              Ojs.set_prop_ascii (t_to_js x93) "signDisplay"
                (Ojs.string_to_js x94)
        let (get_unit : t -> string) =
          fun (x95 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x95) "unit")
        let (set_unit : t -> string -> unit) =
          fun (x96 : t) ->
            fun (x97 : string) ->
              Ojs.set_prop_ascii (t_to_js x96) "unit" (Ojs.string_to_js x97)
        let (get_unit_display : t -> string) =
          fun (x98 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x98) "unitDisplay")
        let (set_unit_display : t -> string -> unit) =
          fun (x99 : t) ->
            fun (x100 : string) ->
              Ojs.set_prop_ascii (t_to_js x99) "unitDisplay"
                (Ojs.string_to_js x100)
      end
    module ResolvedNumberFormatOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x102 : Ojs.t) -> x102
        and t_to_js : t -> Ojs.t = fun (x101 : Ojs.t) -> x101
        let (get_compact_display : t -> string) =
          fun (x103 : t) ->
            Ojs.string_of_js
              (Ojs.get_prop_ascii (t_to_js x103) "compactDisplay")
        let (set_compact_display : t -> string -> unit) =
          fun (x104 : t) ->
            fun (x105 : string) ->
              Ojs.set_prop_ascii (t_to_js x104) "compactDisplay"
                (Ojs.string_to_js x105)
        let (get_notation : t -> string) =
          fun (x106 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x106) "notation")
        let (set_notation : t -> string -> unit) =
          fun (x107 : t) ->
            fun (x108 : string) ->
              Ojs.set_prop_ascii (t_to_js x107) "notation"
                (Ojs.string_to_js x108)
        let (get_sign_display : t -> string) =
          fun (x109 : t) ->
            Ojs.string_of_js
              (Ojs.get_prop_ascii (t_to_js x109) "signDisplay")
        let (set_sign_display : t -> string -> unit) =
          fun (x110 : t) ->
            fun (x111 : string) ->
              Ojs.set_prop_ascii (t_to_js x110) "signDisplay"
                (Ojs.string_to_js x111)
        let (get_unit : t -> string) =
          fun (x112 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x112) "unit")
        let (set_unit : t -> string -> unit) =
          fun (x113 : t) ->
            fun (x114 : string) ->
              Ojs.set_prop_ascii (t_to_js x113) "unit"
                (Ojs.string_to_js x114)
        let (get_unit_display : t -> string) =
          fun (x115 : t) ->
            Ojs.string_of_js
              (Ojs.get_prop_ascii (t_to_js x115) "unitDisplay")
        let (set_unit_display : t -> string -> unit) =
          fun (x116 : t) ->
            fun (x117 : string) ->
              Ojs.set_prop_ascii (t_to_js x116) "unitDisplay"
                (Ojs.string_to_js x117)
      end
    module DateTimeFormatOptions =
      struct
        include struct include DateTimeFormatOptions end
        let (get_date_style : t -> [ `full  | `long  | `medium  | `short ]) =
          fun (x118 : t) ->
            let x119 = Ojs.get_prop_ascii (t_to_js x118) "dateStyle" in
            match Ojs.string_of_js x119 with
            | "full" -> `full
            | "long" -> `long
            | "medium" -> `medium
            | "short" -> `short
            | _ -> assert false
        let (set_date_style :
          t -> [ `full  | `long  | `medium  | `short ] -> unit) =
          fun (x120 : t) ->
            fun (x121 : [ `full  | `long  | `medium  | `short ]) ->
              Ojs.set_prop_ascii (t_to_js x120) "dateStyle"
                (match x121 with
                 | `full -> Ojs.string_to_js "full"
                 | `long -> Ojs.string_to_js "long"
                 | `medium -> Ojs.string_to_js "medium"
                 | `short -> Ojs.string_to_js "short")
        let (get_time_style : t -> [ `full  | `long  | `medium  | `short ]) =
          fun (x122 : t) ->
            let x123 = Ojs.get_prop_ascii (t_to_js x122) "timeStyle" in
            match Ojs.string_of_js x123 with
            | "full" -> `full
            | "long" -> `long
            | "medium" -> `medium
            | "short" -> `short
            | _ -> assert false
        let (set_time_style :
          t -> [ `full  | `long  | `medium  | `short ] -> unit) =
          fun (x124 : t) ->
            fun (x125 : [ `full  | `long  | `medium  | `short ]) ->
              Ojs.set_prop_ascii (t_to_js x124) "timeStyle"
                (match x125 with
                 | `full -> Ojs.string_to_js "full"
                 | `long -> Ojs.string_to_js "long"
                 | `medium -> Ojs.string_to_js "medium"
                 | `short -> Ojs.string_to_js "short")
        let (get_calendar : t -> Calendar.t) =
          fun (x126 : t) ->
            Calendar.t_of_js (Ojs.get_prop_ascii (t_to_js x126) "calendar")
        let (set_calendar : t -> Calendar.t -> unit) =
          fun (x127 : t) ->
            fun (x128 : Calendar.t) ->
              Ojs.set_prop_ascii (t_to_js x127) "calendar"
                (Calendar.t_to_js x128)
        let (get_day_period : t -> [ `long  | `narrow  | `short ]) =
          fun (x129 : t) ->
            let x130 = Ojs.get_prop_ascii (t_to_js x129) "dayPeriod" in
            match Ojs.string_of_js x130 with
            | "long" -> `long
            | "narrow" -> `narrow
            | "short" -> `short
            | _ -> assert false
        let (set_day_period : t -> [ `long  | `narrow  | `short ] -> unit) =
          fun (x131 : t) ->
            fun (x132 : [ `long  | `narrow  | `short ]) ->
              Ojs.set_prop_ascii (t_to_js x131) "dayPeriod"
                (match x132 with
                 | `long -> Ojs.string_to_js "long"
                 | `narrow -> Ojs.string_to_js "narrow"
                 | `short -> Ojs.string_to_js "short")
        let (get_numbering_system : t -> NumberingSystem.t) =
          fun (x133 : t) ->
            NumberingSystem.t_of_js
              (Ojs.get_prop_ascii (t_to_js x133) "numberingSystem")
        let (set_numbering_system : t -> NumberingSystem.t -> unit) =
          fun (x134 : t) ->
            fun (x135 : NumberingSystem.t) ->
              Ojs.set_prop_ascii (t_to_js x134) "numberingSystem"
                (NumberingSystem.t_to_js x135)
        let (get_hour_cycle : t -> [ `h11  | `h12  | `h23  | `h24 ]) =
          fun (x136 : t) ->
            let x137 = Ojs.get_prop_ascii (t_to_js x136) "hourCycle" in
            match Ojs.string_of_js x137 with
            | "h11" -> `h11
            | "h12" -> `h12
            | "h23" -> `h23
            | "h24" -> `h24
            | _ -> assert false
        let (set_hour_cycle : t -> [ `h11  | `h12  | `h23  | `h24 ] -> unit)
          =
          fun (x138 : t) ->
            fun (x139 : [ `h11  | `h12  | `h23  | `h24 ]) ->
              Ojs.set_prop_ascii (t_to_js x138) "hourCycle"
                (match x139 with
                 | `h11 -> Ojs.string_to_js "h11"
                 | `h12 -> Ojs.string_to_js "h12"
                 | `h23 -> Ojs.string_to_js "h23"
                 | `h24 -> Ojs.string_to_js "h24")
        let (get_fractional_second_digits :
          t -> [ `L_n_0  | `L_n_1  | `L_n_2  | `L_n_3 ]) =
          fun (x140 : t) ->
            let x141 =
              Ojs.get_prop_ascii (t_to_js x140) "fractionalSecondDigits" in
            match Ojs.int_of_js x141 with
            | 0 -> `L_n_0
            | 1 -> `L_n_1
            | 2 -> `L_n_2
            | 3 -> `L_n_3
            | _ -> assert false
        let (set_fractional_second_digits :
          t -> [ `L_n_0  | `L_n_1  | `L_n_2  | `L_n_3 ] -> unit) =
          fun (x142 : t) ->
            fun (x143 : [ `L_n_0  | `L_n_1  | `L_n_2  | `L_n_3 ]) ->
              Ojs.set_prop_ascii (t_to_js x142) "fractionalSecondDigits"
                (match x143 with
                 | `L_n_0 -> Ojs.string_to_js "LN0"
                 | `L_n_1 -> Ojs.string_to_js "LN1"
                 | `L_n_2 -> Ojs.string_to_js "LN2"
                 | `L_n_3 -> Ojs.string_to_js "LN3")
      end
  end
