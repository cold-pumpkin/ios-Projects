//
//  Vehicle.h
//  FirstPrj
//
//  Created by Philip on 2020/06/03.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject{
    // member variable (선언 생략 가능)
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
