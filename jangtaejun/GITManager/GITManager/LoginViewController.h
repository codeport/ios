//
//  LoginViewController.h
//  GITManager
//
//  Created by tjjang on 11. 9. 14..
//  Copyright 2011 NHN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UAGithubEngine.h"

#define kTextFieldFrame CGRectMake(100, 11, 190, 24)

@interface LoginViewController : UITableViewController<UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate> {
    
}
@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) UITextField *textfieldLoginId;
@property (nonatomic, retain) UITextField *textfieldLoginPassword;
@property (nonatomic, retain) UAGithubEngine *gitEngine;

@end
