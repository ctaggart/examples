#!/bin/sh -e
cargo build --release
mkdir -p target/flatpak/files/bin
mkdir -p target/flatpak/export
# copy binaries https://stackoverflow.com/a/7812400/23059
find target/release/ -maxdepth 1 -perm -111 -type f | xargs -I % cp % target/flatpak/files/bin/
cp metadata target/flatpak/

