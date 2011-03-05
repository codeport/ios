//
//  WalkingMan.h
//  WalkingMan
//
//  Created by nephilim on 11. 2. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WalkingMan : NSObject {
	int state_;				// state 0~4
	
	NSObject* leakedObject;	// 메모리 누수 체크
}

-(int)walkingState;
-(void)addWalkingState;


//-(UIImage*)getImage;

@end
