//
//  CampLaOAppDelegate.h
//  CampLaO
//
//  Created by nephilim on 11. 8. 10..
//  Copyright 2011 yakshavinglocus.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LaOLoginViewController;

@interface CampLaOAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LaOLoginViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LaOLoginViewController *viewController;

@end

