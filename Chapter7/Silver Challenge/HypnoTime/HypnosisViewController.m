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

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the superclasses designated initializer
    self = [super initWithNibName:nil
                           bundle:nil];
    
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        // Give it a label
        [tbi setTitle:@"Hypnosis"];
        
        // Create a UIImage from a file
        // This will use Hypno@2x.png n retina display devices
        UIImage *i =[UIImage imageNamed:@"Hypno.png"];
        
        // Put that image on the tab bar item
        [tbi setImage:i];
    }
    
    return self;
    
}


- (void)loadView
{
    // Create the HypnosisView instance
    CGRect frame = [[UIScreen mainScreen] bounds];
    hypnoView = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set as main view
    [self setView:hypnoView];
    
    // create segmentedview
    NSArray *segments = [NSArray arrayWithObjects:@"red", @"blue",@"green", nil];
    UISegmentedControl *colorpicker = [[UISegmentedControl alloc]initWithItems:segments];
    [colorpicker addTarget:self
                    action:@selector(setCircleColor:)
            forControlEvents:UIControlEventValueChanged];
    
    CGRect controlPos = CGRectMake(20, frame.size.height - 110, frame.size.width - 40.0, 30);
    [colorpicker setFrame:controlPos];
    [[self view] addSubview:colorpicker];

}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController loaded its view");
    
}


-(void)setCircleColor:(id)sender
{
    // make some UIColors
    NSArray *colorRefs = [NSArray arrayWithObjects:[UIColor redColor],[UIColor blueColor],[UIColor greenColor], nil];
    
    // which segment?
    NSInteger indexRef = [sender selectedSegmentIndex];
    
    NSLog(@"Pressed Segment Title: %@",[sender titleForSegmentAtIndex:indexRef]);

    // set the circle Color
    [hypnoView setCirclecolor:[colorRefs objectAtIndex:indexRef]];
    
}

@end
