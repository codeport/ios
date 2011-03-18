//
//  ch06_SimpleHumanResourceAppDelegate.h
//  ch06-SimpleHumanResource
//
//  Created by Outsider on 11. 3. 18..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ch06_SimpleHumanResourceAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSMutableArray *personnel;
}

- (NSArray *)createEmployees;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSMutableArray *personnel;

@end

