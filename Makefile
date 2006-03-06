#
# $Id: Makefile,v 1.6 2006/03/06 22:14:20 eserte Exp $
#

all:

install:
	install -c -m 755 pingomatic /usr/local/bin

CVS_DIR=${HOME}/work/pingomatic

copy-to-cvs:
	echo "Really copy to ${CVS_DIR}? (Hit Ctrl-C otherwise) "
	@read dummy
	cp pingomatic ${CVS_DIR}/

cvs-add-missing:

cvs-standard-commit:
	cd ${CVS_DIR} && cvs -q -z9 commit -m ""

cpan-release:
	VERSION=`perl -MExtUtils::MakeMaker -e 'print MM->parse_version("pingomatic")'`; cp -f pingomatic /tmp/pingomatic-$$VERSION && cpan-upload /tmp/pingomatic-$$VERSION

# .include "../perl.release.mk"
# .include "../perl.cvs.mk"

