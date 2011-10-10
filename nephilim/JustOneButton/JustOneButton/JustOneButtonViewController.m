//
//  JustOneButtonViewController.m
//  JustOneButton
//
//  Created by Dongwook Lee on 11. 10. 8..
//  Copyright 2011년 i015005@gmail.com. All rights reserved.
//

#import "JustOneButtonViewController.h"

@implementation JustOneButtonViewController
@synthesize btnClick;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [btnClick addTarget:self 
                 action:@selector(saySomething) 
       forControlEvents:UIControlEventTouchUpInside];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setBtnClick:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [btnClick release];
    [super dealloc];
}


#pragma mark - 이벤트 처리 
// TODO:
- (void) printLog {
    NSLog(@"로그를 찍어봅니다.");
}

- (void) saySomething {
   UIAlertView* alert = [[[UIAlertView alloc] initWithTitle:@"감사" 
                                                  message:@"Good Bye" 
                                                 delegate:nil 
                                        cancelButtonTitle:@"OK" 
                                        otherButtonTitles:nil] autorelease];
    [alert show];
}
@end
