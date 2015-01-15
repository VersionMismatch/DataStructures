//
//  main.m
//  DataStrcutures
//
//  Created by VersionMismatch on 1/15/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "DSNode.h"
#import "SLList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Checking memory usage with instruments.
        
        SLList *aList = [SLList listWithValue:@(0)];
        
        for (NSInteger i = 1; i<10; i++)
            [aList addNodeWithValue:[NSNumber numberWithInteger:i]];
        
        while (![aList isEmpty]) {
            [aList removeNodeNodeAtIndex:0];
        }
        
        NSMutableArray *resultsArray = [NSMutableArray array];
        
        for (NSInteger i = 0; i<[aList getCount]; i++)
        {
            NSObject *anObject = [aList getValueAtIndex:i];
            if ([anObject isKindOfClass:[NSNumber class]])
                [resultsArray addObject:[(NSNumber*)anObject stringValue]];
        }
        
        NSLog(@"Values for nodes %@ for a total of %@ nodes", [resultsArray componentsJoinedByString:@", "], [[NSNumber numberWithInteger:[aList getCount]] stringValue]);
        
    }
    return 0;
}
