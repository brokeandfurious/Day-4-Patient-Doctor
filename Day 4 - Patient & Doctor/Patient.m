//
//  Patient.m
//  Day 4 - Patient & Doctor
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (id) init {
    self.name = _name;
    self.age = _age;
    self.healthCard = _healthCard;
    return self;
}

- (void) introduction {
    NSLog(@"Hello. My name is %@.", self.name);
}

- (void) visitDoctor:(Doctor*)currentDoctor {
    NSLog(@"Thank you for seeing me, %@", currentDoctor.name);
}

- (void) requestMeds:(Doctor*)currentDoctor {
    NSLog(@"What can you prescribe me, %@?", currentDoctor.name);
}

@end
