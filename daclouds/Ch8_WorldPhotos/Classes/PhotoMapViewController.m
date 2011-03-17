//
//  PhotoMapViewController.m
//  WorldPhotos
//
//  Created by LingoStar on 09. 07. 29.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PhotoMapViewController.h"


@implementation PhotoMapViewController

@synthesize mapView;
@synthesize photoData;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	mapView.delegate = self;
	
}

- (void)viewWillAppear:(BOOL)animated
{
	CLLocation *location = [photoData valueForKey:@"Location"];
	MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
	MKCoordinateRegion region = MKCoordinateRegionMake(location.coordinate, span);
	[mapView setRegion:region animated:YES];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
