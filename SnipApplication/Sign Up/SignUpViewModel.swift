//
//  SignUpViewModel.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/20/21.
//

import Foundation
import FirebaseAuth
import Firebase


class SignUpViewModel: Password {
    
    func createFirebaseUser(first: String, last: String, email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            //check for errors
            if let err = error {
                print(err)
            }else {
                let db = Firestore.firestore()
                db.collection("users").addDocument(data: ["firstName" : first, "lastName" : last, "uid" : result?.user.uid]) { (err) in
                    if let err = err{
                        print(err)
                    }
                }
            }
        }
    }
    
}
