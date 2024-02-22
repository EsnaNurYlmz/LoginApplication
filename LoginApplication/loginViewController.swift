//
//  loginViewController.swift
//  LoginApplication
//
//  Created by Esna nur Yılmaz on 22.02.2024.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
     
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let usN = d.string(forKey: "userName") ?? "No Name"
        label.text = usN
        
    }
    

    @IBAction func logOut(_ sender: Any) {
        
        d.removeObject(forKey: "userName")
        d.removeObject(forKey: "password")
         exit(-1)
    }
    
}
