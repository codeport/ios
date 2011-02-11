//
//  CandleController.m
//  ch03-LighttheCandle
//
//  Created by JeongHoon Byun on 11. 2. 12..
//  Copyright 2011 CJInternet. All rights reserved.
//

#import "CandleController.h"


@implementation CandleController

@synthesize candleImageView;
@synthesize onOffSwitch;
@synthesize candleStateLabel;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	candleState = NO;
	
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
	candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
	candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	
	[candleImageView setImage:candleOffImage];
	onOffSwitch.on = candleState;
	candleStateLabel.text = @"Candle is Off. please light on";	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[candleOffImage release];
	[candleOnImage release];

    [super dealloc];
}

#pragma mark -
#pragma mark User methods
- (IBAction)toggleCandle:(id)sender
{
	candleState = !candleState;
	if (candleState) {
		[candleImageView setImage:candleOnImage];
		onOffSwitch.on = YES;
		candleStateLabel.text = @"Candle is now on";
	} else {
		[candleImageView setImage:candleOffImage];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}
	
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self toggleCandle:self];
}

@end
