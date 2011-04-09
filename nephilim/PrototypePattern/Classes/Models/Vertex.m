//
//  Vertex.m
//  PrototypePattern
//
//  Created by nephilim on 11. 3. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Vertex.h"


@implementation Vertex

@synthesize location = location_;
//@dynamic color;

- (id) initWithLocation:(CGPoint)aLocation
{
	self = [super init];
	if (self != nil) {
		self.location = aLocation;
	}
	return self;
}

- (void) setColor:(UIColor*) color {}
- (UIColor*) color { return nil; }

-(id) copyWithZone:(NSZone *)zone {
	NSLog(@"%s", __FUNCTION__);
	Vertex* copied = [[[self class] allocWithZone:zone] initWithLocation:location_];
	return copied;
}
@end
