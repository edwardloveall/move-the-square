//
//  MoveTheSquareViewController.m
//  MoveTheSquare
//
//  Created by Edward Loveall on 12/18/12.
//  Copyright (c) 2012 Edward Loveall. All rights reserved.
//

#import "MoveTheSquareViewController.h"

@interface MoveTheSquareViewController ()

@end

@implementation MoveTheSquareViewController

@synthesize theSquare = _theSquare;
@synthesize theView = _theView;
@synthesize progress = _progress;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)checkBounds:(CGRect)bounds {
    CGRect viewFrame = self.theView.frame;
    
    if (bounds.origin.x + bounds.size.width > viewFrame.size.width ||
        bounds.origin.x < 0 ||
        bounds.origin.y + bounds.size.width > viewFrame.size.height ||
        bounds.origin.y < 115) { // bottom of the control buttons
        return NO;
    } else {
        return YES;
    }
}

- (BOOL)checkSize:(CGFloat)width {
    if (width <= 0) {
        return NO;
    } else {
        return YES;
    }
}

- (IBAction)affectButton:(id)sender {
    CGFloat moveBy = 10;
    CGFloat resizeBy = 10;
    UIButton *theButton = (UIButton *)sender;
    NSString *theButtonTitle = theButton.currentTitle;
    CGRect squareFrame = self.theSquare.frame;

    if ([theButtonTitle isEqualToString: @"Up"]) {
        squareFrame.origin.y -= moveBy;
    } else if ([theButtonTitle isEqualToString: @"Down"]) {
        squareFrame.origin.y += moveBy;
    } else if ([theButtonTitle isEqualToString: @"Left"]) {
        squareFrame.origin.x -= moveBy;
    } else if ([theButtonTitle isEqualToString: @"Right"]) {
        squareFrame.origin.x += moveBy;
    } else if ([theButtonTitle isEqualToString: @"Smaller"]) {
        squareFrame.size.width -= resizeBy;
        squareFrame.size.height -= resizeBy;
    } else if ([theButtonTitle isEqualToString: @"Larger"]) {
        squareFrame.size.width += resizeBy;
        squareFrame.size.height += resizeBy;
    }

// Display the current size and position of the square
//    NSLog(@"x: %g, y: %g, w: %g, h: %g", squareFrame.origin.x, squareFrame.origin.y, squareFrame.size.width, squareFrame.size.height);
    
    if ([self checkBounds:squareFrame] && [self checkSize:squareFrame.size.width]) {
        [self.theSquare setFrame: squareFrame];
    }

    
// Animate the square. I didn't totally understand this, so I took it out until I know what it's doing
//[UIView animateWithDuration:0.1 animations:^{
//    [self.theSquare setFrame: squareFrame];
//}];

}


@end
