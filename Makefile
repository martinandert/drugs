BIN = ./node_modules/.bin

test:
	@true

npm-release-patch: test
	@$(call release,patch)

npm-release-minor: test
	@$(call release,minor)

npm-release-major: test
	@$(call release,major)

npm-publish:
	git push --tags origin HEAD:master
	npm publish

define release
	npm version $(1) --message "Release v%s"
endef
