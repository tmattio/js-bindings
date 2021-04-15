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
  js_of_ocaml
  ojs))

(package
 (name es2015)
 (synopsis "ECMAScript 2015 bindings for OCaml")
 (description "ECMAScript 2015 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es5
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name es2016)
 (synopsis "ECMAScript 2016 bindings for OCaml")
 (description "ECMAScript 2016 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2015
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name es2017)
 (synopsis "ECMAScript 2017 bindings for OCaml")
 (description "ECMAScript 2017 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2016
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name es2018)
 (synopsis "ECMAScript 2018 bindings for OCaml")
 (description "ECMAScript 2018 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2017
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name es2019)
 (synopsis "ECMAScript 2019 bindings for OCaml")
 (description "ECMAScript 2019 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2018
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name es2020)
 (synopsis "ECMAScript 2020 bindings for OCaml")
 (description "ECMAScript 2020 bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2019
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name node)
 (synopsis "node bindings for OCaml")
 (description "node bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2020
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name vscode)
 (synopsis "vscode bindings for OCaml")
 (description "vscode bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es5
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name vscode-jsonrpc)
 (synopsis "vscode-jsonrpc bindings for OCaml")
 (description "Node bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2020
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name vscode-languageclient)
 (synopsis "vscode-languageclient bindings for OCaml")
 (description "vscode-languageclient bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2020
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name vscode-languageserver-protocol)
 (synopsis "vscode-languageserver-protocol bindings for OCaml")
 (description "vscode-languageserver-protocol bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2020
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name vscode-languageserver-types)
 (synopsis "vscode-languageserver-types bindings for OCaml")
 (description "vscode-languageserver-types bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2020
   (= :version))
  dune
  js_of_ocaml
  ojs))

(package
 (name vscode-test)
 (synopsis "vscode-test bindings for OCaml")
 (description "vscode-test bindings for OCaml")
 (depends
  (ocaml
   (>= 4.08.0))
  (es2020
   (= :version))
  dune
  js_of_ocaml
  ojs))
