//
//  BookMananger.m
//  BookManager
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import "BookMananger.h"
#import "Book.h"

@implementation BookMananger

- (id)init {
    self = [super init];
    if (self) {
        bookList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addBook: (Book *)bookObject {
    [bookList addObject:bookObject];
}

-(NSString *)showAllBook {
    NSMutableString *strTmp = [[NSMutableString alloc]init];
    for(Book *bookTmp in bookList) {
        [strTmp appendString:@"Name : "];
        [strTmp appendString:bookTmp.name];
        [strTmp appendString:@"\n"];
        [strTmp appendString:@"Genre : "];
        [strTmp appendString:bookTmp.genre];
        [strTmp appendString:@"\n"];
        [strTmp appendString:@"Author : "];
        [strTmp appendString:bookTmp.author];
        [strTmp appendString:@"\n"];
        [strTmp appendString:@"-------------------------"];
        [strTmp appendString:@"\n"];
    }
    return strTmp;
}

-(NSUInteger)countBook {
    return [bookList count];
}

-(NSString *)findBook:(NSString *)name {
    NSMutableString *strTmp = [[NSMutableString alloc]init];
    for (Book *bookTmp in bookList) {
        if ([bookTmp.name isEqualToString:name]) {
            [strTmp appendString:@"Name : "];
            [strTmp appendString:bookTmp.name];
            [strTmp appendString:@"\n"];
            [strTmp appendString:@"Genre : "];
            [strTmp appendString:bookTmp.genre];
            [strTmp appendString:@"\n"];
            [strTmp appendString:@"Author : "];
            [strTmp appendString:bookTmp.author];
            [strTmp appendString:@"\n"];
            return strTmp;
        }
    }
    return nil;
}

-(NSString *)removebook:(NSString *)name {
    for (Book *bookTmp in bookList) {
        if ([bookTmp.name isEqualToString:name]) {
            [bookList removeObject:bookTmp];
            return name;
        }
    }
    return nil;
}
@end
