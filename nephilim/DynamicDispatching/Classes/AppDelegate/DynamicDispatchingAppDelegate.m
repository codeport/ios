//
//  DynamicDispatchingAppDelegate.m
//  DynamicDispatching
//
//  Created by nephilim on 11. 3. 6..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import <objc/runtime.h> 
#import <objc/message.h>

#import "DynamicDispatchingAppDelegate.h"

@interface DynamicDispatchingAppDelegate(Private)

- (void) initUIElements;
- (void) increaseProgressBar2;
- (void) increaseProgressBar:(UIProgressView*)progressBar by:(float)rate;
@end


@implementation DynamicDispatchingAppDelegate

@synthesize window;
@synthesize progress1, progress2;

#pragma mark -
#pragma mark 초기화

- (void) initUIElements {
	progress1.progress = 0.0;
	progress2.progress = 0.0;
}


#pragma mark -
#pragma mark 프로그레스 뷰 증가 메서드

- (void) increaseProgressBar2 {
	[self increaseProgressBar:progress2 by:0.1];
}

-(void) increaseProgressBar:(UIProgressView*)progressBar 
						 by:(float)rate {
	float progress = progressBar.progress + rate;
	if (progress > 1.0 ) { progress =1.0; }
	progressBar.progress = progress;
}

#pragma mark -
#pragma mark 이벤트 핸들링

- (IBAction) increaseProgressBar1 {
	[self increaseProgressBar:progress1 by:0.1];
}

- (IBAction) changeDispatcher {
	Class selfClass = [DynamicDispatchingAppDelegate class];
	Method original = class_getInstanceMethod(selfClass,@selector(increaseProgressBar1));
	Method destination = class_getInstanceMethod(selfClass,@selector(increaseProgressBar2));
	IMP increaseProgressBar2 = method_getImplementation(destination);
	
	// 기존 increaseProgressBar1 셀럭터의 메서드 바인딩을 
	// increaseProgressBar1 메서드에서 -> increaseProgressBar2 메서드 구현으로 변경
	method_setImplementation(original, increaseProgressBar2);
	
	// 이후 [DynamicDispatchingAppDelegate increaseProgressBar1] 메세지는 
	// increaseProgressBar2 메서드 구현을 호출함(Progress2 증가)
}

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    [self initUIElements];
    
    [window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
