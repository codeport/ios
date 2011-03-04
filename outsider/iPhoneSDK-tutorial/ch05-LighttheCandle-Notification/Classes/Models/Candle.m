//
//  Candle.m
//  ch03-LighttheCandle
//
//  Created by JeongHoon Byun on 11. 2. 20..
//  Copyright 2011 CJInternet. All rights reserved.
//

#import "Candle.h"


@implementation Candle

@synthesize candleState;
@synthesize candleOffImage;
@synthesize candleOnImage;

- (id)init {
	self = [super init];
	if (self != nil) {
		
	}
	
	return self;
}

#pragma mark -
#pragma mark getter/setter
- (void)setCandleState:(BOOL)newState {
	candleState = newState;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"CandleDidChanged" object:self userInfo:nil];
}

@end
