//
//  LoginViewController.swift
//  MessengerClone
//
//  Created by administrator on 01/11/2021.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginAction(_ sender: Any) {
        
        FirebaseAuth.Auth.auth().signIn(withEmail: emailLabel.text!, password: passwordLabel.text!, completion: { authResult, error in
            guard let result = authResult, error == nil else {
                print("Failed to log in user with email \(self.emailLabel.text!)")
                return
            }
            let user = result.user
            print("logged in user: \(user)")
        })
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
