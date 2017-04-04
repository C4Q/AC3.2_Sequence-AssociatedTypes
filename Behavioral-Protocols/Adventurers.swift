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
//  init(playerName: String, characterName: String)
  func specialSkill() -> Spell
}

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
  
  required init(){ }
  
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
