//
//  Vehicle.m
//  FirstPrj
//
//  Created by Philip on 2020/06/03.
//  Copyright © 2020 Philip. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
@synthesize seats;
//-(void)setWheels:(int)w {
//    wheels = w;
//}
//-(void)setSeats:(int)s {
//    seats = s;
//}
//
//-(int)wheels {
//    return seats;
//}
//
//-(int)seats {
//    return wheels;
//}

-(void)print {
    NSLog(@"wheels : %i, seats : %i", wheels, seats);
}
@end
