//
//  CrewMember.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import Foundation

struct CrewMember {
    
    let id : Int
    let race : Race
    let area : Area
    var multiplier : Int {
        get {
            
            switch self.area.areaType {
            case self.race.areasMultiplier.0:
                return 3
            case self.race.areasMultiplier.1:
                return 2
            case self.race.areasMultiplier.2:
                return 1
            default:
                return 0
            }
        }
        set {}
    }
    
    var valueIndex : Int {
        get {
            return self.multiplier * self.area.order
        }
        set {}
    }
    
    init(id:Int, race: Race, area: Area) {
        self.id = id
        self.race = race
        self.area = area
    }
}
