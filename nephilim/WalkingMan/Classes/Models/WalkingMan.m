//
//  WalkingMan.m
//  WalkingMan
//
//  Created by nephilim on 11. 2. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WalkingMan.h"


@interface WalkingMan(MyPrivate)

-(void)setWalkingState:(int)state;

@end


@implementation WalkingMan

-(int)walkingState {

	return state_;
}

-(void)addWalkingState {

	// 아래 코드는 WalkingMan(MyPrivate) 카테고리가 없다면 경고 발생
	[self setWalkingState:(state_ + 1) % 5];
	
	/*
	 * 객체의 누수 코드: leakedObject는 실제 역할은 없음
	 * alloc, copy, new는 해제를 해야한다.
	 */
	leakedObject = [[NSObject alloc] init];
	//[leakedObject release];
	
	[[NSNotificationCenter defaultCenter] postNotificationName:@"WalkingManStateChanged" 
														object:[NSNumber numberWithInt:state_]];
	
}

-(void)setWalkingState:(int)state {
	state_ = state;
}

/*
-(UIImage*)walkingImage {
	NSString* imageName = [NSString stringWithFormat:@"walking%02d.png", self.walkingState];
	UIImage* image = [UIImage imageNamed:imageName];
	return image;
}
*/

@end
