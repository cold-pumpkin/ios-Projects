//
//  ViewController.h
//  VisualBookMananger
//
//  Created by Philip on 2020/06/05.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookMananger;
@interface ViewController : UIViewController {
    BookMananger *manager;
}
// 등록된 책 정보
@property (nonatomic, strong) IBOutlet UITextView *resultTextView;
// 등록할 책 정보
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UITextField *genreTextField;
@property (nonatomic, strong) IBOutlet UITextField *authorTextField;
// 책 정보 개수
@property (nonatomic, strong) IBOutlet UILabel *countLabel;

-(IBAction)showAllBookAction:(id)sender;
-(IBAction)addBookAction:(id)sender;
-(IBAction)findAction:(id)sender;
-(IBAction)removeBookAction:(id)sender;

@end

