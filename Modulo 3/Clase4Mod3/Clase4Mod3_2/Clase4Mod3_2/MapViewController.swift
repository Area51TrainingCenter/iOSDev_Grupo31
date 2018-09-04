//
//  MapViewController.swift
//  Clase4Mod3_2
//
//  Created by Area51 on 9/3/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapKit()

    }
    
    func setupMapKit() {

        let coordinate = CLLocationCoordinate2DMake(-12.100690, -77.028981)
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        
        mapView.addAnnotations(Venue.data())
        
    }

}

extension MapViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("seleccionado")
    }

}
