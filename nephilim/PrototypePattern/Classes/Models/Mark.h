//
//  Mark.h
//  PrototypePattern
//
//  Created by nephilim on 11. 3. 27..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol Mark<NSObject>

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGPoint location;

@end
