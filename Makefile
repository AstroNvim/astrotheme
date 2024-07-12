TESTS_DIR=tests/

.PHONY: test
test:
	@nvim -l ${TESTS_DIR}/minit.lua --busted ${TESTS_DIR} -o utfTerminal

.PHONY: extras
extras:
	@nvim -u ${TESTS_DIR}/minit.lua --headless +"lua require('astrotheme.extras').setup()" +qa
