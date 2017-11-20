# @rocks@
# Copyright (c) 2000 - 2011 The Regents of the University of California
# All rights reserved. Rocks(r) v5.4 www.rocksclusters.org
# https://github.com/Teradata/stacki-millos/blob/master/LICENSE-ROCKS.txt
# @rocks@


ROLLROOT = .

include version.mk
-include $(ROLLSBUILD)/etc/CCRolls.mk

roll: pretar

pretar::
	-stack add box default-all
	-stack enable pallet % box=default-all
	-stack add box default-os
	-stack enable pallet $(OSNAME) version=$(OSVERSION) \
		box=default-os
	-stack enable pallet $(UPDATESNAME) version=$(UPDATES_VERSION) \
		box=default-os
	
cleanosdists:
	-stack disable pallet % box=default-all
	-stack disable pallet % box=default-os
	-stack remove box default-all
	-stack remove box default-os

clean:: cleanosdists
	rm -f yum.conf yum.log
	rm -f comps.xml comps.xml.orig
	rm -f _arch
	rm -rf cache cachedir
	rm -f *.iso

