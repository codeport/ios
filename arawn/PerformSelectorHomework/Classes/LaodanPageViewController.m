//
//  LaodanPageViewController.m
//  PerformSelectorHomework
//
//  Created by 박용권 on 11. 8. 14..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LaodanPageViewController.h"


@interface LaodanPageViewController ()
- (void)loadLaodanGithub;
@end


@implementation LaodanPageViewController

@synthesize activityIndicator = _activityIndicator;
@synthesize activityIndicatorBg = _activityIndicatorBg;
@synthesize webView = _webView;

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

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"라오단 깃헙 페이지";
	
	
	// 화면 로딩 중 표시.
	[_activityIndicator startAnimating];
	[_activityIndicatorBg setHidden:NO];
	
	
	// 기텁 화면 바로 보여줘!
	// [self loadLaodanGithub];
	
	
	// 0초후에 기텁 화면 보여줘!
	[self performSelector:@selector(loadLaodanGithub) withObject:nil afterDelay:0];
}

- (void)loadLaodanGithub {
	NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://github.com/codeport/ios"]];
	
	NSError* error = nil;
    NSURLResponse* response = nil;	
	
	// 라오단 깃헙 페이지 요청
	NSData* recvData = [NSURLConnection sendSynchronousRequest:request 
											 returningResponse:&response 
														 error:&error];
	// 웹뷰에 요청결과 반영
	[_webView loadData:recvData
			  MIMEType:nil
	  textEncodingName:nil
			   baseURL:nil];
	
	// 화면 로딩 중 끄기.
	[_activityIndicator stopAnimating];
	[_activityIndicatorBg setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
