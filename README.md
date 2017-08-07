# XXDatePicker
##又一个时间选择控制器，更改mode，就弹出对应的控制器
效果如下

##需要拖入的文件（此时间选择器依赖于HooDatePicker，其地址为：）
此项目是由storyBoard拖拽
- HooDatePickerViewController.h
- HooDatePickerViewController.m
- NSDate+HooDatePicker.h
- NSDate+HooDatePicker.m
- HooDatePicker.h
- HooDatePicker.m
- UIColor+Util.h
- UIColor+Util.m

##使用参见ViewController.m
```
//点击弹出时间选择器控制器
- (IBAction)clickDatePicker:(id)sender {
    
    HooDatePickerViewController *dateViewController = [[self storyboard] instantiateViewControllerWithIdentifier:NSStringFromClass([HooDatePickerViewController class])];
    dateViewController.delegate = self;
    //更换pickerMode则可弹出不同类型的时间控制器
    dateViewController.pickerMode = HooDatePickerModeYear;
    
    dateViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:dateViewController animated:YES completion:nil];
}
```

##实现代理
```
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
```
