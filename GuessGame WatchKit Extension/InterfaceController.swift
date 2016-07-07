//
//  InterfaceController.swift
//  GuessGame WatchKit Extension
//
//  Created by Admin on 07.07.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var guessSlider:WKInterfaceSlider!
    @IBOutlet var guessLabel:WKInterfaceLabel!
    @IBOutlet var resultLabel:WKInterfaceLabel!

    var guessNumber = 3 

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func updateGuess(value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("Your guess: \(guessNumber)")
    }

   
    @IBAction func startGuess() {
        var randomNumber = Int(arc4random_uniform(6))
        
        if(guessNumber == randomNumber) {
            resultLabel.setText("Correct. You win!")
            resultLabel.setTextColor(UIColor.greenColor())
            
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
            resultLabel.setTextColor(UIColor.redColor())
        }
    }
}
