//
//  TableViewController.swift
//  Ind03_Wasserott_Rebecca
//
//  Created by Rebecca Wasserott on 3/2/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let myDataSource: [(String, String, String, String, String)] =
        [
        (State: "Alabama", Nickname: "Yellowhammer State", Miles: "50,744", Flag: "Alabama-Flag-227x151", Map: "Alabama-Outline-Map-115x171"),
        
        (State: "Alaska", Nickname: "The Last Frontier", Miles: "571,951", Flag: "Alaska-Flag-226x160", Map: "Alaska-Outline-Map-115x67"),
        
        (State: "Arizona", Nickname: "The Grand Canyon State", Miles: "113,635", Flag:"Arizona-Flag-227x151", Map: "Arizona-Outline-Map-115x130"),
        
        (State: "Arkansas", Nickname: "The Natural State", Miles: "52,068", Flag:"Arkansas-Flag-227x151", Map: "Arkansas-Outline-Map-115x103"),
        
        (State: "California", Nickname: "The Golden State", Miles: "155,959", Flag:"California-Flag-227x151", Map: "California-Outline-Map-115x110"),
        
        (State: "Colorado", Nickname: "The Centennial State", Miles: "103,718", Flag:"Colorado-Flag-227x151", Map: "Colorado-Outline-Map-300x235"),
        
        (State: "Connecticut", Nickname: "The Constitution State", Miles: "4,845", Flag:"Connecticut-Flag-207x160", Map: "Connecticut-Outline-Map-115x86"),
        
        (State: "Delaware", Nickname: "The First State", Miles: "1,954", Flag:"Delaware-Flag-227x151", Map: "Delaware-Outline-Map-115x145"),
        
        (State: "Florida", Nickname: "The Sunshine State", Miles: "53,927", Flag:"Florida-Flag-227x151", Map: "Florida-Outline-Map-115x103"),
        
        (State: "Georgia", Nickname: "The Peach State", Miles: "57,906", Flag:"Georgia-Flag-226x141", Map: "Georgia-Outline-Map-115x131"),
        
        (State: "Hawaii", Nickname: "The Aloha State", Miles: "6,423", Flag:"Hawaii-Flag-250x125", Map: "Hawaii-Outline-Map-115x74"),
        
        (State: "Idaho", Nickname: "The Gem State", Miles: "82,747", Flag:"Idaho-Flag-203x160", Map: "Idaho-Outline-Map-115x156"),
        
        (State: "Illinois", Nickname: "Prairie State", Miles: "55,584", Flag:"Illinois-Flag-288px", Map: "Illinois-Outline-Map-115x182"),
        
        (State: "Indiana", Nickname: "The Hoosier State", Miles: "35,867", Flag:"Indiana-Flag-227x151", Map: "Indiana-Outline-Map-115x158"),
        
        (State: "Iowa", Nickname: "The Hawkeye State", Miles: "55,869", Flag:"Iowa-Flag-227x155", Map: "Iowa-Outline-Map-115x79"),
        
        (State: "Kansas", Nickname: "The Sunflower State", Miles: "81,815", Flag:"Kansas-Flag-226x136", Map: "Kansas-Outline-Map-115x66"),
        
        (State: "Kenucky", Nickname: "The Bluegrass State", Miles: "39,728", Flag:"Kentucky-Flag-250x132", Map: "Kentucky-Outline-Map-115x57"),
        
        (State: "Louisiana", Nickname: "The Pelican State", Miles: "43,562", Flag:"Louisiana-State-Flag", Map: "Louisiana-Outline-Map"),
        
        (State: "Maine", Nickname: "The Pine Tree State", Miles: "30,862", Flag:"Maine-Flag-227x151", Map: "Maine-Outline-Map-115x162"),
        
        (State: "Maryland", Nickname: "The Old Line State", Miles: "9,774", Flag:"Maryland-Flag-227x151", Map: "Maryland-Outline-Map-115x67"),
        
        (State: "Massachusetts", Nickname: "The Bay State", Miles: "7,840", Flag:"Massachusetts-Flag-shadow", Map: "Massachusetts-Outline-Map-115x73"),
        
        (State: "Michigan", Nickname: "The Great Lakes State", Miles: "56,804", Flag:"Michigan-Flag-227x151", Map: "Michigan-Outline-Map-115x120"),
        
        (State: "Minnesota", Nickname: "The North Star State", Miles: "79,610", Flag:"Minnesota-Flag-227x144", Map: "Minnesota-Outline-Map-115x127"),
        
        (State: "Mississippi", Nickname: "The Magnolia State", Miles: "46,907", Flag:"Mississippi-Flag-227x151", Map: "Mississippi-Outline-Map-115x178"),
        
        (State: "Missouri", Nickname: "The Show Me State", Miles: "68,886", Flag:"Missouri-Flag-227x132", Map: "Missouri-Outline-Map-115x102"),
        
        (State: "Montana", Nickname: "The Treasure State", Miles: "145,552", Flag:"Montana-Flag-227x151", Map: "Montana-Outline-Map-115x70"),
        
        (State: "Nebraska", Nickname: "The Cornhusker State", Miles: "76,872", Flag:"Nebraska-Flag-226x136", Map: "Nebraska-Outline-Map-115x58"),
        
        (State: "Nevada", Nickname: "The Silver State", Miles: "109,826", Flag:"Nevada-Flag-227x151", Map: "Nevada-Outline-Map-115x161"),
        
        (State: "New Hampshire", Nickname: "The Granite State", Miles: "8,968", Flag:"New-Hampshire-Flag-227x151", Map: "New-Hampshire-Outline-Map-115x209"),
        
        (State: "New Jersey", Nickname: "The Garden State", Miles: "7,417", Flag:"New Jersey-Flag-227x151", Map: "New-Jersey-Outline-Map-115x191"),
        
        (State: "New Mexico", Nickname: "The Land of Enchantment", Miles: "121,356", Flag:"New-Mexico-Flag-227x151", Map: "New-Mexico-Outline-Map-115x117"),
        
        (State: "New York", Nickname: "The Empire State", Miles: "47,214", Flag:"New-York-State-Flag-250x125", Map: "New-York-Outline-Map-115x92"),
        
        (State: "North Carolina", Nickname: "The Tar Heel State", Miles: "48,711", Flag:"North-Carolina-Flag-227x151", Map: "North-Carolina-Outline-Map-115x53"),
        
        (State: "North Dakota", Nickname: "The Peace Garden State", Miles: "68,976", Flag:"North-Dakota-Flag-204x160", Map: "North-Dakota-Outline-Map-115x73"),
        
        (State: "Ohio", Nickname: "The Buckeye State", Miles: "40,948", Flag:"Ohio-Flag-227x139", Map: "Ohio-Outline-Map-115x119"),
        
        (State: "Oklahoma", Nickname: "The Sooner State", Miles: "68,667", Flag:"Oklahoma-Flag-227x151", Map: "Oklahoma-Outline-Map-115x67"),
        
        (State: "Oregon", Nickname: "The Beaver State", Miles: "95,997", Flag:"Oregon-Flag-226x136", Map: "Oregon-Outline-Map-115x92"),
        
        (State: "Pennsylvania", Nickname: "The Keystone State", Miles: "44,817", Flag:"Pennsylvania-Flag-227x151", Map: "Pennsylvania-Outline-Map-115x73"),
        
        (State: "Rhode Island", Nickname: "The Ocean State", Miles: "1,045", Flag:"Rhode-Island-Flag-171x160", Map: "Rhode-Island-Outline-Map-115x162"),
        
        (State: "South Carolina", Nickname: "The Palmetto State", Miles: "30,109", Flag:"South-Carolina-Flag-227x151", Map: "South-Carolina-Outline-Map-115x96"),
        
        (State: "South Dakota", Nickname: "Mount Rushmore State", Miles: "75,885", Flag:"South-Dakota-Flag-226x141", Map: "South-Dakota-Outline-Map-115x77"),
        
        (State: "Tennessee", Nickname: "The Volunteer State", Miles: "41,217", Flag:"Tennessee-Flag-226x136", Map: "Tennessee-Outline-Map-115x44"),
        
        (State: "Texas", Nickname: "The Lone Star State", Miles: "261,797", Flag:"Texas-Flag-227x151", Map: "Texas-Outline-Map-115x109"),
        
        (State: "Utah", Nickname: "The Beehive State", Miles: "82,144", Flag:"Utah-Flag-226x136", Map: "Utah-Outline-Map-115x136"),
        
        (State: "Vermont", Nickname: "The Green Mountain State", Miles: "9,250", Flag:"Vermont-Flag-226x136", Map: "Vermont-Outline-Map-115x167"),
        
        (State: "Virginia", Nickname: "The Old Dominion State", Miles: "39,594", Flag:"Virginia-Flag-227x155", Map: "Virginia-Outline-Map-115x58"),
        
        (State: "Washington", Nickname: "The Evergreen State", Miles: "66,544", Flag:"Washington-State-Flag-227x134", Map: "Washington-Outline-Map-115x80"),
        
        (State: "West Virginia", Nickname: "The Mountain State", Miles: "24,078", Flag:"West-Virginia-Flag-250x132", Map: "West-Virginia-Outline-Map-115x105"),
        
        (State: "Wisconsin", Nickname: "The Badger State", Miles: "54,310", Flag:"Wisconsin-Flag-227x151", Map: "Wisconsin-Outline-Map-115x119"),
        
        (State: "Wyoming", Nickname: "The Equality or Cowboy State", Miles: "97,100", Flag:"Wyoming-Flag-227x151", Map: "Wyoming-Outline-Map-115x94")
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
        let cellData: (State: String, Nickname: String, String, String, String) = myDataSource[indexPath[1]]

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second = segue.destination as! Second_ViewController
        
        let selectedRowIndexPath = self.tableView.indexPathForSelectedRow
        
        //name
        second.state = myDataSource[selectedRowIndexPath![1]].0
        
        //miles
        second.miles = myDataSource[selectedRowIndexPath![1]].2
        
        //flag
        second.flag = myDataSource[selectedRowIndexPath![1]].3
        
        //map
        second.map = myDataSource[selectedRowIndexPath![1]].4
    }

}
