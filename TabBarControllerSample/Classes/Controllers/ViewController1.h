//
//  ViewController1.h
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModalViewDelegate.h"

@interface ViewController1 : UIViewController<ModalViewDelegate> {
	int viewCount;
}

-(IBAction) showModalViewController:(id)sender;

@end
