#
# $Id: Makefile,v 1.2 2003/10/07 21:44:11 eserte Exp $
#

all:

install:
	install -c -m 755 pingomatic /usr/local/bin

release:
	VERSION=`perl -MExtUtils::MakeMaker -e 'print MY->parse_version("pingomatic")'`; \
	@echo VERSION is $$VERSION; \
	cp pingomatic /tmp/pingomatic-$$VERSION; \
	cpan-upload /tmp/pingomatic-$$VERSION

CVS_DIR=${HOME}/work/pingomatic

copy-to-cvs:
	@echo "Really copy to ${CVS_DIR}? (Hit Ctrl-C otherwise) "
	@read dummy
	cp -f pingomatic ${CVS_DIR}/pingomatic
#	perl "-MExtUtils::Manifest=manicopy,maniread" -e "manicopy(maniread('MANIFEST'),'${CVS_DIR}', 'cp');"

cvs-add-missing:
	cd ${CVS_DIR} && cvsu | grep '^[\?D]' | cut -c2- | xargs cvs add -ko

cvs-standard-commit:
	cd ${CVS_DIR} && cvs -z9 commit -m ""

