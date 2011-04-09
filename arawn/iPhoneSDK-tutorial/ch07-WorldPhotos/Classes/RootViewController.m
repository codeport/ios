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
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle 
									   reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSDictionary *photoData = [[self appDelegate].photoArray objectAtIndex:indexPath.row];

	cell.textLabel.text	= [photoData valueForKey:@"Country"];
	cell.detailTextLabel.text = [photoData valueForKey:@"Region"] ;
	cell.imageView.image = [photoData valueForKey:@"Thumbnail"] ;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	PhotoDetailViewController *detailViewController = [[PhotoDetailViewController alloc] initWithNibName:@"PhotoDetailViewController" 
																								  bundle:nil];
	NSDictionary *photoData = [[self appDelegate].photoArray objectAtIndex:indexPath.row];
	detailViewController.photoData = photoData;
	[self.navigationController pushViewController:detailViewController animated:YES];
	[detailViewController release];
}

- (void)dealloc {
    [super dealloc];
}

@end

