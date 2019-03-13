//
//  ViewController.swift
//  snakeListTableViewBrianW
//
//  Created by Brian Wawczak on 3/13/19.
//  Copyright © 2019 Brian Wawczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let cellID = "CellID"
    @IBOutlet var tableView:UITableView!
    
    let snakes = [
        ["Name" : "Latte", "Genes" : "GHI YB Spinner"],
        ["Name" : "Ivy", "Genes" : "Super YB Pastel Fire"],
        ["Name" : "Daisy", "Genes" : "Pastel YB"],
        ["Name" : "Lissie", "Genes" : "Pastel Phantom Leopard"],
        ["Name" : "Max", "Genes" : "Het Albino"],
        ["Name" : "Cappuccino", "Genes" : "Enchi Mojave"],
        ["Name" : "Zoe", "Genes" : "Pastel YB Banana"],
        ["Name" : "Macchiato", "Genes" : "Lesser"],
        ["Name" : "Espresso", "Genes" : "Pastel GHI Mojave"],
        ["Name" : "Misty", "Genes" : "Mystic Mojave"],
        ["Name" : "Cersei", "Genes" : "Black Pewter"],
        ["Name" : "Sunshine", "Genes" : "Albino"],
        ["Name" : "Unnamed", "Genes" : "YB Enchi Banana"]
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(CustomCellTableViewCell.self, forCellReuseIdentifier: cellID)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return snakes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        as! CustomCellTableViewCell
        
        let rows = snakes[indexPath.row]
        cell.name = rows["Name"]!
        cell.genes = rows["Genes"]!
        
        return cell
    }

}

