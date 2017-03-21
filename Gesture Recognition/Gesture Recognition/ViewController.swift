//
//  ViewController.swift
//  Gesture Recognition
//
//  Created by Florian Jud on 21.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myInteger = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Bild Gestensteuereung Aktivierung
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePicture))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    func changePicture(){
        if myInteger == 0 {
            imageView.image = UIImage(named: "kirk.jpg")
            nameLabel.text = "Kirk Hemmett"
            myInteger += 1
        }else{
            imageView.image = UIImage(named: "james.jpg")
            nameLabel.text = "James Hetfield"
            myInteger = 0
        }
    }

}

