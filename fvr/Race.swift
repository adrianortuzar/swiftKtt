//
//  Race.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import Foundation


struct Race {
    let name : String?
    let areas : (Area, Area, Area)
}

let human : Race = Race.init(name: "Human", areas: (command, engineering, science))

let betazoid : Race = Race.init(name: "Betazoid", areas: (engineering, command, science))

let Vulcan : Race = Race.init(name: "Vulcan", areas: (science, engineering, command))
