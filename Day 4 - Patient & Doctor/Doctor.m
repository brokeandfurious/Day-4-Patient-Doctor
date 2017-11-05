//
//  Doctor.m
//  Day 4 - Patient & Doctor
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

int healthCard;
int age;
NSString* symptoms;

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

- (void) introduction {
    NSLog(@"Hello. I am %@ and I am fascinated with %@", self.name, self.spec);
}

- (void) checkCard {
    NSLog(@"Are you highborn? (10+ Highborn, 10- Lowborn)\n");
    scanf("%i", &healthCard);
    
    if (healthCard > 10) {
        NSLog(@"Welcome my lady.\n");
    }
    
    else {
        NSLog(@"Are ya soft in the 'ead? Get the 'ell outta 'ere!\n");
        exit(0);
    }
}

- (void) acceptPatient:(Patient *)currentPatient {
    
    NSMutableArray* patientList = [[NSMutableArray alloc]init];
    [patientList addObject:@"Ser Gregor Clegane"];
    
    NSLog(@"New raven who dis... (Sending patient info to the Citadel)");
    [patientList addObject:currentPatient.name];
    NSLog(@"The list: %@", patientList);
    
}

- (void) askAge: (Patient*) currentPatient {
    NSLog(@"How old are you, %@?", currentPatient.name);
    scanf("%i", &age);
    NSLog(@"So you are %i years old...", age);
}

- (void) askSymptoms: (Patient*) currentPatient {
    
    NSLog(@"What are your symptoms, %@?", currentPatient.name);
    NSLog(@"%@: I have problems with %@", currentPatient.name, currentPatient.symptoms);
    
}

- (void) givePrescripton:(Patient *)currentPatient {
    NSMutableArray* prescriptionList = [[NSMutableArray alloc]init];
    [prescriptionList addObject:@"Long Farewell"];
    NSArray* medications = @[@"Tears of Lys", @"Milk of the Poppy", @"Lots of Ale"];
    
    NSString* updatedSymptoms = [currentPatient.symptoms stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([updatedSymptoms isEqualToString:@"knife wounds."] && [_patientList indexOfObject:currentPatient.name] != NSNotFound) {
        NSLog(@"Here, take some %@", medications[1]);
        [prescriptionList addObject:medications[1]];
        NSLog(@"Ointment List: %@", prescriptionList);
    }
    else if ([updatedSymptoms isEqualToString:@"being a total psycho."] && [_patientList indexOfObject:currentPatient.name] != NSNotFound) {
        NSLog(@"Here, take some %@", medications[0]);
        [prescriptionList addObject:medications[0]];
        NSLog(@"Ointment List: %@", prescriptionList);
    }
    else if ([updatedSymptoms isEqualToString:@"greyscale."] && [_patientList indexOfObject:currentPatient.name] != NSNotFound) {
        NSLog(@"Here, take some %@", medications[2]);
        [prescriptionList addObject:medications[2]];
        NSLog(@"Ointment List: %@", prescriptionList);
    }
    else {
        NSLog(@"I don't know how to treat that I'm afraid.");
    }
}

@end
