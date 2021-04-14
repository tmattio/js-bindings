[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type util_CustomInspectFunction = [ `Util_CustomInspectFunction ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'TCustom util_CustomPromisify =
      ( 'TCustom util_CustomPromisifyLegacy
      , 'TCustom util_CustomPromisifySymbol )
      union2

    and 'TCustom util_CustomPromisifyLegacy =
      [ `Util_CustomPromisifyLegacy of 'TCustom | `Function ] intf
    [@@js.custom
      { of_js = (fun _TCustom -> Obj.magic)
      ; to_js = (fun _TCustom -> Obj.magic)
      }]

    and 'TCustom util_CustomPromisifySymbol =
      [ `Util_CustomPromisifySymbol of 'TCustom | `Function ] intf
    [@@js.custom
      { of_js = (fun _TCustom -> Obj.magic)
      ; to_js = (fun _TCustom -> Obj.magic)
      }]

    and util_EncodeIntoResult = [ `Util_EncodeIntoResult ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and util_InspectOptions = [ `Util_InspectOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and util_InspectOptionsStylized =
      [ `Util_InspectOptionsStylized | `Util_InspectOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and util_Style =
      ([ `bigint [@js "bigint"]
       | `boolean [@js "boolean"]
       | `date [@js "date"]
       | `module_ [@js "module"]
       | `null [@js "null"]
       | `number [@js "number"]
       | `regexp [@js "regexp"]
       | `special [@js "special"]
       | `string [@js "string"]
       | `symbol [@js "symbol"]
       | `undefined [@js "undefined"]
       ]
      [@js.enum])

    and util_TextDecoder = [ `Util_TextDecoder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and util_TextEncoder = [ `Util_TextEncoder ] intf
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
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_fatal : t -> bool [@@js.get "fatal"]

  val set_fatal : t -> bool -> unit [@@js.set "fatal"]

  val get_ignoreBOM : t -> bool [@@js.get "ignoreBOM"]

  val set_ignoreBOM : t -> bool -> unit [@@js.set "ignoreBOM"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stream : t -> bool [@@js.get "stream"]

  val set_stream : t -> bool -> unit [@@js.set "stream"]
end

module Util : sig
  module InspectOptions : sig
    type t = util_InspectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> InspectOptions.t [@@js.cast]
  end
  [@@js.scope "InspectOptions"]

  module Style : sig
    type t = util_Style

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CustomInspectFunction : sig
    type t = util_CustomInspectFunction

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> depth:float
      -> options:util_InspectOptionsStylized
      -> string
      [@@js.apply]
  end
  [@@js.scope "CustomInspectFunction"]

  module InspectOptionsStylized : sig
    type t = util_InspectOptionsStylized

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val stylize : t -> text:string -> styleType:util_Style -> string
      [@@js.call "stylize"]

    val cast : t -> util_InspectOptions [@@js.cast]
  end
  [@@js.scope "InspectOptionsStylized"]

  val format : ?format:any -> param:(any list[@js.variadic]) -> string
    [@@js.global "format"]

  val formatWithOptions
    :  inspectOptions:util_InspectOptions
    -> ?format:any
    -> param:(any list[@js.variadic])
    -> string
    [@@js.global "formatWithOptions"]

  val log : string:string -> unit [@@js.global "log"]

  val inspect
    :  object_:any
    -> ?showHidden:bool
    -> ?depth:float or_null
    -> ?color:bool
    -> unit
    -> string
    [@@js.global "inspect"]

  val inspect : object_:any -> options:util_InspectOptions -> string
    [@@js.global "inspect"]

  module Inspect : sig
    val colors : (float * float) Dict.t [@@js.global "colors"]

    val styles : (* FIXME: unknown type '{ [K in Style]: string }' *) any
      [@@js.global "styles"]

    val defaultOptions : util_InspectOptions [@@js.global "defaultOptions"]

    val replDefaults : util_InspectOptions [@@js.global "replDefaults"]

    val custom : (* FIXME: unknown type 'unique symbol' *) any
      [@@js.global "custom"]
  end
  [@@js.scope "inspect"]

  val isArray : object_:any -> bool [@@js.global "isArray"]

  val isRegExp : object_:any -> bool [@@js.global "isRegExp"]

  val isDate : object_:any -> bool [@@js.global "isDate"]

  val isError : object_:any -> bool [@@js.global "isError"]

  val inherits : constructor:any -> superConstructor:any -> unit
    [@@js.global "inherits"]

  val debuglog
    :  key:string
    -> (msg:string -> param:(any list[@js.variadic]) -> unit[@js.dummy])
    [@@js.global "debuglog"]

  val isBoolean : object_:any -> bool [@@js.global "isBoolean"]

  val isBuffer : object_:any -> bool [@@js.global "isBuffer"]

  val isFunction : object_:any -> bool [@@js.global "isFunction"]

  val isNull : object_:any -> bool [@@js.global "isNull"]

  val isNullOrUndefined : object_:any -> bool [@@js.global "isNullOrUndefined"]

  val isNumber : object_:any -> bool [@@js.global "isNumber"]

  val isObject : object_:any -> bool [@@js.global "isObject"]

  val isPrimitive : object_:any -> bool [@@js.global "isPrimitive"]

  val isString : object_:any -> bool [@@js.global "isString"]

  val isSymbol : object_:any -> bool [@@js.global "isSymbol"]

  val isUndefined : object_:any -> bool [@@js.global "isUndefined"]

  val deprecate : fn:'T -> message:string -> ?code:string -> unit -> 'T
    [@@js.global "deprecate"]

  val isDeepStrictEqual : val1:any -> val2:any -> bool
    [@@js.global "isDeepStrictEqual"]

  val callbackify
    :  fn:(unit -> unit Promise.t)
    -> (callback:(err:ErrnoException.t -> unit) -> unit[@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(unit -> 'TResult Promise.t)
    -> (callback:(err:ErrnoException.t -> result:'TResult -> unit) -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> unit Promise.t)
    -> (arg1:'T1 -> callback:(err:ErrnoException.t -> unit) -> unit[@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> 'TResult Promise.t)
    -> (arg1:'T1
        -> callback:(err:ErrnoException.t -> result:'TResult -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> arg2:'T2 -> unit Promise.t)
    -> (arg1:'T1 -> arg2:'T2 -> callback:(err:ErrnoException.t -> unit) -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> arg2:'T2 -> 'TResult Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> callback:(err:ErrnoException.t or_null -> result:'TResult -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> unit Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> callback:(err:ErrnoException.t -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> 'TResult Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> callback:(err:ErrnoException.t or_null -> result:'TResult -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> arg4:'T4 -> unit Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> callback:(err:ErrnoException.t -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:(arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> arg4:'T4 -> 'TResult Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> callback:(err:ErrnoException.t or_null -> result:'TResult -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> arg5:'T5
          -> unit Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> arg5:'T5
        -> callback:(err:ErrnoException.t -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> arg5:'T5
          -> 'TResult Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> arg5:'T5
        -> callback:(err:ErrnoException.t or_null -> result:'TResult -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> arg5:'T5
          -> arg6:'T6
          -> unit Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> arg5:'T5
        -> arg6:'T6
        -> callback:(err:ErrnoException.t -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  val callbackify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> arg5:'T5
          -> arg6:'T6
          -> 'TResult Promise.t)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> arg5:'T5
        -> arg6:'T6
        -> callback:(err:ErrnoException.t or_null -> result:'TResult -> unit)
        -> unit
       [@js.dummy])
    [@@js.global "callbackify"]

  module CustomPromisifyLegacy : sig
    type 'TCustom t = 'TCustom util_CustomPromisifyLegacy

    val t_to_js : ('TCustom -> Ojs.t) -> 'TCustom t -> Ojs.t

    val t_of_js : (Ojs.t -> 'TCustom) -> Ojs.t -> 'TCustom t

    val get___promisify__ : 'TCustom t -> 'TCustom [@@js.get "__promisify__"]

    val set___promisify__ : 'TCustom t -> 'TCustom -> unit
      [@@js.set "__promisify__"]

    val cast : 'TCustom t -> untyped_function [@@js.cast]
  end
  [@@js.scope "CustomPromisifyLegacy"]

  module CustomPromisifySymbol : sig
    type 'TCustom t = 'TCustom util_CustomPromisifySymbol

    val t_to_js : ('TCustom -> Ojs.t) -> 'TCustom t -> Ojs.t

    val t_of_js : (Ojs.t -> 'TCustom) -> Ojs.t -> 'TCustom t

    val get__promisify_custom_ : 'TCustom t -> 'TCustom
      [@@js.get "[promisify.custom]"]

    val set__promisify_custom_ : 'TCustom t -> 'TCustom -> unit
      [@@js.set "[promisify.custom]"]

    val cast : 'TCustom t -> untyped_function [@@js.cast]
  end
  [@@js.scope "CustomPromisifySymbol"]

  module CustomPromisify : sig
    type 'TCustom t = 'TCustom util_CustomPromisify

    val t_to_js : ('TCustom -> Ojs.t) -> 'TCustom t -> Ojs.t

    val t_of_js : (Ojs.t -> 'TCustom) -> Ojs.t -> 'TCustom t
  end

  val promisify : fn:'TCustom util_CustomPromisify -> 'TCustom
    [@@js.global "promisify"]

  val promisify
    :  fn:(callback:(err:any -> result:'TResult -> unit) -> unit)
    -> (unit -> 'TResult Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:(callback:(?err:any -> unit -> unit) -> unit)
    -> (unit -> unit Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:(arg1:'T1 -> callback:(err:any -> result:'TResult -> unit) -> unit)
    -> (arg1:'T1 -> 'TResult Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:(arg1:'T1 -> callback:(?err:any -> unit -> unit) -> unit)
    -> (arg1:'T1 -> unit Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> callback:(err:any -> result:'TResult -> unit)
          -> unit)
    -> (arg1:'T1 -> arg2:'T2 -> 'TResult Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:(arg1:'T1 -> arg2:'T2 -> callback:(?err:any -> unit -> unit) -> unit)
    -> (arg1:'T1 -> arg2:'T2 -> unit Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> callback:(err:any -> result:'TResult -> unit)
          -> unit)
    -> (arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> 'TResult Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> callback:(?err:any -> unit -> unit)
          -> unit)
    -> (arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> unit Promise.t[@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> callback:(err:any -> result:'TResult -> unit)
          -> unit)
    -> (arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> arg4:'T4 -> 'TResult Promise.t
       [@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> callback:(?err:any -> unit -> unit)
          -> unit)
    -> (arg1:'T1 -> arg2:'T2 -> arg3:'T3 -> arg4:'T4 -> unit Promise.t
       [@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> arg5:'T5
          -> callback:(err:any -> result:'TResult -> unit)
          -> unit)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> arg5:'T5
        -> 'TResult Promise.t
       [@js.dummy])
    [@@js.global "promisify"]

  val promisify
    :  fn:
         (arg1:'T1
          -> arg2:'T2
          -> arg3:'T3
          -> arg4:'T4
          -> arg5:'T5
          -> callback:(?err:any -> unit -> unit)
          -> unit)
    -> (arg1:'T1
        -> arg2:'T2
        -> arg3:'T3
        -> arg4:'T4
        -> arg5:'T5
        -> unit Promise.t
       [@js.dummy])
    [@@js.global "promisify"]

  val promisify : fn:untyped_function -> untyped_function
    [@@js.global "promisify"]

  module Promisify : sig
    val custom : (* FIXME: unknown type 'unique symbol' *) any
      [@@js.global "custom"]
  end
  [@@js.scope "promisify"]

  module Types : sig
    val isAnyArrayBuffer : object_:any -> bool [@@js.global "isAnyArrayBuffer"]

    val isArgumentsObject : object_:any -> bool
      [@@js.global "isArgumentsObject"]

    val isArrayBuffer : object_:any -> bool [@@js.global "isArrayBuffer"]

    val isArrayBufferView : object_:any -> bool
      [@@js.global "isArrayBufferView"]

    val isAsyncFunction : object_:any -> bool [@@js.global "isAsyncFunction"]

    val isBigInt64Array : value:any -> bool [@@js.global "isBigInt64Array"]

    val isBigUint64Array : value:any -> bool [@@js.global "isBigUint64Array"]

    val isBooleanObject : object_:any -> bool [@@js.global "isBooleanObject"]

    val isBoxedPrimitive : object_:any -> bool [@@js.global "isBoxedPrimitive"]

    val isDataView : object_:any -> bool [@@js.global "isDataView"]

    val isDate : object_:any -> bool [@@js.global "isDate"]

    val isExternal : object_:any -> bool [@@js.global "isExternal"]

    val isFloat32Array : object_:any -> bool [@@js.global "isFloat32Array"]

    val isFloat64Array : object_:any -> bool [@@js.global "isFloat64Array"]

    val isGeneratorFunction : object_:any -> bool
      [@@js.global "isGeneratorFunction"]

    val isGeneratorObject : object_:any -> bool
      [@@js.global "isGeneratorObject"]

    val isInt8Array : object_:any -> bool [@@js.global "isInt8Array"]

    val isInt16Array : object_:any -> bool [@@js.global "isInt16Array"]

    val isInt32Array : object_:any -> bool [@@js.global "isInt32Array"]

    val isMap : object_:('T, anonymous_interface_0) union2 -> bool
      [@@js.global "isMap"]

    val isMapIterator : object_:any -> bool [@@js.global "isMapIterator"]

    val isModuleNamespaceObject : value:any -> bool
      [@@js.global "isModuleNamespaceObject"]

    val isNativeError : object_:any -> bool [@@js.global "isNativeError"]

    val isNumberObject : object_:any -> bool [@@js.global "isNumberObject"]

    val isPromise : object_:any -> bool [@@js.global "isPromise"]

    val isProxy : object_:any -> bool [@@js.global "isProxy"]

    val isRegExp : object_:any -> bool [@@js.global "isRegExp"]

    val isSet : object_:('T, anonymous_interface_0) union2 -> bool
      [@@js.global "isSet"]

    val isSetIterator : object_:any -> bool [@@js.global "isSetIterator"]

    val isSharedArrayBuffer : object_:any -> bool
      [@@js.global "isSharedArrayBuffer"]

    val isStringObject : object_:any -> bool [@@js.global "isStringObject"]

    val isSymbolObject : object_:any -> bool [@@js.global "isSymbolObject"]

    val isTypedArray : object_:any -> bool [@@js.global "isTypedArray"]

    val isUint8Array : object_:any -> bool [@@js.global "isUint8Array"]

    val isUint8ClampedArray : object_:any -> bool
      [@@js.global "isUint8ClampedArray"]

    val isUint16Array : object_:any -> bool [@@js.global "isUint16Array"]

    val isUint32Array : object_:any -> bool [@@js.global "isUint32Array"]

    val isWeakMap : object_:any -> bool [@@js.global "isWeakMap"]

    val isWeakSet : object_:any -> bool [@@js.global "isWeakSet"]
  end
  [@@js.scope "types"]

  module TextDecoder : sig
    type t = util_TextDecoder

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> string [@@js.get "encoding"]

    val get_fatal : t -> bool [@@js.get "fatal"]

    val get_ignoreBOM : t -> bool [@@js.get "ignoreBOM"]

    val create : ?encoding:string -> ?options:anonymous_interface_1 -> unit -> t
      [@@js.create]

    val decode
      :  t
      -> ?input:(ArrayBuffer.t, ArrayBufferView.t) union2 or_null
      -> ?options:anonymous_interface_2
      -> unit
      -> string
      [@@js.call "decode"]
  end
  [@@js.scope "TextDecoder"]

  module EncodeIntoResult : sig
    type t = util_EncodeIntoResult

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_read : t -> float [@@js.get "read"]

    val set_read : t -> float -> unit [@@js.set "read"]

    val get_written : t -> float [@@js.get "written"]

    val set_written : t -> float -> unit [@@js.set "written"]
  end
  [@@js.scope "EncodeIntoResult"]

  module TextEncoder : sig
    type t = util_TextEncoder

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encoding : t -> string [@@js.get "encoding"]

    val encode : t -> ?input:string -> unit -> Uint8Array.t [@@js.call "encode"]

    val encodeInto
      :  t
      -> input:string
      -> output:Uint8Array.t
      -> util_EncodeIntoResult
      [@@js.call "encodeInto"]
  end
  [@@js.scope "TextEncoder"]
end
[@@js.scope Import.util]
