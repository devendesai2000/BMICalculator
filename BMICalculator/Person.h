//
//  Person.h
//  BMICalculator
//
//  Created by Desai Chia on 6/29/16.
//  Copyright © 2016 Deven Desai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong, nonatomic) NSNumber* weightInKG;
@property (strong, nonatomic) NSNumber* heightInM;
@property (assign) bool isMan;
@property (strong, nonatomic) NSNumber* ageInYears;
@property (strong, nonatomic) NSNumber* bmrWeightInKG;
@property (strong, nonatomic) NSNumber* bmrHeightInM;

+(Person*) sharedPersonInstance;

-(NSNumber*) bmi;
-(NSNumber*) maleBMR;
-(NSNumber*) femaleBMR;

@end
