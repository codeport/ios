//
//  WalkingManAppDelegate.m
//  WalkingMan
//
//  Created by nephilim on 11. 2. 24..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WalkingMan.h"
#import "WalkingManAppDelegate.h"

#pragma mark 전방 참조용 카테고리 선언
@interface WalkingManAppDelegate(Private)
-(void) initImageArray;
@end

@implementation WalkingManAppDelegate

@synthesize window;

#pragma mark -
#pragma mark 걷는 이미지 설정
- (IBAction) addWalkingState {
	// 아래 구문은 NSNotification을 발생시킴(KVO)
	[walkingMan addWalkingState];
}

- (void) setWalkingImage:(NSNotification*)noti {
	// WalkingManStateChanged 통지가 발생하면 수행됨
	NSUInteger stateNumber =[[noti object] intValue];
	NSLog(@"%s state = %d", __FUNCTION__, stateNumber);
	humanWalkingImageView.image = [imageArray objectAtIndex:stateNumber];
}

#pragma mark -
#pragma mark 접근자 

-(UIImageView*) humanWalkingImageView {
	return humanWalkingImageView;
}

-(void) setHumanWalkingImageView:(UIImageView*)imageView {
	humanWalkingImageView = imageView;
}

#pragma mark -
-(void) initImageArray {
	imageArray = [NSMutableArray arrayWithCapacity:5];
	NSUInteger i;
	for (i = 0; i < 5; i++) {
		NSString* imageFileName =[NSString stringWithFormat:@"walking%02d.png", i];			
		UIImage* image = [UIImage imageNamed:imageFileName];
		[imageArray addObject:image];
	}
	[imageArray retain];	// 왜 retain을 해줘야 할까?
}

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // 초기화
	walkingMan = [[WalkingMan alloc] init];
	[self initImageArray];
	
	[[NSNotificationCenter defaultCenter] addObserver:self 
											 selector:@selector(setWalkingImage:) 
												 name:@"WalkingManStateChanged"
											   object:nil];
	// 화면 표시
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
	[imageArray release];
	[walkingMan release];
	[humanWalkingImageView release];
	
    [window release];
    [super dealloc];
}


@end
