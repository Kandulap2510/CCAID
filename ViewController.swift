//
//  ViewController.swift
//  Authorize
//
//  Created by Praneeth Kandula on 6/26/17.
//  Copyright © 2017 Praneeth Kandula. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import KeychainSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidAppear(_ animated: Bool) {
        let keyChain = DataService().keyChain
        if keyChain.get("uid") != nil {
            self.performSegue(withIdentifier: "SignIn", sender: nil)
        }
        
    }
    
    func CompleteSignIn(id: String){
        let keyChain = DataService().keyChain
        keyChain.set(id, forKey: "uid")
    }

    
    

    @IBAction func SignIn(_ sender: Any){
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error == nil{
                    self.performSegue(withIdentifier: "SignIn", sender: nil)
                } else {
                        if error != nil{
                            var myAlert =  UIAlertController(title: "Alert", message: "Incorrect. Please retry.", preferredStyle: UIAlertControllerStyle.alert);
                            
                            let okAction = UIAlertAction(title: "Ok",style: UIAlertActionStyle.default){(Action) in
                                print("Ok button tapped")
                            }
                            myAlert.addAction(okAction);
                            
                            self.present(myAlert, animated: true, completion: nil);
                            
                            
                        }
                    }
                }
            }
        }
    }




