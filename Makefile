#
# $Id: Makefile,v 1.7 2006/03/06 22:16:09 eserte Exp $
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

# For release: use
#   make script-release

.include "../perl.release.mk"
# .include "../perl.cvs.mk"

