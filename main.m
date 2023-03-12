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
