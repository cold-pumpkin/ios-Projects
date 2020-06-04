//
//  main.m
//  BookManager
//
//  Created by Philip on 2020/06/04.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookMananger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *book1 = [[Book alloc]init];
        book1.name = @"햄릿";
        book1.genre = @"비극";
        book1.author = @"셰익스피어";
        
        //[book1 bookPrint];
        
        Book *book2 = [[Book alloc]init];
        book2.name = @"누구를 위하여 종은 울리나";
        book2.genre = @"전쟁소설";
        book2.author = @"헤밍웨이";
        
        //[book2 bookPrint];
        
        Book *book3 = [[Book alloc]init];
        book3.name = @"죄와 벌";
        book3.genre = @"사실주의";
        book3.author = @"톨스토이";
        
        //[book3 bookPrint];
        
        BookMananger *manager = [[BookMananger alloc]init];
        [manager addBook:book1];
        [manager addBook:book2];
        [manager addBook:book3];
        
        NSLog(@"%@", [manager showAllBook]);
        
        NSLog(@"count : %li", [manager countBook]);
        
        NSString *strTmp = [manager findBook:@"죄와 벌"];
        if (strTmp != nil) {
            NSLog(@"%@", strTmp);
        } else {
            NSLog(@"찾으시는 책이 없습니다.");
        }
        
        NSString *removeResult = [manager removebook:@"죄와 벌"];
        if (removeResult != nil) {
            NSLog(@"%@ 책을 지웠습니다.", removeResult);
        } else {
            NSLog(@"지우려는 책이 없습니다.");
        }
        
        NSLog(@"%@", [manager showAllBook]);
        
    }
    return 0;
}
