#!/usr/bin/env -S bash ../.port_include.sh
port='angband'
version='4.2.5'
workdir="Angband-${version}"
useconfigure='true'
files=(
    "https://github.com/angband/angband/releases/download/${version}/Angband-${version}.tar.gz#c4cacbdf28f726fcb1a0b30b8763100fb06f88dbb570e955232e41d83e0718a6"
)
depends=(
    'ncurses'
    'SDL2'
    'SDL2_image'
    'SDL2_mixer'
    'SDL2_ttf'
)
configopts=(
    '--prefix=/usr/local'
    '--bindir=/usr/local/bin'
    '--disable-x11'
    '--enable-curses'
    '--enable-sdl2'
    '--enable-sdl2-mixer'
    "--with-ncurses-prefix=${SERENITY_INSTALL_ROOT}/usr/local"
    "--with-sdl2-prefix=${SERENITY_INSTALL_ROOT}/usr/local"
)
