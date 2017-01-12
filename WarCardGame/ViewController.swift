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
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        print("Deal tapped")
        
        leftImageView.image = UIImage(named: "card10")
        rightImageView.image = UIImage(named: "jack")
    }


}

