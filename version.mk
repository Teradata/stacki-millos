export ROLL	= os
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 7
UPDATESNAME	= CentOS-Updates

CODENAME	= stack5
RELEASE		= stack5

ROLLDIR		= /export/rocks/rolls

CENTOS_VERSION	= 7
UPDATES_VERSION	= 7
CORE_VERSION	= 7.0
VERSION		= $(CENTOS_VERSION)

# CENTOS_VERSION	= \
	$(shell rocks list roll $(OSNAME) output-header=no output-col=version | tr -d ' ')
# UPDATES_VERSION	= \
	$(shell rocks list roll $(UPDATESNAME) output-header=no output-col=version | tr -d ' ')
# CORE_VERSION	= \
	$(shell rocks list roll cluster-core output-header=no output-col=version | tr -d ' ')

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
