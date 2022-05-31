//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        count = count + 1;
        if (count.isMultiple(of: 2)) {
            diceImageView1.image = #imageLiteral(resourceName: "DiceSix");
            diceImageView2.image = #imageLiteral(resourceName: "DiceTwo");
        } else {
            diceImageView1.image = #imageLiteral(resourceName: "DiceOne");
            diceImageView2.image = #imageLiteral(resourceName: "DiceOne");
        }
    }
}

