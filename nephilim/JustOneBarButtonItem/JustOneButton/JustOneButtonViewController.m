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
    [super viewDidLoad];
    //TODO: Bar Button Item의 경우에는?
    
    btnClick.target = self;
    btnClick.action = @selector(printLog);
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

#pragma mark - 이벤트 핸들링

-(void) printLog {
    NSLog(@"로그를 출력합니다.");
}
@end
