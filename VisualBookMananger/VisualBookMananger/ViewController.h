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

@property (nonatomic, strong) IBOutlet UITextView *resultTextView;

-(IBAction)showAllBookAction:(id)sender;

@end

