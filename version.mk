export ROLL	= os
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 6
UPDATESNAME	= CentOS-Updates

CODENAME	= stacki
RELEASE		= stacki

ROLLDIR		= /export/stack/rolls

CENTOS_VERSION	= 6
UPDATES_VERSION	= 6
CORE_VERSION	= 6.6
VERSION		= 6.6

# CENTOS_VERSION	= \
	$(shell stack list roll $(OSNAME) output-header=no output-col=version | tr -d ' ')
# UPDATES_VERSION	= \
	$(shell stack list roll $(UPDATESNAME) output-header=no output-col=version | tr -d ' ')
# CORE_VERSION	= \
	$(shell stack list roll cluster-core output-header=no output-col=version | tr -d ' ')

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
