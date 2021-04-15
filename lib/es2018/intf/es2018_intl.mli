[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _Intl_LDMLPluralRule =
      ([ `few [@js "few"]
       | `many [@js "many"]
       | `one [@js "one"]
       | `other [@js "other"]
       | `two [@js "two"]
       | `zero [@js "zero"]
       ]
      [@js.enum])

    and _Intl_PluralRuleType =
      ([ `cardinal [@js "cardinal"]
       | `ordinal [@js "ordinal"]
       ]
      [@js.enum])

    and _Intl_PluralRules = [ `Intl_PluralRules ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_PluralRulesOptions = [ `Intl_PluralRulesOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Intl_ResolvedPluralRulesOptions =
      [ `Intl_ResolvedPluralRulesOptions ] intf
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
    -> ?locales:string list or_string
    -> ?options:_Intl_PluralRulesOptions
    -> unit
    -> _Intl_PluralRules
    [@@js.apply_newable]

  val apply
    :  t
    -> ?locales:string list or_string
    -> ?options:_Intl_PluralRulesOptions
    -> unit
    -> _Intl_PluralRules
    [@@js.apply]

  val supportedLocalesOf
    :  t
    -> locales:string list or_string
    -> ?options:_Intl_PluralRulesOptions
    -> unit
    -> string list
    [@@js.call "supportedLocalesOf"]
end

module Intl : sig
  module LDMLPluralRule : sig
    type t = _Intl_LDMLPluralRule

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PluralRuleType : sig
    type t = _Intl_PluralRuleType

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PluralRulesOptions : sig
    type t = _Intl_PluralRulesOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localeMatcher
      :  t
      -> ([ `best_fit [@js "best fit"] | `lookup [@js "lookup"] ][@js.enum])
      [@@js.get "localeMatcher"]

    val set_localeMatcher : t -> ([ `best_fit | `lookup ][@js.enum]) -> unit
      [@@js.set "localeMatcher"]

    val get_type : t -> _Intl_PluralRuleType [@@js.get "type"]

    val set_type : t -> _Intl_PluralRuleType -> unit [@@js.set "type"]

    val get_minimumIntegerDigits : t -> float [@@js.get "minimumIntegerDigits"]

    val set_minimumIntegerDigits : t -> float -> unit
      [@@js.set "minimumIntegerDigits"]

    val get_minimumFractionDigits : t -> float
      [@@js.get "minimumFractionDigits"]

    val set_minimumFractionDigits : t -> float -> unit
      [@@js.set "minimumFractionDigits"]

    val get_maximumFractionDigits : t -> float
      [@@js.get "maximumFractionDigits"]

    val set_maximumFractionDigits : t -> float -> unit
      [@@js.set "maximumFractionDigits"]

    val get_minimumSignificantDigits : t -> float
      [@@js.get "minimumSignificantDigits"]

    val set_minimumSignificantDigits : t -> float -> unit
      [@@js.set "minimumSignificantDigits"]

    val get_maximumSignificantDigits : t -> float
      [@@js.get "maximumSignificantDigits"]

    val set_maximumSignificantDigits : t -> float -> unit
      [@@js.set "maximumSignificantDigits"]
  end
  [@@js.scope "PluralRulesOptions"]

  module ResolvedPluralRulesOptions : sig
    type t = _Intl_ResolvedPluralRulesOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_locale : t -> string [@@js.get "locale"]

    val set_locale : t -> string -> unit [@@js.set "locale"]

    val get_pluralCategories : t -> _Intl_LDMLPluralRule list
      [@@js.get "pluralCategories"]

    val set_pluralCategories : t -> _Intl_LDMLPluralRule list -> unit
      [@@js.set "pluralCategories"]

    val get_type : t -> _Intl_PluralRuleType [@@js.get "type"]

    val set_type : t -> _Intl_PluralRuleType -> unit [@@js.set "type"]

    val get_minimumIntegerDigits : t -> float [@@js.get "minimumIntegerDigits"]

    val set_minimumIntegerDigits : t -> float -> unit
      [@@js.set "minimumIntegerDigits"]

    val get_minimumFractionDigits : t -> float
      [@@js.get "minimumFractionDigits"]

    val set_minimumFractionDigits : t -> float -> unit
      [@@js.set "minimumFractionDigits"]

    val get_maximumFractionDigits : t -> float
      [@@js.get "maximumFractionDigits"]

    val set_maximumFractionDigits : t -> float -> unit
      [@@js.set "maximumFractionDigits"]

    val get_minimumSignificantDigits : t -> float
      [@@js.get "minimumSignificantDigits"]

    val set_minimumSignificantDigits : t -> float -> unit
      [@@js.set "minimumSignificantDigits"]

    val get_maximumSignificantDigits : t -> float
      [@@js.get "maximumSignificantDigits"]

    val set_maximumSignificantDigits : t -> float -> unit
      [@@js.set "maximumSignificantDigits"]
  end
  [@@js.scope "ResolvedPluralRulesOptions"]

  module PluralRules : sig
    type t = _Intl_PluralRules

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val resolvedOptions : t -> _Intl_ResolvedPluralRulesOptions
      [@@js.call "resolvedOptions"]

    val select : t -> n:float -> _Intl_LDMLPluralRule [@@js.call "select"]
  end
  [@@js.scope "PluralRules"]

  val pluralRules : anonymous_interface_0 [@@js.global "PluralRules"]
end
[@@js.scope "Intl"]

include module type of struct
  include Intl
end
