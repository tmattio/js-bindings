[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017

module Intl : sig
  include module type of struct
    include Intl
  end

  module LDMLPluralRule : sig
    type t =
      ([ `few [@js "few"]
       | `many [@js "many"]
       | `one [@js "one"]
       | `other [@js "other"]
       | `two [@js "two"]
       | `zero [@js "zero"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PluralRuleType : sig
    type t =
      ([ `cardinal [@js "cardinal"]
       | `ordinal [@js "ordinal"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PluralRulesOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale_matcher
      :  t
      -> ([ `best_fit [@js "best fit"] | `lookup [@js "lookup"] ][@js.enum])
      [@@js.get "localeMatcher"]

    val set_locale_matcher : t -> ([ `best_fit | `lookup ][@js.enum]) -> unit
      [@@js.set "localeMatcher"]

    val get_type : t -> PluralRuleType.t [@@js.get "type"]

    val set_type : t -> PluralRuleType.t -> unit [@@js.set "type"]

    val get_minimum_integer_digits : t -> int [@@js.get "minimumIntegerDigits"]

    val set_minimum_integer_digits : t -> int -> unit
      [@@js.set "minimumIntegerDigits"]

    val get_minimum_fraction_digits : t -> int
      [@@js.get "minimumFractionDigits"]

    val set_minimum_fraction_digits : t -> int -> unit
      [@@js.set "minimumFractionDigits"]

    val get_maximum_fraction_digits : t -> int
      [@@js.get "maximumFractionDigits"]

    val set_maximum_fraction_digits : t -> int -> unit
      [@@js.set "maximumFractionDigits"]

    val get_minimum_significant_digits : t -> int
      [@@js.get "minimumSignificantDigits"]

    val set_minimum_significant_digits : t -> int -> unit
      [@@js.set "minimumSignificantDigits"]

    val get_maximum_significant_digits : t -> int
      [@@js.get "maximumSignificantDigits"]

    val set_maximum_significant_digits : t -> int -> unit
      [@@js.set "maximumSignificantDigits"]
  end
  [@@js.scope "PluralRulesOptions"]

  module ResolvedPluralRulesOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> string [@@js.get "locale"]

    val set_locale : t -> string -> unit [@@js.set "locale"]

    val get_plural_categories : t -> LDMLPluralRule.t list
      [@@js.get "pluralCategories"]

    val set_plural_categories : t -> LDMLPluralRule.t list -> unit
      [@@js.set "pluralCategories"]

    val get_type : t -> PluralRuleType.t [@@js.get "type"]

    val set_type : t -> PluralRuleType.t -> unit [@@js.set "type"]

    val get_minimum_integer_digits : t -> int [@@js.get "minimumIntegerDigits"]

    val set_minimum_integer_digits : t -> int -> unit
      [@@js.set "minimumIntegerDigits"]

    val get_minimum_fraction_digits : t -> int
      [@@js.get "minimumFractionDigits"]

    val set_minimum_fraction_digits : t -> int -> unit
      [@@js.set "minimumFractionDigits"]

    val get_maximum_fraction_digits : t -> int
      [@@js.get "maximumFractionDigits"]

    val set_maximum_fraction_digits : t -> int -> unit
      [@@js.set "maximumFractionDigits"]

    val get_minimum_significant_digits : t -> int
      [@@js.get "minimumSignificantDigits"]

    val set_minimum_significant_digits : t -> int -> unit
      [@@js.set "minimumSignificantDigits"]

    val get_maximum_significant_digits : t -> int
      [@@js.get "maximumSignificantDigits"]

    val set_maximum_significant_digits : t -> int -> unit
      [@@js.set "maximumSignificantDigits"]
  end
  [@@js.scope "ResolvedPluralRulesOptions"]

  module PluralRules : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolved_options : t -> ResolvedPluralRulesOptions.t
      [@@js.call "resolvedOptions"]

    val select : t -> n:int -> LDMLPluralRule.t [@@js.call "select"]
  end
  [@@js.scope "PluralRules"]

  module AnonymousInterface0 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  t
      -> ?locales:string list or_string
      -> ?options:PluralRulesOptions.t
      -> unit
      -> PluralRules.t
      [@@js.apply_newable]

    val apply
      :  t
      -> ?locales:string list or_string
      -> ?options:PluralRulesOptions.t
      -> unit
      -> PluralRules.t
      [@@js.apply]

    val supported_locales_of
      :  t
      -> locales:string list or_string
      -> ?options:PluralRulesOptions.t
      -> unit
      -> string list
      [@@js.call "supportedLocalesOf"]
  end

  val plural_rules : AnonymousInterface0.t [@@js.global "PluralRules"]
end
[@@js.scope "Intl"]
