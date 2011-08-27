//
//  LaOLoginViewController.m
//  CampLaO
//
//  Created by nephilim on 11. 8. 12..
//  Copyright 2011 yakshavinglocus.com. All rights reserved.
//

#import "LaOLoginViewController.h"
#import "UAGithubEngine.h"

#define kTextFieldFrame CGRectMake(100, 11, 190, 24)

@interface LaOLoginViewController(private) <
UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate, UAGithubEngineDelegate>

-(void) didPressLogin;
-(void) didPressCreateAccount;

@end


@implementation LaOLoginViewController

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization.
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
    // 그라데이션 배경
    UIImageView* background = 
        [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"laodan_background_01.png"]];
    background.frame = self.view.bounds;
    background.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.view addSubview:background];
    [background release];
    
	
    // 테이블 뷰
    CGRect tableFrame = self.view.bounds;
    tableFrame.size.width = 320;
    tableFrame.origin.x = floor(self.view.bounds.size.width/2 - tableFrame.size.width/2);
    
    tableView =
        [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStyleGrouped];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | 
        UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    tableView.backgroundColor = [UIColor clearColor];
    tableView.scrollEnabled = NO;
    tableView.delegate = self;
    tableView.dataSource = self;
    
    // 테이블 뷰 헤더
    UIView* headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,152)];
    UIImageView* logo = 
        [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"laodan_logo.png"]];
    logo.contentMode = UIViewContentModeCenter;
    logo.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [logo sizeToFit];
    logo.center = headerView.center;
    CGRect logoFrame = logo.frame;
    logoFrame.origin.y += 7;
    logo.frame = logoFrame;
    [headerView addSubview:logo];
    
    tableView.tableHeaderView = headerView;
    [headerView release];
    [logo release];
    
    [self.view addSubview:tableView];
    
	
}

- (void)releaseViews {
    [usernameField release];
    usernameField = nil;
    [usernameCell release];
    usernameCell = nil;

    [passwordField release];
    passwordField = nil;
    [passwordCell release];
    passwordCell = nil;

    [tableView release];
    tableView = nil;
	
}

#pragma mark -
#pragma mark Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return section == 0 ? 2 : 0;
}

- (UITableViewCell*) newCellWithTitle:(NSString*)title textField:(UITextField*)textField {
    UITableViewCell* cell = 
        [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                               reuseIdentifier:nil];
    cell.textLabel.text = title;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    textField.frame = kTextFieldFrame;
    //textField.borderStyle = UITextBorderStyleNone;

    textField.delegate = self;
    [cell.contentView addSubview: textField];
    return cell;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	/*
     static NSString *CellIdentifier = @"Cell";
     
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
     if (cell == nil) {
     cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
     }
     
     // Configure the cell...
     
     return cell;
     */
	
	if ([indexPath row] == 0 ) {
		if( usernameCell == nil ) {
			usernameField = [UITextField new];
			usernameField.placeholder = @"Github ID";
			usernameField.keyboardType = UIKeyboardTypeEmailAddress;
			usernameField.returnKeyType = UIReturnKeyNext;
			usernameField.autocorrectionType = UITextAutocorrectionTypeNo;
			usernameCell = [self newCellWithTitle:@"Username" textField:usernameField];
		}
		return usernameCell;
	} else {
		if (passwordCell == nil) {
			passwordField = [UITextField new];
			passwordField.placeholder = @"Your Password";
			passwordField.returnKeyType = UIReturnKeyDone;
			passwordField.secureTextEntry = YES;
			passwordCell = [self newCellWithTitle:@"Password" textField:passwordField];
		}
		return passwordCell;
	}
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
	 <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
	 // ...
	 // Pass the selected object to the new view controller.
	 [self.navigationController pushViewController:detailViewController animated:YES];
	 [detailViewController release];
	 */
}
/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations.
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	
	[self releaseViews];
	if ( githubEngine != nil ) {
		[githubEngine release];
		githubEngine = nil;
	}
}


- (void)dealloc {
    [super dealloc];
}



@synthesize delegate;

#pragma mark -
#pragma mark UITextFieldDelegate methods

- (BOOL)textFieldShouldBeginEditing:(UITextField*)textField {
    NSLog(@"%s", __FUNCTION__);
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		NSLog(@"tableHeader height = %@", NSStringFromCGRect(tableView.tableHeaderView.frame));
        [tableView setContentOffset:CGPointMake(0, 150) animated:YES];
		
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField {
    NSLog(@"%s", __FUNCTION__);
    if (textField == usernameField) {
        [passwordField becomeFirstResponder];
    } else {
        [self didPressLogin];
    }
    
    return YES;
}

#pragma mark -
#pragma mark github 관련 이벤트
-(void) didPressLogin {
    [passwordField resignFirstResponder];
    [tableView setContentOffset:CGPointMake(0, 0) animated:YES];
    
    NSLog(@"Try Login {%@}", [usernameField text]);
    NSString* username = [usernameField text];
    NSString* password = [passwordField text];
    githubEngine = [[UAGithubEngine alloc] initWithUsername:username
                                                   password:password 
                                                   delegate:self 
                                           withReachability:YES];
    NSString* userInfo = [githubEngine user:githubEngine.username];
    UIAlertView* alertView = [[[UIAlertView alloc] initWithTitle:@"사용자 정보" 
                                                         message:userInfo 
                                                        delegate:nil
                                               cancelButtonTitle:@"okay"
                                               otherButtonTitles:nil] autorelease];
    [alertView show];
    
	
}

#pragma mark -
#pragma mark UAGithubEngineDelegate Methods

- (void)requestSucceeded:(NSString *)connectionIdentifier
{
    NSLog(@"Request succeeded: %@", connectionIdentifier);
}


- (void)requestFailed:(NSString *)connectionIdentifier withError:(NSError *)error
{
    NSLog(@"Request failed: %@, error: %@ (%@)", connectionIdentifier, [error localizedDescription], [error userInfo]);	
}

- (void)usersReceived:(NSArray *)users forConnection:(NSString *)connectionIdentifier
{
    NSLog(@"Received users for connection: %@, %@", connectionIdentifier, users);	
    UIAlertView * addAlert = [[[UIAlertView alloc] initWithTitle:@"사용자 정보"
                                                         message:[users description]
                                                        delegate:nil 
                                               cancelButtonTitle:@"OK" 
                                               otherButtonTitles:nil] autorelease];
    [addAlert show];
    [addAlert release];

}
@end
