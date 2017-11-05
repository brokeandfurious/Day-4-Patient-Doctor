//
//  Doctor.h
//  Day 4 - Patient & Doctor
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* spec;
@property (nonatomic, strong) NSMutableArray* patientList;
@property (nonatomic, strong) NSMutableArray* prescriptionList;

- (void) introduction;
- (void) checkCard;
- (void) acceptPatient: (Patient*) currentPatient;
- (void) askAge: (Patient*) currentPatient;
- (void) askSymptoms: (Patient*) currentPatient;
- (void) givePrescripton: (Patient*) currentPatient;

@end
