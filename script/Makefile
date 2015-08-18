test: lint

lint:
	shellcheck cibuild update_build_number update_version mobileprovision cert ls_ipa

update:
	git fetch -p ios-build-scripts
	git merge --ff --squash -Xsubtree=script ios-build-scripts/master

.PHONY: test lint update
