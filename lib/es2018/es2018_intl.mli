module Intl : sig
  module LDMLPluralRule : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PluralRuleType : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PluralRulesOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localeMatcher : t -> ([ `best_fit | `lookup ][@js.enum])

    val set_localeMatcher : t -> ([ `best_fit | `lookup ][@js.enum]) -> unit

    val get_type : t -> PluralRuleType.t

    val set_type : t -> PluralRuleType.t -> unit

    val get_minimumIntegerDigits : t -> float

    val set_minimumIntegerDigits : t -> float -> unit

    val get_minimumFractionDigits : t -> float

    val set_minimumFractionDigits : t -> float -> unit

    val get_maximumFractionDigits : t -> float

    val set_maximumFractionDigits : t -> float -> unit

    val get_minimumSignificantDigits : t -> float

    val set_minimumSignificantDigits : t -> float -> unit

    val get_maximumSignificantDigits : t -> float

    val set_maximumSignificantDigits : t -> float -> unit
  end

  module ResolvedPluralRulesOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> string

    val set_locale : t -> string -> unit

    val get_pluralCategories : t -> LDMLPluralRule.t list

    val set_pluralCategories : t -> LDMLPluralRule.t list -> unit

    val get_type : t -> PluralRuleType.t

    val set_type : t -> PluralRuleType.t -> unit

    val get_minimumIntegerDigits : t -> float

    val set_minimumIntegerDigits : t -> float -> unit

    val get_minimumFractionDigits : t -> float

    val set_minimumFractionDigits : t -> float -> unit

    val get_maximumFractionDigits : t -> float

    val set_maximumFractionDigits : t -> float -> unit

    val get_minimumSignificantDigits : t -> float

    val set_minimumSignificantDigits : t -> float -> unit

    val get_maximumSignificantDigits : t -> float

    val set_maximumSignificantDigits : t -> float -> unit
  end

  module PluralRules : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolvedOptions : t -> ResolvedPluralRulesOptions.t

    val select : t -> n:float -> LDMLPluralRule.t
  end

  (* TODO: Support anonymous interfaces *)
  (* val pluralRules : anonymous_interface_0  *)
end

include module type of struct
  include Intl
end
