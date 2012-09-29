ROLLNAME	= os
RELEASE		= 0
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 6.3
UPDATESNAME	= CentOS-Updates

ROLLDIR		= /export/rocks/rolls

CENTOS_VERSION	= \
	$(shell rocks list roll $(OSNAME) output-header=no output-col=version | tr -d ' ')
UPDATES_VERSION	= \
	$(shell rocks list roll $(UPDATESNAME) output-header=no output-col=version | tr -d ' ')
KERNEL_VERSION	= \
	$(shell rocks list roll kernel output-header=no output-col=version | tr -d ' ')

REDHAT.ROOT	= $(PWD)

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
