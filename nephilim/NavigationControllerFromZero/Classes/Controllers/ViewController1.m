//
//  ViewController1.m
//  NavigationControllerFromZero
//
//  Created by nephilim on 11. 4. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@implementation ViewController1

#pragma mark -
#pragma mark 네비게이션 관련 flow처리 메서드

-(IBAction) pushNextViewController:(id)sender 
{
	UIViewController* viewCtrller = [[ViewController2 alloc] initWithNibName:@"ViewController2"
																	  bundle:nil];
	[self.navigationController pushViewController:viewCtrller animated:YES];
	[viewCtrller release];
}
 

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIBarButtonItem* nextBarBtn = [[UIBarButtonItem alloc]
								   initWithTitle:@"to VC2" 
								   style:UIBarButtonItemStylePlain 
								   target:self 
								   action:@selector(pushNextViewController:)];
	self.navigationItem.rightBarButtonItem = nextBarBtn;
	[nextBarBtn	release];	 
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
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
