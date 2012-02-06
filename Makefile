REPORTER = dot

all: build

build:
	@./node_modules/coffee-script/bin/coffee \
		-c \
		-o lib src

clean:
	rm -rf lib
	mkdir lib

watch:
	@./node_modules/coffee-script/bin/coffee \
		-o lib \
		-cw src

test:
	@./node_modules/mocha/bin/mocha \
		--reporter $(REPORTER) \
		test/*.coffee

.PHONY: build clean watch test
