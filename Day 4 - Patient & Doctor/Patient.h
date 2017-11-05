//
//  Patient.h
//  Day 4 - Patient & Doctor
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) int age;
@property (nonatomic) int healthCard;
@property (nonatomic) NSString* symptoms;
@property (nonatomic) NSMutableArray* medicalHistory;

- (void) introduction;
- (id) init;
- (void) visitDoctor:(Doctor*)currentDoctor;
- (void) requestMeds:(Doctor*)currentDoctor;
//- (void) visitDoctor:(Doctor *)doctor;

@end
