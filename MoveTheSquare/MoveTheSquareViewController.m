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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)movePosition:(id)sender {
    float moveBy = 10;
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
    }


    [self.theSquare setFrame: squareFrame];
}




//- (IBAction)upTouchUpInside:(id)sender {
//    CGRect theButtonFrame = self.theSquare.frame;
//    NSLog(@"%g", theButtonFrame.origin.x);
//}


@end
