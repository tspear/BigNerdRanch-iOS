//
//  QuizViewController.m
//  Quiz
//
//  Created by Tim Spear on 18/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // init superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // create 2 arrays and make the pointers point to them
        questions = [[NSMutableArray alloc]init];
        answers = [[NSMutableArray alloc]init];
        
        // add content to arrays
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"Capital of Vermont"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"What is cognac made of?"];
        [answers addObject:@"Grapes"];
        
    }
    
    // return address of new object
    return self;
}


- (IBAction)showQuestion:(id)sender
{
    // step to next quesions
    currentQuestionIndex++;
    
    // Am i past the last question?
    if (currentQuestionIndex == [questions count]){
        // go back to first q
        currentQuestionIndex = 0;
    }
    
    //get the string at that index at the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // display the string in the question field
    [questionField setText:question];
    
    // clear the answer field
    [answerField setText:@"???"];
    
}

- (IBAction)showAnswer:(id)sender
{
    //what is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //display it in the answer field
    [answerField setText:answer];
    
}

@end
