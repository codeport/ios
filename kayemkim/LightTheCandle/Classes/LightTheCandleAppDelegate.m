//
//  LightTheCandleAppDelegate.m
//  LightTheCandle
//
//  Created by 경민 김 on 11. 1. 13..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#define YES   CANDLE_ON;

#import "LightTheCandleAppDelegate.h"
#import "Candle.h"

@implementation LightTheCandleAppDelegate

@synthesize window;
@synthesize candleImageView;
@synthesize onOffSwitch;
@synthesize candleStateLabel;
@synthesize timerLabel;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	
	myCandle = [[Candle alloc] init];
	
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
	UIImage *candleOffImage = [[[UIImage alloc] initWithContentsOfFile:candleOffPath] autorelease];
	UIImage *candleOnImage = [[[UIImage alloc] initWithContentsOfFile:candleOnPath] autorelease];
	
	[myCandle setValue:candleOffImage forKey:@"candleOffImage"];
	[myCandle setValue:candleOnImage forKey:@"candleOnImage"];
	
	[myCandle addObserver:self 
			   forKeyPath:@"candleState"
				  options:NSKeyValueChangeNewKey || NSKeyValueChangeOldKey 
				  context:nil];

	[myCandle setValue:[NSNumber numberWithBool:NO] 
				forKey:@"candleState"];
	
	timerLabel.text = @"Timer : 0";
	
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
	[myCandle removeObserver:self forKeyPath:@"candleState"];
    [window release];
	[candleImageView release];
	[onOffSwitch release];
	[candleStateLabel release];
	[timerLabel release];
    [super dealloc];
}

#pragma mark -
#pragma mark 이벤트 핸들링

- (IBAction)toggleCandle:(id)sender
{
	if ([sender isKindOfClass:[UISwitch class]]) {
		BOOL newState = [sender isOn];
		[myCandle setValue:[NSNumber numberWithBool:newState] forKey:@"candleState"];
	}
	
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	if ([keyPath isEqualToString:@"candleState"]) {
		BOOL newState = [[change valueForKey:NSKeyValueChangeNewKey] boolValue];
		if (newState) {
			//On
			[candleImageView setImage:[object valueForKey:@"candleOnImage"]];
			onOffSwitch.on = CANDLE_ON;
			candleStateLabel.text = @"Candle is now on";
			
			// 타이머 시작
			candleTimer = [[NSTimer scheduledTimerWithTimeInterval:0.1 target:self 
														selector:@selector(effect:)
														userInfo:nil
														 repeats:YES]retain];
		} else {
			//Off
			[candleImageView setImage:[myCandle valueForKey:@"candleOffImage"]];
			onOffSwitch.on = NO;
			candleStateLabel.text = @"Candle is Off. please light on";
			
			// 타이머 정지
			[candleTimer release]; 
			
			[candleTimer invalidate];
			timerLabel.text = @"0";
			timercount = 0;
		}
	}
}

- (void)effect:(NSTimer *)aTimer{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSString *timerset = [[[NSString alloc] initWithFormat:@"%d",timercount++] autorelease];
	timerLabel.text = timerset;
	// 타이머 10초 경과시 촛불 소등
	if ([myCandle valueForKey:@"candleState"] && timercount == 100) {
		[myCandle setValue:[NSNumber numberWithBool:NO] forKey:@"candleState"];
		[candleImageView setImage:[myCandle valueForKey:@"candleOffImage"]]; 
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}
	
	[pool release];
	
}

- (IBAction)timerstart:(id)sender{
	//if ([myCandle valueForKey:@"candleState"]) {
	/*
	if (timerStarted == FALSE) {
		candleTimer = [[NSTimer scheduledTimerWithTimeInterval:0.1 target:self 
													selector:@selector(effect:)
													userInfo:nil
													 repeats:YES]retain];
		timerStarted = TRUE;
	} else {
		[candleTimer release]; 
		
		[candleTimer invalidate];
		timerz.text = @"0";
		timercount = 0;
		timerStarted = FALSE;
	}
	 */
}


@end
