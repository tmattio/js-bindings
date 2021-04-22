# OCaml JavaScript bindings

[![Actions Status](https://github.com/tmattio/js-bindings/workflows/CI/badge.svg)](https://github.com/tmattio/js-bindings/actions)

High-quality JavaScript bindings for OCaml.

Want bindings for a library? Open an [issue](https://github.com/tmattio/js-bindings/issues)!

The bindings have been generated using `ts2ocaml` from the TypeScript type definitions found in [https://github.com/Microsoft/TypeScript/tree/master/lib](https://github.com/Microsoft/TypeScript/tree/master/lib).

The generated bindings have then been manually modified to improve the API. Notably the bindings differ from the underlying implementation in the following ways:

- No `ArrayLike`, `ArrayBufferLike`, `PromiseLike` and co. OCaml does not have implicits (yet), so we just replace all of these with their counterparts (`ArrayLike` is replaced by `Array`)
- We don't include Symbols accessors. `gen_js_api` does not support this, and it really does not seem useful anyways

The bindings don't depend on any PPX (and in particular, they don't depend on `gen_js_api`). Instead, the generated bindings are promoted and the installable libraries copies the promoted files.

## To do

- [ ] Replace `cast` with `include module type of`
- [ ] Create the `on` functions
- [ ] investigate long function variants (`'''''`)
