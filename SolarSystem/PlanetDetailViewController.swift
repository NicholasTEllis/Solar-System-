//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Nicholas Ellis on 11/29/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var diameterLabel: UILabel!
    
    @IBOutlet weak var dayLengthLabel: UILabel!

    @IBOutlet weak var distanceLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let planet = planet {
            updateWithPlanet(planet: planet)
        }
        updateWithPlanet(planet: PlanetController.planets[5])
        // Do any additional setup after loading the view.
    }

    
    func updateWithPlanet(planet: Planet) {
        planetImage.image = UIImage(named: planet.imageName)
        diameterLabel.text = "Diameter: \(planet.diameter)"
        dayLengthLabel.text = "Day Length: \(planet.dayLength)"
        distanceLabel.text = "Distance From Sun: \(planet.millionKMsFromSun)"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
