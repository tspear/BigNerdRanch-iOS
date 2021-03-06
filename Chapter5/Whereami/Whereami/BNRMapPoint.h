//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Tim Spear on 11/12/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface BNRMapPoint : NSObject <MKAnnotation>
{
}

// A new designated initializer for instances of BNRMapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

// This is a required property from from MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// This is an optional property from MKAnnotation
@property (nonatomic, copy) NSString *title;

@end
