#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface PhotoMapViewController : UIViewController <MKMapViewDelegate> {
	NSDictionary *photoData;
	MKMapView *mapView;
}

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
