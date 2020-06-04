//
//  main.m
//  NsArray
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Immutable
        NSArray *month = [[NSArray alloc]initWithObjects:@"January", @"February", @"March", nil];
        for (int i = 0; i < [month count]; i++) {
            NSLog(@"month : %@", [month objectAtIndex:i]);
        }
        
        for (NSString *tmp in month) {
            NSLog(@"month : %@", tmp);
        }
        
        // Mutable
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        [mmonth addObject:@"April"];
        [mmonth addObject:@"May"];
        [mmonth addObject:@"June"];
        for (NSString *tmp in month) {
            NSLog(@"month : %@", tmp);
        }
    }
    return 0;
}
