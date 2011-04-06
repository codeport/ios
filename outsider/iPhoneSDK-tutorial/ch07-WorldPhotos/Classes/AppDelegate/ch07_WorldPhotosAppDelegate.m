//
//  ch07_WorldPhotosAppDelegate.m
//  ch07-WorldPhotos
//
//  Created by Outsider on 11. 4. 7..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import "ch07_WorldPhotosAppDelegate.h"
#import "RootViewController.h"
#import <CoreLocation/CoreLocation.h>


@implementation ch07_WorldPhotosAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize photoArray;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    photoArray = [[NSArray alloc] initWithArray:[self createPhotoData]];
	
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
	[navigationController release];
	[window release];
	[photoArray release];
	[super dealloc];
}

#pragma mark -
#pragma mark user methods

- (NSArray *)createPhotoData {
	CLLocation *location;
	UIImage	*photo;
	UIImage *thumbnail;
	
	location = [[CLLocation alloc] initWithLatitude:31.048026 longitude:-7.13017];
	photo = [UIImage imageNamed:@"Africa_Morocco_1.jpg"];
	thumbnail = [UIImage imageNamed:@"Africa_Morocco_1_thumbnail.jpg"];
	NSDictionary *africa_morroco = [NSDictionary dictionaryWithObjectsAndKeys:@"Africa", @"Region", @"Morocco", @"Country", photo, @"Photo", thumbnail, @"Thumbnail", location, @"Location", nil];
	[location release];
	
	location = [[CLLocation alloc] initWithLatitude:35.700884 longitude:139.770893];
	photo = [UIImage imageNamed:@"Asia_Japan_1.jpg"];
	thumbnail = [UIImage imageNamed:@"Asia_Japan_1_thumbnail.jpg"];
	NSDictionary *asia_japan = [NSDictionary dictionaryWithObjectsAndKeys:@"Asia", @"Region", @"Japan", @"Country", photo, @"Photo", thumbnail, @"Thumbnail", location, @"Location", nil];
	[location release];
	
	location = [[CLLocation alloc] initWithLatitude:46.981248 longitude:8.253908];
	photo = [UIImage imageNamed:@"Europe_Swiss_1.jpg"];
	thumbnail = [UIImage imageNamed:@"Europe_Swiss_1_thumbnail.jpg"];
	NSDictionary *europe_swiss = [NSDictionary dictionaryWithObjectsAndKeys:@"Europe", @"Region", @"Swiss", @"Country", photo, @"Photo", thumbnail, @"Thumbnail", location, @"Location", nil];
	[location release];
	
	NSArray *returnArray = [NSArray arrayWithObjects:africa_morroco, asia_japan, europe_swiss, nil];
	return returnArray;
}


@end

