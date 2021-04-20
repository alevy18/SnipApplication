//
//  LoginSignUpViewController.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpBtn.StyleButton()
        loginBtn.StyleButton()

    }
    
    @IBAction func signUpClicked(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: Constants.ViewControllers.sIgnUpViewController)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: Constants.ViewControllers.loginViewController)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
