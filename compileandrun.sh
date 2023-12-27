#!/bin/bash

reset

. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh

make clean

make

openapp ./Hello.app
