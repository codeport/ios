//
//  TabBarControllerDelegate.h
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 28..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TabBarControllerDelegate : NSObject<UITabBarControllerDelegate> {

	BOOL isView1Locked;
}

-(void) toggleLockOfView1;

@property(assign,nonatomic) BOOL isView1Locked;
@end
