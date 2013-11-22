//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Tim Spear on 06/11/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@end
