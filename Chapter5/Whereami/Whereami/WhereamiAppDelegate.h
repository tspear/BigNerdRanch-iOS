//
//  WhereamiAppDelegate.h
//  Whereami
//
//  Created by Tim Spear on 06/11/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WhereamiViewController;

@interface WhereamiAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WhereamiViewController *viewController;

@end
