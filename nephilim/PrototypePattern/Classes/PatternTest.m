//
//  PatternTest.m
//  PrototypePattern
//
//  Created by nephilim on 11. 3. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PatternTest.h"
#import "Singleton.h"

@implementation PatternTest

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void) testAppDelegate {
    
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
    
}

#else                           // all code under test must be linked into the Unit Test bundle

- (void) testMath {
    
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );
    
}


#pragma mark -
#pragma mark 참조 카운트에 대한 테스트

- (void) testRetainCount {
	NSObject* anObject = [[[NSObject alloc] init] autorelease];
	STAssertEquals( [anObject retainCount] , (NSUInteger)1, @"retainCount는 1");
	
	// NSAllocateObject 이용
	NSObject* anotherObject = [NSAllocateObject([NSObject class], 0, NULL) init];
	STAssertEquals( [anotherObject retainCount], (NSUInteger)1, @"retainCount는 1");
	
	[anotherObject release];
}


#pragma mark -
#pragma mark 싱글턴에 대한 테스트

-(void) testSingleton {
	Singleton* singleton01 = [[Singleton alloc] init];
	STAssertNil(singleton01, @"alloc을 통한 생성 금지로 nil반환");
	
	Singleton* singleton02 = [Singleton new];
	STAssertNil(singleton02, @"new 는 syntactic sugar로 결국 alloc + init이므로 nil 반환");
	
	Singleton* realSingleton = [Singleton sharedInstance];
	STAssertNotNil(realSingleton, @"sharedInstance를 통해 정상적으로 생성");
	STAssertEquals( [realSingleton retainCount], (NSUInteger)1, @"retainCount는 1");
	
	Singleton* anotherRealSingleton = [realSingleton retain];
	STAssertEquals( [realSingleton retainCount], (NSUInteger)2, @"retainCount는 2");
	
	[anotherRealSingleton release];
	anotherRealSingleton = nil;		// nil로 만들어야 release를 다시 하지 못함
	STAssertEquals( [realSingleton retainCount], (NSUInteger)1, @"retainCount는 1");
}

#endif


@end
