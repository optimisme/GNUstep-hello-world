#include "AppController.h"
#include <AppKit/AppKit.h>

@implementation AppController

NSMenuItem *addItemToMenu(NSMenu *menu, NSString *str, NSString *comm, NSString *sel, NSString *key)
{
	NSMenuItem *item = [menu addItemWithTitle: NSLocalizedString(str, comm) 
                                       action: NSSelectorFromString(sel) 
                                keyEquivalent: key]; 
	return item;
}

void createMenu ()
{
    NSMenu *mainmenu;
	NSMenu *menu;
	NSMenuItem *menuItem;
	
	// Main
	mainmenu = AUTORELEASE ([[NSMenu alloc] initWithTitle: @"Hello"]);
	
	// Info 	
	menuItem = addItemToMenu(mainmenu, @"Info", @"", nil, @"");
	menu = [NSMenu new];
	[mainmenu setSubmenu: menu forItem: menuItem];
	RELEASE (menu);

	addItemToMenu(menu, @"Info Panel...", @"", @"orderFrontStandardInfoPanel:", @"");
	addItemToMenu(menu, @"Help...", @"", nil, @"?"); 

    [[NSApplication sharedApplication] setWindowsMenu: menu];

	// Quit
	addItemToMenu(mainmenu, @"Quit", @"", @"terminate:", @"q");

	[NSApp setMainMenu: mainmenu];
}

- (void) applicationWillFinishLaunching: (NSNotification *) not
{
   NSLog(@"Hi");
   
   createMenu();
  
   window = [[NSWindow alloc] initWithContentRect: NSMakeRect(0, 0, 400, 200)
                                        styleMask: (NSTitledWindowMask |
                                                    NSClosableWindowMask |
                                                    NSMiniaturizableWindowMask |
                                                    NSResizableWindowMask)
                                          backing: NSBackingStoreBuffered
                                            defer: NO];
   [window setTitle: @"Window title"];
   [window center];
   [window setOpaque: NO];
   NSColor *bc = [NSColor colorWithDeviceRed:0.5 green:1.0 blue:1.0 alpha:0.75];
   [window setBackgroundColor: bc];

   /* Create Label */
   label = [[NSTextField alloc] initWithFrame: NSMakeRect(30, 30, 80, 30)]; 
   [label setSelectable: NO];
   [label setBezeled: NO];
   [label setDrawsBackground: NO];
   [label setStringValue: @"Hello World"];

   [[window contentView] addSubview: label];
   RELEASE(label);
}

- (void) applicationDidFinishLaunching: (NSNotification *) not
{
   [window orderFront: self];
}

- (BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *) theApplication
{
    return YES;
}

- (void) applicationWillTerminate:(NSNotification *) aNotification
{
    NSLog(@"Bye");
}

- (void) dealloc
{
  RELEASE(window);
  [super dealloc];
}

@end