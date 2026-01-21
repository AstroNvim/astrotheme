TESTS_DIR=tests/

.PHONY: test
test:
	@nvim -l ${TESTS_DIR}/minit.lua --minitest

.PHONY: extras
extras:
	@nvim -u ${TESTS_DIR}/minit.lua --headless +"lua require('astrotheme.extras').setup()" +qa
