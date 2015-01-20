//
//  TNTree.m
//  DataStrcutures
//
//  Created by VersionMismatch on 1/19/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//

#import "TNTree.h"

@implementation TNTree

-(instancetype)initWithCategory:(NSString*)category
{
    self = [super init];
    if (self) {
        self.categoryName = [NSString stringWithString:category];
    }
    return self;

}

-(instancetype)initWithCategory:(NSString*)category andSubcategories:(NSArray*)subcategories
{
    self = [super init];
    if (self) {
        self.categoryName = [NSString stringWithString:category];
        self.subcategories = [NSArray arrayWithArray:subcategories];
    }
    return self;
    
}

+ (NSInteger) getLeavesCount:(TNTree*)tree
{
    
    if (!tree)
        return 0;
    
    if (!tree.subcategories)
        return 1;
    else
    {
        NSInteger count = 0;
        
        for (TNTree* aTree in tree.subcategories)
            count += [TNTree getLeavesCount:aTree];
        return count;
    }
}
@end
