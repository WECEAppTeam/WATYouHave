//
//  AddItemViewController.swift
//  WAT You Have
//
//  Created by Wesley Olson on 10/29/14.
//  Copyright (c) 2014 WAT. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        println(searchText)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // TableView Data Source Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0: return 1
            default: return 0
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.section {
            case 0:
                let addCell = UITableViewCell(style: .Default, reuseIdentifier: "AddCell")
                addCell.textLabel.text = "Add a new item..."
                return addCell
            default: return UITableViewCell(style: .Default, reuseIdentifier: "ResultCell")
        }
    }
    
    // TableView Delegate Methods
    
    // method called when row is selected
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.section {
        case 0: // add a new item type
            break
        default: // select the item at the row tapped
            break
        }
        
        println("Tap that row \(indexPath.row)")
    }
}
