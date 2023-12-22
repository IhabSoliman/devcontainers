#!/bin/bash
cd $(dirname "$0")

source test-utils.sh

# Run common tests
checkCommon

# Run template specific tests
checkExtension "golang.Go"

# Image specific tests
check "lib pq check" go list github.com/redis/go-redis/v9
check "go test program" go run test.go

# Report result
reportResults
