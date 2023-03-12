// #include "AppController.h"
/*
#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

int main(int argc, const char *argv[]) 
{
   NSAutoreleasePool *pool;
   AppController *delegate;
   
   pool = [[NSAutoreleasePool alloc] init];
   delegate = [[AppController alloc] init];

   [NSApplication sharedApplication];
   [NSApp setDelegate: delegate];

   RELEASE(pool);
   return NSApplicationMain (argc, argv);
}
*/
//
//  main.m
//  WidgetTool
//
//  Created by Albert Palacios Jimenez on 12/3/23.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AppDelegate *delegate = [[AppDelegate alloc] init];

        [NSApplication sharedApplication];
        [NSApp setDelegate:delegate];

        return NSApplicationMain(argc, argv);
    }
}
