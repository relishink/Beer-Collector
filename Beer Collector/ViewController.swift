//
//  ViewController.swift
//  Beer Collector
//
//  Created by David Roddy on 12/26/16.
//  Copyright © 2016 David Roddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var games : [Game] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            do {
                games = try context.fetch(Game.fetchRequest())
                print(games)
            } catch  {
                
            }

    }
}

 
