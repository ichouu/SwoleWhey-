//
//  MasterViewController.swift
//  SwoleWhey
//
//  Created by Eric Chou on 1/27/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import Foundation

import UIKit


class MasterViewController: UITableViewController {
    
    let kAuthorizeHealthKitSection = 2
    let kProfileSegueIdentifier = "profileSegue"
    let kWorkoutSegueIdentifier = "workoutsSeque"
    let kGameSegueIdentifier = "gameSegue"
    let kSwolefieSegueIdentifier = "swolefieSegue"
    let healthManager:HealthManager = HealthManager()
    
    
    func authorizeHealthKit()
    {
        healthManager.authorizeHealthKit { (authorized,  error) -> Void in
            if authorized {
                print("HealthKit authorization received.")
            }
            else
            {
                print("HealthKit authorization denied!")
                if error != nil {
                    print("\(error)")
                }
            }
        }

    }
    
    
    // MARK: - Segues
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier ==  kProfileSegueIdentifier {
            
            if let profileViewController = segue.destinationViewController as? ProfileViewController {
                profileViewController.healthManager = healthManager
            }
        }
        else if segue.identifier == kWorkoutSegueIdentifier {
            if let workoutViewController = (segue.destinationViewController as! UINavigationController).topViewController as? WorkoutsTableViewController {
                workoutViewController.healthManager = healthManager;
            }
        }
        else if segue.identifier == kGameSegueIdentifier {
            print("flappy bird")
        }
        else if segue.identifier == kSwolefieSegueIdentifier {
            print("swolfie")
        }
    }
    
    // MARK: - TableView Delegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch (indexPath.section, indexPath.row)
        {
        case (kAuthorizeHealthKitSection,0):
            authorizeHealthKit()
        default:
            break
        }
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
    
}
