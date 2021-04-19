[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Async_hooks : sig
  val executionAsyncId : unit -> int [@@js.global "executionAsyncId"]

  val executionAsyncResource : unit -> untyped_object
    [@@js.global "executionAsyncResource"]

  val triggerAsyncId : unit -> int [@@js.global "triggerAsyncId"]

  module HookCallbacks : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val init
      :  t
      -> asyncId:int
      -> type_:string
      -> triggerAsyncId:int
      -> resource:untyped_object
      -> unit
      [@@js.call "init"]

    val before : t -> asyncId:int -> unit [@@js.call "before"]

    val after : t -> asyncId:int -> unit [@@js.call "after"]

    val promiseResolve : t -> asyncId:int -> unit [@@js.call "promiseResolve"]

    val destroy : t -> asyncId:int -> unit [@@js.call "destroy"]
  end
  [@@js.scope "HookCallbacks"]

  module AsyncHook : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val enable : t -> t [@@js.call "enable"]

    val disable : t -> t [@@js.call "disable"]
  end
  [@@js.scope "AsyncHook"]

  val createHook : options:HookCallbacks.t -> AsyncHook.t
    [@@js.global "createHook"]

  module AsyncResourceOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_triggerAsyncId : t -> int [@@js.get "triggerAsyncId"]

    val set_triggerAsyncId : t -> int -> unit [@@js.set "triggerAsyncId"]

    val get_requireManualDestroy : t -> bool [@@js.get "requireManualDestroy"]

    val set_requireManualDestroy : t -> bool -> unit
      [@@js.set "requireManualDestroy"]
  end
  [@@js.scope "AsyncResourceOptions"]

  module AsyncResource : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  type_:string
      -> ?triggerAsyncId:AsyncResourceOptions.t or_number
      -> unit
      -> t
      [@@js.create]

    module AnonymousInterface0 : sig
      type async_resource = t

      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_asyncResource : t -> async_resource [@@js.get "asyncResource"]

      val set_asyncResource : t -> async_resource -> unit
        [@@js.set "asyncResource"]
    end

    val bind
      :  fn:'Func
      -> ?type_:string
      -> unit
      -> ('Func, AnonymousInterface0.t) intersection2
      [@@js.global "bind"]

    val bind' : t -> fn:'Func -> ('Func, AnonymousInterface0.t) intersection2
      [@@js.call "bind"]

    val runInAsyncScope
      :  t
      -> fn:(this:'This -> args:(any list[@js.variadic]) -> 'Result)
      -> ?thisArg:'This
      -> args:(any list[@js.variadic])
      -> 'Result
      [@@js.call "runInAsyncScope"]

    val emitDestroy : t -> t [@@js.call "emitDestroy"]

    val asyncId : t -> int [@@js.call "asyncId"]

    val triggerAsyncId : t -> int [@@js.call "triggerAsyncId"]
  end
  [@@js.scope "AsyncResource"]

  module AsyncLocalStorage : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val disable : 'T t -> unit [@@js.call "disable"]

    val getStore : 'T t -> 'T or_undefined [@@js.call "getStore"]

    val run
      :  'T t
      -> store:'T
      -> callback:(args:(any list[@js.variadic]) -> 'R)
      -> args:(any list[@js.variadic])
      -> 'R
      [@@js.call "run"]

    val exit
      :  'T t
      -> callback:(args:(any list[@js.variadic]) -> 'R)
      -> args:(any list[@js.variadic])
      -> 'R
      [@@js.call "exit"]

    val enterWith : 'T t -> store:'T -> unit [@@js.call "enterWith"]
  end
  [@@js.scope "AsyncLocalStorage"]
end
[@@js.scope Import.async_hooks]
