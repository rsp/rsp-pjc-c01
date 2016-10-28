#!/bin/bash
./test-compilation.sh && \
./test-runtime.sh && \
./test-z05.sh && \
echo "ALL TESTS PASSED" || \
(echo "TESTS FAILED"; exit 1)
