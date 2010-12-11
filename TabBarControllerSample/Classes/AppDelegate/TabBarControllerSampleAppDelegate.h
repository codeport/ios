//
//  TabBarControllerSampleAppDelegate.h
//  TabBarControllerSample
//
//  Created by dugan on 10. 12. 3..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarControllerSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UITabBarController* tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController* tabBarController;

@end

