(lang dune 2.0)

(name js-bindings)

(documentation "https://tmattio.github.io/js-bindings/")

(source
 (github tmattio/js-bindings))

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
  (es5
   (= :version))
  js_of_ocaml))

(package
 (name es2016)
 (synopsis "ECMAScript 2016 bindings for OCaml")
 (description "ECMAScript 2016 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es2015
   (= :version))
  js_of_ocaml))

(package
 (name es2017)
 (synopsis "ECMAScript 2017 bindings for OCaml")
 (description "ECMAScript 2017 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es2016
   (= :version))
  js_of_ocaml))

(package
 (name es2018)
 (synopsis "ECMAScript 2018 bindings for OCaml")
 (description "ECMAScript 2018 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es2017
   (= :version))
  js_of_ocaml))

(package
 (name es2019)
 (synopsis "ECMAScript 2019 bindings for OCaml")
 (description "ECMAScript 2019 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es2018
   (= :version))
  js_of_ocaml))

(package
 (name es2020)
 (synopsis "ECMAScript 2020 bindings for OCaml")
 (description "ECMAScript 2020 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es2019
   (= :version))
  js_of_ocaml))

(package
 (name vscode)
 (synopsis "VSCode bindings for OCaml")
 (description "VSCode bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es5
   (= :version))
  js_of_ocaml))

(package
 (name node)
 (synopsis "Node bindings for OCaml")
 (description "Node bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  ojs
  (es2020
   (= :version))
  js_of_ocaml))
