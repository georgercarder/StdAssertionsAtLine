#!/bin/sh

exampleTestPath="test/StdAssertionsAtLine.t.sol"

./stdassert_at_line_preprocess.sh "$exampleTestPath"
forge test --match-path "$exampleTestPath" 
