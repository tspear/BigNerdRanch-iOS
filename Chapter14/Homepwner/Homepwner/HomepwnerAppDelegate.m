//
//  HomepwnerAppDelegate.m
//  Homepwner
//
//  Created by Tim Spear on 24/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "HomepwnerAppDelegate.h"
#import "ItemsViewController.h"
#import "BNRItemStore.h"

@implementation HomepwnerAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    ItemsViewController *itemsViewController = [[ItemsViewController alloc]init];

    // Create UINavigationController
    // It's stack contains only itemsViewController
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:itemsViewController];
    
    // Place Navigation controller's view in the window hierarchy
    [[self window]setRootViewController:navController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"%@", NSStringFromSelector(_cmd));

    BOOL success = [[BNRItemStore sharedStore] saveChanges];
    if (success) {
        NSLog(@"Saved all of the BNRItems");
    } else {
        NSLog(@"Could not save any of the BNRItems");
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}


@end
