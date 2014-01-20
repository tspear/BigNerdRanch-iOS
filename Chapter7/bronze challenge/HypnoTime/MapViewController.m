//
//  MapViewController.m
//  HypnoTimeBronze
//
//  Created by Tim Spear on 16/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>

@implementation MapViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the superclasses designated initializer
    self = [super initWithNibName:nil
                           bundle:nil];
    
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        // Give it a label
        [tbi setTitle:@"Map"];
        
        // Create a UIImage from a file
        // This will use Hypno@2x.png n retina display devices
        UIImage *i =[UIImage imageNamed:@"Map.png"];
        
        // Put that image on the tab bar item
        [tbi setImage:i];
    }
    
    return self;
    
}


- (void)loadView
{
    // Create  view
    CGRect frame = [[UIScreen mainScreen] bounds];
    MKMapView *mv = [[MKMapView alloc] initWithFrame:frame];
    
    // Set as main view
    [self setView:mv];
}

@end
