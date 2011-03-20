//
//  TodoItem.m
//  ToDoolDo
//
//  Created by nephilim on 11. 3. 19..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TodoItem.h"


@implementation TodoItem
@synthesize name = name_;
@synthesize rage = rage_;
@synthesize photo= photo_;

-(TodoItem*) initWithName:(NSString*)name 
					photo:(UIImage*)photo 
					 rage:(int)rage 
{	

	self = [super init];
	if (self != nil) {
		self.name = name;
		self.photo = photo;
		self.rage = rage;
	}
	return self;
}
@end
