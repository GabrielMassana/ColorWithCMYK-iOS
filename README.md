# ColorWithCMYK-iOS

[![Version](https://img.shields.io/cocoapods/v/ColorWithCMYK.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithCMYK)
[![License](https://img.shields.io/cocoapods/l/ColorWithCMYK.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithCMYK)
[![Platform](https://img.shields.io/cocoapods/p/ColorWithCMYK.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithCMYK)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/ColorWithCMYK.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithCMYK)
[![Build Status](https://img.shields.io/travis/GabrielMassana/ColorWithCMYK-iOS/master.svg?style=flat-square)](https://travis-ci.org/GabrielMassana/ColorWithCMYK-iOS)

##   What is it?

Swift Extension to convert CMYK values into UIColor Objects.



## Installation

#### Podfile

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'ColorWithCMYK', '~> 0.0'
```

Then, run the following command:

```bash
$ pod install
```

#### Old school

Drag into your project the folder `/ColorWithCMYK-iOS`. That's all.

## Example Swift

```swift
        let redColor = UIColor.colorWithCMYK(c: 0.0, m: 1.0, y: 1.0, k: 0.0)
        let greenColor = UIColor.colorWithCMYK(c: 1.0, m: 0.0, y: 1.0, k: 0.0)
        let blueColor = UIColor.colorWithCMYK(c: 1.0, m: 1.0, y: 0.0, k: 0.0)
        let blackColor = UIColor.colorWithCMYK(c: 0.0, m: 0.0, y: 0.0, k: 1.0)
        let whiteColor = UIColor.colorWithCMYK(c: 0.0, m: 0.0, y: 0.0, k: 0.0)        
```
## Example Objective-C

```objc
#import "ColorWithCMYK-Swift.h"

...
    UIColor *black = [UIColor cmyk_colorWithC:0.0 M:0.0 Y:0.0 K:1.0];
    UIColor *white = [UIColor cmyk_colorWithC:0.0 M:0.0 Y:0.0 K:0.0];
    UIColor *red = [UIColor cmyk_colorWithC:0.0 M:1.0 Y:1.0 K:0.0];
    UIColor *green = [UIColor cmyk_colorWithC:1.0 M:0.0 Y:1.0 K:0.0];
    UIColor *blue = [UIColor cmyk_colorWithC:1.0 M:1.0 Y:0.0 K:0.0];
```
## License

ColorWithCMYK-iOS is released under the MIT license. Please see the file called LICENSE.

## Versions

```bash
$ git tag -a 0.0.0 -m 'Version 0.0.0'

$ git push --tags
```

## Author

Gabriel Massana

##Found an issue?

Please open a [new Issue here](https://github.com/GabrielMassana/ColorWithCMYK-iOS/issues/new) if you run into a problem specific to ColorWithCMYK-iOS, have a feature request, or want to share a comment.
