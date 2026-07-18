#!/bin/bash

# pytest is baked into the environment image (environment/Dockerfile).

set -uo pipefail

if pytest /tests/test_outputs.py -rA; then
  echo 1.0 > /logs/verifier/reward.txt
else
  echo 0.0 > /logs/verifier/reward.txt
fi