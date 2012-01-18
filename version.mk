ROLLNAME	= os
RELEASE		= 0
COLOR		= white
OSNAME		= CentOS
OSVERSION 	= 6.2
UPDATESNAME	= Updates-$(OSNAME)

ROLLDIR		= $(shell rocks report distro)/rolls

CENTOS_VERSION	= \
	$(shell rocks list roll $(OSNAME) output-header=no output-col=version)
UPDATES_VERSION	= \
	$(shell rocks list roll $(UPDATESNAME) output-header=no output-col=version)
KERNEL_VERSION	= \
	$(shell rocks list roll rocks+kernel output-header=no output-col=version)

ROLLS		= $(OSNAME),$(CENTOS_VERSION) $(UPDATESNAME),$(UPDATES_VERSION)
REDHAT.ROOT	= $(PWD)

