//
//  ViewController.swift
//  Birthday Note Taker
//
//  Created by Florian Jud on 20.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var storedNameLabel: UILabel!
    @IBOutlet weak var storedDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Wert aus der internen Datenbank holen
        let storedName = UserDefaults.standard.object(forKey: "name")
        //Prüfen ob der Typ aus der DB auch ein String ist
        if let newName = storedName as? String {
            //String dem Label zuweisen
            storedNameLabel.text = "Stored Name: \(newName)"
        }
        
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if let newBirthday = storedBirthday as? String {
            storedDateLabel.text = "Stored Name: \(newBirthday)"
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        
        //Werte aus dem Text Feld in der Datenbank speichern
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(birthdayText.text, forKey: "birthday")
        //Gespeicherte werte übertragen
        UserDefaults.standard.synchronize()
        
        //Werte aus dem Text Feld in die Labels speichern
        storedNameLabel.text = "Stored Name: \(nameText.text!)"
        storedDateLabel.text = "Stored Date: \(birthdayText.text!)"
        
        
        
    }
    @IBAction func deleteButton(_ sender: Any) {
        
        //Wert aus der internen Datenbank holen
        let storedName = UserDefaults.standard.object(forKey: "name")
        //Prüfen ob der Typ aus der DB auch ein String ist. Der Unterstich, statt einer Variable, spart memory.
        if let _ = storedName as? String {
            //String aus der internen DB löschen
            UserDefaults.standard.removeObject(forKey: "name")
            UserDefaults.standard.synchronize()
            storedNameLabel.text = "Stored Name: "
        }
        
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if let _ = storedBirthday as? String {
            UserDefaults.standard.removeObject(forKey: "birthday")
            UserDefaults.standard.synchronize()
            storedDateLabel.text = "Stored Date: "
        }
        
    }

}

