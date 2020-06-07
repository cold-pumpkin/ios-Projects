//
//  ViewController.m
//  DigitalFrame
//
//  Created by Philip on 2020/06/07.
//  Copyright © 2020 Philip. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, toggleButton, speedSlider, speedLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *cuteImages = [[NSArray alloc]initWithObjects: [UIImage imageNamed:@"1.jpg"], [UIImage imageNamed:@"2.jpg"],
                                                            [UIImage imageNamed:@"3.jpg"], [UIImage imageNamed:@"4.jpg"],
                                                            [UIImage imageNamed:@"5.jpg"], [UIImage imageNamed:@"6.jpg"],
                                                            [UIImage imageNamed:@"7.jpg"], [UIImage imageNamed:@"8.jpg"],
                                                            [UIImage imageNamed:@"9.jpg"], [UIImage imageNamed:@"10.jpg"],
                                                            [UIImage imageNamed:@"11.jpg"], [UIImage imageNamed:@"12.jpg"],
                                                            [UIImage imageNamed:@"13.jpg"], [UIImage imageNamed:@"14.jpg"],
                                                            [UIImage imageNamed:@"15.jpg"], nil];
    imgView.animationImages = cuteImages;
    imgView.animationDuration = 15.0;
}


// 버튼 Start / Stop 이름 & 동작 변경
-(IBAction)toggleAction:(id)sendr {
    if ([imgView isAnimating]) {
        [imgView stopAnimating];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    } else {
        imgView.animationDuration = speedSlider.value;
        [imgView startAnimating];
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

// 이미지 슬라이드 속도 변경
-(IBAction)changeSpeedAction:(id)sender {
    imgView.animationDuration = 15 - speedSlider.value;
    [imgView startAnimating];
    [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    
    // float -> string
    NSString *tmpLabel = [[NSString alloc]initWithFormat:@"%.2f", speedSlider.value];
    speedLabel.text = tmpLabel;
}

@end
