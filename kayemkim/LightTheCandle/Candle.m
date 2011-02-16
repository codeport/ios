//
//  Candle.m
//  LightTheCandle
//
//  Created by 경민 김 on 11. 1. 17..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Candle.h"


@implementation Candle

@synthesize candleState;
@synthesize candleOffImage;
@synthesize candleOnImage;

- (id)init
{
	self = [super init];
	if(self != nil) {
		candleState = NO;
		NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
		NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
		candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
		candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	}
	return self;
}

/*- (BOOL)candleState
{
	return candleState;
}

- (void)setCandleState:(BOOL)newState
{
	candleState = newState;
}

- (UIImage *)candleOnImage
{
	return candleOnImage;
}

- (void)setCandleOnImage:(UIImage *)newImage
{
	UIImage *oldImage = candleOnImage;
	if(oldImage != newImage) {
		candleOnImage = [newImage retain];
		if(oldImage != nil) {
			[oldImage release];
		}
	}
}

- (UIImage *)candleOffImage
{
	return candleOffImage;
}

- (void)setCandleOffImage:(UIImage *)newImage
{
	UIImage *oldImage = candleOffImage;
	if(oldImage != newImage) {
		candleOffImage = [newImage retain];
		if(oldImage != nil) {
			[oldImage release];
		}
	}
}*/

@end
