//
//  JustOneButtonAppDelegate.h
//  JustOneButton
//
//  Created by Dongwook Lee on 11. 10. 8..
//  Copyright 2011년 i015005@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JustOneButtonViewController;

@interface JustOneButtonAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet JustOneButtonViewController *viewController;

@end
