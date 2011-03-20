#import "RootViewController.h"


@implementation RootViewController

- (IBAction) showModalView:(id)sender {
	ModalViewController *viewController = [[ModalViewController alloc] init];
	[viewController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
	[viewController setDelegate:self];
	[self presentModalViewController:viewController animated:YES];
	[viewController release];
}

- (void)closeModalView:(ModalViewController*)modalViewController
		   loggingName:(NSString *)name
			  nickname:(NSString *)nicknam {
	NSLog(@"**%@(%@)**", name, nicknam);
	[modalViewController dismissModalViewControllerAnimated:YES];
}

- (void)dealloc {
    [super dealloc];
}


@end
