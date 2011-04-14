//
//  ViewControllerOne.m
//  MyNavigationController
//
//  Created by arawn on 11. 4. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"


@implementation ViewControllerOne

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
//	UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithTitle:@"Next" 
//					 										   style:UIBarButtonItemStylePlain 
//															  target:self 
//															  action:@selector(pushNextViewCtrl)];
	
//	self.navigationItem.rightBarButtonItem = button;
//	[button release];
}

- (IBAction)pushNextViewCtrl {
	ViewControllerTwo* viewCtrl = [[ViewControllerTwo alloc] initWithNibName:@"ViewControllerTwo" 
																	  bundle:nil];
	[self.navigationController pushViewController:viewCtrl animated:YES];
	[viewCtrl release];
}

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


- (void)dealloc {
    [super dealloc];
}


@end
