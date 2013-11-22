//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Tim Spear on 18/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

@end
