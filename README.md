##About

This is a tutorial showing how to setup GNUStep on Ubuntu 21.10.

Contains a simple example with a minimal semitransparent window and a menu, can be a start up point to bigger projects or just for learning purposes.

There is very litte information on how to develop apps using GNUstep, this is for me to remember the most basic steps to begin an application that (somehow) integrates well with Gnome.

##GNUStep Installation steps (Ubuntu 21.10)

```
sudo apt install gnustep gnustep-devel build-essential clang
sudo apt install libgl-dev libglu1-mesa-dev
```

On non GNUStep desktops my recommended defaults are:

```
defaults write NSGlobalDomain GSSuppressAppIcon YES
defaults write NSGlobalDomain GSAppOwnsMiniwindow NO
defaults write NSGlobalDomain NSMenuInterfaceStyle NSWindows95InterfaceStyle
defaults read NSGlobalDomain
```

* Options are: write, read and delete

### Set up, compile and run this example

. /usr/share/GNUstep/Makefiles/GNUstep.sh
make
./Hello.app/Hello

### Extra tutorial, create a more simple 'Hello World', text based                

Create a file named hello.m

```
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
        NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        NSLog (@"hello world");
        [pool drain];
        return 0;
}
```	

Create a file named GNUmakefile

```
GNUSTEP_MAKEFILES = /usr/share/GNUstep/Makefiles

include $(GNUSTEP_MAKEFILES)/common.make

TOOL_NAME = hello
hello_OBJC_FILES = main.m

-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/tool.make
```

Set up, compile and run:

```
. /usr/share/GNUstep/Makefiles/GNUstep.sh
make
./obj/hello
```

### Extra tutorial, Run GNUstep examples

Get the files from:

```
https://github.com/gnustep/tests-examples.git
http://www.gnustep.org/experience/examples.html
```

Example on how to set up, compile and run Calculator:

```
. /usr/share/GNUstep/Makefiles/GNUstep.sh
cd tests-examples-master/gui/Calculator
make
./Calculator.app/Calculator
```

Example on how to set up, compile and run MyGL:

```
cd tests-examples-master/gui/MyGL
make
./MyGL.app/MyGL
```