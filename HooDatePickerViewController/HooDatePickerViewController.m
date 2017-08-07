//
//  HooDatePickerViewController.m
//  HooDatePickerViewController
//
//  Created by xhkj on 2017/7/28.
//  Copyright © 2017年 adesk.wmx. All rights reserved.
//

#import "HooDatePickerViewController.h"


@interface HooDatePickerViewController ()<HooDatePickerDelegate>

@property (strong, nonatomic) HooDatePicker *hooDatePicker;

@property (weak, nonatomic) IBOutlet UIView *dateView;

@property (strong, nonatomic) NSDate *selectedDate;


@end

@implementation HooDatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HooDatePicker *picker = [[HooDatePicker alloc] initWithSuperView:self.dateView];
    
    picker.delegate = self;
    
//    picker.datePickerMode = self.hooDatePickerMode;
    picker.datePickerMode = self.pickerMode;
    
    [picker show];
}



- (IBAction)clickTopView:(id)sender {
    //将通知前一个控制器控制器销毁掉
    if ([self.delegate respondsToSelector:@selector(topViewClicked)]) {
        [self.delegate topViewClicked];
    }
}


- (void)datePicker:(HooDatePicker *)dataPicker didSelectedDate:(NSDate *)date {
    self.selectedDate = date;
    
    //并且把这个控制器销毁掉
    if ([self.delegate respondsToSelector:@selector(sureButtonClickedWithDate:)]) {
        [self.delegate sureButtonClickedWithDate:date];
    }
}

- (void)datePicker:(HooDatePicker *)datePicker didCancel:(UIButton *)sender {
    //把这个控制器销毁掉
    if ([self.delegate respondsToSelector:@selector(cancelButtonClicked)]) {
        [self.delegate cancelButtonClicked];
    }
}

@end
