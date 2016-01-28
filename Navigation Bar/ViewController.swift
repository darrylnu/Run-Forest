//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Darryl Nunn on 1/23/16.
//  Copyright © 2016 Darryl Nunn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timerAlreadyStarted = false
    
    var time = 0
    
    var timer = NSTimer()
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func restartTimer(sender: AnyObject) {
        
        timer.invalidate()
        
        timerAlreadyStarted = false
        
        time = 0
        
        timerLabel.text = "0"
    }
 
    @IBAction func startTimer(sender: AnyObject) {
        
        if !timerAlreadyStarted {

            timerAlreadyStarted = true
        
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        }
        
        
    }
    
    @IBAction func pauseTImer(sender: AnyObject) {
        
        timer.invalidate()
        
        timerAlreadyStarted = false
    }
    
   
    
    func increaseTimer(){
      
        time++
        
        timerLabel.text = String(time)

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

