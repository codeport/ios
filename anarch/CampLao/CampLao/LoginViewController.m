//
//  LoginViewController.m
//  CampLao
//
//  Created by ted shin on 11. 8. 27..
//  Copyright 2011년 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"

#define kTextFieldFrame CGRectMake(100, 11, 190, 24)


@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *backgroundImg = 
        [UIImage imageNamed:@"laodan_background_02.png"];
    
    UIImageView *backgroundView = [[UIImageView alloc ] initWithImage:backgroundImg];
    
    [self.view addSubview:backgroundView];    
    [backgroundView release];
    
    CGRect tableFrame = self.view.bounds;
    tableFrame.size.width = 320;
    tableFrame.origin.x = floor(self.view.bounds.size.width/2 - tableFrame.size.width/2);
    
    UITableView *tableView  = [[UITableView alloc ] 
                                    initWithFrame:tableFrame style:UITableViewStyleGrouped];
    
    tableView.backgroundColor = [UIColor clearColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


#pragma mark Table Data source delegate


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return section == 0 ? 2 : 0;
}

- (UITableViewCell*) newCellWithTitle:(NSString*)title textField:(UITextField*)textField 
{
    UITableViewCell* cell = 
    [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                           reuseIdentifier:nil];
    cell.textLabel.text = title;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    textField.frame = kTextFieldFrame;
    //textField.borderStyle = UITextBorderStyleNone;
    
    //textField.delegate = self;
    [cell.contentView addSubview: textField];
    return cell;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"cellForRowAtIndex..");
    
    if([indexPath row] == 0) {
        UITextField *userId = [[UITextField alloc] init];
        userId.placeholder = @"user id";
        userId.keyboardType = UIKeyboardTypeEmailAddress;
        userId.returnKeyType = UIReturnKeyNext;
        userId.autocorrectionType = UITextAutocorrectionTypeNo;
        
        return [self newCellWithTitle: @"username" textField:userId];
        
    } else {
        UITextField *password = [[UITextField alloc] init];
        password.placeholder = @"password";
        password.returnKeyType = UIReturnKeyDone;
        password.secureTextEntry = YES;
        password.autocorrectionType = UITextAutocorrectionTypeNo;
        
        return [self newCellWithTitle: @"password" textField:password];
    }
}


@end
