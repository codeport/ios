#import "ModalViewController.h"


@implementation ModalViewController

@synthesize delegate;
@synthesize txtName;
@synthesize txtNickname;

-(IBAction)completeUserInput:(id)sender {
	[delegate closeModalView:self loggingName:txtName.text nickname:txtNickname.text];
}

- (void)dealloc {
    [super dealloc];
}

@end
