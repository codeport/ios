#import "PhotoDetailViewController.h"
#import "PhotoMapViewController.h"

@implementation PhotoDetailViewController

@synthesize photoData, photoImageView, mapBarButton;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.navigationItem.rightBarButtonItem = mapBarButton;
	photoImageView.image = [photoData valueForKey:@"Photo"];
}

- (IBAction)goToMapView:(id)sender {
	PhotoMapViewController *mapViewController = [[PhotoMapViewController alloc] initWithNibName:@"PhotoMapViewController" 
																						 bundle:nil];
	mapViewController.photoData = photoData;
	[self.navigationController pushViewController:mapViewController animated:YES];
	[mapViewController release];
}

- (void)dealloc {
	[photoData release];
	[photoImageView release];
	[mapBarButton release];
    [super dealloc];
}

@end
