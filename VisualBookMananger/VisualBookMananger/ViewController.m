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
@synthesize resultTextView;

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
}

-(IBAction)showAllBookAction:(id)sender{
    resultTextView.text = [manager showAllBook];
    //resultTextView setText: [manager showAllBook];
}

@end
