//
//  PhotoDetailViewController.m
//  ch07-WorldPhotos
//
//  Created by Outsider on 11. 4. 7..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "PhotoMapViewController.h"


@implementation PhotoDetailViewController

@synthesize photoData;
@synthesize photoImageView;
@synthesize mapBarButton;

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
	self.navigationItem.rightBarButtonItem = mapBarButton;
	photoImageView.image = [photoData valueForKey:@"Photo"];
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
	[photoData release];
	[photoImageView release];
	[mapBarButton release];
    [super dealloc];
}

#pragma mark -
#pragma mark user methods

- (IBAction)goToMapView:(id)sender {
	PhotoMapViewController *mapViewController = [[PhotoMapViewController alloc] initWithNibName:@"PhotoMapViewController" bundle:nil];
	mapViewController.photoData = photoData;
	[self.navigationController pushViewController:mapViewController animated:YES];
	[mapViewController release];
}

@end
