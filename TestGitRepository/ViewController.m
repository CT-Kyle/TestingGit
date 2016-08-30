//
//  ViewController.m
//  TestGitRepository
//
//  Created by Eric Larson on 8/23/16.
//  Copyright © 2016 Eric Larson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (strong, nonatomic) NSNumber * sliderValue;
@property (strong,nonatomic) NSString * textName;

@end

@implementation ViewController

-(void) viewDidLoad{
    [super viewDidLoad];
    self.nameTextField.delegate = self;
}

-(NSNumber*)sliderValue{
    if(!_sliderValue){
        _sliderValue=@1.0;
    }
    return _sliderValue;
}

-(NSString*)textName{
    if(!_textName){
        _textName = @"";
    }
    return _textName;
}

- (IBAction)changeTextTouchUp:(UIButton *)sender {
    self.mainLabel.text = [NSString stringWithFormat:@"Goodbye World  😔, %@, %@",self.sliderValue, self.textName ];
}

- (IBAction)updateSlider:(UISlider *)sender {
    self.sliderValue = @(sender.value);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    self.textName = textField.text;
    return YES;
}
- (IBAction)tapRecognized:(UITapGestureRecognizer *)sender {
    [self.nameTextField resignFirstResponder];
}

- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    NSInteger idx = [sender selectedSegmentIndex];
    
    switch (idx) {
        case 0:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
        case 1:
            //smu red
            self.view.backgroundColor = [UIColor colorWithRed:204/255.0 green:0 blue:0 alpha:1];
            break;
        case 2:
            //smu blue
            self.view.backgroundColor = [UIColor colorWithRed:53/255.0 green:76/255.0 blue:161/255.0 alpha:1];
            break;
            
        default:
            break;
    }
}


@end
