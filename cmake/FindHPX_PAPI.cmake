# Copyright (c) 2007-2011 Hartmut Kaiser
# Copyright (c) 2011      Bryce Lelbach
# Copyright (c) 2011      Maciej Brodowicz
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

if(NOT HPX_FINDPACKAGE_LOADED)
  include(HPX_FindPackage)
endif()

hpx_find_package(PAPI
  LIBRARIES papi libpapi
  LIBRARY_PATHS lib64 lib
  HEADERS papi.h
  HEADER_PATHS include)

if(PAPI_FOUND)
  add_definitions(-DHPX_HAVE_PAPI)
endif()

