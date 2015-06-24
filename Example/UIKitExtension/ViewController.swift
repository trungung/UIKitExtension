//
//  ViewController.swift
//  UIKitExtension
//
//  Created by TrungUng on 06/23/2015.
//  Copyright (c) 06/23/2015 TrungUng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  let cellIdentifier: String = "cellIdentifier"
  var contents: [String] = ["UIView Extensions", "UINavigationBar Extensions", "UILabel Extensions"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}


// MARK: - UITableView DataSource

extension ViewController: UITableViewDataSource {

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return contents.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! UITableViewCell
    
    cell.textLabel!.text = contents[indexPath.row]

    return UITableViewCell()
  }
}


// MARK: - UITableView Delegate

extension ViewController: UITableViewDelegate {
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    switch indexPath.row
    {
    case 0:
      let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("UIViewExtensionsViewController") as! UIViewExtensionsViewController
      self.navigationController?.pushViewController(nextViewController, animated: true)
      break
      
    default:
      
      break
    }
  }
}
