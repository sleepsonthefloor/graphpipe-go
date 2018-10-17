# Copyright (c) 2018, Oracle and/or its affiliates. All rights reserved.
#
# Licensed under the Universal Permissive License v 1.0 as shown at
# http://oss.oracle.com/licenses/upl.

.PHONY: install-govendor deps all

deps: govendor
	$(GOPATH)/bin/govendor sync

install-govendor:
	go get -u github.com/kardianos/govendor

govendor:
	@if [ ! -e $(GOPATH)/bin/govendor ]; then \
		echo "You need govendor: go get -u github.com/kardianos/govendor" && exit 1; \
	fi

all: deps
