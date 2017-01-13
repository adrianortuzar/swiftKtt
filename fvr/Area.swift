//
//  Area.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import Foundation
import UIKit

struct Area {
    let name : String
    let order : Int
    let color : UIColor
}

// create areas
let command = Area.init(name: "Command", order: 3, color: UIColor.yellow)
let science = Area.init(name: "Science", order: 2, color: UIColor.blue)
let engineering = Area.init(name: "Engineering", order: 1, color: UIColor.red)
