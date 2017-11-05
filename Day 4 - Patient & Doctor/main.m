//
//  main.m
//  Day 4 - Patient & Doctor
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //INITIALIZE PATIENTS
        Patient* patient1 = [[Patient alloc]init];
        [patient1 setName:@"Cersei"];
        [patient1 setHealthCard:1];
        [patient1 setAge:38];
        [patient1 setSymptoms:@"being a total psycho."];
        
        Patient* patient2 = [[Patient alloc]init];
        [patient2 setName:@"Arya"];
        [patient2 setHealthCard:1];
        [patient2 setAge:15];
        [patient2 setSymptoms:@"knife wounds."];
        
        Patient* patient3 = [[Patient alloc]init];
        [patient3 setName:@"Ser Jorah"];
        [patient3 setHealthCard:0];
        [patient3 setAge:54];
        [patient3 setSymptoms:@"greyscale."];

        
        //INITIALIZE DOCTORS
        Doctor* doctor1 = [[Doctor alloc]init];
        [doctor1 setName:@"Qyburn"];
        [doctor1 setSpec:@"Unspeakable Acts"];
        
        Doctor* doctor2 = [[Doctor alloc]init];
        [doctor2 setName:@"Maester Luwin"];
        [doctor2 setSpec:@"wounds"];
        
        Doctor* doctor3 = [[Doctor alloc]init];
        [doctor3 setName:@"Sam"];
        [doctor3 setSpec:@"being a good 'sam'aritan."];
        
        //INTRODUCTION PHASE
        [doctor1 introduction];
        [patient1 introduction];
        
        //ACCEPTANCE PHASE
        [patient1 visitDoctor:(Doctor*) doctor1];
        [doctor1 checkCard];
        [doctor1 acceptPatient:(Patient*) patient1];
        
        //ASK AGE
        [doctor1 askAge: (Patient*) patient1];
        
        //ASK SYMPTOMS
        [doctor1 askSymptoms:(Patient*) patient1];
        
        //GIVE PRESCRIPTION
        [doctor1 givePrescripton:(Patient*) patient1];
        
    }
    return 0;
}
