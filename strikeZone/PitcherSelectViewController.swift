//
//  PitcherSelectViewController.swift
//  strikeZone
//
//  Created by RYAN CHRISTENSEN on 12/25/14.
//  Copyright (c) 2014 RYAN CHRISTENSEN. All rights reserved.
//

import UIKit

class PitcherSelectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
 
    var team = [Team]()
    let pinchRecognizer = UIPinchGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        let pitcher = Team(first: "Ryan")
        self.team = [pitcher]
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as PitcherNameTableViewCell
        var pitcherToDisplay = self.team[indexPath.row]
        cell.textLabel?.text = pitcherToDisplay.name
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.team.count
    }
  
}
