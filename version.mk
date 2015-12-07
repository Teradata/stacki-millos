export ROLL	= os
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 6.7
UPDATESNAME	= CentOS-Updates

ADDCOMPS	= 1
BOOTABLE	= 0
ISOSIZE		= 0

CODENAME	= stacki
RELEASE		= stacki

ROLLDIR		= /export/stack/rolls

CENTOS_VERSION	= 6.7
UPDATES_VERSION	= 6.7
CORE_VERSION	= 6.7
VERSION		= 6.7

# CENTOS_VERSION	= \
	$(shell stack list roll $(OSNAME) output-header=no output-col=version | tr -d ' ')
# UPDATES_VERSION	= \
	$(shell stack list roll $(UPDATESNAME) output-header=no output-col=version | tr -d ' ')
# CORE_VERSION	= \
	$(shell stack list roll cluster-core output-header=no output-col=version | tr -d ' ')

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
