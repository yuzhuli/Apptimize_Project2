//
//  SignUpViewController.swift
//  Yuzhu_ApptimizeCandidate
//
//  Created by LiYuzhu on 7/18/18.
//  Copyright © 2018 LiYuzhu. All rights reserved.
//

import UIKit
import Apptimize

class SignUpViewController: UIViewController, UINavigationControllerDelegate {
  @IBOutlet weak var picOnSignUpPage: UIImageView!
  @IBOutlet weak var username: UITextField!
  @IBOutlet weak var password: UITextField!
  @IBOutlet weak var cancel: UIButton!
  @IBOutlet weak var signUp: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let picName = ApptimizeVariable.getString(name: "pic")
    let picNameString = picName?.stringValue
    picOnSignUpPage.image = UIImage(named: picNameString!)
  }
  
  @IBAction func tapSignUp(_ sender: Any) {
    let alert = UIAlertController(title: "Congratulations!", message: "You have signed up.", preferredStyle: UIAlertControllerStyle.alert)
    let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
    alert.addAction(ok)
    self.present(alert, animated: true, completion: nil)
    Apptimize.track("signUp")
  }
}
