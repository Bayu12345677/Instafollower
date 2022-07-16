setup:
	@echo "Installing Package"
	@echo
	pkg update
	apt-get full-upgrade
	apt-get install python curl jq wget cmake clang
	python setup.py install
