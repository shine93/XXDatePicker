# XXDatePicker使用说明
提供了一个能够进行月，日切换的时间选择控制器
效果如下
 ![XXDatePicker效果图](https://github.com/shine93/XXDatePicker/XXDatePickerImage.jpg)

## 使用要拖进去的文件
- XXDatePickerViewController.h
- XXDatePickerViewController.m
- HooDatePicker.h
- HooDatePicker.m
- NSDate+HooDatePicker.h
- NSDate+HooDatePicker.m

## 使用参看
- ViewController.h
- ViewController.m


## 实现代理
```
- (void)topViewClicked; //主要是dismiss掉时间选择控制器
//获取到选中时间，并且dismiss掉时间选择控制器
- (void)sureButtonClicked:(NSDate *)date;
```

```
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

```
