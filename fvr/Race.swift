//
//  Race.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import Foundation

enum RaceType {
    case human, betazoid, vulcan
}

struct Race {
    init(_ raceType: RaceType) {
        switch raceType {
        case RaceType.human:
            
            self.name = "Human"
            self.areasMultiplier = (.command, .engineering, .science)
            
            break
        case RaceType.betazoid:
            
            self.name = "Betazoid"
            self.areasMultiplier = (.engineering, .command, .science)
            
            break
            
        case RaceType.vulcan:
            
            self.name = "Betazoid"
            self.areasMultiplier = (.engineering, .command, .science)
            
            break
        }
    }
    
    let name : String
    let areasMultiplier : (AreaType, AreaType, AreaType)
}


