//
//  main.m
//  NSString
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Immutable String
        // 1)
        NSString *str  = [[NSString alloc]init];
        str = @"This is NSString!";
        NSLog(@"str: %@", str);
        
        // 2) convenience method
        NSString *str1 = [[NSString alloc]initWithString:@"This is convenience method"];
        NSLog(@"str: %@", str1);
        
        // 3)
        NSString *str2 = @"This is string~";
        NSLog(@"str2: %@", str2);
        
        // String APIs
        NSString *result;
        result = [str substringFromIndex:5];  // index부터 자름
        NSLog(@"result: %@", result);
        result = [str substringToIndex:3];  // index까지 자름
        NSLog(@"result: %@", result);
        result = [str substringWithRange:NSMakeRange(0, 2)].uppercaseString;  // 0번째부터 2개 -> 대문자
        NSLog(@"result: %@", result);
        
        
    }
    return 0;
}
