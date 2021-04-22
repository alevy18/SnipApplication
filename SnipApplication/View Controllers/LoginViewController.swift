//
//  LoginViewController.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    let vm = LoginViewModel.init()
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLbl.alpha = 0
        loginBtn.layer.borderWidth = 5
        loginBtn.layer.borderColor = UIColor.gray.cgColor
        loginBtn.StyleButton()
    
        
        emailTF.styleTextField()
        passwordTF.styleTextField()
        
        
        
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        
        let email = emailTF.text ?? "NA"
        let password = passwordTF.text ?? "NA"
    //                vm.loginUser(email: email, password: password)
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print(error)
                self.errorLbl.alpha = 1
            }else{
                let st = UIStoryboard.init(name: "Main", bundle: nil)
                let vc = st.instantiateViewController(identifier: Constants.ViewControllers.personalInfoViewController)
//                self.navigationController?.pushViewController(vc, animated: true)
                
                let newNavObj = UINavigationController.init(rootViewController: vc)
                
                self.view.window?.rootViewController = newNavObj
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
    
    
}
