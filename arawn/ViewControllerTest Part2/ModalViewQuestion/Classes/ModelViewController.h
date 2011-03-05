//
//  ModelViewController.h
//  ModalViewQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelViewDelegate.h"

@interface ModelViewController : UIViewController {
	
	id<ModelViewDelegate> delegate;
	UITextField* txtName;
	UITextField* txtNickname;	
}

@property (retain,nonatomic) IBOutlet id<ModelViewDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITextField* txtName;
@property (nonatomic, retain) IBOutlet UITextField* txtNickname;

-(IBAction)completeUserInput:(id)sender;

@end
