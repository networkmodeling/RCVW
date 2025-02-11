
CCINC		:= 
OSTYPE		= $(shell uname -s )
CYGWINTYPE	= $(patsubst CYGWIN%,CYGWIN,$(OSTYPE))
ifeq ("$(CYGWINTYPE)","CYGWIN")
OSTYPE		=CYGWIN
endif


ifeq ("$(OSTYPE)","Darwin")
LIBPREFIX=lib
LIBSUFFIX=dylib
STATICSUFFIX=a
else ifeq ("$(OSTYPE)","CYGWIN")
LIBPREFIX=cyg
LIBSUFFIX=dll
STATICSUFFIX=a
else
LIBPREFIX=lib
LIBSUFFIX=so
STATICSUFFIX=a
endif