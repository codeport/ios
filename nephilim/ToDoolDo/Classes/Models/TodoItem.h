//
//  TodoItem.h
//  ToDoolDo
//
//  Created by nephilim on 11. 3. 19..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TodoItem : NSObject {
	NSString* name_;
	UIImage* photo_;
	int rage_;
}

@property (retain, nonatomic) NSString* name;
@property (retain, nonatomic) UIImage* photo;
@property (assign) int rage;

// initializer;
-(TodoItem*) initWithName:(NSString*)name 
					photo:(UIImage*)photo 
					 rage:(int)rage;
@end
