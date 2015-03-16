//
//  ViewController.swift
//  Project2
//
//  Created by Byrdann Fox on 3/15/15.
//  Copyright (c) 2015 lycan.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flagButtonOne: UIButton!
    
    @IBOutlet weak var flagButtonTwo: UIButton!
    
    @IBOutlet weak var flagButtonThree: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        flagButtonOne.layer.borderWidth = 1
        flagButtonTwo.layer.borderWidth = 1
        flagButtonThree.layer.borderWidth = 1
        
        // for ref...
        // flagButtonOne.layer.borderColor = UIColor(red: 0.5, green: 1, blue: 0.25, alpha: 1).CGColor
        
        flagButtonOne.layer.borderColor = UIColor.lightGrayColor().CGColor
        flagButtonTwo.layer.borderColor = UIColor.lightGrayColor().CGColor
        flagButtonThree.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        askQuestion()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        
        countries.shuffle()
        
        // UIImage(named: String) // auto mapping to the assets catalogs' images by name...
        flagButtonOne.setImage(UIImage(named: countries[0]), forState: .Normal)
        flagButtonTwo.setImage(UIImage(named: countries[1]), forState: .Normal)
        flagButtonThree.setImage(UIImage(named: countries[2]), forState: .Normal)
    
        // random number between 0 and 2
        correctAnswer = Int(arc4random_uniform(3))
        title = countries[correctAnswer].uppercaseString
        
    }
    
    @IBAction func flagButtonPressed(sender: UIButton) {
        
        var messageTitle: String
        // both numbers...
        if sender.tag == correctAnswer {
            messageTitle = "Correct"
            ++score
        } else {
            messageTitle = "Incorrect"
            --score
        }
        
        let messageText = "Your score is \(score)"
        let ac = UIAlertController(title: messageTitle, message: messageText, preferredStyle: .Alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .Default, handler: askQuestion))
        presentViewController(ac, animated: true, completion: nil)
        
    }

}