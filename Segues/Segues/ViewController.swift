//
//  ViewController.swift
//  Segues
//
//  Created by Florian Jud on 20.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    var name = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Hier wird der Übergang der Segue definiert
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Es soll der zweite VC angepsrochen werden
        if segue.identifier == "fromFirstToSecondSegue" {
            let destinationVC = segue.destination as! SecondViewController
            //zuweisung der variable an die zielvariable im zweiten VC
            destinationVC.userName = name
        }
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        name = nameText.text!
        //Aufruf der Segue Funktion
        performSegue(withIdentifier: "fromFirstToSecondSegue", sender: nil)
    }
}

