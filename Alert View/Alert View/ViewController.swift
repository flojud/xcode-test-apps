//
//  ViewController.swift
//  Alert View
//
//  Created by Florian Jud on 21.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func alertButtonClicked(_ sender: Any) {
        
        if userNameText.text == ""{
            simpleAlert(titleInput: "Error", messageInput: "Please provide a username!")
        }else if passwordText.text == "" {
            simpleAlert(titleInput: "Error", messageInput: "Please provide a password!")
        }else if passwordText.text != passwordAgainText.text {
            simpleAlert(titleInput: "Error", messageInput: "Please provide matching password!")
        }else{
            simpleAlert(titleInput: "Succes", messageInput: "Username: \(userNameText.text!) is created")
        }
        
    }

    
    func simpleAlert(titleInput: String, messageInput: String ){
        //Alert Controller initialisieren
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertControllerStyle.alert)
        //Alert Button initialisieren
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
        //Button zu alert Controller hinzufügren
        alert.addAction(okButton)
        //Alert ausführen
        self.present(alert, animated: true, completion: nil)
    }
}

