    //
//  ViewController2.m
//  TabBarQuestion
//
//  Created by arawn on 10. 12. 10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewController2.h"


@implementation ViewController2

@synthesize label = _label;
@synthesize button = _button;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

- (void)loadView {
	NSArray* view2 = [[NSBundle mainBundle] loadNibNamed:@"View2" owner:self options:nil];
	self.view = [view2 objectAtIndex: 0];	
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction) toggleLockOfView1:(id)sender {
	if(self.tabBarController && [self.tabBarController.delegate respondsToSelector:@selector(lockView:)]) {
		[self.tabBarController.delegate performSelector:@selector(lockView:) withObject:0];
		
		
		if([@"Lock View 1" isEqualToString:_button.titleLabel.text]) {
			[_button setTitle:@"UnLock View 1" forState:UIControlStateNormal];
		}
		else {
			[_button setTitle:@"Lock View 1" forState:UIControlStateNormal];
		}
	}	
}

- (void)dealloc {
	[_label release];
	[_button release];
    [super dealloc];
}


@end
