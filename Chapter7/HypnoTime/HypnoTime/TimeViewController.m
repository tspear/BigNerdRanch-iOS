//
//  TimeViewController.m
//  HypnoTime
//
//  Created by TV Room on 13/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController
 -(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}

@end
