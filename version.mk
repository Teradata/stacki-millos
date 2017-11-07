export ROLL	= os
COLOR		= white
OSNAME		= CentOS
UPDATESNAME	= CentOS-Updates

ADDCOMPS	= 1
BOOTABLE	= 0
ISOSIZE		= 0

CODENAME	= stacki
RELEASE		= $(shell $(STACKBUILD)/bin/os-release)

include $(RELEASE).mk

ROLLS		= $(OSNAME),$(OSVERSION) $(UPDATESNAME),$(UPDATES_VERSION)
