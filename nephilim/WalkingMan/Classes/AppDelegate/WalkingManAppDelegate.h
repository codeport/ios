//
//  WalkingManAppDelegate.h
//  WalkingMan
//
//  Created by nephilim on 11. 2. 24..
//  Copyright 2011 YakShavingLocus. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WalkingMan;

@interface WalkingManAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	NSArray* imageArray;			// 5개의 걷기 이미지(UIImage)를 보관할 배열
	WalkingMan* walkingMan;			// "걷는 사람" 모델
	
	IBOutlet UIImageView* humanWalkingImageView;		// 화면에 표시할 ImageView
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

-(UIImageView*) humanWalkingImageView;
-(void) setHumanWalkingImageView:(UIImageView*)imageView;

#pragma mark -
#pragma mark 이벤트 처리
- (IBAction) addWalkingState;
- (void) setWalkingImage:(NSNotification*)noti;

@end

