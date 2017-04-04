//
//  ViewController.swift
//  Behavioral-Protocols
//
//  Created by Louis Tur on 4/4/17.
//  Copyright © 2017 Access Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let rogue = Rogue(playerName: "Louis", characterName: "Sneaky")
    print(rogue)
    
    let mageParty = [Mage(playerName: "Louis", characterName: "Meowser the Mage"),
                     Mage(playerName: "Marcel", characterName: "Marcel the Red"),
                     Mage(playerName: "Liam", characterName: "Liam the Grey"),
                     Mage(playerName: "Gabe", characterName: "Gabe the Redder/Greyer"),
                     Mage(playerName: "Eric", characterName: "Eric the Tardy TrollMage")]
  
    let adventureParty = AdventureParty(party: mageParty)
    
    // pretty neat, we get a free EnumeratedSequence (the .enumerated part)
    // this is the goal
    for (pos, mage) in adventureParty.enumerated() {
      print(pos, mage)
    }

    // This will not reprint for a struct
    // But it will for a class. Excellent Eric the Tardy!
    //    for mage in adventureParty {
    //      print("Lets try it again", mage)
    //    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

