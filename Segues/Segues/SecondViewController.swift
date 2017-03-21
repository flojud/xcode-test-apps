//
//  SecondViewController.swift
//  Segues
//
//  Created by Florian Jud on 20.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var userName = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Beim Start soll immer die userName Variable befüllt werden
        nameLabel.text = "Your name is \(userName)"
        
    }
    
    //Zurück Button
    @IBAction func backButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
