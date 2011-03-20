//
//  ViewController2.h
//  TabBarQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController2 : UIViewController {
	UILabel* _label;
	UIButton* _button;
}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction) toggleLockOfView1:(id)sender;

@end
