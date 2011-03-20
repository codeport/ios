//
//  PhotoDetailViewController.h
//  WorldPhotos
//
//  Created by LingoStar on 09. 07. 29.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoDetailViewController : UIViewController {
	NSDictionary *photoData;
	UIImageView *photoImageView;
	UIWebView *webView;
	UIBarButtonItem *mapBarButton;
}

- (IBAction)goToMapView:(id)sender;

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet UIImageView *photoImageView;
@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *mapBarButton;


@end
