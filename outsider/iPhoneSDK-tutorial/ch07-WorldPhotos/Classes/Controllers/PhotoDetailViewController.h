//
//  PhotoDetailViewController.h
//  ch07-WorldPhotos
//
//  Created by Outsider on 11. 4. 7..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoDetailViewController : UIViewController {
	NSDictionary *photoData;
	UIImageView *photoImageView;
	
	UIBarButtonItem *mapBarButton;
}

- (IBAction)goToMapView:(id)sender;

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet UIImageView *photoImageView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *mapBarButton;

@end
