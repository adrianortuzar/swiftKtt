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
            
            switch self.area.name {
            case self.race.areas.0.name:
                return 3
            case self.race.areas.1.name:
                return 2
            case self.race.areas.2.name:
                return 1
            default:
                return 0
            }
        }
        set {
            
        }
    }
    
    init(id:Int, race: Race, area: Area) {
        self.id = id
        self.race = race
        self.area = area
    }
}
