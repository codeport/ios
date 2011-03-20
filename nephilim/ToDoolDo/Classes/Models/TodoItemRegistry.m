//
//  TodoItemRegistry.m
//  ToDoolDo
//
//  Created by nephilim on 11. 3. 19..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TodoItemRegistry.h"
#import "TodoItem.h"

@interface TodoItemRegistry(Private)

- (void)createTodoItems;

@end


@implementation TodoItemRegistry

@synthesize todoItems;

+ (id)sharedInstance 
{
	static TodoItemRegistry* instance = nil;
	if( instance == nil ) {
		instance = [[self alloc] init];
		[instance createTodoItems];
	}
	return instance;
}

- (void)createTodoItems 
{
	TodoItem* item01 = [[TodoItem alloc] initWithName:@"박재성" 
								photo:[UIImage imageNamed:@"javajigi.png"]
								 rage:20];
	TodoItem* item02 = [[TodoItem alloc] initWithName:@"김경민" 
								photo:[UIImage imageNamed:@"kayem.png"]
								 rage:20];
	TodoItem* item03 = [[TodoItem alloc] initWithName:@"석종일" 
								photo:[UIImage imageNamed:@"daclouds.png"]
								 rage:80];
	TodoItem* item04 = [[TodoItem alloc] initWithName:@"김효영" 
								photo:[UIImage imageNamed:@"zeide.png"]
								 rage:30];
	TodoItem* item05 = [[TodoItem alloc] initWithName:@"맹수맏형" 
								photo:[UIImage imageNamed:@"anarcher.png"]
								 rage:0];
	TodoItem* item06 = [[TodoItem alloc] initWithName:@"변정훈" 
								photo:[UIImage imageNamed:@"outsider.png"]
								 rage:40];
	TodoItem* item07 = [[TodoItem alloc] initWithName:@"박용권" 
								photo:[UIImage imageNamed:@"arawn.png"]
								 rage:30];
	TodoItem* item08 = [[TodoItem alloc] initWithName:@"장태준" 
								photo:[UIImage imageNamed:@"pooom.png"]
								 rage:90];
	TodoItem* item09 = [[TodoItem alloc] initWithName:@"쏘내기" 
								photo:[UIImage imageNamed:@"sonegy.png"]
								 rage:20];
	TodoItem* item10= [[TodoItem alloc] initWithName:@"외계성철" 
								photo:[UIImage imageNamed:@"fupfin.png"]
								 rage:100];
	TodoItem* item11= [[TodoItem alloc] initWithName:@"안병현" 
								photo:[UIImage imageNamed:@"otatoh.png"]
								 rage:15];
	todoItems = [[NSMutableArray alloc] initWithObjects:item01, item02, item03, item04, item05,
				 item06, item07, item08, item09, item10, item11, nil];
}

- (void) dealloc
{
	[todoItems release];
	[super dealloc];
}

@end
