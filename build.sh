#!/bin/bash
./configure  --prefix=/usr        \
             --disable-static     \
             --enable-thread-safe \
             --docdir=/usr/share/doc/mpfr-4.0.1 && \
make -j $SHED_NUM_JOBS && \
make html && \
make DESTDIR="$SHED_FAKE_ROOT" install && \
make DESTDIR="$SHED_FAKE_ROOT" install-html || exit 1
