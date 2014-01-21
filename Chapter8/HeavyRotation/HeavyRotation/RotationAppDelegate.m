//
//  RotationAppDelegate.m
//  HeavyRotation
//
//  Created by TV Room on 20/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "RotationAppDelegate.h"
#import "HeavyViewController.h"


@implementation RotationAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    // Get device object
    UIDevice *device = [UIDevice currentDevice];
    
    // start monitoring accelerometer for orientation
    [device beginGeneratingDeviceOrientationNotifications];
    
    // get notificationcentre for this app
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    // Add yourself as an observer
    [nc addObserver:self
           selector:@selector(orientationChanged:)
               name:UIDeviceOrientationDidChangeNotification
             object:device];
    
    
    HeavyViewController *hvc = [[HeavyViewController alloc] init];
    [[self window] setRootViewController:hvc];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)orientationChanged:(NSNotification *)note
{
    // Log the constant that represents the current orientation
    NSLog(@"orientationChanged: %d", [[note object] orientation]);
}


@end
