#!/bin/sh
cp -rv ebin emacs "$AGNER_INSTALL_PREFIX"
mkdir -p $AGNER_INSTALL_PREFIX/bin
echo "#! /bin/sh" > $AGNER_INSTALL_PREFIX/bin/lfe
echo erl \"\$@\" -pa $AGNER_INSTALL_PREFIX/ebin -noshell -noinput -s lfe_boot start >> $AGNER_INSTALL_PREFIX/bin/lfe
chmod +x $AGNER_INSTALL_PREFIX/bin/lfe
