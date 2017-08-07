//
//  ViewController.m
//  HooDatePickerViewController
//
//  Created by xhkj on 2017/7/28.
//  Copyright © 2017年 adesk.wmx. All rights reserved.
//

#import "ViewController.h"
#import "HooDatePickerViewController.h"



@interface ViewController ()<HooDatePickerViewControllerDelegete>

@property (strong, nonatomic) NSDate *selectedDate;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickDatePicker:(id)sender {
    
    HooDatePickerViewController *dateViewController = [[self storyboard] instantiateViewControllerWithIdentifier:NSStringFromClass([HooDatePickerViewController class])];
    dateViewController.delegate = self;
    
    dateViewController.pickerMode = HooDatePickerModeDate;
    
    dateViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:dateViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - HooDatePickerViewControllerDelegete
- (void)topViewClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cancelButtonClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)sureButtonClickedWithDate:(NSDate *)date {
    self.selectedDate = date;
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *dateString = [formatter stringFromDate:self.selectedDate];
    NSLog(@"dateString = %@",dateString);
}

@end
