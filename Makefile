#
# $Id: Makefile,v 1.4 2003/12/02 22:25:37 eserte Exp $
#

all:

install:
	install -c -m 755 pingomatic /usr/local/bin

CVS_DIR=${HOME}/work/pingomatic

.include "../perl.release.mk"
.include "../perl.cvs.mk"

