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
    
    ItemsViewController *itemsViewController = [[ItemsViewController alloc]init];

    // CReate UINavigationController
    // It's stack contains only itemsViewController
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:itemsViewController];
    
    // Place Navigation controller's view in the window hierarchy
    [[self window]setRootViewController:navController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
