//
//  UIViewExtensionsViewController.swift
//  UIKitExtension
//
//  Created by trung ung on 6/24/15.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import UIKit
import UIKitExtension
import CGRectExtensions

class UIViewExtensionsViewController: UIViewController {
  
  @IBOutlet weak var slideLabel: UILabel!
  @IBOutlet weak var viewExample: UIView!
  @IBOutlet weak var buttonExample: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    slideLabel.text = "Slide Animation"
    slideLabel.slideInFromLeft()
    
    viewExample.alpha = 0
    
    viewExample.fadeIn()
    
    buttonExample.rotate360Degrees()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
