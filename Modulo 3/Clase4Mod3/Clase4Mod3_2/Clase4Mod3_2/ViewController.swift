//
//  ViewController.swift
//  Clase4Mod3_2
//
//  Created by Area51 on 9/3/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    var mapView: GMSMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGoogleMaps()
    }
    
    func setupGoogleMaps() {
        
        mapView = GMSMapView(frame: view.frame)
        mapView.delegate = self
        mapView.camera = GMSCameraPosition.camera(withLatitude: -12.102896, longitude: -77.025446, zoom: 16)
        
        view.addSubview(mapView)
        addMarkers()
        
    }
    
    func addMarkers() {
        
        let coordinate = CLLocationCoordinate2DMake(-12.102896, -77.025446)
        
        let marker = GMSMarker(position: coordinate)
        marker.title = "Area51"
        marker.map = mapView
        
        
        /*
         let restaurantes: Set<Restaurante> = [r1, r2, r3]
        marker.userData = restaurante
         //Por cada restaurante crear un GMSMarker.
        */
        
        
        
    }

}

extension ViewController: GMSMapViewDelegate {
    /*
    func mapView(_ mapView: GMSMapView, didLongPressInfoWindowOf marker: GMSMarker) {
        print("press")
    }*/
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        print("llamado")
        
        //performSegue(withIdentifier: "", sender: nil)
        
        /*
         UIStoryboard().instantInitialViewController()
 */
    }
    /*
    func mapView(_ mapView: GMSMapView, didTap overlay: GMSOverlay) {
        print("llamado")
    }*/

    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        view.backgroundColor = UIColor.blue
        return view
        
    }
    func mapView(_ mapView: GMSMapView, willMove gesture: Bool) {
        print("move")
    }
    /*
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        return true
    }*/
    
}

