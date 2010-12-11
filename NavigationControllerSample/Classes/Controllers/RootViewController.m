//
//  RootViewController.m
//  NavigationControllerSample
//
//  Created by dugan on 10. 11. 16..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController1.h"

@implementation RootViewController

#pragma mark -
#pragma mark 네비게이션 관련 flow처리 메서드

//RootViewController.m
-(IBAction) pushNextViewController:(id)sender 
{
	UIViewController* viewCtrller = [[ViewController1 alloc] initWithNibName:@"ViewController1"
																	  bundle:nil];
	[self.navigationController pushViewController:viewCtrller animated:YES];
	[viewCtrller release];
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIBarButtonItem* nextBarBtn = [[UIBarButtonItem alloc] init];
	[nextBarBtn initWithTitle:@"Next ▶" 
						style:UIBarButtonItemStylePlain 
					   target:self 
					   action:@selector(pushNextViewController:)];
	self.navigationItem.rightBarButtonItem = nextBarBtn;
	
	[nextBarBtn	release];
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

