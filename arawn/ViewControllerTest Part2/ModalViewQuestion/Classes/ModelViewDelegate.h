//
//  ModelViewDelegate.h
//  ModalViewQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ModelViewController;

@protocol ModelViewDelegate

- (void)closeModalView:(ModelViewController*)modalViewController
		   loggingName:(NSString *)name
			  nickname:(NSString *)nicknam;

@end
