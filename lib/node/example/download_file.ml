open Node

let () =
  let file = Fs.create_write_stream ~path:"file.jpg" () in
  let (_ : Http.ClientRequest.t) =
    Https.get
      ~url:(`String "https://i3.ytimg.com/vi/J---aiyznGQ/mqdefault.jpg")
      ~callback:(fun ~res ->
        let (_ : Stream.Writable.t) = Http.IncomingMessage.pipe res file () in
        ())
      ()
  in
  ()
