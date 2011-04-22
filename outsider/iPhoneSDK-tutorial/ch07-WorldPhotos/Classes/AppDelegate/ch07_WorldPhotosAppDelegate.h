//
//  ch07_WorldPhotosAppDelegate.h
//  ch07-WorldPhotos
//
//  Created by Outsider on 11. 4. 7..
//  Copyright 2011 Side Effect Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ch07_WorldPhotosAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSArray *photoArray;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSArray *photoArray;

- (NSArray *)createPhotoData;

@end

