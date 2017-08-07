//
//  ViewController.m
//  XXDatePicker
//
//  Created by xhkj on 2017/7/28.
//  Copyright © 2017年 adesk.wmx. All rights reserved.
//

#import "ViewController.h"


#import "XXDatePickerViewController.h"

@interface ViewController ()<XXDatePickerViewControllerDelegete>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickDateButton:(UIButton *)sender {
    XXDatePickerViewController *datePickerVC = [[self storyboard] instantiateViewControllerWithIdentifier:NSStringFromClass([XXDatePickerViewController class])];
    
    datePickerVC.delegate = self;
    datePickerVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:datePickerVC animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - XXDatePickerViewControllerDelegete
- (void)topViewClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)sureButtonClicked:(NSDate *)date {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *dateString = [formatter stringFromDate:date];
    
    NSLog(@"dateString = %@",dateString);
}

@end
