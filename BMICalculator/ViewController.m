//
//  ViewController.m
//  BMICalculator
//
//  Created by Desai Chia on 6/28/16.
//  Copyright © 2016 Deven Desai. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)genderSwitch:(id)sender {
}

- (IBAction)buttonPressed:(id)sender {
	Person* p = [Person sharedPersonInstance];
	
	if (_wgt_switch.selectedSegmentIndex == 0 && _hgt_switch.selectedSegmentIndex == 0){
		p.heightInM = @(self.heightTextField.text.floatValue);
		p.weightInKG = @(self.myTextField.text.floatValue);
	} else if (_wgt_switch.selectedSegmentIndex == 0 && _hgt_switch.selectedSegmentIndex == 1) {
		// Height is in feet need to convert to meters
		p.heightInM = @(self.heightTextField.text.floatValue);
		p.heightInM = @(p.heightInM.floatValue * 0.305);
		p.weightInKG = @(self.myTextField.text.floatValue);
	} else if (_wgt_switch.selectedSegmentIndex == 1 && _hgt_switch.selectedSegmentIndex == 0) {
		p.heightInM = @(self.heightTextField.text.floatValue);
		// Weight is in lbs need to convert to kg
		p.weightInKG = @(self.myTextField.text.floatValue);
		p.weightInKG = @(p.weightInKG.floatValue * 0.454);
	} else if (_wgt_switch.selectedSegmentIndex == 1 && _hgt_switch.selectedSegmentIndex == 1) {
		// Height is in feet need to convert to meters
		p.heightInM = @(self.heightTextField.text.floatValue);
		p.heightInM = @(p.heightInM.floatValue * 0.305);
		// Weight is in lbs need to convert to kg
		p.weightInKG = @(self.myTextField.text.floatValue);
		p.weightInKG = @(p.weightInKG.floatValue * 0.454);
	}
	
	NSNumber* bmi = p.bmi;
	self.bmiLabel.text = [NSString stringWithFormat:@"%.2f",bmi.floatValue];
	if (bmi.floatValue < 19) {
		self.healthLabel.text = (@"underweight");
		[_bmi_image setImage:[UIImage imageNamed:@"celery"]];
	}
	else if (bmi.floatValue >= 19 && bmi.floatValue < 25){
		self.healthLabel.text = (@"normal");
		[_bmi_image setImage:[UIImage imageNamed:@"apple"]];
	}
	else if (bmi.floatValue < 30 && bmi.floatValue >= 25){
		self.healthLabel.text = (@"overweight");
		[_bmi_image setImage:[UIImage imageNamed:@"chicken"]];
	}
	else if(bmi.floatValue < 40 && bmi.floatValue >= 30){
		self.healthLabel.text = (@"obese");
		[_bmi_image setImage:[UIImage imageNamed:@"donut"]];
	}
	else if (bmi.floatValue >= 40){
		self.healthLabel.text = (@"extreme obesity");
		[_bmi_image setImage:[UIImage imageNamed:@"bigmac"]];
	}
}

- (IBAction)calculatePressed:(id)sender {
	Person* p = [Person sharedPersonInstance];
	p.ageInYears = @(self.ageTextField.text.floatValue);
	NSNumber* maleBMR = p.maleBMR;
	NSNumber* femaleBMR = p.femaleBMR;
	if (_wgt2_switch.selectedSegmentIndex == 0 && _hgt2_switch.selectedSegmentIndex == 0){
		p.bmrHeightInM = @(self.bmrHeightTextField.text.floatValue);
		p.bmrWeightInKG = @(self.bmrWeightTextField.text.floatValue);
	} else if (_wgt2_switch.selectedSegmentIndex == 0 && _hgt2_switch.selectedSegmentIndex == 1) {
		// Height is in feet need to convert to meters
		p.bmrHeightInM = @(self.bmrHeightTextField.text.floatValue);
		p.bmrHeightInM = @(p.bmrHeightInM.floatValue * 0.305);
		p.weightInKG = @(self.bmrWeightTextField.text.floatValue);
	} else if (_wgt2_switch.selectedSegmentIndex == 1 && _hgt2_switch.selectedSegmentIndex == 0) {
		p.bmrHeightInM = @(self.bmrHeightTextField.text.floatValue);
		// Weight is in lbs need to convert to kg
		p.bmrWeightInKG = @(self.bmrWeightTextField.text.floatValue);
		p.bmrWeightInKG = @(p.bmrWeightInKG.floatValue * 0.454);
	} else if (_wgt2_switch.selectedSegmentIndex == 1 && _hgt2_switch.selectedSegmentIndex == 1) {
		// Height is in feet need to convert to meters
		p.bmrHeightInM = @(self.bmrHeightTextField.text.floatValue);
		p.bmrHeightInM = @(p.bmrHeightInM.floatValue * 0.305);
		// Weight is in lbs need to convert to kg
		p.bmrWeightInKG = @(self.bmrWeightTextField.text.floatValue);
		p.bmrWeightInKG = @(p.bmrWeightInKG.floatValue * 0.454);
	}

	if(self.genderSwitch.on == YES){
		p.isMan = YES;
		self.bmrLabel.text = [NSString stringWithFormat:@"%.2f",maleBMR.floatValue];
	}
	else{
		self.bmrLabel.text = [NSString stringWithFormat:@"%.2f",femaleBMR.floatValue];
	}
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
	NSLog(@"Touches Began");
	[self.myTextField resignFirstResponder];
}


@end
