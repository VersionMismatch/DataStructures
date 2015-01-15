//
//  DSNode.m
//  DataStrcutures
//
//  Created by VersionMismatch on 1/15/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//

#import "DSNode.h"

@implementation DSNode

-(instancetype)initWithValue:(NSObject*)value
{
    self = [super init];
    if (self) {
        self.value = value;
        self.nextNode = nil;
    }
    return self;
}

-(instancetype)initWithValue:(NSObject*)value andNode:(DSNode*)node
{
    self = [super init];
    if (self) {
        self.value = value;
        self.nextNode = node;
    }
    return self;
}

+ (instancetype)nodeWithValue:(NSObject*)value
{
    DSNode *node = [[DSNode alloc] initWithValue:value];
    return node;
}


@end
