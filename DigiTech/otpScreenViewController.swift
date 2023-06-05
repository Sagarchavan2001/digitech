//
//  otpScreenViewController.swift
//  DigiTech
//
//  Created by STC on 02/06/23.
//

import UIKit

class otpScreenViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    
    @IBOutlet weak var textField3: UITextField!
    
    
    @IBOutlet weak var textField4: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier:"DashBoardTabBar") as! UITabBarController
        navigationController?.pushViewController(nav, animated: true)
       
    }
    
}
