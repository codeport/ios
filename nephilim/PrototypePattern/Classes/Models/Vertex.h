//
//  Vertex.h
//  PrototypePattern
//
//  Created by nephilim on 11. 3. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Vertex : NSObject<Mark, NSCopying> {
	@protected
	CGPoint location_;
}

@property (nonatomic,retain) UIColor* color;
@property (nonatomic,assign) CGPoint location;

-(id) initWithLocation:(CGPoint)aLocation;
-(id) copyWithZone:(NSZone *)zone;

@end
