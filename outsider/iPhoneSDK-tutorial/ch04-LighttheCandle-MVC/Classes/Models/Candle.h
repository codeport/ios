//
//  Candle.h
//  ch03-LighttheCandle
//
//  Created by JeongHoon Byun on 11. 2. 20..
//  Copyright 2011 CJInternet. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Candle : NSObject {
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;
}

- (BOOL)candleState;
- (void)setCandleState:(BOOL)newState;

- (UIImage *)candleOffImage;
- (void)setCandleOffImage:(UIImage *)newImage;

- (UIImage *)candleOnImage;
- (void)setCandleOnImage:(UIImage *)newImage;

@end
