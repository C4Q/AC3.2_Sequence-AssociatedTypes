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
  var spellName: String = "🔥"
  var baseDamage: Int = 10
}

struct PickPocket: Spell {
  var spellName: String = "💸"
  var baseDamage: Int = 0
}

struct TimeFreeze: Spell {
  var spellName: String = "⏳"
  var baseDamage: Int = 2
}
