#!/bin/bash
c="CXX=$CXX `which $CXX`"
./test-compilation.sh && \
./test-runtime.sh && \
./test-z05.sh && \
echo "ALL TESTS PASSED ($c)" || \
(echo "TESTS FAILED ($c)"; exit 1)
