//
//  ModalViewQuestionAppDelegate.h
//  ModalViewQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModalViewQuestionAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIViewController* _rootViewCtrl;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController *rootViewCtrl;

@end

