//
//  ViewController.swift
//  LoginApp
//
//  Created by student on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotusername: UIButton!
    
    @IBOutlet weak var forgotpassword: UIButton!
    @IBOutlet weak var userNameOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userNameOutlet.text
        
        guard let sender=sender as? UIButton else{return}
        if sender==forgotusername{
            segue.destination.navigationItem.title="Forgot Username"
        }
        else if sender==forgotpassword{
            segue.destination.navigationItem.title="Forgot Password"
        }
        else {
            segue.destination.navigationItem.title = userNameOutlet.text
        }
    }
   
    @IBAction func forgotUsernameButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToLanding", sender: sender)
        
    }
    
    @IBAction func forgotPasswordButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToLanding", sender: sender)
    }
}

