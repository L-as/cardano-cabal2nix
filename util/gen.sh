#!/bin/sh

set -xe

which cabal2nix

target="$1"
src="$2"
overlay="$3"
test -n "$target"
test -n "$src"
test -n "$overlay"

src_name="$(basename "$src")"

pushd "$src"

packages="$(find -type f -name "*.cabal")"

popd

# hope there are no spaces or similar
for p in $packages; do
	p_name="$(basename "$p" | head -c -7)"
	p_dir="$(dirname "$p" | tail -c +3)"
	echo -e "{ sources }:\n" > "$target/pkgs/$p_name.nix"
	cabal2nix "$src/$p_dir" >> "$target/pkgs/$p_name.nix"
	sed -i -e "s/optparse-applicative-fork/optparse-applicative/g" -e "s|src = .*;|src = \"\${sources.$src_name}/$p_dir\";|" "$target/pkgs/$p_name.nix"
	echo "  $p_name = self.callPackage (import ./pkgs/$p_name.nix { inherit sources; }) {};" >> "$overlay"
done
