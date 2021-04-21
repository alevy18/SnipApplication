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
    
    let vm = SignUpViewModel()
    
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
    
    @IBAction func signUpClicked(_ sender: UIButton) {
        if let password = passwordTF.text {
            if vm.validatePassword(password: password) == true {
                let firstName = firstNameTF.text ?? "NA"
                let lastName = lastNameTF.text ?? "NA"
                let email = emailTF.text ?? "NA"
                let password = passwordTF.text ?? "NA"
                //add FIrebase capabilities
                vm.createFirebaseUser(first: firstName, last: lastName, email: email, password: password)
                
                
                //push next VC (change root VC to next VC)
                let st = UIStoryboard.init(name: "Main", bundle: nil)
                let vc = st.instantiateViewController(identifier: Constants.ViewControllers.personalInfoViewController)
                navigationController?.pushViewController(vc, animated: true)
                
                view.window?.rootViewController = vc
                view.window?.makeKeyAndVisible()
            }
        }
        
    }
    
}
