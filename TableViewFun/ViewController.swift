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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

