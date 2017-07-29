//
//  XXDatePickerViewController.m
//  XXDatePicker
//
//  Created by xhkj on 2017/7/28.
//  Copyright © 2017年 adesk.wmx. All rights reserved.
//

#import "XXDatePickerViewController.h"
#import "HooDatePicker.h"

@interface XXDatePickerViewController ()<HooDatePickerDelegate>

@property (weak, nonatomic) IBOutlet UIView *dateView;

@property (strong, nonatomic) HooDatePicker *datePicker;


@property (weak, nonatomic) IBOutlet UIButton *chooseYearButton;
@property (weak, nonatomic) IBOutlet UIButton *chooseMonthButton;

@property (weak, nonatomic) IBOutlet UIButton *chooseSureButton;

@property (strong, nonatomic) NSDate *selectedDate;


@end

@implementation XXDatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //default choose year datePicker
    [self yearButton:self.chooseYearButton];
    
}

- (IBAction)yearButton:(UIButton *)sender {
    //点击年份，跳出年份的选择器
    self.datePicker = nil;
    
    HooDatePicker *yearDatePicker = [[HooDatePicker alloc] initWithSuperView:self.dateView];
    self.datePicker = yearDatePicker;
    yearDatePicker.delegate = self;
    yearDatePicker.datePickerMode = HooDatePickerModeYear;
    
    [yearDatePicker show];
    
    
}


- (IBAction)monthButton:(UIButton *)sender {
    //点击月份，跳出月份的选择器
    
    self.datePicker = nil;
    
    HooDatePicker *monthDatePicker = [[HooDatePicker alloc] initWithSuperView:self.dateView];
    self.datePicker = monthDatePicker;
    monthDatePicker.delegate = self;
    monthDatePicker.datePickerMode = HooDatePickerModeYearAndMonth;
    
    [monthDatePicker show];
    
}

- (IBAction)sureButton:(UIButton *)sender {
    //点击确认
    if (self.datePicker != nil) {
        self.selectedDate = self.datePicker.selectedHooDate;
    }
    
    if ([self.delegate respondsToSelector:@selector(sureButtonClicked:)]) {
        [self.delegate sureButtonClicked:self.selectedDate];
    }
    
    
}



- (IBAction)topViewClicked:(UITapGestureRecognizer *)sender {
    //
    if ([self.delegate respondsToSelector:@selector(topViewClicked)]) {
        [self.delegate topViewClicked];
    }
    
    
}


//#pragma mark - HooDatePickerDelegate
//- (void)datePicker:(HooDatePicker *)dataPicker didSelectedDate:(NSDate *)date {
//    self.selectedDate = date;
//    
//    
//    if ([self.delegate respondsToSelector:@selector(sureButtonClicked)]) {
//        [self.delegate sureButtonClicked];
//    }
//    
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    
//    formatter.dateFormat = @"yyyy-MM-dd";
//    NSString *dateString = [formatter stringFromDate:self.selectedDate];
//    
//    NSLog(@"dateString = %@",dateString);
//    
//}


@end
