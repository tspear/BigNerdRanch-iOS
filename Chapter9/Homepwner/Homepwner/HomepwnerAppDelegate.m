//
//  HomepwnerAppDelegate.m
//  Homepwner
//
//  Created by TV Room on 24/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "HomepwnerAppDelegate.h"
#import "ItemsViewController.h"

@implementation HomepwnerAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Create an itemsviewcontroller
    ItemsViewController *itemsViewController = [[ItemsViewController alloc]init];
    
    // Place itemsviewcontroller's table view in the window hierarchy
    [[self window]setRootViewController:itemsViewController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
