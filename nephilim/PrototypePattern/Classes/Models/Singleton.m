//
//  Singleton.m
//  PrototypePattern
//
//  Created by nephilim on 11. 3. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Singleton.h"
@interface Singleton(Private)

+(id)hiddenAlloc;

@end

@implementation Singleton

+(Singleton*)sharedInstance 
{
	static Singleton* sharedInstance_;
	NSLog(@"%s",__FUNCTION__);
	if (!sharedInstance_) {
		sharedInstance_ = [NSAllocateObject([self class], 0, NULL) init];
	} 
	return sharedInstance_;
}

+(id)alloc {
	NSLog(@"use +sharedInstance instead of +alloc");
	return nil;
}

+(id)allocWithZone:(NSZone *)zone {
	return [self alloc];
}

//[NSObject copy]는 결국 copyWithZone을 호출함
- (id) copyWithZone:(NSZone *)zone {
	[super retain];
	return self;
}

-(void)release {	
	NSLog(@"%s",__FUNCTION__);
	[super release];
}

- (void) dealloc
{
	NSLog(@"%s",__FUNCTION__);
	[super dealloc];
}


@end
