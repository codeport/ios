//
//  ViewController1.m
//  NavigationControllerSample
//
//  Created by dugan on 10. 11. 16..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
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
	NSLog(@"viewDidLoad VC1 %@",self.navigationItem);
	
	
	// 다음 화면 진행 버튼
	UIBarButtonItem* nextBarBtn = [[UIBarButtonItem alloc]
								   initWithTitle:@"Next ▶" 
								   style:UIBarButtonItemStylePlain 
								   target:self 
								   action:@selector(pushNextViewController:)];
	self.navigationItem.rightBarButtonItem = nextBarBtn;
	[nextBarBtn	release];
	
}

- (void)viewWillAppear:(BOOL)animated {
	NSLog(@"viewWillAppear VC1 %@",self.navigationItem);
}
//VC
- (void)viewDidAppear:(BOOL)animated {
	NSLog(@"current view controllers: %@",[self.navigationController viewControllers]); //출력
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
