//
//  TodoItemRegistry.h
//  ToDoolDo
//
//  Created by nephilim on 11. 3. 19..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TodoItemRegistry : NSObject {
	NSMutableArray* todoItems;
}

+ (id)sharedInstance;

@property (retain, nonatomic, readonly) NSMutableArray* todoItems;
@end
