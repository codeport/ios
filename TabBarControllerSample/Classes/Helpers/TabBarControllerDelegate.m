//
//  TabBarControllerDelegate.m
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 28..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TabBarControllerDelegate.h"
#import "ViewController1.h"

@implementation TabBarControllerDelegate

@synthesize isView1Locked;

// tab bar controller의 아이템 선택 리스너
-(BOOL)tabBarController:(UITabBarController *)tabBarController 
shouldSelectViewController:(UIViewController *)viewController 
{
	NSLog(@"tabBarController:shouldSelectViewController");
	ViewController1* viewController1 = (ViewController1*)[tabBarController.viewControllers objectAtIndex:0];
	
	if ( isView1Locked && 
		(viewController == viewController1)) 
	{
		NSLog(@"NO");
		return NO;
	} else {
		int viewCount = [[viewController valueForKey:@"viewCount"] intValue];
		viewController.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",++viewCount];
		[viewController setValue:[NSNumber numberWithInt:viewCount] 
						  forKey:@"viewCount"];	
		NSLog(@"YES");
		return YES;
	}
}

-(void) toggleLockOfView1 
{
	isView1Locked = !isView1Locked;							
	NSLog(@"lockOfView1=>%@", isView1Locked?@"YES":@"NO");	//확인 로그 
}
@end
