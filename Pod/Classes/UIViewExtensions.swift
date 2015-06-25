//
//  UIViewExtensions.swift
//  UIKitExtension
//
//  Created by TrungUng on 06/23/2015.
//  Copyright (c) 06/23/2015 TrungUng. All rights reserved.
//

import Foundation
import UIKit
import CGRectExtensions

extension UIView {
  
  // ***************************************************************************
  // MARK: - UIView with Animations
    
  /**
  Fade In Animation
  
  :param: duration - Animation duration (default 0.7)
  */
  public func fadeIn(duration: CFTimeInterval = 0.7) {
    
    UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
        self.alpha = 1.0
      }, completion: nil)
  }
  
  /**
  Fade Out Animation
  
  :param: duration - Animation duration (default 0.7)
  */
  public func fadeOut(duration: CFTimeInterval = 0.7) {
    
    UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
        self.alpha = 0.0
      }, completion: nil)
  }
  
  /**
  Rotate 360 degrees Animation
  
  :param: duration            - Animation duration (default 0.7)
  :param: completionDelegate
  */
  public func rotate360Degrees(duration: CFTimeInterval = 0.7, completionDelegate: AnyObject? = nil) {
    
    // Create a CATransition animation
    let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
    rotateAnimation.fromValue = 0.0
    rotateAnimation.toValue = CGFloat(M_PI * 2.0)
    rotateAnimation.duration = duration
    
    if let delegate: AnyObject = completionDelegate {
      rotateAnimation.delegate = delegate
    }
    self.layer.addAnimation(rotateAnimation, forKey: nil)
  }
  
  /**
  SlideIn View from left
  
  :param: duration            - Animation duration (default 0.7)
  :param: completionDelegate
  */
  public func slideInFromLeft(duration: NSTimeInterval = 0.7, completionDelegate: AnyObject? = nil) {
    
    // Create a CATransition animation
    let slideInFromLeftTransition = CATransition()
    
    if let delegate: AnyObject = completionDelegate {
      slideInFromLeftTransition.delegate = delegate
    }
    
    // Customize the animation's properties
    slideInFromLeftTransition.type = kCATransitionPush
    slideInFromLeftTransition.subtype = kCATransitionFromLeft
    slideInFromLeftTransition.duration = duration
    slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    slideInFromLeftTransition.fillMode = kCAFillModeRemoved
    
    // Add the animation to the View's layer
    self.layer.addAnimation(slideInFromLeftTransition, forKey: "slideInFromLeftTransition")
  }
    
  // ***************************************************************************
  // MARK: - UIView with Animations
  
  // The top coordinate of the UIView.
  public var top: CGFloat {
    get {
      return frame.left
    }
    set(value) {
      var frame = self.frame
      frame.top = value
      self.frame = frame
    }
  }
  
  // The left coordinate of the UIView.
  public var left: CGFloat {
    get {
      return frame.left
    }
    set(value) {
      var frame = self.frame
      frame.left = value
      self.frame = frame
    }
  }
  
  // The bottom coordinate of the UIView.
  public var bottom: CGFloat {
    get {
      return frame.bottom
    }
    set(value) {
      var frame = self.frame
      frame.bottom = value
      self.frame = frame
    }
  }
  
  // The right coordinate of the UIView.
  public var right: CGFloat {
    get {
      return frame.right
    }
    set(value) {
      var frame = self.frame
      frame.right = value
      self.frame = frame
    }
  }
  
  // The width of the UIView.
  public var width: CGFloat {
    get {
      return frame.width
    }
    set(value) {
      var frame = self.frame
      frame.size.width = value
      self.frame = frame
    }
  }
  
  // The height of the UIView.
  public var height: CGFloat {
    get {
      return frame.height
    }
    set(value) {
      var frame = self.frame
      frame.size.width = value
      self.frame = frame
    }
  }
  
  // The horizontal center coordinate of the UIView.
  public var centerX: CGFloat {
    get {
      return frame.centerX
    }
    set(value) {
      var frame = self.frame
      frame.centerX = value
      self.frame = frame
    }
  }
  
  // The vertical center coordinate of the UIView.
  public var centerY: CGFloat {
    get {
      return frame.centerY
    }
    set(value) {
      var frame = self.frame
      frame.centerY = value
      self.frame = frame
    }
  }
}