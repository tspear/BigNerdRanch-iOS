//
//  QuizViewController.h
//  Quiz
//
//  Created by Tim Spear on 18/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // Model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // Views
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
