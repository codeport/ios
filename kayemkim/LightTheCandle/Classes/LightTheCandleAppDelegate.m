//
//  LightTheCandleAppDelegate.m
//  LightTheCandle
//
//  Created by 경민 김 on 11. 1. 13..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LightTheCandleAppDelegate.h"

@implementation LightTheCandleAppDelegate

@synthesize window;
@synthesize candleImageView;
@synthesize onOffSwitch;
@synthesize candleStateLabel;
@synthesize timerz;



#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	
	myCandleDict = [[NSMutableDictionary alloc] initWithCapacity:10];
	
	BOOL candleState = NO;
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
	UIImage *candleOffImage = [[[UIImage alloc] initWithContentsOfFile:candleOffPath] autorelease];
	UIImage *candleOnImage = [[[UIImage alloc] initWithContentsOfFile:candleOnPath] autorelease];
	
	[myCandleDict setValue:[NSNumber numberWithBool:candleState] forKey:@"candleState"];
	[myCandleDict setValue:candleOffImage forKey:@"candleOffImage"];
	[myCandleDict setValue:candleOnImage forKey:@"candleOnImage"];
								
	
	[candleImageView setImage:[myCandleDict valueForKey:@"candleOffImage"]];
	onOffSwitch.on = [myCandleDict valueForKey:@"candleState"];
	candleStateLabel.text = @"Candle is Off. please light on";
	
	timerz.text = @"Timer : 0";
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
    [window release];
	[candleImageView release];
	[onOffSwitch release];
	[candleStateLabel release];
	[timerz release];
    [super dealloc];
}

- (IBAction)toggleCandle:(id)sender
{
	BOOL candleState = [[myCandleDict valueForKey:@"candleState"] boolValue];
	[myCandleDict setValue:[NSNumber numberWithBool:!candleState] forKey:@"candleState"];
	
	if (!candleState) {
		//On
		[candleImageView setImage:[myCandleDict valueForKey:@"candleOnImage"]];
		onOffSwitch.on = YES;
		candleStateLabel.text = @"Candle is now on";
	} else {
		//Off
		[candleImageView setImage:[myCandleDict valueForKey:@"candleOffImage"]];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}
}

- (void)effect:(NSTimer *)aTimer{
	NSString *timerset = [[NSString alloc] initWithFormat:@"%d",timercount++];
	timerz.text = timerset;
	if (timercount == 100) {
		BOOL candleState = [[myCandleDict valueForKey:@"candleState"] boolValue];
		[myCandleDict setValue:[NSNumber numberWithBool:!candleState] forKey:@"candleState"];
		[candleImageView setImage:[myCandleDict valueForKey:@"candleOffImage"]];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
		
		
		[timergogo release]; 
		
		[timergogo invalidate];
		timerz.text = @"0";
		timercount = 0;
	}
}

- (IBAction)timerstart:(id)sender{
	BOOL candleState = [[myCandleDict valueForKey:@"candleState"] boolValue];
	if (candleState) {
		timergogo = [[NSTimer scheduledTimerWithTimeInterval:0.1 target:self 
													selector:@selector(effect:)
													userInfo:nil
													 repeats:YES]retain];
	} else {
		[timergogo release]; 
		
		[timergogo invalidate];
		timerz.text = @"0";
		timercount = 0;
	}
}


@end
