//
//  TNTree.h
//  DataStrcutures
//
//  Created by VersionMismatch on 1/19/15.
//  Copyright (c) 2015 VersionMismatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNTree : NSObject

@property (nonatomic, strong) NSString *categoryName;
@property (nonatomic, strong) NSArray *subcategories;

- (instancetype)initWithCategory:(NSString*)category;
- (instancetype)initWithCategory:(NSString*)category andSubcategories:(NSArray*)subcategories;

+ (NSInteger)getLeavesCount:(TNTree*)tree;

@end
