#
# $Id: Makefile,v 1.1 2002/02/22 21:40:54 eserte Exp $
#

all:

install:
	install -c -m 755 pingomatic /usr/local/bin

release:
	VERSION=`perl -MExtUtils::MakeMaker -e 'print MY->parse_version("pingomatic")'`; \
	cp pingomatic /tmp/pingomatic-$$VERSION; \
	cpan-upload /tmp/pingomatic-$$VERSION
