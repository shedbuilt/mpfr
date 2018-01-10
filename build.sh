#!/bin/bash
./configure  --prefix=/usr        \
             --disable-static     \
             --enable-thread-safe \
             --docdir=/usr/share/doc/mpfr-3.1.6 || return 1
make -j $SHED_NUMJOBS || return 1
make html || return 1
make DESTDIR="$SHED_FAKEROOT" install || return 1
make DESTDIR="$SHED_FAKEROOT" install-html || return 1
