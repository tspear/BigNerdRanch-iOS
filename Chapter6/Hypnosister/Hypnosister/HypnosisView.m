//
//  HypnosisVew.m
//  Hypnosister
//
//  Created by Tim Spear on 16/12/2013.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView
@synthesize circlecolor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All HypnosisViews start with a clear background colour
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCirclecolor:[UIColor lightGrayColor]];
    }
    return self;
}


- (void) drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    //Figure out the centre of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // the radius of the circle should be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    // stroke width 10pt
    CGContextSetLineWidth(ctx, 10);

    [[self circlecolor] setStroke];
    
    // Draw concentric circles from the outside in
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -=20) {
        // add a path to the context
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI *2.0, YES);
        
        CGContextStrokePath(ctx);
    }
    
    // create a string
    NSString *text = @"You are getting sleepy.";
    
    // Get a font to draw it in
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    
    // How big is this string when drawn with this font?
    textRect.size = [text sizeWithFont:font];
    
    // lets put that string in the center of thr view
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    
    // set the fill color of the current context to black
    [[UIColor blackColor] setFill];

    // The shadow will move 4 points to the right and 3 points down from the text
    CGSize offset = CGSizeMake(4, 3);
    
    // dark grey
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    
    // set the shadow of the context with these parameters,
    // all subsequent drawing will be shadowed
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    // Draw the string
    [text drawInRect:textRect
            withFont:font];
}


- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        NSLog(@"Device started shaking!");
        [self setCirclecolor:[UIColor redColor]];
    }
}

- (void)setCirclecolor:(UIColor *)clr
{
    circlecolor = clr;
    [self setNeedsDisplay];
}


@end