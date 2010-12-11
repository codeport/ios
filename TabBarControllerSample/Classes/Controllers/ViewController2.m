//
//  ViewController2.m
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewController2.h"
#import "TabBarControllerDelegate.h"

@implementation ViewController2

@synthesize lockButton;

-(IBAction) toggleLockOfView1:(id)sender
{
	TabBarControllerDelegate* tabBarDelegate = self.tabBarController.delegate;
	[tabBarDelegate toggleLockOfView1];
	
	if (tabBarDelegate.isView1Locked) {
		[lockButton setTitle:@"Unlock View1" forState:UIControlStateNormal];
	} else {
		[lockButton setTitle:@"Lock View1" forState:UIControlStateNormal];
	}
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

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


- (void)dealloc {
    [super dealloc];
}


@end
