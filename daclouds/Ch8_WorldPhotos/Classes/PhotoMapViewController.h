//
//  PhotoMapViewController.h
//  WorldPhotos
//
//  Created by LingoStar on 09. 07. 29.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface PhotoMapViewController : UIViewController {
	NSDictionary *photoData;
	MKMapView *mapView;
}

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
