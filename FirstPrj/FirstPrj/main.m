//
//  main.m
//  FirstPrj
//
//  Created by Philip on 2020/06/03.
//  Copyright © 2020 Philip. All rights reserved.
//

// + : class method
// - : instance method

#import <Foundation/Foundation.h>
#import "Vehicle.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // instance object 생성
        Vehicle *vehicle = [[Vehicle alloc]init];   // [Vehicle new];
        Vehicle *vehicle2 = [[Vehicle alloc]init];
        
        //[Receiver Message]
        [vehicle setWheels:4];
        [vehicle setSeats:2];
        //[vehicle print];
        
        // dot operations
        vehicle2.wheels = 12;
        vehicle2.seats = 6;
        
        if (vehicle.wheels == 4) {
            NSLog(@"바퀴가 4개 입니다.");
        } else {
            NSLog(@"바퀴가 4개가 아닙니다.");
        }
        
        for (int i = 0; i < vehicle.wheels; i++) {
            NSLog(@"wheels : %i", i);
        }
        
        NSLog(@"wheels : %i, seats : %i", [vehicle wheels], [vehicle seats]);
        NSLog(@"wheels : %i, seats : %i", vehicle2.wheels, vehicle2.seats);
    }
    return 0;
}
