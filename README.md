# UIKitExtension

[![CI Status](http://img.shields.io/travis/TrungUng/UIKitExtension.svg?style=flat)](https://travis-ci.org/TrungUng/UIKitExtension)
[![Version](https://img.shields.io/cocoapods/v/UIKitExtension.svg?style=flat)](http://cocoapods.org/pods/UIKitExtension)
[![License](https://img.shields.io/cocoapods/l/UIKitExtension.svg?style=flat)](http://cocoapods.org/pods/UIKitExtension)
[![Platform](https://img.shields.io/cocoapods/p/UIKitExtension.svg?style=flat)](http://cocoapods.org/pods/UIKitExtension)

##UIKitExtensions Demo
UIView Animation
`http://g.recordit.co/4SG2bsPoXP.gif`


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

`iOS 8.0+ / Mac OS X 10.9+.`

`Xcode 6.3 (Swift 1.2).`

## Quick start

UIView Animation Extensions

	view.fadeIn()                    // Fade in animation
	view.fadeOut()                    // Fade out animation
	slideLabel.slideInFromLeft()    // Slide from left animation
	
	// Rotate 360 degrees
	refreshButton.rotate360Degrees(completionDelegate: self)  
	override func animationDidStop(anim: CAAnimation!, finished flag: Bool) {
	  // Do any additional    
	}



UIView and CGRect Extensions: work with view and rect geometry easier

	myView.frame = CGRectMake(10, 10, 20, 20)
	myView.left = 20   // Frame is now {{20, 10}, {20, 20}}
	myView.width = 100 // Frame is now {{20, 10}, {100, 20}}
	myView.right = 150 // Frame is now {{50, 10}, {100, 20}}



## Installation

UIKitExtension is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIKitExtension"
```

## Author

TrungUng, trung.ungtoan@asnet.com.vn

## License

UIKitExtension is available under the MIT license. See the LICENSE file for more info.
