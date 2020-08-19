# TWGCDTimer

[![CI Status](https://img.shields.io/travis/tiltwang/TWGCDTimer.svg?style=flat)](https://travis-ci.org/tiltwang/TWGCDTimer)
[![Version](https://img.shields.io/cocoapods/v/TWGCDTimer.svg?style=flat)](https://cocoapods.org/pods/TWGCDTimer)
[![License](https://img.shields.io/cocoapods/l/TWGCDTimer.svg?style=flat)](https://cocoapods.org/pods/TWGCDTimer)
[![Platform](https://img.shields.io/cocoapods/p/TWGCDTimer.svg?style=flat)](https://cocoapods.org/pods/TWGCDTimer)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TWGCDTimer is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TWGCDTimer'
```

## Usage

```
self.timerTask = [TWGCDTimer execTaskBlock:^{
    
    if(self.timeout <= 0){
        /// 取消任务
        [TWGCDTimer cancelTask:self.timerTask];
        NSLog(@"timer停止计时");
        return;
    }
    
    if(self.timeout > 0){
        self.timeout--;
        NSLog(@"%zd", self.timeout);
    }
} start:0 interval:1 repeats:YES async:NO];
```

## Author

tiltwang

## License

TWGCDTimer is available under the MIT license. See the LICENSE file for more info.
