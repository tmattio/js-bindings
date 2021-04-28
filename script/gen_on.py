l = []

for el in l:
    print(
        f"""
module {el.capitalize().replace(".", "_")}Listener : sig
    type t = ???

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
end

    """
    )

print(
    """
type listener =
([ 
"""
)

for el in l:
    print(
        f"""
| `{el.capitalize().replace(".", "_")} of {el.capitalize().replace(".", "_")}Listener.t
"""
    )

print(
    """
]
[@js.union])

[@@@js.stop]

val on : t -> listener -> unit

val add_listener : t -> listener -> unit

val once : t -> listener -> unit

val prepend_listener : t -> listener -> unit

val prepend_once_listener : t -> listener -> unit

[@@@js.start]

[@@@js.implem
val on : t -> string -> Ojs.t -> unit [@@js.call "on"]

val add_listener : t -> string -> Ojs.t -> unit [@@js.call "addListener"]

val once : t -> string -> Ojs.t -> unit [@@js.call "once"]

val prepend_listener : t -> string -> Ojs.t -> unit
    [@@js.call "prependListener"]

val prepend_once_listener : t -> string -> Ojs.t -> unit
    [@@js.call "prependOnceListener"]

let with_listener_fn fn t = function
"""
)

for el in l:
    print(
        f"""
| `{el.capitalize()} f ->
  fn t "{el}" @@ [%js.of: {el.capitalize().replace(".", "_")}Listener.t] f
"""
    )

print(
    f"""
let on = with_listener_fn on

let add_listener = with_listener_fn add_listener

let once = with_listener_fn once

let prepend_listener = with_listener_fn prepend_listener

let prepend_once_listener = with_listener_fn prepend_once_listener]
"""
)
