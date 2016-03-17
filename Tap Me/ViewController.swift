//
//  ViewController.swift
//  Tap Me
//
//  Created by Randall Mardus on 3/17/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        count++
        scoreLabel.text = "Score \n\(count)"
    }
    


}

