## About

This is a tutorial showing how to setup GNUStep on Ubuntu 21.10.

Contains a simple example with a minimal semitransparent window and a menu, can be a start up point of bigger projects or just for learning purposes.

There is very litte information on how to develop apps using GNUstep, this is for me to remember the most basic steps to begin an application that (somehow) integrates well with Gnome.



## GNUStep Installation steps (Ubuntu 22.04)

```
sudo apt install build-essential clang
sudo apt install libgl-dev libglu1-mesa-dev
git clone https://github.com/plaurent/gnustep-build
cd gnustep-build/ubuntu-22.04-clang-14.0-runtime-2.1/
./GNUstep-buildon-ubuntu2204.sh
```

The command to change the deaults to my recommended defaults are:

```
defaults write Hello GSSuppressAppIcon YES
defaults write Hello GSAppOwnsMiniwindow NO
defaults write Hello NSMenuInterfaceStyle NSWindows95InterfaceStyle
defaults read Hello
```

Set defaults globally to all GNUStep apps:
```
defaults write NSGlobalDomain GSSuppressAppIcon YES
defaults write NSGlobalDomain GSAppOwnsMiniwindow NO
defaults write NSGlobalDomain NSMenuInterfaceStyle NSWindows95InterfaceStyle
defaults read NSGlobalDomain
```

** Options are: write, read and delete


## Set up, compile and run this example

```
git clone https://github.com/optimisme/GNUstep-hello-world.git
cd GNUstep-hello-world
. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh
make
./Hello.app/Hello
```

## Tutorial, Run GNUstep examples

Get the files from:

```
https://github.com/gnustep/tests-examples.git
http://www.gnustep.org/experience/examples.html
```

Example on how to set up, compile and run Calculator:

```
. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh
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

### Tutorial, set up defaults graphically

This is the oficial graphics based application to set up GNUstep

```
https://github.com/gnustep/apps-systempreferences
```

Set up, compile and run with:

```
. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh
cd apps-systempreferences-master
make
./SystemPreferences/SystemPreferences.app/SystemPreferences
```

