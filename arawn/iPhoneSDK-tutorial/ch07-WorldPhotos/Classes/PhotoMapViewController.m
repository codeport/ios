#import "PhotoMapViewController.h"


@implementation PhotoMapViewController

@synthesize mapView, photoData;

- (void)viewDidLoad {
    [super viewDidLoad];
	mapView.delegate = self;	
}

- (void)viewWillAppear:(BOOL)animated {
	CLLocation *location = [photoData valueForKey:@"Location"];
	MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
	MKCoordinateRegion region = MKCoordinateRegionMake(location.coordinate, span);
	[mapView setRegion:region animated:YES];
}

- (void)dealloc {
	[photoData release];	
	[mapView release];
    [super dealloc];
}

@end
