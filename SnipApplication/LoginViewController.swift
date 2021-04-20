//
//  LoginViewController.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import UIKit

class LoginViewController: UIViewController {

    let vm = LoginViewModel.init()
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBtn.layer.borderWidth = 5
        loginBtn.layer.borderColor = UIColor.gray.cgColor
        loginBtn.StyleButton()
        

        
        emailTF.styleTextField()
        passwordTF.styleTextField()
        
        
        
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        if let password = passwordTF.text {
            if vm.validatePassword(password: password) == true {
                //push next VC (change root VC to next VC)
                let st = UIStoryboard.init(name: "Main", bundle: nil)
                let vc = st.instantiateViewController(identifier: Constants.ViewControllers.personalInfoViewController)
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    

}
