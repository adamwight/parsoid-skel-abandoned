dnl $Id$
dnl config.m4 for extension parsoid

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(parsoid, for parsoid support,
dnl Make sure that the comment is aligned:
dnl [  --with-parsoid             Include parsoid support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(parsoid, whether to enable parsoid support,
dnl Make sure that the comment is aligned:
dnl [  --enable-parsoid           Enable parsoid support])

if test "$PHP_PARSOID" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-parsoid -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/parsoid.h"  # you most likely want to change this
  dnl if test -r $PHP_PARSOID/$SEARCH_FOR; then # path given as parameter
  dnl   PARSOID_DIR=$PHP_PARSOID
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for parsoid files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PARSOID_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PARSOID_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the parsoid distribution])
  dnl fi

  dnl # --with-parsoid -> add include path
  dnl PHP_ADD_INCLUDE($PARSOID_DIR/include)

  dnl # --with-parsoid -> check for lib and symbol presence
  dnl LIBNAME=parsoid # you may want to change this
  dnl LIBSYMBOL=parsoid # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PARSOID_DIR/lib, PARSOID_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PARSOIDLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong parsoid lib version or lib not found])
  dnl ],[
  dnl   -L$PARSOID_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PARSOID_SHARED_LIBADD)

  PHP_NEW_EXTENSION(parsoid, parsoid.c, $ext_shared)
fi
