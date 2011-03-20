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
	
	UIProgressView* progress1;
	UIProgressView* progress2;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIProgressView* progress1;
@property (nonatomic, retain) IBOutlet UIProgressView* progress2;

#pragma mark -
#pragma mark 이벤트 핸들링

- (IBAction) increaseProgressBar1;
- (IBAction) changeDispatcher;
@end

