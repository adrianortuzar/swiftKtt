//
//  Area.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import Foundation
import UIKit

enum AreaType {
    case command, science, engineering
}

struct Area {
    init(_ areaType: AreaType){
        switch areaType {
        case .command:
            self.name = "Command"
            self.order = 3
            self.color = .yellow
            break
        case .science:
            self.name = "Science"
            self.order = 2
            self.color = .blue
            break
        case .engineering:
            self.name = "Engineering"
            self.order = 1
            self.color = .red
            break
        }
        
        self.areaType = areaType
    }
    let name : String
    let order : Int
    let color : UIColor
    let areaType : AreaType
}
