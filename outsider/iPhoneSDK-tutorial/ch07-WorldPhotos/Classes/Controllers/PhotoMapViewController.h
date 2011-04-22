//
//  PhotoMapViewController.h
//  ch07-WorldPhotos
//
//  Created by Outsider on 11. 4. 7..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface PhotoMapViewController : UIViewController <MKMapViewDelegate> {
	NSDictionary *photoData;
	MKMapView *mapView;
}

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@end
