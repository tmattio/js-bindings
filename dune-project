(lang dune 2.0)

(name ocaml-ecmascript)

(documentation "https://tmattio.github.io/ocaml-ecmascript/")

(source
 (github tmattio/ocaml-ecmascript))

(license MIT)

(authors "Thibaut Mattio")

(maintainers "Thibaut Mattio")

(generate_opam_files true)

(package
 (name es5)
 (synopsis "ECMAScript 5 bindings for OCaml")
 (description "ECMAScript 5 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  js_of_ocaml))

(package
 (name es2015)
 (synopsis "ECMAScript 2015 bindings for OCaml")
 (description "ECMAScript 2015 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  es5
  js_of_ocaml))
