//
//  ViewController.m
//  TestGitRepository
//
//  Created by Eric Larson on 8/23/16.
//  Copyright © 2016 Eric Larson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;


@end

@implementation ViewController

- (IBAction)changeTextTouchUp:(UIButton *)sender {
    self.mainLabel.text = @"Goodbye World  😔";
}


@end
