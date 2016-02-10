# UIViewController-ODKeyboardObserver

[![Version](https://img.shields.io/cocoapods/v/UIViewController+ODKeyboardObserver.svg?style=flat)](http://cocoapods.org/pods/UIViewController+ODKeyboardObserver)
[![License](https://img.shields.io/cocoapods/l/UIViewController+ODKeyboardObserver.svg?style=flat)](http://cocoapods.org/pods/UIViewController+ODKeyboardObserver)
[![Platform](https://img.shields.io/cocoapods/p/UIViewController+ODKeyboardObserver.svg?style=flat)](http://cocoapods.org/pods/UIViewController+ODKeyboardObserver)

Category for UIView extends the frame accessibility

## Usage

For example, instead of:
```objective-c
CGRect rect = view.frame;
rect.size.width += 100;
view.frame = rect;
```

you can use:
```objective-c
view.od_width+=100;
```

## Methods

Position:
   * od_origin;
   * od_x;
   * od_y;
   * od_left;
   * od_top;
   * od_bottom;
   * od_right;

Size:
   * od_size;
   * od_height;
   * od_width;

Bounds:
   * od_boundsWidth;
   * od_boundsHeight;
   * od_boundsX;
   * od_boundsY;

Center:
   * od_centerX;
   * od_centerY;

## Extra inline functions

Point and Frame values:
```objective-c
NSValue *ODRect(CGRect frame);
NSValue *ODPoint(CGPoint point);
```

Integral structs:
```objective-c
CGPoint CGPointIntegral(CGPoint point);
CGSize CGSizeIntegral(CGSize size);
```

Average between two values:
```objective-c
float avgf(float x1, float x2);
double avgd(double x1, double x2);
```

## Installation

UIViewController-ODKeyboardObserver is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIViewController+ODKeyboardObserver"
```

## Author

Alexey Nazaroff, alexx.nazaroff@gmail.com

## License

UIViewController-ODKeyboardObserver is available under the MIT license. See the LICENSE file for more info.
