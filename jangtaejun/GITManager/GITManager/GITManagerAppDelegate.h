//
//  GITManagerAppDelegate.h
//  GITManager
//
//  Created by tjjang on 11. 9. 14..
//  Copyright 2011 NHN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoginViewController;

@interface GITManagerAppDelegate : NSObject <UIApplicationDelegate> {
    

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet LoginViewController *viewController;

@end
