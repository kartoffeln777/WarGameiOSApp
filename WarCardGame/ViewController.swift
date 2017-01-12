//
//  ViewController.swift
//  WarCardGame
//
//  Created by Sydnee  Spruiell on 1/9/17.
//  Copyright © 2017 Eric Eldridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    let cardNames = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        
        //Randomize left number from 0-12
        let leftNumber = Int(arc4random_uniform(13))
        
        //Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])

        //Randomize right number from 0-12
        let rightNumber = Int(arc4random_uniform(13))
        
        //Set the right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare the card numbers
        if leftNumber > rightNumber {
            //Left card wins
            leftScore += 1
            
            //Update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            //Tie
        }
        else {
            //Right card wins
            rightScore += 1
            
            //Update the label
            rightScoreLabel.text = String(rightScore)
        }
        
    }


}

