//
//  TabBarQuestionAppDelegate.h
//  TabBarQuestion
//
//  Created by arawn on 10. 12. 9..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarQuestionAppDelegate : NSObject <UIApplicationDelegate, UITabBarDelegate> {
    UIWindow *window;
	UITabBarController* _tabBarCtrl;
	
	NSMutableDictionary* _lockViews;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarCtrl;

- (void) lockView:(int)index;

@end

