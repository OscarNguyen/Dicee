//
//  ViewController.swift
//  Dicee
//
//  Created by Minh on 12/8/18.
//  Copyright © 2018 Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
   // var a = 0
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    func updateDiceImages(){
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
      
        updateDiceImages()
        
        
        
       // print(randomDiceIndex1)
        
       /* switch randomDiceIndex1 {
        case 1:
            diceImageView1.image = UIImage(named: "dice2")
        case 2:
            diceImageView1.image = UIImage(named: "dice3")
        case 3:
            diceImageView1.image = UIImage(named: "dice4")
        case 4:
            diceImageView1.image = UIImage(named: "dice5")
        case 5:
            diceImageView1.image = UIImage(named: "dice6")
        default:
            diceImageView1.image = UIImage(named: "dice1")
        }
        
        switch randomDiceIndex2 {
        case 1:
            diceImageView2.image = UIImage(named: "dice2")
        case 2:
            diceImageView2.image = UIImage(named: "dice3")
        case 3:
            diceImageView2.image = UIImage(named: "dice4")
        case 4:
            diceImageView2.image = UIImage(named: "dice5")
        case 5:
            diceImageView2.image = UIImage(named: "dice6")
        default:
            diceImageView2.image = UIImage(named: "dice1")
        }*/
        
        
    }
    
    }



