//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Nicholas Ellis on 11/29/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

   
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        // Configure the cell...
        let ourPlanet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = ourPlanet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.image = UIImage(named: ourPlanet.imageName)
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toPlanetDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let passPlanet = PlanetController.planets[indexPath.row]
                
                if let planetDetailViewController = segue.destination as? PlanetDetailViewController{
                    
                    planetDetailViewController.planet = passPlanet
                }
            }
        }
        
        
    }
    

}
