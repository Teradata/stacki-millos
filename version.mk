export ROLL	= os
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 6.5
UPDATESNAME	= CentOS-Updates

CODENAME	= stack3
RELEASE		= stack3

ROLLDIR		= /export/rocks/rolls

CENTOS_VERSION	= 6.5
UPDATES_VERSION	= 6.5
CORE_VERSION	= 6.5

# CENTOS_VERSION	= \
	$(shell rocks list roll $(OSNAME) output-header=no output-col=version | tr -d ' ')
# UPDATES_VERSION	= \
	$(shell rocks list roll $(UPDATESNAME) output-header=no output-col=version | tr -d ' ')
# CORE_VERSION	= \
	$(shell rocks list roll cluster-core output-header=no output-col=version | tr -d ' ')

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
