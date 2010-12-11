//
//  ViewController2.m
//  NavigationControllerSample
//
//  Created by dugan on 10. 11. 16..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@implementation ViewController2

#pragma mark -
#pragma mark 네비게이션 관련 flow처리 메서드

-(IBAction) pushNextViewController:(id)sender 
{
	UIViewController* viewCtrller = [[ViewController3 alloc] initWithNibName:@"ViewController3"
																	  bundle:nil];
	[self.navigationController pushViewController:viewCtrller animated:YES];
	[viewCtrller release];
}

#pragma mark -
#pragma mark UI 컨트롤 바인딩

-(IBAction) toggleFullScreen:(id)sender; 
{
	BOOL current = self.navigationController.navigationBar.hidden;
	[self.navigationController setNavigationBarHidden:!current animated:YES];
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIBarButtonItem* nextBarBtn = [[UIBarButtonItem alloc]
								   initWithTitle:@"Next ▶" 
								   style:UIBarButtonItemStylePlain 
								   target:self 
								   action:@selector(pushNextViewController:)];
	self.navigationItem.rightBarButtonItem = nextBarBtn;
	
	[nextBarBtn	release];
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
