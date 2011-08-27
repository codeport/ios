//
//  CampLaoAppDelegate.h
//  CampLao
//
//  Created by ted shin on 11. 8. 27..
//  Copyright 2011년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoginViewController;
@class CampLaoViewController;

@interface CampLaoAppDelegate : NSObject <UIApplicationDelegate> {
    LoginViewController *viewControler;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LoginViewController *viewController;

@end
