TESTS_DIR=tests/

.PHONY: test

test:
	@nvim \
		-l ${TESTS_DIR}/busted.lua \
		${TESTS_DIR} \
		-o utfTerminal
