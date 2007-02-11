#
# $Id: Makefile,v 1.8 2007/02/11 22:03:45 eserte Exp $
#

all:

install:
	install -c -m 755 pingomatic /usr/local/bin

DISTNAME=pingomatic
CVS_DIR=${HOME}/work/pingomatic

copy-to-cvs:
	echo "Really copy to ${CVS_DIR}? (Hit Ctrl-C otherwise) "
	@read dummy
	cp pingomatic ${CVS_DIR}/

cvs-add-missing:

cvs-standard-commit:
	cd ${CVS_DIR} && cvs -q -z9 commit -m ""

# For release: use
#   make script-release

.include "../perl.release.mk"
# .include "../perl.cvs.mk"

