//
//  ViewController.h
//  BMICalculator
//
//  Created by Desai Chia on 6/28/16.
//  Copyright © 2016 Deven Desai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;
@property (weak, nonatomic) IBOutlet UILabel *bmiLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *healthLabel;

@property (weak, nonatomic) IBOutlet UISwitch *genderSwitch;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *bmrWeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *bmrHeightTextField;
@property (weak, nonatomic) IBOutlet UILabel *bmrLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *wgt_switch;

@property (weak, nonatomic) IBOutlet UISegmentedControl *hgt_switch;
@property (weak, nonatomic) IBOutlet UIImageView *bmi_image;

@property (weak, nonatomic) IBOutlet UISegmentedControl *wgt2_switch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *hgt2_switch;

- (IBAction)buttonPressed:(id)sender;

- (IBAction)calculatePressed:(id)sender;
@end

