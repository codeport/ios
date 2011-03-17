//
//  WorldPhotosAppDelegate.h
//  WorldPhotos
//
//  Created by LingoStar on 09. 07. 29.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

@interface WorldPhotosAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSArray *photoArray;
}

- (NSArray *)createPhotoData;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSArray *photoArray;
@end

