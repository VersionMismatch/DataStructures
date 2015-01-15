//
//  SLList.m
//  DataStrcutures
//
//  Created by VersionMismatch on 1/15/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//


#import "SLList.h"
#import "DSNode.h"

@interface SLList ()

@property (nonatomic, assign) NSUInteger count;
@property (nonatomic, strong) DSNode *first;
@property (nonatomic, strong) DSNode *last;

@end

//hace to check if i need to add copy constuctor for the nodes and nill the nodes before returning them....
@implementation SLList

+ (instancetype)listWithValue:(NSObject*)value;
{
    SLList *list = [[SLList alloc] initListWithValue:value];
    return list;
}

- (instancetype)initListWithValue:(NSObject *)value {
    
    self = [super init];
    if (self) {
        DSNode *node = [DSNode nodeWithValue:value];
        _first = node;
        _last = node;
        self.count = 1;
    }
    return self;
}

-(NSUInteger)getCount
{
    return _count;
}

- (void)addNodeWithValue:(NSObject*)value
{
    DSNode *node = [DSNode nodeWithValue:value];
    _last.nextNode = node;
    _last = node;
    self.count++;
}

- (DSNode*)nodeAtIndex:(NSUInteger)index
{
    
    if (index>=self.count)
        return nil;
    
    if (index==self.count-1)
        return _last;
    
    DSNode * node = _first;
    
    NSUInteger counter = 0;
    
    while (counter<self.count && counter != index)
    {
        node = node.nextNode;
        counter++;
    }
    
    return node;
}

- (NSObject*)getValueAtIndex:(NSUInteger)index
{
    DSNode* tempNode = [self nodeAtIndex:index];
    
    return tempNode? tempNode.value:nil;
}

- (BOOL)addNodeWithValue:(NSObject*)value atIndex:(NSUInteger)index
{
    
    if (index>=self.count)
        return NO;
    
    if (index==self.count-1)
    {
        [self addNodeWithValue:value];
        return YES;
    }
    
    DSNode * node = [self nodeAtIndex:index];
    
    DSNode *nodeToAdd = [DSNode nodeWithValue:value];
    
    nodeToAdd.nextNode = node.nextNode;
    node.nextNode = nodeToAdd;
    
    return YES;
}


- (DSNode*)getFirstNode
{
    return _first;
}

- (DSNode*)getLastNode
{
    return _last;
}

- (NSObject*)getFirstNodeValue
{
    return _first ? _first.value : nil;
}

- (NSObject*)getLastNodeValue
{
    return _last ? _last.value : nil;
}

- (DSNode*)removeFirstNode
{
    
    DSNode* nodeToRemove = _first;
    
    
    DSNode* nodeToReturn = [DSNode nodeWithValue:nodeToRemove.value];
    
    _first = nodeToRemove.nextNode;
    self.count--;
    
    //ARC will take care of it for us
    if ([nodeToRemove isEqual:_last])
        _last = nil;
    nodeToRemove = nil;
    
    return nodeToReturn;
}

- (DSNode*)removeLastNode;
{
    //We get the previoust to the last node.
    DSNode *newLastNode = [self nodeAtIndex:self.count -2];
    if (!newLastNode)
        return nil;
    
    DSNode* nodeToRemove = _last;
    DSNode* nodeToReturn = [DSNode nodeWithValue:nodeToRemove.value];
    
    newLastNode.nextNode = nil;
    self.count--;
    
    if ([nodeToRemove isEqual:_first])
        _first = nil;
    
    nodeToRemove = nil;
    return nodeToReturn;
}

-(DSNode*)removeNodeNodeAtIndex:(NSUInteger)index
{
    if (index>=self.count)
        return nil;
    
    if (index==0)
        return [self removeFirstNode];
    
    if (index==self.count-1)
        return [self removeLastNode];
    
    DSNode* tempNode = [self nodeAtIndex:index-1];
    DSNode* nodeToRemove = tempNode.nextNode;
    DSNode* nodeToReturn = [DSNode nodeWithValue:nodeToRemove.value];
    //cuack
    tempNode.nextNode = tempNode.nextNode.nextNode;
    
    self.count--;
    nodeToRemove = nil;
    return nodeToReturn;
}

- (NSUInteger)indexForValue:(NSObject *)value
{
    
    NSUInteger counter = 0;
    DSNode *tempNode = _first;
    while (!tempNode.nextNode)
    {
        if ([tempNode.value isEqual:value])
            return counter;
        counter++;
    }
    return NSUIntegerMax;
}

-(BOOL)isEmpty
{
    //can be donde with 
    if (!_first&&!_last)
        return YES;
    return NO;
}

@end
