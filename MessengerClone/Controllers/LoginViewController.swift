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
//            self.navigationController?.dismiss(animated: true, completion: nil)
            self.dismiss(animated: true, completion: nil)
        })
        
    }

    @IBAction func fastAction(_ sender: Any) {
        FirebaseAuth.Auth.auth().signIn(withEmail: "r98rayan@gmail.com", password: "l1234531", completion: { authResult, error in
            guard let result = authResult, error == nil else {
                print("Failed to log in user with email \(self.emailLabel.text!)")
                return
            }
            let user = result.user
            print("logged in user: \(user)")
            print(user)
//            self.navigationController?.dismiss(animated: true, completion: nil)
            self.dismiss(animated: true, completion: nil)
            
            
//            if let navigationController = UIApplication.shared.keyWindow?.rootViewController as? AuthenticationNavigationController {
//            
//                navigationController.conversationViewController!.dismiss(animated: true, completion: nil)
//            }
        })
    }
}
