#!/bin/bash
./configure  --prefix=/usr        \
             --disable-static     \
             --enable-thread-safe \
             --docdir=/usr/share/doc/mpfr-3.1.5
make -j $SHED_NUMJOBS
make html
make DESTDIR=${SHED_FAKEROOT} install
make DESTDIR=${SHED_FAKEROOT} install-html
