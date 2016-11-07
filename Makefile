test:
	@true

release-patch: test
	@$(call release,patch)

release-minor: test
	@$(call release,minor)

release-major: test
	@$(call release,major)

publish:
	git push --tags origin HEAD:master
	npm publish
	rake build release:rubygem_push

define release
  rake version:$(1)
	npm version $(1) --message "Release v%s"
endef
