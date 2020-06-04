//
//  Book.m
//  BookManager
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name, genre, author;

-(void)bookPrint {
    NSLog(@"Name : %@", name);
    NSLog(@"Name : %@", genre);
    NSLog(@"Name : %@", author);
}
@end
