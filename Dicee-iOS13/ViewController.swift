//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped");
        
//        let leftDiceNumber = Int.random(in: 0 ... 5);
//        let rightDiceNumber = Int.random(in: 0 ... 5);
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),
                      UIImage(imageLiteralResourceName: "DiceFour"),
                      UIImage(imageLiteralResourceName: "DiceFive"),
                      UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()
    
        diceImageView2.image = diceArray.randomElement()
    }
    
}

