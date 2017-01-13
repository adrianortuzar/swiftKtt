//
//  ViewController.swift
//  fvr
//
//  Created by Adrian Ortuzar on 23/12/2016.
//  Copyright © 2016 Adrian Ortuzar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let reuseIdentifier : String = "cell"
    
    var crewMembers : [CrewMember] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // register cell
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: self.reuseIdentifier)
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: self.reuseIdentifier)
        
        
        // create data
        self.crewMembers = {
            
            var crewMembers = [CrewMember]()
            
            for index in 0...460 {
                let race : Race = {
                    let random = Int(arc4random_uniform(3))
                    
                    switch random {
                    case 1:
                        return human
                    case 2:
                        return Vulcan
                    case 0:
                        return betazoid
                    default:
                        return human
                    }
                }()
                
                let area : Area = {
                    let random = Int(arc4random_uniform(3))
                    
                    switch random {
                    case 1:
                        return command
                    case 2:
                        return engineering
                    case 0:
                        return science
                    default:
                        return command
                    }
                }()
                
                
                crewMembers.append(CrewMember.init(id: index, race: race, area: area))
                
            }
            
            return crewMembers
        }()
        
        crewMembers.sort {
            $0.area.order * $0.multiplier > $1.area.order * $1.multiplier
        }
        
        print("")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return self.crewMembers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as! TableViewCell
        
        // Configure the cell...
        var crewMember : CrewMember = self.crewMembers[indexPath.row]
        
        crewMember.multiplier = 5
        
        cell.id.text = String(crewMember.id)
        cell.area.text = crewMember.area.name
        cell.race.text = crewMember.race.name
        cell.raceMultiplier.text = String(crewMember.multiplier * crewMember.area.order)
        
        cell.positionColor.backgroundColor = crewMember.area.color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 87.0
    }
}

