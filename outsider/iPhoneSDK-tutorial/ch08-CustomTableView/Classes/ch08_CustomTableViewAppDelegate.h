//
//  ch08_CustomTableViewAppDelegate.h
//  ch08-CustomTableView
//
//  Created by Outsider on 11. 3. 19..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ch08_CustomTableViewAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSMutableArray *personnel;
}

- (NSArray *)createEmployees;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSMutableArray *personnel;

@end

