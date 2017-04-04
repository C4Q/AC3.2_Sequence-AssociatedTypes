//
//  Adventurers.swift
//  Behavioral-Protocols
//
//  Created by Louis Tur on 4/4/17.
//  Copyright © 2017 Access Code. All rights reserved.
//

import Foundation

protocol Adventurer: CustomStringConvertible {
  var playerLevel: Int { get set }
  var playerName: String { get set }
  var characterName: String { get set }
  var description: String { get }
  
  init()
  func specialSkill() -> Spell
}

// It is possible to both define the interface and its default implementation in one go! Neat
extension Adventurer {
  init(playerName: String, characterName: String) {
    self.init()
    self.playerName = playerName
    self.characterName = characterName
  }
}

class Rogue: Adventurer {
  var playerLevel: Int = 1
  var playerName: String = ""
  var characterName: String = ""
  
  var description: String {
    return self.playerName + " The Crafty"
  }
  
  required init(){}
  
  func specialSkill() -> Spell {
    return Fireball()
  }
}


class Mage: Adventurer {
  var playerLevel: Int = 1
  var playerName: String = ""
  var characterName: String = ""
  
  var description: String {
    return "The mighty " + self.characterName
  }
  
  required init() { }
  
  func specialSkill() -> Spell {
    return Fireball()
  }
}

class Wizard: Adventurer {
  var playerName: String = "Eric"
  var playerLevel: Int = 10
  var characterName: String = "Eric the Timely"
  
  var description: String {
    return "Magnanimous " + characterName
  }
  
  required init(){}
  
  func specialSkill() -> Spell {
    return TimeFreeze()
  }
}
