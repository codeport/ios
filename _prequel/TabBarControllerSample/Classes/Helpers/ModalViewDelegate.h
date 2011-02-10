//
//  ModalViewDelegate.h
//  TabBarControllerSample
//
//  Created by dugan on 10. 12. 4..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ModalViewController;

@protocol ModalViewDelegate <NSObject>

- (void) closeModalView:(ModalViewController*)modalView	
			loggingName:(NSString*)name 
			   nickname:(NSString*)nickname;
					
@end
