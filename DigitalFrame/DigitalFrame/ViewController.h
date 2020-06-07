//
//  ViewController.h
//  DigitalFrame
//
//  Created by Philip on 2020/06/07.
//  Copyright © 2020 Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction)toggleAction:(id)sender; // Start/Stop
-(IBAction)changeSpeedAction:(id)sender; // 이미지 이동 속도 변경
@end

