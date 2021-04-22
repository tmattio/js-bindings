[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Async_hooks : sig
  val execution_async_id : unit -> int [@@js.global "executionAsyncId"]

  val execution_async_resource : unit -> untyped_object
    [@@js.global "executionAsyncResource"]

  val trigger_async_id : unit -> int [@@js.global "triggerAsyncId"]

  module HookCallbacks : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val init
      :  t
      -> async_id:int
      -> type_:string
      -> trigger_async_id:int
      -> resource:untyped_object
      -> unit
      [@@js.call "init"]

    val before : t -> async_id:int -> unit [@@js.call "before"]

    val after : t -> async_id:int -> unit [@@js.call "after"]

    val promise_resolve : t -> async_id:int -> unit [@@js.call "promiseResolve"]

    val destroy : t -> async_id:int -> unit [@@js.call "destroy"]
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

  val create_hook : options:HookCallbacks.t -> AsyncHook.t
    [@@js.global "createHook"]

  module AsyncResourceOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_trigger_async_id : t -> int [@@js.get "triggerAsyncId"]

    val set_trigger_async_id : t -> int -> unit [@@js.set "triggerAsyncId"]

    val get_require_manual_destroy : t -> bool [@@js.get "requireManualDestroy"]

    val set_require_manual_destroy : t -> bool -> unit
      [@@js.set "requireManualDestroy"]
  end
  [@@js.scope "AsyncResourceOptions"]

  module AsyncResource : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  type_:string
      -> ?trigger_async_id:AsyncResourceOptions.t or_number
      -> unit
      -> t
      [@@js.create]

    module AnonymousInterface0 : sig
      type async_resource = t

      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_async_resource : t -> async_resource [@@js.get "asyncResource"]

      val set_async_resource : t -> async_resource -> unit
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

    val run_in_async_scope
      :  t
      -> fn:(this:'This -> args:(any list[@js.variadic]) -> 'Result)
      -> ?this_arg:'This
      -> args:(any list[@js.variadic])
      -> 'Result
      [@@js.call "runInAsyncScope"]

    val emit_destroy : t -> t [@@js.call "emitDestroy"]

    val async_id : t -> int [@@js.call "asyncId"]

    val trigger_async_id : t -> int [@@js.call "triggerAsyncId"]
  end
  [@@js.scope "AsyncResource"]

  module AsyncLocalStorage : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val disable : 'T t -> unit [@@js.call "disable"]

    val get_store : 'T t -> 'T or_undefined [@@js.call "getStore"]

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

    val enter_with : 'T t -> store:'T -> unit [@@js.call "enterWith"]
  end
  [@@js.scope "AsyncLocalStorage"]
end
[@@js.scope Import.async_hooks]
