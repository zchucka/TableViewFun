//
//  ViewController.swift
//  TableViewFun
//
//  Created by Chucka, Zachary Tyler on 10/16/18.
//  Copyright © 2018 Chucka, Zachary Tyler. All rights reserved.
//

// MARK: - Table Views
// a UITableView is a scrollable single column of cells
// each cell represents a row
// rows can be grouped into sections
// we will only have one section to start with

// 2 different ways to setup a VC with a table view
// 1. add a table view to your view controller scene
// manually register your view controller as the table view's delegate and data source
// this approach allows you to add other views to your scene, not just a single table view
// 2. use a UITableViewController, which abstracts a lot of the management for you
// you can only have a table view as the root view for your view controller scene
// we'll do option 1 cause ADS did 2


import UIKit

class DogTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dogs: [dog] = []
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeDogs()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func initializeDogs() {
        let dog1 = dog(name: "Jax", breed: "Decker Terrier", aveWeight: 25, rating: 10)
        let dog2 = dog(name: "Milo", breed: "Mutt", aveWeight: 20, rating: 10)
        let dog3 = dog(name: "Choco", breed: "Chiuaua", aveWeight: 12, rating: 10)
        
        dogs = [dog1, dog2, dog3]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return dogs.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DogCell", for: indexPath)
        let dogCell = cell as! DogTableViewCell
        let dog = dogs[indexPath.row]
        dogCell.update(with: dog)
        return dogCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // finish this so that the segue will work
    }
}

