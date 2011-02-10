//
//  ViewController2.h
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController2 : UIViewController {
	int viewCount;
	IBOutlet UIButton* lockButton;
}

@property (nonatomic, retain) UIButton* lockButton;

-(IBAction) toggleLockOfView1:(id)sender;

@end
