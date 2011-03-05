//
//  RootViewController.h
//  ModalViewQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelViewController.h"
#import "ModelViewDelegate.h"

@interface RootViewController : UIViewController <ModelViewDelegate> {

}

- (IBAction) showModalView:(id)sender;

@end
