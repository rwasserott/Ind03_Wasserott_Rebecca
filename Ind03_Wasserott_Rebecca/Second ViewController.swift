//
//  Second ViewController.swift
//  Ind03_Wasserott_Rebecca
//
//  Created by Rebecca Wasserott on 3/3/22.
//

import UIKit

class Second_ViewController: UIViewController {
    
    
    @IBOutlet weak var StateFlag: UIImageView!

    @IBOutlet weak var StateName: UILabel!
    
    @IBOutlet weak var StateOutline: UIImageView!
    
    @IBOutlet weak var StateMiles: UILabel!
    
    var state:String = "" //name
    var miles:String = ""
    var flag:String = ""
    var map:String = ""
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        StateName.text = state
        StateMiles.text = miles
        StateFlag.image = UIImage(named: flag)
        StateOutline.image = UIImage(named: map)
        
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
    
    


