//
//  SIgnUpViewController.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import UIKit

class SIgnUpViewController: UIViewController {

    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var facebookBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpBtn.StyleButton()
        facebookBtn.StyleButton()
        facebookBtn.backgroundColor = UIColor.init(red: 0.2314, green: 0.349, blue: 0.5961, alpha: 1)
        
        firstNameTF.styleTextField()
        lastNameTF.styleTextField()
        emailTF.styleTextField()
        passwordTF.styleTextField()
    }
    

}
