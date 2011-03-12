#import <UIKit/UIKit.h>
#import "ModalViewController.h"
#import "ModalViewDelegate.h"

@interface RootViewController : UIViewController <ModalViewDelegate> {

}

- (IBAction) showModalView:(id)sender;

@end
