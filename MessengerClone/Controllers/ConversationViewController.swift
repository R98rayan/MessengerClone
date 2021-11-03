import UIKit
import FirebaseAuth

class ConversationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
           try FirebaseAuth.Auth.auth().signOut()
        }
        catch {}
        DatabaseManger.shared.test() // call test!
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
  
        validateAuth()
    }
        
    private func validateAuth(){
        print("check if there is a user...")
        // current user is set automatically when you log a user in
        if FirebaseAuth.Auth.auth().currentUser == nil {
            print("there is no user, pushing the Login View!")
            self.performSegue(withIdentifier: "AuthenticationSegue", sender: self)
        }
    }
    
}
