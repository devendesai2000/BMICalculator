//
//  Person.m
//  BMICalculator
//
//  Created by Desai Chia on 6/29/16.
//  Copyright © 2016 Deven Desai. All rights reserved.
//

#import "Person.h"

static Person* secretPerson;

@implementation Person
@synthesize weightInKG;
@synthesize heightInM;
@synthesize isMan;
@synthesize ageInYears;

+(Person*) sharedPersonInstance{
	if(secretPerson == nil){
		secretPerson = [[Person alloc] init];
		secretPerson.heightInM = @1.75;
		secretPerson.weightInKG = @78;
		secretPerson.bmrHeightInM = @1.75;
		secretPerson.bmrWeightInKG = @78;
		secretPerson.ageInYears = @15;
	}
	return secretPerson;
}

-(NSString*) description{
	return [NSString stringWithFormat: @"%p %@ %@", self, self.weightInKG, self.heightInM];
}


-(NSNumber*) bmi{
	float h = self.heightInM.floatValue;
	float m = self.weightInKG.floatValue;
	float bmi = m/(h*h);
	return @(bmi);
}

-(NSNumber*) maleBMR{
	float x = self.bmrHeightInM.floatValue;
	float y = self.bmrWeightInKG.floatValue;
	float z = self.ageInYears.floatValue;
	float maleBMR = ((13.397 * y) + (4.799 * x) - (5.677 * z) + 88.362);
	return @(maleBMR);
}

-(NSNumber*) femaleBMR{
	float x = self.bmrHeightInM.floatValue;
	float y = self.bmrWeightInKG.floatValue;
	float z = self.ageInYears.floatValue;
	float femaleBMR = ((9.247 * y) + (3.098 * x) - (4.330 * z) + 447.593);
	return @(femaleBMR);
}




@end
