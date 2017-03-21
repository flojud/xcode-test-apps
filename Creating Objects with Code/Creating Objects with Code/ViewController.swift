//
//  ViewController.swift
//  Creating Objects with Code
//
//  Created by Florian Jud on 19.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "My coding Label!"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.1, y: height * 0.2 , width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        
        
        
        myButton.frame =  CGRect(x: width * 0.2, y: height * 0.5 , width: width * 0.6, height: 50)
        myButton.setTitle("my Coding Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControlEvents.touchUpInside)
        
    }
    
    func myAction(){
        print("You have clicked my Button")
        self.myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
    
    }



}

