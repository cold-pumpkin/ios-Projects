//
//  BookMananger.h
//  BookManager
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;
@interface BookMananger : NSObject {
    NSMutableArray *bookList;
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSUInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removebook:(NSString *)name;
@end

