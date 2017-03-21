//
//  ViewController.swift
//  Working with Images
//
//  Created by Florian Jud on 21.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var imageView: UIImageView!
    var myInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func changeButtonClicked(_ sender: Any) {
        
        if myInteger == 0 {
            imageView.image = UIImage(named: "james.jpg")
            myInteger = myInteger + 1
        } else{
            imageView.image = UIImage(named: "kirk.jpeg")
            myInteger = 0
        }
        
        
        
        
    }

}

