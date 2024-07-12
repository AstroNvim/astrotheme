TESTS_DIR=tests/

.PHONY: test

test:
	@nvim -l ${TESTS_DIR}/minit.lua --busted ${TESTS_DIR} -o utfTerminal
