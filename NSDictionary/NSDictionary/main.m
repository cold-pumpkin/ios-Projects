//
//  main.m
//  NSDictionary
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Immutable
        // value1, key1, value2, key2
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"최강사", @"이름", @"모름", @"나이", nil];
        NSLog(@"name : %@", [dic objectForKey:@"이름"] );
        NSLog(@"age : %@", [dic objectForKey:@"나이"] );
        
        // Mutable
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        [mdic setObject:@"180" forKey:@"키"];
        [mdic setObject:@"한국" forKey:@"고향"];
        
        NSLog(@"name : %@", [mdic objectForKey:@"이름"] );
        NSLog(@"age : %@", [mdic objectForKey:@"나이"] );
        NSLog(@"height : %@", [mdic objectForKey:@"키"] );
        NSLog(@"hometown : %@", [mdic objectForKey:@"고향"] );
    }
    return 0;
}
