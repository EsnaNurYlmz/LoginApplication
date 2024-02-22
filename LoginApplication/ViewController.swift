//
//  ViewController.swift
//  LoginApplication
//
//  Created by Esna nur Yılmaz on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usN = d.string(forKey: "userName") ?? "No Name"
        let pswrd = d.string(forKey: "password") ?? "empty"
        
        if usN != "No Name" && pswrd != "empty" {
            performSegue(withIdentifier: "loginVC" , sender: nil)
        }
        
    }
 

    @IBAction func sign_inClicked(_ sender: Any) {
    
        if let usN = nameTextField.text , let pswrd = passwordTextField.text{
            
            if  usN == "esna nur" && pswrd == "12345" {
                d.set(usN, forKey: "userName")
                d.set(pswrd, forKey: "password")
                performSegue(withIdentifier: "loginVC" , sender: nil)
            }
            else {
                print("Invalid login")
            }
            
        }
        
        
        
        
        
    }
}

