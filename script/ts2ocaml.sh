#!/bin/sh

dirs=$(find lib/*/spec -type d -maxdepth 0)

cwd=$(pwd)

for dir in $dirs; do
   echo "Generating bindings for $dir ..."

   cd "$dir" || exit 1

   files=$(find . -type f)

   mkdir -p ../gen

   for f in $files; do
    gen_f=$(basename "$f" | sed -e "s/\.d\.ts/\.mli/g" | sed -e "s/\//_/g" | sed -e "s/\./_/g" | sed -e "s/lib_//g" | sed -e "s/_mli/\.mli/g")
    echo "node ts2ocaml.js $cwd/$dir/$f > $cwd/$dir/../lib/$gen_f"
    node ts2ocaml.js $cwd/$dir/$f > $cwd/$dir/../gen/$gen_f
   done

   cd "$cwd" || exit 1
done
