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
    
    var seconds = 0
    var timer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        setupGame()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg_tile.png")!)
        scoreLabel.backgroundColor = UIColor(patternImage: UIImage(named: "field_score.png")!)
        timerLabel.backgroundColor = UIColor(patternImage: UIImage(named: "field_time.png")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupGame() {
        seconds = 30
        count = 0
        
        timerLabel.text = "Time: \(seconds)"
        scoreLabel.text = "Score: \(count)"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtractTime"), userInfo: nil, repeats: true)
    }
    
    func subtractTime() {
        seconds--
        timerLabel.text = "Time: \(seconds)"
        
        if(seconds == 0) {
            timer.invalidate()
            
            let alert = UIAlertController(title: "Time is up!", message: "You scored \(count) points", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {
                action in self.setupGame()
            }))
            
        presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        count++
        scoreLabel.text = "Score \n\(count)"
    }
    


}

