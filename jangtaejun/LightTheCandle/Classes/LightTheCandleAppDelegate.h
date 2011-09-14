//
//  LightTheCandleAppDelegate.h
//  LightTheCandle
//
//  Created by tjjang on 11. 3. 7..
//  Copyright 2011 NHN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LightTheCandleAppDelegate : NSObject <UIApplicationDelegate> {
	
    UIWindow *window;
	UIImageView *candleImageView;
	UISwitch *onOffSwitch;
	UILabel *candleStateLabel;
	
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;
	
}
-(IBAction)toggleCandle:(id)sender;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIImageView *candleImageView;
@property (nonatomic, retain) IBOutlet UISwitch *onOffSwitch;
@property (nonatomic, retain) IBOutlet UILabel *candleStateLabel;

@end

