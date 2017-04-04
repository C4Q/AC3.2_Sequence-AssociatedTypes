//
//  Spells.swift
//  Behavioral-Protocols
//
//  Created by Louis Tur on 4/4/17.
//  Copyright © 2017 Access Code. All rights reserved.
//

import Foundation

protocol Spell {
  var spellName: String { get }
  var baseDamage: Int { get }
}

struct Fireball: Spell {
  var spellName: String = "Fireball"
  var baseDamage: Int = 10
}
