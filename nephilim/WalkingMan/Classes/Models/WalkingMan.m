//
//  WalkingMan.m
//  WalkingMan
//
//  Created by nephilim on 11. 2. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WalkingMan.h"


@implementation WalkingMan


-(int)walkingState {
	return state_;
}
-(void)addWalkingState {
	leakedObject = [[NSObject alloc] init];
	state_ = (state_ + 1) % 5;	
	[[NSNotificationCenter defaultCenter] postNotificationName:@"WalkingManStateChanged" 
														object:[NSNumber numberWithInt:state_]];
}

/*
-(UIImage*)walkingImage {
	NSString* imageName = [NSString stringWithFormat:@"walking%02d.png", self.walkingState];
	UIImage* image = [UIImage imageNamed:imageName];
	return image;
}
*/

@end
