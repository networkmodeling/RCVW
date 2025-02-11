# Find Valgrind.
#
# This module defines:
#  VALGRIND_INCLUDE_DIR, where to find valgrind/memcheck.h, etc.
#  VALGRIND_PROGRAM, the valgrind executable.
#  VALGRIND_FOUND, If false, do not try to use valgrind.
#
# If you have valgrind installed in a non-standard place, you can define
# VALGRIND_PREFIX to tell cmake where it is.
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

message(STATUS "Valgrind Prefix: ${VALGRIND_PREFIX}")

find_path(VALGRIND_INCLUDE_DIR memcheck.h
  /usr/include /usr/include/valgrind /usr/local/include /usr/local/include/valgrind
  ${VALGRIND_PREFIX}/include ${VALGRIND_PREFIX}/include/valgrind)
find_program(VALGRIND_PROGRAM NAMES valgrind PATH /usr/bin /usr/local/bin ${VALGRIND_PREFIX}/bin)

find_package_handle_standard_args(VALGRIND DEFAULT_MSG
    VALGRIND_INCLUDE_DIR
    VALGRIND_PROGRAM)

mark_as_advanced(VALGRIND_INCLUDE_DIR VALGRIND_PROGRAM)

