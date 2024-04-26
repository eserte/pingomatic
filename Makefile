all:

test:
	perl -c pingomatic

install:
	install -c -m 755 pingomatic /usr/local/bin

DISTNAME=pingomatic

# For release: use
#   make script-release

.include "../perl.release.mk"
