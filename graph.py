#!/opt/rocks/bin/python
#
# $Id: graph.py,v 1.15 2011/07/23 02:31:15 phil Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.4.3 (Viper)
# 
# Copyright (c) 2000 - 2011 The Regents of the University of California.
# All rights reserved.	
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice unmodified and in its entirety, this list of conditions and the
# following disclaimer in the documentation and/or other materials provided 
# with the distribution.
# 
# 3. All advertising and press materials, printed or electronic, mentioning
# features or use of this software must display the following acknowledgement: 
# 
# 	"This product includes software developed by the Rocks(r)
# 	Development Team at the San Diego Supercomputer Center at the
# 	University of California, San Diego and its contributors."
# 
# 4. Except as permitted for the purposes of acknowledgment in paragraph 3,
# neither the name or logo of this software nor the names of its
# authors may be used to endorse or promote products derived from this
# software without specific prior written permission.  The name of the
# software includes the following terms, and any derivatives thereof:
# "Rocks", "Rocks Clusters", and "Avalanche Installer".  For licensing of 
# the associated name, interested parties should contact Technology 
# Transfer & Intellectual Property Services, University of California, 
# San Diego, 9500 Gilman Drive, Mail Code 0910, La Jolla, CA 92093-0910, 
# Ph: (858) 534-5815, FAX: (858) 534-7345, E-MAIL:invent@ucsd.edu
# 
# THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS''
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# @Copyright@
#
# $Log: graph.py,v $
# Revision 1.15  2011/07/23 02:31:15  phil
# Viper Copyright
#
# Revision 1.14  2010/09/07 23:53:24  bruno
# star power for gb
#
# Revision 1.13  2009/05/01 19:07:21  mjk
# chimi con queso
#
# Revision 1.12  2008/10/18 00:56:13  mjk
# copyright 5.1
#
# Revision 1.11  2008/03/06 23:41:56  mjk
# copyright storm on
#
# Revision 1.10  2007/06/23 04:03:55  mjk
# mars hill copyright
#
# Revision 1.9  2006/09/11 22:49:56  mjk
# monkey face copyright
#
# Revision 1.8  2006/08/10 00:11:42  mjk
# 4.2 copyright
#
# Revision 1.7  2006/01/16 06:49:13  mjk
# fix python path for source built foundation python
#
# Revision 1.6  2005/10/12 18:10:32  mjk
# final copyright for 4.1
#
# Revision 1.5  2005/09/16 01:04:10  mjk
# updated copyright
#
# Revision 1.4  2005/08/09 18:07:47  mjk
# foundation
#
# Revision 1.3  2005/05/24 21:23:28  mjk
# update copyright, release is not any closer
#
# Revision 1.2  2005/04/29 01:14:27  mjk
# Get everything in before travel.  Rocks-roll is looking pretty good and
# can now build the os roll (centos with updates).  It looks like only the
# first CDROM of our os/centos roll is needed with 3 extra disks.
#
# - rocks-dist cleanup (tossed a ton of code)
# - rocks-roll growth (added 1/2 a ton of code)
# - bootable rolls do not work
# - meta rolls are untested
# - rocks-dist vs. rocks-roll needs some redesign but fine for 4.0.0
#
# Revision 1.1  2005/04/27 17:21:43  mjk
# *** empty log message ***
#

import sys
import rocks.sql

class App(rocks.sql.Application):

	def __init__(self, argv):
		rocks.sql.Application.__init__(self, argv)

	def run(self):
		self.connect()
		self.execute('select node from appliances where node != ""')
		
		list = []
		for node in self.fetchall():
			if node not in list:
				list.append(node)
				
		print '<?xml version="1.0" standalone="no"?>'
		print ''
		print '<graph>'
		print ''
		print '\t<description>'
		print '\tCreate a single "everything" node that includes every'
		print '\tAppliance type the database knows about.'
		print '\t</description>'
		print ''
		print '\t<edge from="everything">'
		for node in list:
			print '\t\t<to>%s</to>' % node
		print '\t</edge>'
		print ''
		print '</graph>'


app = App(sys.argv)
app.parseArgs()
app.run()
