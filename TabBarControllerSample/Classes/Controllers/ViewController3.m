//
//  ViewController3.m
//  TabBarFromScratch
//
//  Created by dugan on 10. 11. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewController3.h"


@implementation ViewController3

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
		UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"View3" image:nil tag:0];
		self.tabBarItem = tabBarItem;
		[tabBarItem release];
    }
    return self;
}

- (IBAction) removeCurrentTabBarItem: (id) sender {
	NSMutableArray* mutableArray = [[NSMutableArray alloc] initWithArray:self.tabBarController.viewControllers];
	[mutableArray removeObject:self];
	
	[self.tabBarController setViewControllers:mutableArray animated:YES];
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


- (void)dealloc {
    [super dealloc];
}


@end
