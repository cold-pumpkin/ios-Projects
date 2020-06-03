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

@interface Vehicle : NSObject {
    // member variable
    int wheels;
    int seats;
}

// member method
@property int wheels;
@property int seats;
//-(void)setWheels:(int)w;
//-(void)setSeats:(int)s;
//-(int)wheels;
//-(int)seats;
-(void)print;

@end

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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // instance object 생성
        Vehicle *vehicle = [[Vehicle alloc]init];   // [Vehicle new];
        
        //[Receiver Message]
        [vehicle setWheels:4];
        [vehicle setSeats:2];
        //[vehicle print];
        
        NSLog(@"wheels : %i, seats : %i", [vehicle wheels], [vehicle seats]);
    }
    return 0;
}
