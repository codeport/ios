//
//  ToDoolDoAppDelegate.h
//  ToDoolDo
//
//  Created by nephilim on 11. 3. 19..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoTableView.h"

@interface ToDoolDoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	TodoTableView* todoTableView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TodoTableView* todoTableView;

@end

