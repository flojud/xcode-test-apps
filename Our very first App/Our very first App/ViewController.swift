//
//  ViewController.swift
//  Our very first App
//
//  Created by Florian Jud on 17.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var labelWalter: UILabel!
    
    @IBOutlet weak var labelJessi: UILabel!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeButton(_ sender: Any) {
        labelWalter.text = "Heisenberg"
        
    }
    
    
}

