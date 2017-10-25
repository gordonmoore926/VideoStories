//
//  LoginEmail.swift
//  VideoStories
//
//  Created by Gordon Moore on 10/25/17.
//  Copyright © 2017 GMAL. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginEmail: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ForgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "EmailLoginToForgotPassword", sender: self)
    }
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func LoginButton(_ sender: Any) {
        if let email_param = email.text, let password_param = password.text {
            Auth.auth().signIn(withEmail: email_param, password: password_param) { (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "LoginEmailToHome", sender: self)
                } else {
                    // registration failed
                }
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
