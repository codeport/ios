//
//  TabBarQuestionAppDelegate.m
//  TabBarQuestion
//
//  Created by arawn on 10. 12. 9..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TabBarQuestionAppDelegate.h"

@implementation TabBarQuestionAppDelegate

@synthesize window;
@synthesize tabBarCtrl = _tabBarCtrl;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	_lockViews = [[NSMutableDictionary alloc] init];
		
	UIViewController *viewCtrl1 = (UIViewController*)[_tabBarCtrl.viewControllers objectAtIndex:0];
	UILabel *lblView1 = (UILabel*)[viewCtrl1.view viewWithTag:100];
	
	// UIView 생성
	CGRect appFrame = [[UIScreen mainScreen] applicationFrame];	
	UIView *view3 = [[[UIView alloc] initWithFrame:appFrame] autorelease];
	view3.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

	// 레이블 생성 및 설정
	UILabel *label = [[[UILabel alloc] initWithFrame:lblView1.frame] autorelease];
	label.text = @"View 3";
	label.font = lblView1.font;
	label.textColor = lblView1.textColor;
	label.autoresizingMask = lblView1.autoresizingMask;
	label.opaque = lblView1.opaque;
	
	// 버튼 생성 및 설정
	UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
	button.frame = CGRectMake(0.0f, 0.0f, 160.0f, 30.0f);
	button.center = CGPointMake(view3.center.x, view3.center.y + 20.0f);
	
	[button setTitle:@"현재 화면 지우기~" 
			forState:UIControlStateNormal];
	[button addTarget:self 
			   action:@selector(removeView3) 
	 forControlEvents:UIControlEventTouchUpInside];
	
	// view3 에 lblView3 추가
	[view3 addSubview:label];
	[view3 addSubview:button];

	UIViewController* viewCtrl3 = [[[UIViewController alloc] init] autorelease];
	viewCtrl3.title = @"View 3";
	viewCtrl3.view = view3;
	
	// view1, view2, view3 배열
	NSArray* viewCtrls = [[NSArray arrayWithArray:_tabBarCtrl.viewControllers]
						  arrayByAddingObject:viewCtrl3];
	_tabBarCtrl.viewControllers = viewCtrls;
	
	[window addSubview:_tabBarCtrl.view];
    [window makeKeyAndVisible];
	
    return YES;
}

- (void) removeView3 {
	// view1, view2, view3 배열
	NSMutableArray* viewCtrls = [NSMutableArray arrayWithArray:_tabBarCtrl.viewControllers];
	[viewCtrls removeObjectAtIndex:2];
	
	// 새로운 뷰배열 주입
	[_tabBarCtrl setViewControllers:viewCtrls animated:YES];	
}

- (void) lockView:(int)index {
	if(index > -1 && [_tabBarCtrl.viewControllers count] > index) {
		NSNumber *key = [NSNumber numberWithInt:index];
		if([_lockViews objectForKey:key]) {
			NSLog(@"call lockView. unlock view index : %d", index);
			[_lockViews removeObjectForKey:key];
		}
		else {
			NSLog(@"call lockView. lock view index : %d", index);
			[_lockViews setObject:[_tabBarCtrl.viewControllers objectAtIndex:index] forKey:key];
		}
	}
}

- (BOOL)  tabBarController:(UITabBarController *)aTabBar
shouldSelectViewController:(UIViewController *)viewController {
	for(id obj in [_lockViews allValues]) {
		if([viewController isEqual:obj]) {
			return NO;
		}
	}
	
	if (viewController.tabBarItem.badgeValue == [NSNull null] || viewController.tabBarItem.badgeValue.length == 0 ) {
		viewController.tabBarItem.badgeValue = @"1";
	}
	else {
		viewController.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d", ([viewController.tabBarItem.badgeValue intValue] + 1)];
	}
	
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
	[_lockViews release];
	[_tabBarCtrl release];
    [window release];
    [super dealloc];
}


@end
