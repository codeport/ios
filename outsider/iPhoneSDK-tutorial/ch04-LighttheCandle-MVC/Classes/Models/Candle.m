//
//  Candle.m
//  ch03-LighttheCandle
//
//  Created by JeongHoon Byun on 11. 2. 20..
//  Copyright 2011 CJInternet. All rights reserved.
//

#import "Candle.h"


@implementation Candle

- (id)init {
	self = [super init];
	if (self != nil) {
		candleState = NO;
		
		NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
		NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
		candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
		candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	}
	
	return self;
}

- (void)dealloc { 
	[candleOffImage release];
	[candleOnImage release];
}

#pragma mark -
#pragma mark getter/setter
- (BOOL)candleState {
	return candleState;
}
- (void)setCandleState:(BOOL)newState {
	candleState = newState;
}

- (UIImage *)candleOffImage {
	return candleOffImage;
}
- (void)setCandleOffImage:(UIImage *)newImage {
	UIImage *oldImage = candleOffImage;
	if (oldImage != newImage) {
		candleOffImage = [newImage retain];
		if (oldImage != nil) [oldImage release];
	}
}

- (UIImage *)candleOnImage {
	return candleOnImage;
}
- (void)setCandleOnImage:(UIImage *)newImage {
	UIImage *oldImage = candleOnImage;
	if (oldImage != newImage) {
		candleOnImage = [newImage retain];
		if (oldImage != nil) [oldImage release];
	}
}

@end
