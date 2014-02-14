//
//  DetailViewController.h
//  Homepwner
//
//  Created by Tim Spear on 04/02/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController
    <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *serialNumberField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UILabel *dateLabel;
    __weak IBOutlet UIImageView *imageView;
}
@property (nonatomic, strong) BNRItem *item;

- (IBAction)takePicture:(id)sender;

@end