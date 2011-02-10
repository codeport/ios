//
//  LightTheCandleAppDelegate.h
//  LightTheCandle
//
//  Created by jibeom Jung on 11. 2. 9..
//  Copyright 2011 lg cns. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LightTheCandleAppDelegate : NSObject <UIApplicationDelegate> {
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;
	
    UIWindow *window;
	UIImageView *candleImageView;
	UISwitch * onOffSwitch;
	UILabel * candleStateLabel;
}

- (IBAction)toggleCandle:(id)sender;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIImageView *candleImageView;
@property (nonatomic, retain) IBOutlet UISwitch * onOffSwitch;
@property (nonatomic, retain) IBOutlet UILabel * candleStateLabel;

@end

