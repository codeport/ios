//
//  RootViewController.m
//  WorldPhotos
//
//  Created by LingoStar on 09. 07. 29.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RootViewController.h"
#import "WorldPhotosAppDelegate.h"
#import "PhotoDetailViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.title = @"World Photos";
}

- (WorldPhotosAppDelegate *)appDelegate
{
	return [[UIApplication sharedApplication] delegate];
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self appDelegate].photoArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
		NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"PhotoTableCell" owner:self options:nil];
		cell = [topLevelObjects objectAtIndex:0];
    }
    
	NSDictionary *photoData = [[self appDelegate].photoArray objectAtIndex:indexPath.row];
	
	UILabel *label;
	label = (UILabel *)[cell viewWithTag:2];
	label.text = [photoData valueForKey:@"Country"];
	
	label = (UILabel *)[cell viewWithTag:3];
	label.text = [photoData valueForKey:@"Region"];
	
	UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
	imageView.image = [photoData valueForKey:@"Photo"];
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	PhotoDetailViewController *detailViewController = [[PhotoDetailViewController alloc] initWithNibName:@"PhotoDetailViewController" bundle:nil];
	NSDictionary *photoData = [[self appDelegate].photoArray objectAtIndex:indexPath.row];
	detailViewController.photoData = photoData;
	[self.navigationController pushViewController:detailViewController animated:YES];
	[detailViewController release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (void)dealloc {
    [super dealloc];
}

@end

