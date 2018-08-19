//
//  ViewController.swift
//  Clase5Mod2
//
//  Created by alumno on 8/17/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var latitude: UILabel!
    
    var locationManager: CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoreLocation()
        
        let button = UIButton(type: .system)
        
        button.setTitle(NSLocalizedString("name.title", comment: ""), for: .normal)
        
        title = NSLocalizedString("name.title", comment: "") //"Este es título"
    }
    
    func setupCoreLocation() {

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 100
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func operacion() {
        
        if (CLLocationManager.authorizationStatus() == .authorizedAlways || CLLocationManager.authorizationStatus() == .authorizedWhenInUse) && CLLocationManager.locationServicesEnabled() {
            
            print("hacer tareas")
            
        }

    }

}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.last else { return }
        
        let coordinate = location.coordinate
        
        latitude.text = "\(coordinate.latitude)"
        longitudeLabel.text = "\(coordinate.longitude)"

        locationManager.stopUpdatingLocation()
        //print(locations)
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print(status.rawValue)
    }
    
}

