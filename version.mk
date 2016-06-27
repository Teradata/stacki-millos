export ROLL	= os
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 7
UPDATESNAME	= Updates

ADDCOMPS	= 1
BOOTABLE	= 0
ISOSIZE		= 0

CODENAME	= stacki
RELEASE		= 7.x

ROLLDIR		= /export/stack/rolls

CENTOS_VERSION	= 7
UPDATES_VERSION	= 7.2.1 
CORE_VERSION	= 7
VERSION		= 7

# CENTOS_VERSION	= \
	$(shell stack list roll $(OSNAME) output-header=no output-col=version | tr -d ' ')
# UPDATES_VERSION	= \
	$(shell stack list roll $(UPDATESNAME) output-header=no output-col=version | tr -d ' ')
# CORE_VERSION	= \
	$(shell stack list roll cluster-core output-header=no output-col=version | tr -d ' ')

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
