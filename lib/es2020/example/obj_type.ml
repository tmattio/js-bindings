open Es2020

let () =
  let array = BigInt64Array.create () in
  let (ojs : Ojs.t) = BigInt64Array.t_to_js array in
  let obj_type = Ojs.obj_type ojs in
  print_endline obj_type
