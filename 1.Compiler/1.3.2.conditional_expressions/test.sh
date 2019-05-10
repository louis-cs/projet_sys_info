#!/bin/bash

unittest_good() {
  MAXLEN=30
  BASENAME=`basename $1`
  EXEC_COMPILER_PATH=$2
  if [[ `${EXEC_COMPILER_PATH} < $1` = "ERROR: syntax error" ]]; then
    printf "\x1b[1m%-${MAXLEN}s : \x1b[91mFAILED\x1b[0m\n" ${BASENAME::${MAXLEN}}
  else
    printf "\x1b[1m%-${MAXLEN}s : \x1b[92mPASSED\x1b[0m\n" ${BASENAME::${MAXLEN}}
  fi
}


unittest_bad() {
  MAXLEN=30
  BASENAME=`basename $1`
  EXEC_COMPILER_PATH=$2
  if [[ `${EXEC_COMPILER_PATH} < $1` = "ERROR: syntax error" ]]; then
    printf "\x1b[1m%-${MAXLEN}s : \x1b[92mPASSED\x1b[0m\n" ${BASENAME::${MAXLEN}}
  else
    printf "\x1b[1m%-${MAXLEN}s : \x1b[91mFAILED\x1b[0m\n" ${BASENAME::${MAXLEN}}
  fi
}

TESTCASES_DIR=testcases/
EXEC_COMPILER_PATH=./compiler/compiler


bad_test_files="`find -type f -name "bad*.c" | sort -n`"
good_test_files="`find -type f -name "good*.c" | sort -n`"
set -- $bad_test_files
set -- $good_test_files



if [[ -f ${EXEC_COMPILER_PATH} ]]; then
  for variable in $good_test_files; do
  	unittest_good ${variable} ${EXEC_COMPILER_PATH}
  done

  for variable in $bad_test_files; do
  	unittest_bad ${variable} ${EXEC_COMPILER_PATH}
  done
else
  echo -e "\x1b[1m[\x1b[91mwarn\x1b[0m\x1b[1m]\x1b[0m No compiler found at ${EXEC_COMPILER_PATH}. Try \"make\"."
fi
