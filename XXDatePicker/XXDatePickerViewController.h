//
//  XXDatePickerViewController.h
//  XXDatePicker
//
//  Created by xhkj on 2017/7/28.
//  Copyright © 2017年 adesk.wmx. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol XXDatePickerViewControllerDelegete <NSObject>

- (void)topViewClicked;

- (void)sureButtonClicked:(NSDate *)date;



@end

@interface XXDatePickerViewController : UIViewController


@property (assign, nonatomic) id <XXDatePickerViewControllerDelegete> delegate;


@end
