//
//  HooDatePickerViewController.h
//  HooDatePickerViewController
//
//  Created by xhkj on 2017/7/28.
//  Copyright © 2017年 adesk.wmx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HooDatePicker.h"
@class HooDatePickerViewController;
//
//typedef NS_ENUM(NSInteger,DatePickerMode) {
//    DatePickerModeTime,    // Displays hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. 6 | 53 | PM)
//    DatePickerModeDate,     // Displays month, day, and year depending on the locale setting (e.g. November | 15 | 2007)
//    DatePickerModeDateAndTime, // Displays date, hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. Wed Nov 15 | 6 | 53 | PM)
//    DatePickerModeYearAndMonth, // Displays Year, Month,  designation depending on the locale setting (e.g. November | 2007)
//    DatePickerModeYear
//};



@protocol  HooDatePickerViewControllerDelegete <NSObject>

- (void)topViewClicked;

- (void)cancelButtonClicked;

- (void)sureButtonClickedWithDate:(NSDate *)date;


@end

@interface HooDatePickerViewController : UIViewController

@property (assign, nonatomic) HooDatePickerMode pickerMode;

@property (assign, nonatomic) id <HooDatePickerViewControllerDelegete> delegate;


@end
