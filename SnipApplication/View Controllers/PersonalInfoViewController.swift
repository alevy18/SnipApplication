//
//  ViewController.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    @IBOutlet weak var ageButton: UIStackView!
    @IBOutlet weak var genderButton: UIStackView!
    @IBOutlet weak var ageLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    @IBAction func ageBtn(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Age", message: "Please enter your age.", preferredStyle: .alert)

        alert.addTextField { (textField) in
            self.ageLbl.text = textField.text
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    
    @IBAction func skipBtn(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "FeedViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}

