#import <UIKit/UIKit.h>
#import "ModalViewDelegate.h"

@interface ModalViewController : UIViewController {
	
	id<ModalViewDelegate> delegate;
	UITextField* txtName;
	UITextField* txtNickname;	
}

@property (retain,nonatomic) IBOutlet id<ModalViewDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITextField* txtName;
@property (nonatomic, retain) IBOutlet UITextField* txtNickname;

-(IBAction)completeUserInput:(id)sender;

@end
