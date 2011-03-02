//
//  WalkingManAppDelegate.h
//  WalkingMan
//
//  Created by nephilim on 11. 2. 24..
//  Copyright 2011 YakShavingLocus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WalkingManAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	NSMutableArray* imageArray;
	IBOutlet UIImageView* humanWalkingImageView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

-(UIImageView*) humanWalkingImageView;
-(void) setHumanWalkingImageView:(UIImageView*)imageView;

#pragma mark -
#pragma mark 이벤트 처리 

-(IBAction) nextWalkingFrame:(id)sender;

@end

