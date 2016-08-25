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

@property (strong, nonatomic) NSNumber * sliderValue;

@end

@implementation ViewController

-(NSNumber*)sliderValue{
    if(!_sliderValue){
        _sliderValue=@1.0;
    }
    return _sliderValue;
}

- (IBAction)changeTextTouchUp:(UIButton *)sender {
    self.mainLabel.text = [NSString stringWithFormat:@"Goodbye World  😔, %@",self.sliderValue ];
}

- (IBAction)updateSlider:(UISlider *)sender {
    self.sliderValue = @(sender.value);
}

@end
