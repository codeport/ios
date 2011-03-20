//
//  BaseballPlayersAppDelegate.m
//  BaseballPlayers
//
//  Created by 경민 김 on 11. 3. 18..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BaseballPlayersAppDelegate.h"
#import "RootViewController.h"


@implementation BaseballPlayersAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize players;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
    // Add the navigation controller's view to the window and display.
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
	
	players = [[NSArray alloc] initWithArray:[self createPlayers]];

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
#pragma mark Baseball Players

- (NSArray *)createPlayers {
	NSDictionary *player1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Beltran", @"nameOfPlayer",
							 @"OF", @"positionOfPlayer", @"beltran", @"image", nil]; 
	NSDictionary *player2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Santana", @"nameOfPlayer",
							 @"SP", @"positionOfPlayer", @"santana", @"image", nil]; 
	NSDictionary *player3 = [NSDictionary dictionaryWithObjectsAndKeys:@"Wright", @"nameOfPlayer",
							 @"IF", @"positionOfPlayer", @"wright", @"image", nil]; 
	NSDictionary *player4 = [NSDictionary dictionaryWithObjectsAndKeys:@"Rodriquez", @"nameOfPlayer",
							 @"RP", @"positionOfPlayer", @"rodriguez", @"image", nil]; 
	NSDictionary *player5 = [NSDictionary dictionaryWithObjectsAndKeys:@"Reyes", @"nameOfPlayer",
							 @"IF", @"positionOfPlayer", @"reyes", @"image", nil]; 
	NSArray *metsArray = [NSArray arrayWithObjects:player1, player2, player3, player4, player5, nil];
	
	return metsArray;
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[players release];
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

