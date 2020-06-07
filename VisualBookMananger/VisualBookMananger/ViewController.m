//
//  ViewController.m
//  VisualBookMananger
//
//  Created by Philip on 2020/06/05.
//  Copyright © 2020 Philip. All rights reserved.
//

#import "ViewController.h"
#import "BookMananger.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView, nameTextField, genreTextField, authorTextField, countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    
    manager = [[BookMananger alloc]init];
    [manager addBook:book1];
    [manager addBook:book2];
    [manager addBook:book3];
    
    countLabel.text = [NSString stringWithFormat:@"%li", [manager countBook]];
}

// 등록된 책 정보 보기
-(IBAction)showAllBookAction:(id)sender{
    resultTextView.text = [manager showAllBook];
    //resultTextView setText: [manager showAllBook];
}

// 책 정보 등록하기
-(IBAction)addBookAction:(id)sender {
    Book *bookTmp = [[Book alloc]init];
    bookTmp.name = nameTextField.text;
    bookTmp.genre = genreTextField.text;
    bookTmp.author = authorTextField.text;
    
    [manager addBook:bookTmp];
    resultTextView.text = @"책이 추가 되었습니다.";
    countLabel.text = [NSString stringWithFormat:@"%li", [manager countBook]];
}

// 책 정보 검색하기
-(IBAction)findAction:(id)sender {
    NSString *strTmp = [manager findBook:nameTextField.text];
    if (strTmp != nil) {
        resultTextView.text = strTmp;
    }else {
        resultTextView.text = @"찾으시는 책이 없네요!";
    }
}

// 책 정보 삭제하기
-(IBAction)removeBookAction:(id)sender {
    NSString *strTmp = [manager removebook:nameTextField.text];
    if (strTmp != nil) {
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString:strTmp];
        [str appendString:@" 책이 지워졌습니다."];
        resultTextView.text = str;
        countLabel.text = [NSString stringWithFormat:@"%li", [manager countBook]];
    }else {
        resultTextView.text = @"지우려는 책이 없네요!";
    }
}
@end
