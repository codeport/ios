//
//  LightTheCandleAppDelegate.h
//  LightTheCandle
//
//  Created by nephilim on 11. 2. 10..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LightTheCandleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;

	IBOutlet UIImageView* humanWalkingImageView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

-(UIImageView*) humanWalkingImageView;
-(void) setHumanWalkingImageView:(UIImageView*)imageView;

#pragma mark -
#pragma mark 이벤트 처리 

- (IBAction) nextWalkingFrame:(id)sender;

@end

