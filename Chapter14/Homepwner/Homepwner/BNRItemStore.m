//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Tim Spear on 29/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    
    return sharedStore;
}

+(id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSArray *)allItems
{
    return allItems;
}

- (BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    
    return p;
}

- (void)removeItem:(BNRItem *)p;
{
    [allItems removeObjectIdenticalTo:p];
}

- (void)moveItemAtIndex:(int)from
                toIndex:(int)to;
{
    if (from == to){
        return;
    }
    // get the pointer to the object being moved so we can reinsert it
    BNRItem *p = [allItems objectAtIndex:from];
    
    // remove p from array
    [allItems removeObjectAtIndex:from];
    
    // insert p at new location
    [allItems insertObject:p atIndex:to];
    
}

- (NSString *)itemArchivePath
{
    NSArray *documentDirectories =
    NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    
    // Get one and only document directory from that list
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    
    return [documentDirectory stringByAppendingPathComponent:@"items.archive"];
}


- (BOOL)saveChanges
{
    // returns success or failure
    NSString *path = [self itemArchivePath];
    
    return [NSKeyedArchiver archiveRootObject:allItems
                                       toFile:path];
}

@end