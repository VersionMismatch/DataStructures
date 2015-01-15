//
//  DSNode.h
//  DataStrcutures
//
//  Created by VersionMismatch on 1/15/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSNode : NSObject

//NodeValue can by any kind ob object, check the kind of class before using it.
@property (nonatomic, strong, getter=getValue) NSObject * value;
//Generic node link, to be changed as needed or removed if not necesarry.
@property (nonatomic, strong , getter=getNode) DSNode * nextNode;

+ (instancetype)nodeWithValue:(NSObject*)value;

- (instancetype)initWithValue:(NSObject*)value;

- (instancetype)initWithValue:(NSObject*)value andNode:(DSNode*)node;

@end

