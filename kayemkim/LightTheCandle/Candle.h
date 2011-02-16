//
//  Candle.h
//  LightTheCandle
//
//  Created by 경민 김 on 11. 1. 17..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Candle : NSObject {
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;
}

/*- (BOOL)candleState;
- (void)setCandleState:(BOOL)newState;

- (UIImage *)candleOffImage;
- (void)setCandleOffImage:(UIImage *)newImage;

- (UIImage *)candleOnImage;
- (void)setCandleOnImage:(UIImage *)newImage;*/

@property (assign) BOOL candleState;
@property (retain) UIImage *candleOffImage;
@property (retain) UIImage *candleOnImage;

@end
