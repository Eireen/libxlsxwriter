#!/bin/bash -eu
# DEBUG TIP: use bash option -x for detailed output

# --- Building wrapper by SWIG ---
# (only PHP at this time)

SWIG_DIR=$PWD/swig
SWIG_OUTPUT_DIR=$SWIG_DIR/output/php
SWIG_MODULE_NAME=xlsxwriter

mkdir -p $SWIG_OUTPUT_DIR

swig -php -outdir $SWIG_OUTPUT_DIR $SWIG_DIR/$SWIG_MODULE_NAME.i
mv $SWIG_DIR/${SWIG_MODULE_NAME}_wrap.c $SWIG_OUTPUT_DIR/
cd $SWIG_OUTPUT_DIR
gcc `php-config --includes` -fpic -c ${SWIG_MODULE_NAME}_wrap.c
gcc -shared ${SWIG_MODULE_NAME}_wrap.o -o $SWIG_MODULE_NAME.so -lxlsxwriter
sudo ldconfig
cd -

# How to use generated PHP extension:
#   1) In the INI file:
#        extension=/path/to/generated.so
#   2) In your scripts:
#        include("generated.php");
#      (See swig/example.php)
#
# http://www.swig.org/Doc3.0/Php.html
