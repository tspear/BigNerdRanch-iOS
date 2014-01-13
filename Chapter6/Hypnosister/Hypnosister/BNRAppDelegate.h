//
//  BNRAppDelegate.h
//  Hypnosister
//
//  Created by TV Room on 16/12/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}
@property (strong, nonatomic) UIWindow *window;

@end
