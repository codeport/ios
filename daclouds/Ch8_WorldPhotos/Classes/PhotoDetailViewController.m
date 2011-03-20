//
//  PhotoDetailViewController.m
//  WorldPhotos
//
//  Created by LingoStar on 09. 07. 29.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "PhotoMapViewController.h"

@implementation PhotoDetailViewController

@synthesize photoData;
@synthesize photoImageView;
@synthesize mapBarButton;
@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.navigationItem.rightBarButtonItem = mapBarButton;
	photoImageView.image = [photoData valueForKey:@"Photo"];
	
	NSString *urlAddress = [NSString stringWithFormat:@"http://www.google.com/m/search?q=%@&site=images", [photoData valueForKey:@"Country"]];
	
	//Create a URL object.
	NSURL *url = [NSURL URLWithString:urlAddress];
	
	//URL Requst Object
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	//Load the request in the UIWebView.
	[webView loadRequest:requestObj];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (void)dealloc {
	[photoData release];
	[photoImageView release];
	[webView release];
	[mapBarButton release];
    [super dealloc];
}

- (IBAction)goToMapView:(id)sender
{
	PhotoMapViewController *mapViewController = [[PhotoMapViewController alloc] initWithNibName:@"PhotoMapViewController" bundle:nil];
	mapViewController.photoData = photoData;
	[self.navigationController pushViewController:mapViewController animated:YES];
	[mapViewController release];
}

@end
