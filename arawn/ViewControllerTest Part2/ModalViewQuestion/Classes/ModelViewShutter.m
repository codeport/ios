//
//  ModelViewShutter.m
//  ModalViewQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ModelViewShutter.h"


@implementation ModelViewShutter

- (void)closeModalView:(UIViewController*)modalViewController
		   loggingName:(NSString *)name
			  nickname:(NSString *)nicknam {
	NSLog(@"**%@(%@)**", name, nicknam);
	[modalViewController dismissModalViewControllerAnimated:YES];
}

@end
