//
//  TableViewController.swift
//  Ind03_Wasserott_Rebecca
//
//  Created by Rebecca Wasserott on 3/2/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let myDataSource: [(String, String)] =
        [
        (State: "Alabama", Nickname: "Yellowhammer State"),
        (State: "Alaska", Nickname: "The Last Frontier"),
        (State: "Arizona", Nickname: "The Grand Canyon State"),
        (State: "Arkansas", Nickname: "The Natural State"),
        (State: "California", Nickname: "The Golden State"),
        (State: "Colorado", Nickname: "The Centennial State"),
        (State: "Connecticut", Nickname: "The Constitution State"),
        (State: "Delaware", Nickname: "The First State"),
        (State: "Florida", Nickname: "The Sunshine State"),
        (State: "Georgia", Nickname: "The Peach State"),
        (State: "Hawaii", Nickname: "The Aloha State"),
        (State: "Idaho", Nickname: "The Gem State"),
        (State: "Illinois", Nickname: "Prairie State"),
        (State: "Indiana", Nickname: "The Hoosier State"),
        (State: "Iowa", Nickname: "The Hawkeye State"),
        (State: "Kansas", Nickname: "The Sunflower State"),
        (State: "Kenucky", Nickname: "The Bluegrass State"),
        (State: "Louisiana", Nickname: "The Pelican State"),
        (State: "Maine", Nickname: "The Pine Tree State"),
        (State: "Maryland", Nickname: "The Old Line State"),
        (State: "Massachusetts", Nickname: "The Bay State"),
        (State: "Michigan", Nickname: "The Great Lakes State"),
        (State: "Minnesota", Nickname: "The North Star State"),
        (State: "Mississippi", Nickname: "The Magnolia State"),
        (State: "Missouri", Nickname: "The Show Me State"),
        (State: "Montana", Nickname: "The Treasure State"),
        (State: "Nebraska", Nickname: "The Cornhusker State"),
        (State: "Nevada", Nickname: "The Silver State"),
        (State: "New Hampshire", Nickname: "The Granite State"),
        (State: "New Jersey", Nickname: "The Garden State"),
        (State: "New Mexico", Nickname: "The Land of Enchantment"),
        (State: "New York", Nickname: "The Empire State"),
        (State: "North Carolina", Nickname: "The Tar Heel State"),
        (State: "North Dakota", Nickname: "The Peace Garden State"),
        (State: "Ohio", Nickname: "The Buckeye State"),
        (State: "Oklahoma", Nickname: "The Sooner State"),
        (State: "Oregon", Nickname: "The Beaver State"),
        (State: "Pennsylvania", Nickname: "The Keystone State"),
        (State: "Rhode Island", Nickname: "The Ocean State"),
        (State: "South Carolina", Nickname: "The Palmetto State"),
        (State: "South Dakota", Nickname: "Mount Rushmore State"),
        (State: "Tennessee", Nickname: "The Volunteer State"),
        (State: "Texas", Nickname: "The Lone Star State"),
        (State: "Utah", Nickname: "The Beehive State"),
        (State: "Vermont", Nickname: "The Green Mountain State"),
        (State: "Virginia", Nickname: "The Old Dominion State"),
        (State: "Washington", Nickname: "The Evergreen State"),
        (State: "West Virginia", Nickname: "The Mountain State"),
        (State: "Wisconsin", Nickname: "The Badger State"),
        (State: "Wyoming", Nickname: "The Equality or Cowboy State")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myDataSource.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "My Table Cell", for: indexPath)
        
        //Get data for the cell from the array
        let cellData: (State: String, Nickname: String) = myDataSource[indexPath[1]]

        // Configure the cell...
        cell.textLabel?.text = cellData.State
        cell.detailTextLabel?.text = (cellData.Nickname)
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
