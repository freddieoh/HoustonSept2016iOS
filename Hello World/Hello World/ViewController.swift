//
//  ViewController.swift
//  Hello World
//
//  Created by Fredrick Ohen on 10/26/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIImageView!
   
    @IBOutlet weak var titleView: UIImageView!
    
    @IBOutlet weak var welcomeButton: UIButton!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func welcomeButtonPressed(_ sender: AnyObject) {
    
        titleView.isHidden = false
        backgroundView.isHidden = false
        welcomeButton.isHidden = true

    }

}

