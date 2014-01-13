//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by TV Room on 13/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController


- (void)loadView
{
    // Create  view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set as main view
    [self setView:v];
}


@end
