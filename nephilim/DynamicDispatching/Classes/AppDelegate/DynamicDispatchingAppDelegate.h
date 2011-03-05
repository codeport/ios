//
//  DynamicDispatchingAppDelegate.h
//  DynamicDispatching
//
//  Created by nephilim on 11. 3. 6..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#define TOTAL_COUNT		5

#import <UIKit/UIKit.h>

@interface DynamicDispatchingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	UIBarButtonItem* bbtnNumber;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIBarButtonItem* bbtnNumber;

#pragma mark -
#pragma mark 이벤트 핸들링

@end

