//
//  CandleController.h
//  ch03-LighttheCandle
//
//  Created by JeongHoon Byun on 11. 2. 12..
//  Copyright 2011 CJInternet. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CandleController : UIViewController {
	UIImageView *candleImageView;
	UISwitch *onOffSwitch;
	UILabel *candleStateLabel;
	
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;
}

@property (nonatomic, retain) IBOutlet UIImageView *candleImageView;
@property (nonatomic, retain) IBOutlet UISwitch *onOffSwitch;
@property (nonatomic, retain) IBOutlet UILabel *candleStateLabel;

- (IBAction)toggleCandle:(id)sender;

@end
