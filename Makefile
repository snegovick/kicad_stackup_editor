GSUF_CLONE_PATH=git@github.com:snegovick/gsuf.git

.PHONY: version
version: packaging/gsuf
	@python3 packaging/gsuf/gsuf3.py --main-branch master --no-hash

.PHONY: deb
deb: packaging/gsuf
	@REVS=$$(./packaging/gsuf/gsuf3.py --revs-since-last-tag); RET=$$?; echo "Revs since last tag: $${REVS}; retcode: $${RET}"; if [ $${RET} -ne 0 ] || [ $${REVS} -ne 0 ]; then echo "Not a clean tag"; exit 1; fi
	@./packaging/gsuf/gsuf.py --is-dirty; RET=$$?; echo "Dirty: $${RET}"; if [ $${RET} -eq 0 ]; then echo "Project working directory is dirty, will not build container now"; exit 1; else echo "Project working directory is clean"; fi
	bash ./packaging/build_deb.sh

.PHONY: dput-local
dput-local: deb
	dput -c ./packaging/dput.cf archive.main.int ./deb_dist/*.changes

packaging/gsuf:
	@if [ ! -e packaging/gsuf ]; then cd packaging; git clone $(GSUF_CLONE_PATH); cd ../; fi

.PHONY: clean
clean:
	rm -rf ./packaging/gsuf
	git clean -fd
