//
//  BNRItem.h
//  Homepwner
//
//  Created by Tim Spear on 05/05/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface BNRItem : NSManagedObject

@property (nonatomic, retain) NSString * itemName;
@property (nonatomic) NSTimeInterval dateCreated;
@property (nonatomic, retain) NSString * imageKey;
@property (nonatomic, retain) NSData * thumbnailData;
@property UNKNOWN_TYPE UNKNOWN_TYPE thumbnail;
@property (nonatomic) int32_t valueInDollars;
@property (nonatomic, retain) NSString * serialNumber;
@property (nonatomic) double orderingValue;
@property (nonatomic, retain) NSManagedObject *assetType;

@end
