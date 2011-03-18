//
//  ch08_CustomTableViewAppDelegate.m
//  ch08-CustomTableView
//
//  Created by Outsider on 11. 3. 19..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import "ch08_CustomTableViewAppDelegate.h"
#import "RootViewController.h"


@implementation ch08_CustomTableViewAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize personnel;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	personnel = [[NSArray alloc] initWithArray:[self createEmployees]];
    
    // Add the navigation controller's view to the window and display.
    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[personnel release];
	[navigationController release];
	[window release];
	[super dealloc];
}

#pragma mark -
#pragma mark User methods

- (NSArray *)createEmployees {
	NSDictionary *employee1 = [NSDictionary dictionaryWithObjectsAndKeys:@"네피림", @"nameOfEmployee", @"Commander", @"departmentOfEmployee", [UIImage imageNamed:@"nephilim.gif"], @"thumbnailOfEmployee", nil];
	NSDictionary *employee2 = [NSDictionary dictionaryWithObjectsAndKeys:@"더클라우드", @"nameOfEmployee", @"Database", @"departmentOfEmployee", [UIImage imageNamed:@"daclouds.gif"], @"thumbnailOfEmployee", nil];
	NSDictionary *employee3 = [NSDictionary dictionaryWithObjectsAndKeys:@"아웃사이더", @"nameOfEmployee", @"Development", @"departmentOfEmployee", [UIImage imageNamed:@"outsider.gif"], @"thumbnailOfEmployee", nil];
	NSDictionary *employee4 = [NSDictionary dictionaryWithObjectsAndKeys:@"아롱", @"nameOfEmployee", @"Development", @"departmentOfEmployee", [UIImage imageNamed:@"arawn.gif"], @"thumbnailOfEmployee", nil];
	
	NSArray *outsiderArray = [NSArray arrayWithObjects:employee1, employee2, employee3, employee4, nil];
	
	return outsiderArray;
}


@end

