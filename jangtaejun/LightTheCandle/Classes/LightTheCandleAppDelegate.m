//
//  LightTheCandleAppDelegate.m
//  LightTheCandle
//
//  Created by tjjang on 11. 3. 7..
//  Copyright 2011 NHN. All rights reserved.
//

#import "LightTheCandleAppDelegate.h"

@implementation LightTheCandleAppDelegate

@synthesize window;
@synthesize candleImageView;
@synthesize onOffSwitch;
@synthesize candleStateLabel;

#pragma mark -
#pragma mark Application lifecycle
- (void)applicationDidFinishLaunching:(UIApplication *)application {

    // Override point for customization after application launch.
	candleState = NO;
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"cande off" ofType:@"jpg"];
	
	candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
	
	[candleImageView setImage:candleOffImage];
	onOffSwitch.on = candleState;
	[candleStateLabel setText:@"Candle is Off. plz light on"];
	//candleStateLabel.text = @"Candle is Off. plz light on";

    [self.window makeKeyAndVisible];
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
	[candleOnImage release];
	[candleOffImage release];
    [super dealloc];
}

- (IBAction)toggleCandle:(id)sender
{
	candleState = !candleState;
	if(candleState){
		//ON
		[candleImageView setImage:candleOnImage];
		[candleStateLabel setText:@"Candle is now on."];
	}else{
		//Off
		[candleImageView setImage:candleOffImage];
		[candleStateLabel setText:@"Candle is now off."];
	}
	onOffSwitch.on = candleState;
}
@end
