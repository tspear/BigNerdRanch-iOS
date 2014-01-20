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
    // Create  view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set as main view
    [self setView:v];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController loaded its view");
    
}



@end
