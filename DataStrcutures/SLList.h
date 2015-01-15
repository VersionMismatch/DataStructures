//
//  SLList.h
//  DataStrcutures
//
//  Created by VersionMismatch on 1/15/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DSNode;

@interface SLList : NSObject

+ (instancetype)listWithValue:(NSObject*)value;
- (instancetype)initListWithValue:(NSObject*)value;

//Adds a node at the end og the list
- (void)addNodeWithValue:(NSObject*) value;

//it will return false if the index is out of bounds
- (BOOL)addNodeWithValue:(NSObject*) value atIndex:(NSUInteger)index;

-(BOOL)isEmpty;

- (DSNode*)getFirstNode;
- (DSNode*)getLastNode;

- (NSObject*)getFirstNodeValue;
- (NSObject*)getLastNodeValue;


- (DSNode*)removeFirstNode;
- (DSNode*)removeLastNode;

- (DSNode*)removeNodeNodeAtIndex:(NSUInteger)index;
- (DSNode*)nodeAtIndex:(NSUInteger)index;
- (NSObject*)getValueAtIndex:(NSUInteger)index;

//returns NSUIntegerMax if no object is found
- (NSUInteger)indexForValue:(NSObject*)value;

- (NSUInteger)getCount;




@end
