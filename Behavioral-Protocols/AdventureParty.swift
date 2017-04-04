//
//  AdventureParty.swift
//  Behavioral-Protocols
//
//  Created by Louis Tur on 4/4/17.
//  Copyright © 2017 Access Code. All rights reserved.
//

import Foundation

class AdventureParty: Sequence, IteratorProtocol {
  private var party: [Mage]
  var currentPos = 0
  
  init(party: [Mage]) {
    self.party = party
  }
  
  subscript(position: Int) -> Mage? {
    return party[position]
  }
  
  func next() -> Mage? {
    if currentPos < party.count {
      let returnedMage = party[currentPos]
      currentPos += 1
      return returnedMage
    }
    
    return nil
  }
}
