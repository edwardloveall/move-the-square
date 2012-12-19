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
    UIButton *theButton = (UIButton *)sender;
    CGRect squareFrame = self.theSquare.frame;
    NSString *theButtonTitle = theButton.currentTitle;

    if ([theButtonTitle isEqualToString: @"Up"]) {
        float top = squareFrame.origin.y - 10;

        [self.theSquare setFrame:CGRectMake(squareFrame.origin.x,
                                            top,
                                            squareFrame.size.width,
                                            squareFrame.size.height)];
    }
}


//- (IBAction)upTouchUpInside:(id)sender {
//    CGRect theButtonFrame = self.theSquare.frame;
//    NSLog(@"%g", theButtonFrame.origin.x);
//}


@end
