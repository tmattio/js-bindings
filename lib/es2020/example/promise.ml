open Es2020

let (_ : unit Promise.t) =
  let promise = Promise.create (fun ~resolve ~reject:_ -> resolve 1) in
  Promise.then_
    promise
    ~onfulfilled:(fun value ->
      Promise.resolve @@ print_endline (Printf.sprintf "Got %i" value))
    ()
