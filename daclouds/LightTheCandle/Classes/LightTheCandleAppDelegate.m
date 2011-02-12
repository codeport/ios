//
//  LightTheCandleAppDelegate.m
//  LightTheCandle
//
//  Created by daclouds on 11. 2. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
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
	
	candleState = NO;
	
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
	NSString *showPath = [[NSBundle mainBundle] pathForResource:@"show0482" ofType:@"jpg"];
	
	candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
	candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	showImage = [[UIImage alloc] initWithContentsOfFile:showPath];
	
	[candleImageView setImage:candleOffImage];
	onOffSwitch.on = candleState;
	candleStateLabel.text = @"Candle is Off. please light on";
	
	[window makeKeyAndVisible];
}

- (IBAction)toggleCandle:(id)sender {
	candleState = !candleState;
	
	if(candleState) {
		//On
		int magicNumber = rand() % 5;
		NSLog(@"magicNumber: %d", magicNumber);

		if (magicNumber == 3) {
			[candleImageView setImage:showImage];
			candleStateLabel.text = @"Congratulations~ !";
		} else {
			[candleImageView setImage:candleOnImage];
			onOffSwitch.on = YES;
			candleStateLabel.text = @"Candle is now on";
		}
	} else {
		//Off
		[candleImageView setImage:candleOffImage];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    [window release];
	[candleOffImage release];
	[candleOnImage release];
	[showImage release];
    [super dealloc];
}

@end
