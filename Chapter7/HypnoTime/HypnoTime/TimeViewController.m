//
//  TimeViewController.m
//  HypnoTime
//
//  Created by TV Room on 13/01/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // get pointer to app bundle object
    NSBundle *appBundle = [NSBundle mainBundle];
    
    // Call the superclasses designated initializer
    self = [super initWithNibName:@"TimeViewController"
                           bundle:appBundle];
    
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        // Give it a label
        [tbi setTitle:@"Time"];
        
        UIImage *i =[UIImage imageNamed:@"Time.png"];
        [tbi setImage:i];
        
    }
    
    return self;
    
}


 -(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"TimeViewController loaded its view");
    
    [[self view] setBackgroundColor:[UIColor greenColor]];
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"currentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"currentTimeViewController will DISappear");
    [super viewWillDisappear:animated];
}


@end
