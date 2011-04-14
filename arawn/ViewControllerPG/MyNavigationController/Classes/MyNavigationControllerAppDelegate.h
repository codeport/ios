//
//  MyNavigationControllerAppDelegate.h
//  MyNavigationController
//
//  Created by arawn on 11. 4. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyNavigationControllerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *naviCtrl;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *naviCtrl;

@end

