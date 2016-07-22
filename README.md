# AttributedStyle

[![CI Status](http://img.shields.io/travis/Pilipenko Dima/AttributedStyle.svg?style=flat)](https://travis-ci.org/Pilipenko Dima/AttributedStyle)
[![Version](https://img.shields.io/cocoapods/v/AttributedStyle.svg?style=flat)](http://cocoapods.org/pods/AttributedStyle)
[![License](https://img.shields.io/cocoapods/l/AttributedStyle.svg?style=flat)](http://cocoapods.org/pods/AttributedStyle)
[![Platform](https://img.shields.io/cocoapods/p/AttributedStyle.svg?style=flat)](http://cocoapods.org/pods/AttributedStyle)

## Description
- easy setup and reusing
- almost each attribute as function
- compact view

## Example

```swift
let attributedStyle = AttributedStyle().font(UIFont.systemFontOfSize(21, weight: UIFontWeightLight))
let parapraphStyle = ParagraphStyle().lineBreakMode(.ByTruncatingMiddle)
let attributes = attributedStyle.paragraphStyle(parapraphStyle.style).foregroundColor(.grayColor()).attributes

let label = UILabel()
label.attributedText = NSAttributedString(string: "Attribute it!", attributes: attributes)
// or
label.attributedText = NSAttributedString(string: "Attribute it!", attributes: AttributedStyle().font(UIFont.systemFontOfSize(21, weight: UIFontWeightLight)).foregroundColor(UIColor.darkGrayColor()).paragraphStyle(ParagraphStyle().alignment(.Center).style).attributes)
```
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AttributedStyle is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AttributedStyle"
```

## Author

Pilipenko Dima, dimpiax@gmail.com

## License

AttributedStyle is available under the MIT license. See the LICENSE file for more info.
