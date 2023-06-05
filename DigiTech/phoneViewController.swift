//
//  phoneViewController.swift
//  DigiTech
//
//  Created by STC on 02/06/23.
//

import UIKit
import AVFoundation


class phoneViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func textFieldShouldReturn(_ textField : UITextField) -> Bool{
        textField.resignFirstResponder()
        if let text = textField.text,!text.isEmpty{
            let number = "+91\(text)"
            authManager.shared.startAuth(phoneNumber: number){
                [weak self] success in
                guard success else{
                    return
                }
                DispatchQueue.main.async {
                    let vc = otpScreenViewController()
                    self?.navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
        return true
    }
    
    
   

    @IBAction func sendOtpButton(_ sender: Any) {
        
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "otpScreenViewController") as! otpScreenViewController
        navigationController?.pushViewController(nav, animated: true)
        
    }
    
}




