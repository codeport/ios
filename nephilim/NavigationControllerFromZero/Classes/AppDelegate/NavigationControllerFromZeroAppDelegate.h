//
//  NavigationControllerFromZeroAppDelegate.h
//  NavigationControllerFromZero
//
//  Created by nephilim on 11. 4. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigationControllerFromZeroAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIViewController* rootViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController* rootViewController;

@end

