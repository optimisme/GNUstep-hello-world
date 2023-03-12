//
//  AppDelegate.m
//  WidgetTool
//
//  Created by Albert Palacios Jimenez on 12/3/23.
//

#import "AppDelegate.h"

@interface AppDelegate () {
    NSWindow *window;
    NSTextField *label;
}

@property (nonatomic, strong) NSWindow *window;
@property (nonatomic, strong) NSTextField *label;

@end

@implementation AppDelegate

@synthesize window = _window;
@synthesize label = _label;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    // Window
    NSRect contentRect = NSMakeRect(0, 0, 400, 200);
    NSWindowStyleMask styleMask = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable;
    window = [[NSWindow alloc] initWithContentRect:contentRect styleMask:styleMask backing:NSBackingStoreBuffered defer:NO];
    [window setTitle:@"Window Hello"];
    [window center];
    [window setOpaque:NO];
    NSColor *backgroundColor = [NSColor colorWithDeviceRed:0.5 green:1.0 blue:1.0 alpha:0.75];
    [window setBackgroundColor:backgroundColor];
    [window makeKeyAndOrderFront:nil];

    // Label
    label = [[NSTextField alloc] initWithFrame: NSMakeRect(30, 30, 80, 30)];
    [label setSelectable:NO];
    [label setBezeled:NO];
    [label setDrawsBackground:NO];
    [label setStringValue:@"Hello World"];
    [[window contentView] addSubview:label];
}

// Terminates the application when the window is closed.
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

@end
