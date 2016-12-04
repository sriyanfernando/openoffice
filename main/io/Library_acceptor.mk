#**************************************************************
#  
#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#  
#    http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing,
#  software distributed under the License is distributed on an
#  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#  KIND, either express or implied.  See the License for the
#  specific language governing permissions and limitations
#  under the License.
#  
#**************************************************************



$(eval $(call gb_Library_Library,acceptor))

$(eval $(call gb_Library_add_precompiled_header,acceptor,$(SRCDIR)/io/inc/pch/precompiled_io))

$(eval $(call gb_Library_set_componentfile,acceptor,io/source/acceptor/acceptor))

$(eval $(call gb_Library_set_include,acceptor,\
        $$(INCLUDE) \
	-I$(SRCDIR)/io/inc \
	-I$(SRCDIR)/io/inc/pch \
))

$(eval $(call gb_Library_add_defs,acceptor,\
	-DIO_DLLIMPLEMENTATION \
))

$(eval $(call gb_Library_add_api,acceptor,\
	udkapi \
))

$(eval $(call gb_Library_add_linked_libs,acceptor,\
	cppuhelper \
	cppu \
	sal \
	$(gb_STDLIBS) \
))


$(eval $(call gb_Library_add_exception_objects,acceptor,\
	io/source/acceptor/acc_pipe \
	io/source/acceptor/acc_socket \
	io/source/acceptor/acceptor \
))

# vim: set noet sw=4 ts=4:
