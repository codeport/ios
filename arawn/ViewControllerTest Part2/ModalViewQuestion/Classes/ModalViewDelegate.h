#import <UIKit/UIKit.h>

@class ModalViewController;

@protocol ModalViewDelegate

- (void)closeModalView:(ModalViewController*)modalViewController
		   loggingName:(NSString *)name
			  nickname:(NSString *)nicknam;

@end
