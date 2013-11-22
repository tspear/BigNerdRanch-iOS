//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Tim Spear on 06/11/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // create location manager obj
        locationManager = [[CLLocationManager alloc] init];
        
        
        // set delegate
        [locationManager setDelegate:self];
        
        // and we want it to be as powerful as poss
        // regardless of time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        // Tell our manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
    }
    
    return self;
}



- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager
        didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

-(void)dealloc
{
    // tell the location manager to stop sending us messages
    [locationManager setDelegate:nil];
}

@end
