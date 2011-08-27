//
//  LaOLoginViewController.h
//  CampLaO
//
//  Created by nephilim on 11. 8. 12..
//  Copyright 2011 yakshavinglocus.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UAGithubEngine;

@protocol LaOLoginControllerDelegate;

@interface LaOLoginViewController : UIViewController {
	id<LaOLoginControllerDelegate> delegate;
	
	UITableView* tableView;
	UILabel* descriptionLabel;
	UITableViewCell* usernameCell;
	UITextField* usernameField;
	UITableViewCell* passwordCell;
	UITextField* passwordField;
	UIView* footerView;
	
	// .. 
	UAGithubEngine* githubEngine;
}

@property (nonatomic, assign) id<LaOLoginControllerDelegate> delegate;

@end

// 로그인이 성공하거나, 취소했을 경우 역할을 
// 수행할 수 있는 delegate 선언
@protocol LaOLoginControllerDelegate 

- (void)loginControllerDidLogin:(LaOLoginViewController*)controller;
- (void)loginControllerDidCancel:(LaOLoginViewController*)controller;

@end