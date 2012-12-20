//
//  MoveTheSquareViewController.h
//  MoveTheSquare
//
//  Created by Edward Loveall on 12/18/12.
//  Copyright (c) 2012 Edward Loveall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoveTheSquareViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *theSquare;
@property (strong, nonatomic) IBOutlet UIView *theView;
@property (weak, nonatomic) IBOutlet UIProgressView *progress;

@end
