//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Tim Spear on 11/12/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id) init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                              title:@"Hometown"];
}
@end
