//
//  BaseballPlayersAppDelegate.h
//  BaseballPlayers
//
//  Created by 경민 김 on 11. 3. 18..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseballPlayersAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSMutableArray *players;
}

- (NSArray *)createPlayers;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSMutableArray *players;

@end

