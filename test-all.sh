#!/bin/bash
./test-compilation.sh && \
./test-runtime.sh && \
./test-zad5.sh && \
echo "ALL TESTS PASSED" || \
(echo "TESTS FAILED"; exit 1)
