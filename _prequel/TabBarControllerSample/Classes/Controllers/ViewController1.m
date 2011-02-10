//
//  ViewController1.m
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewController1.h"
#import "ModalViewController.h"

@implementation ViewController1

-(IBAction) showModalViewController:(id)sender
{
	ModalViewController* modalViewController = [[ModalViewController alloc] initWithNibName:@"ModalViewController" 
																				  bundle:nil];
	modalViewController.delegate = self;
	modalViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:modalViewController animated:YES];
}

//modal view delegatew
-(void) closeModalView:(ModalViewController*)modalViewController 
		   loggingName:(NSString *)name 
			  nickname:(NSString *)nickname
{
	NSLog(@"%@ (%@)", name, nickname);
	[self dismissModalViewControllerAnimated:YES];
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
- (void) viewWillAppear:(BOOL)animated {
}

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
