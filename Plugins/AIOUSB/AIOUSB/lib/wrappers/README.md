\page wrapper_build Building Wrappers

This directory contains the wrapper scripts for a number of scripting
languages. Before trying to build any of these you MUST first source
the file in ../.. . The instructions are for the Bash shell and should
work for Zsh, Ash and Ksh. 

1. Setup build variables

shell > cd ../..
shell > source sourceme.sh
shell > cd -


2. Make sure that you have build libaiousb* . To do this you should
have run "make" in the directories $AIOUSB_ROOT/lib and $AIOUSB_ROOT/classlib.


3. Now you have setup your AIOUSB_ROOT envvar you are ready to start
building the various languages.  If you want to build all three
wrapper scripts by default and install them, just run 

sudo make -f GNUMakefile all

This will build each language and install them.


4. 
