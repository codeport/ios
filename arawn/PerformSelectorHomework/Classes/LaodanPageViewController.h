//
//  LaodanPageViewController.h
//  PerformSelectorHomework
//
//  Created by 박용권 on 11. 8. 14..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LaodanPageViewController : UIViewController <UIWebViewDelegate> {

	UIActivityIndicatorView* _activityIndicator;
	UIView* _activityIndicatorBg;
	UIWebView* _webView;
	
}

@property (nonatomic, retain) IBOutlet UIActivityIndicatorView* activityIndicator;
@property (nonatomic, retain) IBOutlet UIView* activityIndicatorBg;
@property (nonatomic, retain) IBOutlet UIWebView* webView;

@end
