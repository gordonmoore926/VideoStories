//
//  LoginMoreWays.swift
//  VideoStories
//
//  Created by Gordon Moore on 10/24/17.
//  Copyright © 2017 GMAL. All rights reserved.
//

import UIKit

class LoginMoreWays: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PhoneNumber(_ sender: Any) {
        performSegue(withIdentifier: "MoreLoginToPhoneLogin", sender: self)
    }
    
    @IBAction func EmailButton(_ sender: Any) {
        performSegue(withIdentifier: "MoreLoginToEmailLogin", sender: self)
    }
    
    @IBAction func CreateAccountFromLogin(_ sender: Any) {
        performSegue(withIdentifier: "MoreLoginToCreateAccount", sender: self)
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
