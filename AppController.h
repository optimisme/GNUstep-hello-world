#ifndef _AppController_H_
#define _AppController_H_

#include <Foundation/NSObject.h>
#include <AppKit/AppKit.h>

@class NSWindow;
@class NSTextField;
@class NSNotification;

@interface AppController : NSObject
{
   NSWindow *window;
   NSTextField *label;
}

@end

#endif /* _AppController_H_ */