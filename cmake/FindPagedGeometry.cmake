#-------------------------------------------------------------------
# This file is part of the CMake build system for PagedGeometry
#
# The contents of this file are placed in the public domain. Feel
# free to make use of it in any way you like.
#-------------------------------------------------------------------

# - Try to find PagedGeometry
# Once done this will define
#
#  PagedGeometry_FOUND - system has PagedGeometry
#  PagedGeometry_INCLUDE_DIRS - the PagedGeometry include directory
#  PagedGeometry_LIBRARIES - the libraries needed to use PagedGeometry.
#
# $PagedGeometryDIR is an environment variable used for finding PagedGeometry.

FIND_PATH(PagedGeometry_INCLUDE_DIRS PagedGeometry/PagedGeometry.h
    PATHS
    $ENV{PagedGeometryDIR}
    /usr/local/include
    /usr/include
    PATH_SUFFIXES OGRE
    )

FIND_LIBRARY(PagedGeometry_LIBRARY
    NAMES PagedGeometry
    PATHS
    $ENV{PagedGeometryDIR}
    /usr/local/lib${LIB_SUFFIX}
    /usr/lib${LIB_SUFFIX}
    PATH_SUFFIXES OGRE
    )

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PagedGeometry DEFAULT_MSG PagedGeometry_LIBRARY PagedGeometry_INCLUDE_DIRS)

IF (PagedGeometry_FOUND)
    SET(PagedGeometry_LIBRARIES ${PagedGeometry_LIBRARY})
ENDIF (PagedGeometry_FOUND)

MARK_AS_ADVANCED(PagedGeometry_LIBRARY PagedGeometry_LIBRARIES PagedGeometry_INCLUDE_DIRS)
