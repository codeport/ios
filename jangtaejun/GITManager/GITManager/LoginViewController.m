//
//  LoginViewController.m
//  GITManager
//
//  Created by tjjang on 11. 9. 14..
//  Copyright 2011 NHN. All rights reserved.
//

#import "LoginViewController.h"
@interface LoginViewController()
- (UITableViewCell*) newCellWithTitle:(NSString*)title 
                            textField:(UITextField*)textField 
                      reuseIdentifier:(NSString *)reuseIdentifier;
- (void)didPressLogin;
@end

@implementation LoginViewController

@synthesize gitEngine, textfieldLoginId, textfieldLoginPassword, tableView;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    [gitEngine release];
    [textfieldLoginId release];
    [textfieldLoginPassword release];    
    [tableView release];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 배경 이미지
    UIImageView* background = 
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"laodan_background_07.png"]];
    background.frame = self.view.bounds;
    background.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:background];
    [background release];    
    
    //테이블 뷰
    CGRect tableFrame = self.view.bounds;
    tableFrame.size.width = 320;
    tableFrame.origin.x = floor(self.view.bounds.size.width/2 - tableFrame.size.width/2);
    
    self.tableView =
    [[[UITableView alloc] initWithFrame:tableFrame style:UITableViewStyleGrouped]autorelease];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | 
        UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.scrollEnabled = NO;

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
    
    self.tableView.tableHeaderView = headerView;
    [headerView release];
    [logo release];    
    
    [self.view addSubview:tableView];    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [textfieldLoginId release];
    [textfieldLoginPassword release];
    [gitEngine release];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  (section == 0) ? 2 : 0;
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	/*
     static NSString *CellIdentifier = @"Cell";
     
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
     if (cell == nil) {
     cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
     }
     
     // Configure the cell...
     
     return cell;
     */

    NSString *CellIdentifier = @"";
    UITableViewCell *cell = nil ; 
    
	if ([indexPath row] == 0 ) {
        CellIdentifier  = @"Username";
        cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];        
		if( cell  == nil ) {
			textfieldLoginId = [UITextField new];
			textfieldLoginId.placeholder = @"Github ID";
			textfieldLoginId.keyboardType = UIKeyboardTypeEmailAddress;
			textfieldLoginId.returnKeyType = UIReturnKeyNext;
            textfieldLoginId.autocorrectionType = UITextAutocorrectionTypeNo;
			cell = [self newCellWithTitle:@"Username" textField:textfieldLoginId reuseIdentifier:CellIdentifier];
		}
	} else {
        CellIdentifier  = @"Password";        
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
		if (cell == nil) {
			textfieldLoginPassword = [UITextField new];
			textfieldLoginPassword.placeholder = @"Your Password";
			textfieldLoginPassword.returnKeyType = UIReturnKeyDone;
			textfieldLoginPassword.secureTextEntry = YES;
			cell = [self newCellWithTitle:@"Password" textField:textfieldLoginPassword reuseIdentifier:CellIdentifier];
		}
	}
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

#pragma mark - textField delegate
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"%s.tableView.contentOffset : %@",__FUNCTION__, NSStringFromCGPoint(self.tableView.contentOffset));
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		NSLog(@"tableHeader frame = %@", NSStringFromCGRect(self.tableView.tableHeaderView.frame));
        /*[self.tableView setContentOffset:CGPointMake(0, self.tableView.tableHeaderView.frame.size.height) 
                                animated:YES];*/
        [self.tableView setContentOffset:CGPointMake(0, 152.0) 
                                animated:YES];        
    }
    
    return YES;    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == textfieldLoginId){
        [textfieldLoginPassword becomeFirstResponder];
    }else{
        [textfieldLoginPassword resignFirstResponder];
        [self didPressLogin];
    }
    
    return YES;    
}

#pragma mark - UAGithubEngine delegate methods
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
}

#pragma mark - event listener
-(void) didPressLogin 
{
    [self.tableView setContentOffset:CGPointMake(0, 0) animated:YES];
    
    NSLog(@"Try Login {%@}", [textfieldLoginId text]);
    NSString* username = [textfieldLoginId text];
    NSString* password = [textfieldLoginPassword text];
    self.gitEngine = [[UAGithubEngine alloc] initWithUsername:username
                                                     password:password 
                                                     delegate:self 
                                             withReachability:YES];
  
    NSString* userInfo = [self.gitEngine user:self.gitEngine.username];
    

    UIAlertView* alertView = [[[UIAlertView alloc] initWithTitle:@"사용자 정보" 
                                                         message:userInfo 
                                                        delegate:nil
                                               cancelButtonTitle:@"okay"
                                               otherButtonTitles:nil] autorelease];
    [alertView show];
}

#pragma mark - member methods 
- (UITableViewCell*) newCellWithTitle:(NSString*)title textField:(UITextField*)textField reuseIdentifier:(NSString*)reuseIdentifier {
    UITableViewCell* cell = 
    [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                           reuseIdentifier:reuseIdentifier];
    cell.textLabel.text = title;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    textField.frame = kTextFieldFrame;
    //textField.borderStyle = UITextBorderStyleNone;
    
    textField.delegate = self;
    [cell.contentView addSubview: textField];
    return cell;
}
@end
