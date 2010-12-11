//
//  ViewController3.m
//  NavigationControllerSample
//
//  Created by dugan on 10. 11. 17..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController1.h"
#import "RootViewController.h"

@implementation ViewController3


#pragma mark -
#pragma mark UI 컨트롤 바인딩

-(IBAction) popToRootView:(id)sender
{
	[self.navigationController popToRootViewControllerAnimated:YES];
}

-(IBAction) popToView1:(id)sender
{
	UIViewController* view1 = [[self.navigationController viewControllers] objectAtIndex:1];
	[self.navigationController popToViewController:view1 animated:YES];
	
//	UIViewController* view1 = [[ViewController1 alloc] initWithNibName:@"ViewController1"
//																bundle:nil];
//	NSArray* views = [[NSArray alloc] initWithObjects:view1, nil];
//	[view1 release];
//	[self.navigationController setViewControllers:views];
//	[views release];
}



#pragma mark -
#pragma mark 뷰 컨트롤러의 라이프 사이클 관련

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
	
	UIBarButtonItem* flexibleSpaceBarBtnItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
																							 target:nil 
																							 action:nil];
	UIBarButtonItem* toRootBarBtnItem =[[UIBarButtonItem alloc] initWithTitle:@"◀ROOT로" 
																		style:UIBarButtonItemStylePlain 
																	   target:self 
																	   action:@selector(popToRootView:)];
	UIBarButtonItem* toView1BarBtnItem =[[UIBarButtonItem alloc] initWithTitle:@"◀VIEW1으로" 
																		style:UIBarButtonItemStylePlain 
																	   target:self 
																	   action:@selector(popToView1:)];
	
	NSArray* toolbarItems = [NSArray arrayWithObjects:
							 flexibleSpaceBarBtnItem, 
							 toRootBarBtnItem, 
							 toView1BarBtnItem, 
							 flexibleSpaceBarBtnItem, 
							 nil];
	NSLog(@"%d items", [toolbarItems count]);
	self.toolbarItems = toolbarItems;
	
	[toRootBarBtnItem release];
	[toView1BarBtnItem release];
	[flexibleSpaceBarBtnItem release];
}

-(void) viewDidAppear:(BOOL)animated	
{
	[self.navigationController setToolbarHidden:NO animated:YES];
}

-(void) viewWillDisappear:(BOOL)animated
{
	[self.navigationController setToolbarHidden:YES animated:YES];
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
