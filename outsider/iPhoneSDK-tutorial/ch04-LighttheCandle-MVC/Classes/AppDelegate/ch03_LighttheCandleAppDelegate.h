//
//  ch03_LighttheCandleAppDelegate.h
//  ch03-LighttheCandle
//
//  Created by JeongHoon Byun on 11. 2. 11..
//  Copyright 2011 CJInternet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ch03_LighttheCandleAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
	UIImageView *candleImageView;
	UISwitch *onOffSwitch;
	UILabel *candleStateLabel;
	
	NSMutableDictionary *myCandleDict;
    
@private
    NSManagedObjectContext *managedObjectContext_;
    NSManagedObjectModel *managedObjectModel_;
    NSPersistentStoreCoordinator *persistentStoreCoordinator_;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIImageView *candleImageView;
@property (nonatomic, retain) IBOutlet UISwitch *onOffSwitch;
@property (nonatomic, retain) IBOutlet UILabel *candleStateLabel;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSString *)applicationDocumentsDirectory;
- (void)saveContext;
- (IBAction)toggleCandle:(id)sender;

@end

